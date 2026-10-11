# Starstuff 0.7.0-beta.4 (fourth test build)

This is the fourth test build, a quick one: it fixes how Starstuff and the Seestar phone app share the scope, and it carries the small changes made since beta.3. Files: `Starstuff-0.7.0-beta.4-win64.zip`, its `.sha256` fingerprint file and its `.sig` signature file. Install steps, the fingerprint check and the Windows warning are in the [README](README.md). Known problems are in [KNOWN-ISSUES.md](KNOWN-ISSUES.md). What came with the earlier builds is in [RELEASE-NOTES-0.7.0-beta.3.md](RELEASE-NOTES-0.7.0-beta.3.md), [RELEASE-NOTES-0.7.0-beta.2.md](RELEASE-NOTES-0.7.0-beta.2.md) and [RELEASE-NOTES-0.7.0-beta.1.md](RELEASE-NOTES-0.7.0-beta.1.md).

The Settings page and the zip name show the version as 0.7.0-beta.4. This is the first build to install through Settings, About, Updates; see "How to update".

SHA-256 of `Starstuff-0.7.0-beta.4-win64.zip`: `ae881c374ecbd1c7a00c1c169a4844c23a5b38ab8f54a115a8c3fc2ebb739aba`

## What is new since 0.7.0-beta.3

### The connection to the Seestar

- One connection, not two. The Seestar accepts only a few connections at once, and the phone app needs one of them. Starstuff used to hold one connection all the time and open a second one about once a minute. It now keeps a single connection, and opens the second one only while the Seestar tab or the camera picture in the Planetarium is on screen, or while a timelapse or star-trails capture you started is running.
- Disconnect holds. After you press Disconnect, Starstuff does not reconnect, fetch pictures or keep a video stream open until you press Connect. This is remembered when you restart Starstuff.
- It says what the scope did. When the scope refuses, the chip reads "No free connection on the scope" or "The scope closed the connection", Details shows the scope's own message, and the note shows how many connections the scope reports and when Starstuff will try again. Starstuff no longer guesses which other app is connected, and it waits longer between tries.
- Hand-over. To hand the scope to the Seestar phone app, click the connection button at the top of the Seestar tab, press Disconnect and then open the phone app. To take it back, close the phone app and press Connect. A run that is already on the scope keeps going while you swap.
- Not promised: both connected at the same time. Whether the phone app and Starstuff fit together depends on the scope's own limit. On our scope with firmware 9.31 they did not fit before this build; we have not yet tested this build at a scope. Tell us what you see.

### Processing

- Stop works on a copy to stack by hand. Pressing Stop now ends the copy after the file in progress and says how many files it got through. Before, the copy ran to the end whatever you pressed.
- Space check before a run on the processing drive. A run that starts straight from your subs now checks the free space against what the run needs, and if it will not fit it names the space needed, the space free, the drive and the step that would fail, before anything starts.
- Big stacks free disk sooner. Siril's converted frames are deleted as soon as registration has finished, before the stack starts, so a large run no longer holds two full copies while stacking. A failed registration keeps everything. Settings, Processing, "Keep Siril's converted frames" turns this off.
- Review the weakest subs. On a night's Sub-ratings card, "Review the weakest subs" shows a picture of each of the lowest-scoring subs and the likely cause (trailed stars, cloud or haze, a plane or satellite line, or a sensor defect). You choose which to move out of the stack and confirm. Nothing is deleted: they go to a `rejected` folder next to `lights`, and Undo puts them back. The pictures now appear much faster.

### Settings

- A rule for the observing site. A site at exactly 0, 0, or a number that is not a real coordinate, is refused everywhere it can be entered, and a refused site is shown in Settings and on the planner map instead of being used silently.
- Which copy am I running. A small label under the logo says which copy of Starstuff this is, for example "beta.4" for a test build or "dev" with a count for a copy that is some changes past a build. Click it to open Settings, About, where three lines say this copy, the latest test build and the difference.

## What changed in the known issues

- Changed: "Updating in the program is new and unproven" is now a row that says the updater was proven on real builds by the team, and that going from beta.3 to beta.4 is the first time testers use it.
- New: the phone app and Starstuff may not both fit on the scope at once, with the hand-over steps above.
- Every other row was checked against this build and is still true.

## What we would like you to try first

1. The update path. If you run 0.7.0-beta.3, open Settings, About, Updates, press "Check now" and then "Download and install". Tell us what the panel says at each step, even when it works.
2. The connection. Connect Starstuff to the scope, then open the Seestar phone app, and tell us what each one shows. Try Disconnect in Starstuff, then the phone app, then Connect again. If a run is on the scope, check that it keeps going.
3. Open a night's Sub-ratings card, press "Review the weakest subs" and look at the pictures and the causes. Move one out, then press Undo and check that it is back.
4. Stop a copy to stack by hand part-way and read what it says.
5. Press "Send feedback", press "Preview" and read it. Then save it and send it, even to say "all fine".

## How to update

Use Settings, About, Updates: "Check now", "Download and install", then "Restart into the new version". This is the first build to install this way. Your settings and history are kept, because Starstuff keeps them in a data folder outside the program folder. The [README](README.md) has the steps.

If the panel does not work, update by hand: download the new zip and check its fingerprint, unzip it into a new folder (not over the old one), and start the new `Starstuff.exe`. Then tell us what the panel said.

## What is not ready

- The program is not code-signed. Windows warns on every new build.
- Siril and GraXpert are not included. Install them yourself.
- Video and timelapse export need ffmpeg, which is not included.
- Telescope control is an optional download. The stop on release for held mount moves, the smooth nudge, Polar alignment and the "Stop slew" report have not been checked on a real telescope by the team.
- The scope may still say aloud that you should update your app.
- Sub ratings are uncalibrated.
- 2x drizzle does not work with "Split LP into Ha + OIII" or on a mosaic, and it needs much more disk space than a normal stack.
