# Starstuff 0.7.0-beta.2 (second test build)

This is the second test build. Files: `Starstuff-0.7.0-beta.2-win64.zip` and its `.sha256` fingerprint file. Install steps, the fingerprint check and the Windows warning are in the [README](README.md). Known problems are in [KNOWN-ISSUES.md](KNOWN-ISSUES.md). What came with the first build is in [RELEASE-NOTES-0.7.0-beta.1.md](RELEASE-NOTES-0.7.0-beta.1.md).

The Settings page and the zip name show the version as 0.7.0-beta.2. The build ships a checksum file so you can check your download.

SHA-256 of `Starstuff-0.7.0-beta.2-win64.zip`: `aa2e0384894b41a81397ee7d653eec1f81a36c8976505c2a6d3a367b6516dc6f`

## What is new since 0.7.0-beta.1

### The new look

- Colors, surfaces, buttons, chips, cards, fields and dialogs now follow Material Design. The side menu marks the page you are on with a pill behind its icon.
- Settings, under Appearance, offers three themes: Light, Dark and Night. Night is the red night-vision look.

### Catalog and Planetarium

- The Catalog tab has a card for each object. The picture is your latest picture of it, or the object drawn to scale inside the telephoto frame, so you can see how much of the frame it fills. A card shows how high the object gets tonight and when (the dark hours are marked), its distance from the Moon, whether it fits the frame or needs a mosaic, and your time on it. Best tonight puts the highest, brightest objects first. You can filter by up tonight, fits the frame, captured, type or constellation. Set your location to see tonight.
- Many more objects have common names: the Beehive Cluster, the Pleiades, the Wild Duck, the Butterfly and Ptolemy's clusters, the Double Cluster, the Jewel Box, 47 Tucanae and about a hundred others. An object can have several names, and search in the Catalog and in the Planetarium finds every one: type beehive or praesepe and you get M 44. A folder in your archive named with an older or other name for an object still finds its card.
- The Planetarium follows the telescope while it is open. It draws the camera's real field around the scope's position (telephoto or wide), names the target with how far is left to go, and a strip says what the scope is doing: tracking, slewing, parked, handed to the phone app, or not reachable. A reading that stops arriving turns dashed and says how old it is. "Center on telescope" and "Follow telescope" keep it in view. The object card adds rise, highest and set times, Moon distance, whether the object fits each camera's frame, and the time you already captured. Night vision draws everything in red.
- Tonight's table, the imaging plan, the Planetarium and the Seestar plan form all start from the Altitude Floor in Settings. The column headings show your number, for example "Hours above 15°". The Min altitude boxes start at your floor; changing one only changes that view.

### Seestar tab

- While the scope slews to a target, the Go button reads "Going to" and the target name and cannot be pressed twice, and a red "Stop slew" button appears beside it. The Stop slew report and its Copy button appear right under the button you pressed. When the slew ends, Go comes back.
- Holding a nudge arrow is one smooth move, up to 5 degrees per second on the coarse step. Each step size shows how fast it moves while held. A tap still moves one step. The pad says what it is doing while you hold, and there is no pop-up after every nudge. If the stop is ever lost, a held move ends by itself within 3 seconds. The team has not checked this on a real scope.
- The connection indicator is a button. It says Connect, Disconnect or Connecting, and pressing it opens the connection tools. When the scope is busy, a line says whether it is running a command or another app is connected.
- Plainer words when something does not answer: "Starstuff is not answering. It may be restarting." with a Retry button, or "The Seestar is not answering. Is it switched on and on this network?" with "Find scope" beside it. The install card for Seestar support now appears only when Seestar support is really missing.
- Star trails. The Timelapse panel has a "Star trails" choice. The scope must be connected, and tracking must be off so the stars drift across the frame; Starstuff refuses otherwise and offers to turn tracking off. After the capture, press "Make star-trail picture", then "Turn tracking on" to put tracking back. A session folder on the Process tab has a Star trails action too. Satellite, plane and meteor streaks are cleared from the frames they cross, and no frame is dropped. You can choose a fade and the sky darkness. The picture appears in the Gallery under its target, with a 16-bit TIFF to download. The build keeps running if you reload the page, and you can cancel it.
- The Seestar support download is now the seestarpy 0.7.1 file. Starstuff offers newer ones as before.
- An experiment, to stop the scope's spoken prompt (see the known issues): Starstuff now tells the scope its name once each time it connects. If the scope refuses the name, the Console says so.

### Processing

- The Stop button on the Process page now works during a run, and both Stop buttons say what happened. If a run ends some other way, the page says so instead of showing Running for ever.

### Gallery

- Gallery cards show the common name beside the catalog id, the same names as the Catalog cards.

### Setup and spelling

- The first-run setup also asks where Starstuff should keep its own data (settings, logs, caches; not your pictures). It shows the free space and cannot be skipped. A folder on a network or removable drive needs a tick to accept. Settings has "Change folder…": it copies the data, checks the copy and uses the new folder after a restart. A folder that already holds Starstuff data is used as it is, and a folder name Windows does not allow gets a plain message. "Remove the old copy" deletes only files that are identical in the new folder and lists what it kept and why. After one removal you can open the old folder or press "Dismiss" to turn the offer off for good.
- Spelling in the app, its messages and the guides is US English throughout: Catalog, color, center, license, behavior.

## What changed in the known issues

- New: the scope keeps saying aloud that you should update your app. It is a bug, and there is a workaround (turn the scope's speaker down in the Seestar app). See [KNOWN-ISSUES.md](KNOWN-ISSUES.md).
- Nothing from the first build was removed. Every other row was checked against this build and is still true.

## What we would like you to try first

1. Open Settings and try Light, Dark and Night. Tell us if any screen is hard to read.
2. Open the Catalog. Check that the names, the sizes in the frame and tonight's hours look right for your place. Search for a name such as "beehive" or "pleiades".
3. Open the Planetarium and look at a target. If you own a Seestar, connect it and watch the reticle follow the telescope.
4. Seestar owners: press Go to a target and then "Stop slew". Hold a nudge arrow and let go. Press the connection button. Stay at the telescope.
5. Seestar owners who hear the scope say "Please update your app": tell us whether it still happens after Starstuff connects, and roughly how often. Check the Console for a line saying the scope did not accept a client name.
6. Try Star trails on a short test of a few minutes. Tell us whether the picture is what you expected.
7. Start the new version and answer the data-folder question. Tell us if anything in it was unclear.
8. Press "Send feedback", press "Preview" and read it. Then save it and send it, even to say "all fine".

## How to update

Unzip the new zip into a new folder. Do not unzip over the old one. The [README](README.md) has the steps.

Your settings and history are kept, because Starstuff keeps them in a data folder outside the program folder, and it refuses a data folder inside the program folder. The first time you start 0.7.0-beta.2 it asks once where to keep its data. The folder it offers is the one your settings are already in, so press "Use this folder". If you choose another folder, Starstuff moves the data there.

## What is not ready

- The program is not code-signed. Windows warns on every new build.
- Siril and GraXpert are not included. Install them yourself.
- Video and timelapse export need ffmpeg, which is not included.
- No automatic updates. Starstuff cannot restart itself.
- Telescope control is an optional download. The stop on release for held mount moves, the smooth nudge, Polar alignment and the "Stop slew" report have not been checked on a real telescope by the team.
- The scope may still say aloud that you should update your app.
- Sub ratings are uncalibrated.
- 2x drizzle does not work with "Split LP into Ha + OIII" or on a mosaic, and it needs much more disk space than a normal stack.
