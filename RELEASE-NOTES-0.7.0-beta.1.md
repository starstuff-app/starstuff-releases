# Starstuff 0.7.0-beta.1 (first test build)

This is the first test build. Files: `Starstuff-0.7.0-beta.1-win64.zip` and its `.sha256` fingerprint file. Install steps, the fingerprint check and the Windows warning are in the [README](README.md). Known problems are in [KNOWN-ISSUES.md](KNOWN-ISSUES.md).

The Settings page and the zip name show the version as 0.7.0-beta.1. The build ships a checksum file so you can check your download.

SHA-256 of `Starstuff-0.7.0-beta.1-win64.zip`: `00f9741b41e235a946820527fe86271561edbf34e5e2acbc566d308108e73b5c`

## What is in this build

### Capture and telescope

- Seestar support is a download. The Seestar tab can fetch the telescope library (seestarpy, GPL-3.0, by its own author) with one button, "Download Seestar support", or install a file you picked on a PC with no internet. It lives in your own user folder, and "Remove" undoes it.
- Updates for that library are offered, never switched on by themselves. Starstuff checks about once a day, tests a newer version and shows it on the Seestar card. "Go back" returns to the previous version.
- Hold an arrow to move the mount. Tap an arrow for one step, or press and hold it (mouse, finger or arrow key) to keep the mount moving until you let go, like the joystick in the Seestar phone app. The stop on release has not been checked on a real scope yet.
- The Seestar tab names the mode the telescope is in, such as deep-sky stacking, scenery or the Moon, in the status strip and the header. The live view is four equal tiles: Wide, Telephoto, Live stack and Video. Each empty tile says why, and the Video tile starts only when you press Start.
- "Stop slew" sends more stop commands, lists each one with the answer of the telescope, and then checks three times over about three seconds whether the mount still moves. "Copy" puts that report on the clipboard. It is there so a failure can be traced, not a promise that the stop works in every Seestar mode.
- Polar alignment keeps its connection open past 20 seconds until the alignment ends. The job list shows the step and the error in degrees, and while it runs the other telescope controls are locked. "Stop" still works. This has not been checked on a real telescope by the team.
- The Alignment card says in plain words what each button does, shows the plate solve result by itself, and greys out "Polar align" when the mount is not in equatorial mode.
- With a Seestar plugged in by USB-C and its `MyWorks` folder set in Settings, "Move to archive" on the Process tab copies new captures into your archive, checks every copy against the original, and only then removes that file from the Seestar. Nothing is ever overwritten. A setting turns the removal off, and the button then reads "Copy to archive".

### Planning and sky

- The 3D Planetarium is no longer a mirror image once your location is known. Facing north, east is on your right. Facing south, east is on your left.
- The Catalog tab shows one card per object. The picture is your latest picture of it, or the object drawn to scale inside the telephoto frame, so you can see how much of the frame it fills. A card shows the facts, a short description, how high the object gets tonight and when (the dark hours are marked under the curve), its distance from the Moon, how much of the frame it fills or the mosaic it needs, and your time on it with the last night written out. "Best tonight" puts the highest, brightest objects first and drops one that is close to a bright Moon. You can filter by up tonight, fits the frame, captured, type or constellation, and "Details" opens everything, including coordinates and rise and set times. The cards appear at once, and tonight and your archive fill in a moment later. Set your location to see tonight.
- The Tonight tab says when satellite streaks are likely, for example until 21:40 and again from 05:10, and when the sky is clearest. Targets that would be hit for much of the night carry a note with the time they clear. It is a general estimate for large low satellites, not a forecast of single ones.
- The observing-site map shows again. It had been an empty box.
- A new button beside the theme button opens "How Starstuff works", a one-page picture of the whole routine with a link to each tab. It also opens once after the first-run set-up.

### Processing

- 2x drizzle works. It stopped with an error before, because the frames had already been turned into color. Drizzle now starts from the raw sensor frames, so it runs and gives a picture twice as wide and tall. It needs much more disk space (about 8 times what a normal run needs for its aligned frames) and Starstuff checks that first. 2x drizzle does not work together with "Split LP into Ha + OIII" or on a mosaic. Starstuff says so in the recipe preview and before the run starts.
- Mosaics no longer look like a patchwork. The Mosaic preset removes each frame's own gradient before stacking and feathers the panel edges. Re-stack an old mosaic to get this.
- Every night that went through a Siril Register run gets a rating from 0 to 100 with a word, kept on this PC. On the Process tab, open a folder and look at Session history: the Rating column shows it. Click the date or the rating for the card with what was good, what could be better and statistics. The bands are uncalibrated, and nothing is ever deleted because of a rating. A night where many frames lost most of their stars to cloud no longer reads Excellent.
- In Settings, under Paths, you can choose a folder (for example on a network drive) and Starstuff keeps a second copy of your sub ratings there as plain files. If the drive is off, it waits and tries again. "Read sub-ratings back from the copy" restores them on a new install.
- Siril and GraXpert now stop when Starstuff stops, instead of carrying on in the background.
- A finished run in Processing can be opened to see what it did, step by step. Help shows one row per processing flow.
- A processing folder nested too deep for Windows is refused before any frames are copied, with a message that names the folder and what to change.
- The Storage panel refreshes the free space by itself after you clear or archive files.
- Suggestion groups on the Process tab remember only the choices you made yourself.

### Gallery and archive

- Gallery cards show the common name beside the catalogue id, readable badges, a legend, and a plain-words count of edited pictures. More pictures fit on a screen.
- Gallery previews build themselves in the background, newest first, and wait while Siril is running. Open a picture and use "Download JPEG" or "Download TIFF (16-bit)" to save it. Building previews never writes into your archive.
- Target cards read better: the per-night chart is captioned and fits any number of sessions.
- "Scan & Prepare" now explains that it moves your raw frames into a `lights` folder inside each target folder.
- Marking several stacks as edited in Lightroom in quick succession keeps every tick.

### Setup

- The first-run set-up is friendlier. A pasted path with quote marks works. It warns when your archive folder has no `01_Capture` and can create it. Latitude and longitude are range-checked. A closing checklist shows whether Siril was found and is new enough.
- The User guide (Settings, About, "User guide") opens as a PDF with pictures and starts with "Your first 10 minutes". If a build has no PDF, it opens as a page instead. The `docs` folder next to `Starstuff.exe` also holds a short Getting Started guide and a Tester Read-Me as PDFs, each in A4 and US Letter.
- The tabs along the top became a menu down the left side, with an icon and a word for each place. On a laptop or iPad the arrow button opens it wider. On screens 1600 pixels wide or more it starts open, and it remembers if you close it. Underneath are Plan tonight, the status of the telescope, and the buttons for updates, help, feedback and settings. Phones keep the top bar. Gallery now comes before Process. Settings has an Appearance choice of Light, Dark or Night, and the eye button turns night vision on in one press. In night vision the dim hints are easier to read and pictures stay red.
- "Send feedback" lists the files in the report zip and has a "Preview" of the exact text that will be saved. More private details are removed first, such as coordinates, place names, addresses and your user name. After saving, "Open folder" shows the file in Explorer. You can add screenshots.
- Starstuff writes a rotating log file in its data folder, so a problem can be traced afterwards.
- About lists the version and the open-source software Starstuff is built on, with licences.
- The Updates drawer groups vendor news by Seestar, Siril and GraXpert, closed by default. Development updates sit at the top.
- Starstuff runs from a folder without installing Python: unzip and double-click `Starstuff.exe`. Starstuff is the new name of the app. Settings from older installs carry over.

## What we would like you to try

1. Run the first-run set-up with your own archive folder (use a copy of one target folder). Tell us if any question or message was unclear.
2. Press "Scan", then open the Gallery. Open one picture and download it as JPEG.
3. Stack one small target of 20 to 50 frames: "Scan & Prepare", then "Run Siril" on the Process tab. Look at the rating in Session history and tell us whether it fits what you saw.
4. Open Tonight, the Catalog and the Planetarium. Check that your place and the sky look right, that the Catalog cards show tonight's hours for your place, and that the 3D view matches the sky when you face south or north.
5. Press "Send feedback", write a line, press "Preview" and read it. Tell us if anything private is still in it. Then save it and send it, even to say "all fine".
6. Optional: stack one small target with 2x drizzle and tell us whether the picture is really twice as wide and tall. Look at the free disk space first.

If you own a Seestar, you may also try the telescope add-on (see the README). Tell us how it went.

## What is not ready

- The program is not code-signed. Windows warns on every new build.
- Siril and GraXpert are not included. Install them yourself.
- Video and timelapse export need ffmpeg, which is not included.
- No automatic updates. Starstuff cannot restart itself.
- Telescope control is an optional download and is new. The stop on release for held mount moves has not been tried on a real telescope by the team.
- Sub ratings are uncalibrated.
- 2x drizzle does not work with "Split LP into Ha + OIII" or on a mosaic, and it needs much more disk space than a normal stack.
- The satellite streak warning is a general estimate, not a forecast of single satellites.
- Polar alignment and the "Stop slew" report have not been checked on a real telescope by the team.
- The set-up cannot be skipped.
