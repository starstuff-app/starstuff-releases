# Get-SeestarKey.ps1 -- copies the Seestar app's connection key out of the app
# package (an .apk or .xapk file) into the place Starstuff's telescope add-on
# looks for it:  %USERPROFILE%\.seestarpy\seestar.pem
#
# Usage (PowerShell):   .\Get-SeestarKey.ps1 "C:\path\to\Seestar.apk"
# Nothing is sent anywhere. The key stays on this PC. The script reads only the
# file you name and writes one file in your user folder. It is provided as is,
# without warranty. The key belongs to the maker of the Seestar app: do not
# share it, post it or send it to anyone.

param([Parameter(Mandatory = $true)][string] $Package)

$ErrorActionPreference = "Stop"
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$pattern = '-----BEGIN PRIVATE KEY-----[\s\S]*?-----END PRIVATE KEY-----'

function Find-KeyInZip($zip, $label) {
    foreach ($entry in $zip.Entries) {
        $name = $entry.FullName
        if ($name -like '*/libopenssllib.so') {
            Write-Host "  reading $label : $name"
            $ms = New-Object System.IO.MemoryStream
            $s = $entry.Open(); $s.CopyTo($ms); $s.Dispose()
            $text = [System.Text.Encoding]::ASCII.GetString($ms.ToArray())
            $m = [regex]::Match($text, $pattern)
            if ($m.Success) { return $m.Value }
        }
    }
    # An .xapk holds the real app as .apk files inside it: look into each one.
    foreach ($entry in $zip.Entries) {
        if ($entry.FullName -like '*.apk') {
            $ms = New-Object System.IO.MemoryStream
            $s = $entry.Open(); $s.CopyTo($ms); $s.Dispose()
            $ms.Position = 0
            $inner = New-Object System.IO.Compression.ZipArchive($ms)
            $found = Find-KeyInZip $inner $entry.FullName
            $inner.Dispose()
            if ($found) { return $found }
        }
    }
    return $null
}

if (-not (Test-Path -LiteralPath $Package)) { throw "No such file: $Package" }
Write-Host "Opening $Package"
try { $zip = [System.IO.Compression.ZipFile]::OpenRead($Package) }
catch { throw "This is not an .apk or .xapk file (it could not be opened as a package): $Package" }
try { $key = Find-KeyInZip $zip ([System.IO.Path]::GetFileName($Package)) }
finally { $zip.Dispose() }

if (-not $key) {
    throw "No key found in this package. It must be the Seestar app for Android (an .apk or .xapk file) that contains lib/arm64-v8a/libopenssllib.so."
}

$dir = Join-Path $env:USERPROFILE ".seestarpy"
New-Item -ItemType Directory -Force $dir | Out-Null
$out = Join-Path $dir "seestar.pem"
[System.IO.File]::WriteAllText($out, ($key -replace "`r", "") + "`n")
Write-Host ""
Write-Host "Done. The key is saved at $out"
Write-Host "Now start Starstuff (or restart it if it is running) and open the Seestar tab."
