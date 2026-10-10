# Starstuff 0.7.0-beta.3 (third test build)

This is the third test build. Files: `Starstuff-0.7.0-beta.3-win64.zip`, its `.sha256` fingerprint file and its `.sig` signature file. Install steps, the fingerprint check and the Windows warning are in the [README](README.md). Known problems are in [KNOWN-ISSUES.md](KNOWN-ISSUES.md). What came with the earlier builds is in [RELEASE-NOTES-0.7.0-beta.2.md](RELEASE-NOTES-0.7.0-beta.2.md) and [RELEASE-NOTES-0.7.0-beta.1.md](RELEASE-NOTES-0.7.0-beta.1.md).

The Settings page and the zip name show the version as 0.7.0-beta.3. This is the first build that can update itself. You still install this one by hand; see "How to update".

SHA-256 of `Starstuff-0.7.0-beta.3-win64.zip`: `14c133025bc38940a9907acd63bd0f8faea80e367c5b7e610b4c3e98146b5753`

## What is new since 0.7.0-beta.2

### Tonight page

- Tonight's Imaging Plan and the sky table say how much of the telephoto frame each object fills, in the same words as the Catalog. A size filter lets you pick one or more sizes: too small to resolve, small, good size, fills the frame, or larger than the frame (a mosaic target). A line says how many objects were hidden and why, with one press to show them all. Objects with no size on file stay on the list and say so.
- Each target looks like a Catalog card: a smaller picture (your own latest one when you have it), the name, the type, how much of the frame it fills, the window above your floor, your integration time, the priority and an "Add to plan" button.
- Every heading is a button. Click it to sort, click again to reverse. Number columns start with the best first, names start A to Z, and an arrow shows the choice. Starstuff remembers it in this browser. The rank numbers stay as they were, so the sort is only a view; click the # heading to go back to the ranking.
- A Moon column on both lists: a small picture of the phase, how far the Moon is from the object when it is highest tonight, and how much of the Moon is lit. Hover a row for it in words. Click the heading to put the objects farthest from the Moon first. The Moon does not change the order of the plan.
- My horizon, in Settings under Observer: the lowest height you can shoot at for each of eight directions, or every 10 degrees if you want it finer. Leave it alone and your Altitude Floor applies everywhere, as before. Once it is set, Tonight counts only the time an object is above your horizon in the direction it is in, and one line says how many objects it changed. The Planetarium draws your horizon as a soft band above the ground.

### Catalog

- A new look. At the top you pick Messier, Caldwell or NGC / IC and switch between Cards and a List. Starstuff remembers your choice. Capture progress shows how many objects you have captured, with a small bar for each type. Tonight shows the Moon, your altitude floor and the dark hours with a marker for now, and every altitude chart on the page uses the same time axis.
- Filter by All, Captured, Not captured, Up tonight or Fits the frame, by type or by constellation, and sort by Best tonight. A card shows your own picture, how good the object is tonight, your total integration time with the nights and the last date, the facts we know, the peak altitude, the hours above your floor, and how much of the frame it fills. "Add to plan" is the main button. Objects that stay under your floor for most of the night are dimmed.

### Planetarium

- "Plan from this picture" is on a Gallery card, in a picture's full-size view, on a Planetarium object with your picture, and on one of your picture outlines. Starstuff builds a plan that frames the sky the same way: the same center, the same mosaic layout, the picture's rotation and the same folder, so the new frames land beside the old ones. The plan opens in the usual preview with the horizon check and says in words what differs. A picture with no plate solution has no sky position and is not planned from. A picture from the wide camera is declined. Sending the picture's rotation is an experiment and is off unless you tick it: the scope may ignore it.
- Names on your pictures. Open a plate-solved picture in the Gallery and press "Annotate". The objects inside the frame get a label with their number and common name, such as M 17 Omega Nebula, and the brightest named stars are marked. A legend says what the colors mean. "Save annotated copy" writes a second picture with `_annotated` added to the name; your original is never changed.

### Process

- A run report for every stack. When a stack finishes, Starstuff saves a one-page report beside it: the time each Siril step took, what each step did, which frames failed star matching, how many were dropped at the roundness cut, the star roundness and every-frame charts, and the stack quality. Open it from "Run report" on a Gallery session or in Processing, Recent. An older stack gets one when you open it, or press "Build report".
- Every stack in its own dated folder. New stacks go into `stacks/<date>_<filter>_<frames>_<time>` inside the target, with everything that run made: the stack, the processed picture, the exports and the Siril log. The Gallery card lists every stack run, newest first, and "Keep this one" marks the run you keep.
- "Tidy stack files" (Prepare tab) moves your older stacks into the same kind of folder. It first shows, per target, what would move and where each stack's date came from. "Move" then does it, and nothing is deleted. Your subs in `lights` are never touched. "Undo" puts every file back.
- The separate Master set step is gone. In the Stack step, "Work on the fast drive" copies the target's subs to your processing drive, stacks the whole set there and files the result in the target's stacks folder. Adding a night re-stacks all the frames, so every frame counts.
- A stack whose subs were shot at several pointings, too far apart for star matching, is now lined up by plate solve: every frame is solved. The log and the run report say how many panels were lined up this way and name every frame that could not be solved.
- Exporting livestacks now compares contents, not only size, so a changed stack of the same size is copied again.

### Seestar tab

- When Starstuff is not connected, the tab says "Put the Seestar in Station mode first" and lists three steps. The same reminder is on the Seestar support card, and "Find scope" leads with it when it finds nothing.
- The guide for getting the Seestar key now comes inside Starstuff and works offline. The Seestar support card has a "How to get it" link, and the no-key warning opens it first. It says plainly that Starstuff contains no key and never downloads the Seestar app or the key, that you read the key from your own phone's app for your own telescope only, that the key is not to be shared or posted, and that Starstuff is independent of Seestar and ZWO. The option to download the app from mirror sites is gone. The guide, its PDF and the small script are in the zip too.
- "Open guide" on a suggestion card now always shows the guide. If a guide is not part of the app, the card says "Guide not available".
- Starstuff can restart itself. The restart icon in the header and the "Restart Starstuff now" button after a data-folder move now work in the program you unzipped, not only when started from source.

### Settings

- Updates are in the program. Settings, About, Updates shows the version you run and when it last looked. "Check now" looks at once; when a newer build exists, the panel shows its version, its date and a "Release notes" link. "Download and install" checks your free disk space, downloads the zip, checks its signature and its fingerprint, and unpacks it into a new folder next to the old one. The running program is not touched. "Restart into the new version" starts the new one. Afterwards "Remove the old folder" asks once and removes only the folder you switched from.
- Builds are signed. A zip whose signature or fingerprint does not match is refused and deleted, and nothing is installed.
- "Check for new builds once a day" (Settings, Advanced) turns the daily look off. "Check now" still works, and nothing is installed without a button press.
- The releases page is public now, so no sign-in is needed to read it or download a build.

### Quieter console and safer saving

- The harmless Windows "connection reset" traceback no longer fills the console window.
- Settings and the other saved files are now written in one safe step, so a crash or a second copy of Starstuff cannot leave a half-written file.

## What changed in the known issues

- Removed: "Starstuff cannot restart itself". It can.
- Changed: "Automatic updates: none" is now a row saying that updating in the program is new and unproven.
- New: Tidy stack files moves your older stacks. Try it on a copy first.
- Stays: the scope may still say aloud that you should update your app. Starstuff still tells the scope its name once per connection, as an experiment; if the scope refuses the name, the Console says so.
- Every other row was checked against this build and is still true.

## What we would like you to try first

1. The update path. This is the first build that can update itself, but you installed it by hand, so the next build is the real test. When it is out, open Settings, About, Updates, press "Check now" and then "Download and install". Tell us what the panel says at each step, even when it works.
2. Open "Tidy stack files" on a copy of one target folder. Press "Show what would move", read it, press "Move", look at the result, then press "Undo" and check that every file is back.
3. Stack a mosaic, with subs shot at several pointings, and read the run report. Tell us whether every panel was lined up and whether the report names the right frames.
4. Open the Seestar key guide from the Seestar support card. Tell us if anything in it is unclear or reads wrong.
5. Try the size filter, a sort, the Moon column and My horizon on the Tonight page. Open the Catalog and switch between Cards and List.
6. Press "Plan from this picture" on a plate-solved picture. Check that the plan frames the sky the way the old picture did.
7. Press "Send feedback", press "Preview" and read it. Then save it and send it, even to say "all fine".

## How to update

This last time, update by hand. Builds before this one cannot update themselves. Download the new zip and check its fingerprint, unzip it into a new folder (not over the old one), and start the new `Starstuff.exe`. The [README](README.md) has the steps. Your settings and history are kept, because Starstuff keeps them in a data folder outside the program folder.

From the next build on, use Settings, About, Updates: "Download and install", then "Restart into the new version". If it does not work, update by hand as above and tell us.

## What is not ready

- The program is not code-signed. Windows warns on every new build.
- Siril and GraXpert are not included. Install them yourself.
- Video and timelapse export need ffmpeg, which is not included.
- Updating in the program has not yet updated a real copy. This build is the first that has it.
- Telescope control is an optional download. The stop on release for held mount moves, the smooth nudge, Polar alignment and the "Stop slew" report have not been checked on a real telescope by the team.
- The scope may still say aloud that you should update your app.
- Sub ratings are uncalibrated.
- 2x drizzle does not work with "Split LP into Ha + OIII" or on a mosaic, and it needs much more disk space than a normal stack.
