# Starstuff test builds

This is the download page for invited testers. It holds test builds of Starstuff and nothing else. There is no source code in this repository. Its address is https://github.com/starstuff-app/starstuff-releases

This page is public, so you do not need to sign in to read it or to download a build. You can open issues once you are signed in to GitHub. You cannot change files or releases, and you do not need to.

Please do not share the link, the files or anything you read here with other people.

## What Starstuff is

Starstuff is a program for people who own a ZWO Seestar telescope. It runs on your own Windows PC and opens in your web browser. It scans the photos your Seestar captured, shows them in a gallery, plans your nights, and stacks your photos (averages many short photos into one clean picture) using a free program called Siril.

## What this test is, and is not

This is a test build. It may have bugs, and it may lose or damage data. Keep a backup of your photos. The terms of the test are in [TEST-TERMS.md](TEST-TERMS.md).

The test is for finding what breaks, what confuses you, and what you wish it did. It is not a finished product. It is not signed, it has no support promise, and it updates itself only when you press the buttons (see "How to update"). Your reports are the point.

## What you need

| Need | Detail |
|---|---|
| Windows 10 or 11, 64-bit | The build is made with Python 3.14, which needs Windows 10 or newer. It has not been tried on Windows 10 by the team. |
| Free disk space | About 400 MB for the unzipped program (measured on an earlier build of this version; the beta may differ a little). The zip itself is about 137 MB. For stacking, plan on about 3 times the size of the target folder you stack. |
| Siril 1.4 or newer | Free. Get it from https://siril.org and install it first. Starstuff starts it for you. It usually lives in `C:\Program Files\Siril\bin`. If Starstuff cannot find it, set the path in Settings under "Siril CLI Path". |
| A folder of Seestar captures | One folder that contains a folder called `01_Capture`, with your target folders inside it. |
| A web browser | Starstuff opens your default browser. |
| Internet | Optional. Weather, news, sky pictures and the telescope add-on need it. See "What Starstuff contacts on the internet" below. |
| GraXpert | Optional. Free, from https://www.graxpert.com. It removes background glow and noise after a stack. |
| ffmpeg | Optional. Needed only for video and timelapse export. It is not included. |

## Download

1. Open the [Releases page](https://github.com/starstuff-app/starstuff-releases/releases) of this repository.
2. Open the newest release, for example `v0.7.0-beta.3`.
3. Under Assets, download both files:
   - `Starstuff-0.7.0-beta.3-win64.zip` is the program.
   - `Starstuff-0.7.0-beta.3-win64.zip.sha256` is its fingerprint, used in the next step.

Only the plain zip is ever published here. If a file has `seestar` in its name, do not use it, and tell us.

## Check the download

The fingerprint proves the file arrived whole and is the file we published. It takes one minute.

1. Open PowerShell. Press the Windows key, type `PowerShell`, press Enter.
2. Go to the folder with your downloads. For example: `cd $HOME\Downloads`
3. Run this command. Use your own zip name if it differs:

```
certutil -hashfile Starstuff-0.7.0-beta.3-win64.zip SHA256
```

4. It prints a line that starts with "SHA256 hash of", then one long code of 64 letters and digits, then "CertUtil: -hashfile command completed successfully."
5. Open the `.sha256` file with Notepad. It holds the same long code, then two spaces, then the zip name.
6. The two codes must be identical. Letter case does not matter.

If they differ, delete the zip, download it again, and check again. If they still differ, do not run the file. Tell us.

## Install

1. Right-click the zip and choose Extract All. Choose a normal folder you can write to, for example `C:\Starstuff-test`. Do not run the program from inside the zip window.
2. Open the new `Starstuff` folder and double-click `Starstuff.exe`.
3. A black console window opens, and your browser opens Starstuff a moment later. If the browser does not open, the console prints an address you can type in by hand.
4. Leave the console window open. Closing it stops Starstuff. Closing only the browser tab does not stop it.

Starstuff does not write inside its own folder. Your settings and other data go to your user profile (see "Your data"). You can put the program folder anywhere you can read from. Program Files is not needed.

If you see "port 8100 is already in use", another copy of Starstuff or another program is running. Close it, or set the `STARSTUFF_PORT` environment variable to another number such as 8101 before you start.

## The Windows warning

The first time you start `Starstuff.exe`, Windows shows a blue box titled "Windows protected your PC".

Why: the program is not code-signed. Code signing is a paid certificate that proves who published a program. Without it, Windows SmartScreen warns about every new program it has not seen often. The warning does not mean the file is bad. It is why we ask you to check the fingerprint first.

What to do:

1. Click the words "More info" in the box.
2. A button called "Run anyway" appears. Click it.

You do this once for each new build. If your antivirus removes the file, tell us. Do not turn your antivirus off.

## First start

On the first start Starstuff shows a window called "Set up Starstuff". It asks five things, one per screen, and you press Next after each:

1. Where Starstuff should keep its own data: settings, logs, caches and downloaded add-ons. Your pictures are not in it. The folder it suggests is already filled in, and the button is "Use this folder". It shows the free space. A folder on a network or removable drive needs a tick to accept, and a folder inside the Starstuff program folder is refused, because an update replaces that folder. Older installs are asked this once too.
2. Archive Root Path. The folder that holds your captures, the one that contains `01_Capture`. Tip: open the folder in File Explorer, click the address bar, copy, and paste. A path with quote marks around it is fine. If the folder has no `01_Capture`, Starstuff says so and offers two buttons: "Create 01_Capture here" and "Choose another folder".
3. Local Processing Path. A fast local drive where Starstuff copies files while stacking. Leave it blank if your captures and your processing are on the same drive.
4. Latitude. Where you observe, in decimal degrees. North is positive, south is negative. It must be between -90 and 90.
5. Longitude. East is positive, west is negative. It must be between -180 and 180.

After the last screen, which says "Finish", a "Checks" screen shows whether Siril was found and is new enough. Press Done. You cannot skip the set-up. You can change every answer later in Settings (the gear icon in the header).

The user guide is in the app: open Settings, scroll to About, press "User guide". It opens as a normal page with pictures. It starts with "Your first 10 minutes".

Back up first. The Process tab buttons "Scan & Prepare" and "Prepare Needed" MOVE your raw `Light_*.fit` files into a `lights` folder inside each target folder. Nothing is deleted or renamed by default. For your first run, copy one target folder and test with the copy. The "Scan" button only looks.

## Telescope control (optional add-on)

Telescope control is not inside the zip. It is a separate library called seestarpy. It is free software written by its own author under the GPL-3.0 license, and it is not part of Starstuff. Starstuff can download it for you, but only when you press a button.

> **Before you connect: Put the Seestar in Station mode first**
>
> A new Seestar makes its own Wi-Fi hotspot for your phone. Starstuff on this PC can only reach it when the scope has joined your home Wi-Fi, which is Station mode.
>
> 1. Open the Seestar app and connect to the scope.
> 2. In the scope's settings, turn on Station mode and choose your home Wi-Fi.
> 3. Put this PC on the same network, then press Find scope.

**The key.** Since firmware 7.18 the telescope also needs a key from your own copy of the Seestar app. How to get it: see HOWTO-SEESTAR-KEY.pdf on this page, which comes with the script Get-SeestarKey.ps1. The same how-to is inside Starstuff, on the Seestar tab, and in the zip.

- Starstuff contains no key and never downloads the Seestar app or the key.
- You read the key yourself, from a copy of the Seestar app you are entitled to use, on your own phone, solely so your own telescope accepts your own commands (interoperability).
- The key belongs to the maker of the Seestar app. Do not share it, post it or send it to anyone, including to us.
- Seestar and ZWO are trademarks of their owner. Starstuff is an independent project and is not affiliated with or endorsed by them.
- The script reads only the file you name, writes one file in your user folder and sends nothing. It is provided as is, without warranty.

To add it:

1. In Starstuff, open the Seestar tab. It says "Starstuff can't reach a Seestar yet" and shows a card about Seestar support. (The same card is in Settings under About.)
2. Press "Download Seestar support". It downloads about 143 KB from the internet and checks the file against a fixed checksum. Nothing is installed if the check fails.
3. The license name on the card opens the license notice. The "source code" link goes to the author's page.
4. No internet on this PC? On another computer, download the `.whl` file named at the bottom of the card, copy it over, and press "Install from file". Only that exact version is accepted.

Where it goes: `%LOCALAPPDATA%\Starstuff\addons`. Nothing inside the Starstuff program folder changes.

Updates are offered, never switched on by themselves. Starstuff asks pypi.org about once a day whether a newer version exists, even before you add telescope control. Once you have added it, a newer file is also downloaded and checked in the background, but it is not used until you press "Update to ...". The card shows buttons such as "Check for updates", "Update to ..." and "Go back to ...". Both requests are in the internet list below.

To remove it: press "Remove" on the card and confirm. If the card says "Restart Starstuff to finish unloading it", close the console window and start Starstuff again. You can also delete the folder `%LOCALAPPDATA%\Starstuff\addons` while Starstuff is closed.

Telescope control is new in this test. Parts of it, such as stopping a held mount move, have not been tried on a real telescope by the team. Do not leave your telescope unwatched while you test it.

## Your data

Starstuff keeps everything on your PC. It does not send your photos, file names or folder paths anywhere. The one thing from your settings that leaves your PC is your saved observing location, rounded, which goes to the weather service. Saving a report writes a file on your PC and sends nothing: you send it yourself. Every place Starstuff contacts is listed under "What Starstuff contacts on the internet" below.

What it stores, and where:

| What | Where |
|---|---|
| Settings, scan history, saved state, the log file | `%APPDATA%\Starstuff`, unless you chose another data folder in the set-up or in Settings (the log is in its `logs` folder). An older install may use `%APPDATA%\Cosmos`, which keeps working. |
| Rebuildable caches (gallery previews, news, scan results) | Under your Local Processing Path in a folder named `.cosmos_cache`, or in `%APPDATA%\Starstuff` if you left that path blank. |
| Telescope add-on | `%LOCALAPPDATA%\Starstuff\addons` |
| Report zips you save | Your Downloads folder |
| Your stacks, and the raw files that Scan & Prepare moves | Inside your own archive folders |

### What Starstuff contacts on the internet

Starstuff does not send your images, file names or folder paths anywhere. This is every place it contacts, when, and what leaves your PC. Every request also shows your IP address, as any web request does. A request that Starstuff makes itself names "Starstuff" and its version. Three of the requests below are made by your web browser, not by Starstuff, and carry your browser's own name instead.

| Service | When | What is sent |
|---|---|---|
| www.zwoastro.com, siril.org, gitlab.com, github.com (news and release feeds for the Updates drawer) | Automatically, from the first time the page loads and then in the background while Starstuff runs. Each feed is asked again after one or two hours. "Refresh now" in the Updates drawer asks all of them at once. | A plain feed request for each of five feeds (ZWO news, Siril releases, Siril news, GraXpert releases and a community Seestar feed). It repeats the version label the feed gave last time, so an unchanged feed is not downloaded again. Nothing about you. |
| aladin.cds.unistra.fr (the Aladin Lite sky viewer script) | Automatically, each time the Starstuff page loads. | Your browser asks for the script. The request shows your IP address and your browser's name. Starstuff adds nothing to it. |
| api.open-meteo.com (weather and dew-heater advice) | Automatically, while the Seestar tab is open and while a telescope is connected to Starstuff. An answer is reused for ten minutes, so there is at most one request every ten minutes. Nothing is sent if "Live Weather" is turned off in Settings or no observing location is saved. | Your saved observing location, rounded to one decimal (about 11 km). Nothing else. |
| pypi.org (is a newer Seestar telescope add-on out?) | Automatically, about once a day: the first time you open Settings or the Updates drawer that day, or the Seestar tab while Seestar support is not installed. It happens even if you never add Seestar support. "Check for updates" on the Seestar card asks at once. A failed try is repeated no sooner than an hour later. | One plain request for the list of seestarpy releases. No ID, and nothing about you, your files or what you have installed. |
| files.pythonhosted.org (the Seestar telescope add-on file) | When you press "Download Seestar support". Also automatically, in the background, once Seestar support is installed and PyPI lists a newer version: that file is downloaded and checked, then kept unused until you press "Update to ...". | A plain file request. Nothing about you. |
| api.github.com (is a newer Starstuff build out, and the build itself) | Automatically, about once a day: the first time the Starstuff page loads that day, unless you turned off "Check for new builds once a day" in Settings. "Check now" under Settings, About, Updates asks at once, and a failed try is repeated no sooner than an hour later. The build itself is downloaded only when you press "Download and install". A copy of Starstuff that runs from source never asks. | One plain request for the list of Starstuff releases, naming Starstuff and its version. If you connected to the testers' page, your read-only token goes with it, to that one address and nothing else. GitHub hands the download to its own file host, which gets no token. Nothing about you, your files or your settings. |
| The sky image servers that Aladin Lite chooses (the sky picture under the Framing panel) | When the Framing panel on the Seestar tab shows the sky. | Your browser asks for pictures of the part of the sky you are looking at (the DSS2 color survey). Starstuff's own code does not name these servers, so they are not listed by host name. |
| tile.openstreetmap.org (map pictures in the observing-site picker) | When you open the observing-site map. | Your browser asks for map pictures of the area you look at. The request shows your IP address, your browser's name and the map area. Starstuff adds nothing to it. |
| nominatim.openstreetmap.org (place search in the observing-site picker) | Only when you press Search in the picker. | The text you typed in the search box. Nothing else. |
| cdsweb.u-strasbg.fr (the CDS Sesame name lookup, made by the Seestar add-on) | Only when Seestar support is installed and you press Go in the "Go to a target" panel on the Seestar tab with a name but no RA and Dec, and the name is not the Moon or a planet. | The target name you typed. This request is made by the add-on library, not by Starstuff's own code. |

Links you click inside Starstuff, for example to siril.org, graxpert.com or GitHub, open in your browser as normal web pages. Starstuff sends nothing there.

Two things have a switch in Settings: Live Weather, and "Check for new builds once a day", which stops the daily request for a newer Starstuff (the Check now button still works). Nothing is downloaded or installed until you press the buttons. Starstuff has no analytics and does not upload crash reports. Nothing else is sent by Starstuff. The programs it starts (Siril, GraXpert and ffmpeg) have their own rules, and this list does not cover them.

## How to report a problem

Please report anything that breaks, confuses you or annoys you.

1. In Starstuff, click the speech-bubble icon in the header. Its name is "Send feedback".
2. Fill in "What happened" and "What you expected". Press "Add images" for screenshots, or paste one with Ctrl+V while the window is open (PNG or JPEG, up to 8). Keep "Include recent log lines" ticked unless you have a reason not to.
3. Press "Preview" to see exactly what will be saved. Folder paths, names, addresses and exact coordinates are removed. What you can see in a screenshot is not removed, so look at your screenshots for your user name and folder paths first.
4. Press "Save". Starstuff writes one zip file, named like `Starstuff-feedback-20261010-2130.zip`, into your Downloads folder. Press "Open folder" to see it. Nothing is sent over the internet.
5. Send it in one of two ways:
   - Open a [new issue](https://github.com/starstuff-app/starstuff-releases/issues/new/choose) in this repository (Issues tab, then New issue, then Bug report) and drag the zip into the form.
   - Or send it to the person who invited you.

The window after saving names both ways, and so does READ-ME-FIRST.txt in the zip.

A good report says what you did, what you expected and what happened. It names the Starstuff version (Settings, About) and your Windows version. It attaches the zip. If Starstuff does not start at all, attach the file `starstuff.log` from `%APPDATA%\Starstuff\logs` instead.

More about how reports are handled: [CONTRIBUTING-AS-A-TESTER.md](CONTRIBUTING-AS-A-TESTER.md). Everyone invited to this repository can read every issue, so do not put private details in the text of an issue.

## How to update

Starstuff can update itself. Open Settings, scroll to About, and find Updates.

1. Starstuff looks for a newer build about once a day. "Check now" looks at once. When one exists, the panel shows its version, its date and a "Release notes" link.
2. Press "Download and install". Starstuff first checks that there is enough free disk space (about 4 times the zip: the zip, and the program unpacked). It downloads the zip, checks its fingerprint against the `.sha256` file before it unpacks anything, and unpacks into a new folder next to the running one, named like `Starstuff-0.7.0-beta.3-win64`. The running program is not touched. If the fingerprint does not match, the file is deleted and nothing is installed.
3. Press "Restart into the new version". The new program starts on the same address and this page reloads. Your settings, history and add-on carry over, because they live in your data folder, not in the program folder.
4. After the new version has started, the panel offers "Remove the old folder". It asks once and removes only the folder you switched from. It never does it by itself.

The program folder must be one Starstuff can add a new folder next to. If it is not (for example under Program Files), the panel says so; move the folder somewhere you can write to, or update by hand. Builds before 0.7.0-beta.3 cannot update themselves, so going from beta.2 or earlier to beta.3 is done by hand once:

1. Download the new zip and check it, the same way as above.
2. Unzip it into a new folder. Do not unzip over the old one.
3. Start the new `Starstuff.exe`. Your settings, history and add-on carry over, because they live in your data folder, not in the program folder. The first start of a new build may ask once where to keep the data. The folder it suggests is the one your settings are already in, so press "Use this folder".
4. When the new build works, delete the old program folder.

If a release note says a data format changed, it will also say what to back up.

## How to remove Starstuff completely

Close Starstuff first (close the console window). Then delete:

1. The program folder you unzipped, for example `C:\Starstuff-test`.
2. `%APPDATA%\Starstuff` (and `%APPDATA%\Cosmos` if it exists).
3. `%LOCALAPPDATA%\Starstuff` (this holds the telescope add-on and a small note of which data folder you chose).
4. The `.cosmos_cache` folder inside your Local Processing Path, if you set one.
5. If you chose a different data folder in the first-run setup or in Settings, that folder too. Settings shows where it is. If you moved it, check the old folder as well.
6. Any `Starstuff-feedback-*.zip` files in your Downloads folder.

To paste a `%...%` path, type it into the File Explorer address bar and press Enter.

Deleting these does not undo what Starstuff did to your archive. Your stacks and the moved `Light_*.fit` files stay where they are. If Starstuff copied photos into your Local Processing Path for stacking, check that folder before you delete anything there.

## More

- [KNOWN-ISSUES.md](KNOWN-ISSUES.md): what we already know about.
- [RELEASE-NOTES-0.7.0-beta.3.md](RELEASE-NOTES-0.7.0-beta.3.md): what is new in this build, and what we would like you to try.
- [RELEASE-NOTES-0.7.0-beta.2.md](RELEASE-NOTES-0.7.0-beta.2.md): what came with the second build.
- [RELEASE-NOTES-0.7.0-beta.1.md](RELEASE-NOTES-0.7.0-beta.1.md): what came with the first build.
- [TEST-TERMS.md](TEST-TERMS.md): the terms of this test.
- Contact: open an issue in this repository, or message the person who invited you.
