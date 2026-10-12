# Starstuff 0.7.0-beta.6 (sixth test build)

This is the sixth test build. It makes the Planetarium easier to search and to read, makes a second start of Starstuff open the copy that is already running, adds a Quit button, and lets the program use the whole width of a wide screen. Files: `Starstuff-0.7.0-beta.6-win64.zip`, its `.sha256` fingerprint file and its `.sig` signature file. Install steps, the fingerprint check and the Windows warning are in the [README](README.md). Known problems are in [KNOWN-ISSUES.md](KNOWN-ISSUES.md). What came with the earlier builds is in [RELEASE-NOTES-0.7.0-beta.5.md](RELEASE-NOTES-0.7.0-beta.5.md), [RELEASE-NOTES-0.7.0-beta.4.md](RELEASE-NOTES-0.7.0-beta.4.md), [RELEASE-NOTES-0.7.0-beta.3.md](RELEASE-NOTES-0.7.0-beta.3.md), [RELEASE-NOTES-0.7.0-beta.2.md](RELEASE-NOTES-0.7.0-beta.2.md) and [RELEASE-NOTES-0.7.0-beta.1.md](RELEASE-NOTES-0.7.0-beta.1.md).

The Settings page and the zip name show the version as 0.7.0-beta.6. If you run 0.7.0-beta.3, 0.7.0-beta.4 or 0.7.0-beta.5 you can install this build from Settings, About, Updates; see "How to update".

SHA-256 of `Starstuff-0.7.0-beta.6-win64.zip`: `b2a9d0e1d4694b2b39119f909a364999ec452f011dbc376e0e0aa53f4c85ea52`

What the team has not tested: nothing in this build was run against a real telescope. The new Quit button lets go of the connection to the scope before it closes Starstuff, so that the Seestar phone app can connect; the team has not seen that on a real scope. Whether the Seestar phone app and Starstuff fit on the scope together is still unproven. Please read "What is not ready" below.

## What is new since 0.7.0-beta.5

### The Planetarium

- Search finds stars, planets and constellations. The Find box at the top of the Planetarium used to find only Messier, Caldwell, NGC and IC objects, and it was easy to miss. It now sits at the top with a search icon, and it also finds named stars, the Sun, the Moon, the planets and the constellations. Each result says in a word what it is. Choose one and the Planetarium turns to it, centers it, zooms in and puts a marker on it. Try Vega, Jupiter, Orion or M31.
- Named stars can be clicked. Click a named star in the sky and a small card opens for it. Only the stars that have a name in Starstuff's sky data (377 of them) can be found by name or clicked, and a star can be clicked only while it is drawn at your zoom.
- Star-atlas symbols instead of rings. In the 3D view the deep-sky objects are no longer colored rings but the symbols of a printed star atlas, and the shape tells you the type: an oval for a galaxy, a circle with a cross for a globular cluster, a dashed circle for an open cluster, a rounded square for a nebula, a circle with four small ticks for a planetary nebula and a dashed square for a supernova remnant. An object you have photographed is a heavy, filled symbol with a bold name and up to five dots after it. The dots compare your own targets with each other: 15 minutes is one dot and your deepest target is five. A target whose hours are not on record has no dots. The colors still follow the type and the exposure, but nothing depends on color alone any more, and the Key explains the symbols in words. Every galaxy is drawn as the same plain oval; real galaxy shapes are not in this build.

### Wide screens

- The whole screen for pictures and charts. On a wide monitor the Planetarium, the Gallery, the Calendar, the Overview and the Catalog now use the whole width of the window instead of a column in the middle. The sky in the Planetarium spans the window, and the Gallery shows more columns. The Tonight, Process and Processing pages keep their column for now.

### Starting and quitting Starstuff

- A second start opens the copy that is already running. If Starstuff is already running, starting it again (`Starstuff.exe`, or the start script of a copy that runs from source) opens the running copy in your browser, says so in one plain sentence and ends, instead of printing a port error. The start script no longer waits 60 seconds after it says Starstuff is already running.
- A copy that cannot get its port ends. Before, a copy that could not use port 8100 printed the error and stayed alive in the background without a port. Now it ends. If another program holds the port, the message names the port and the `STARSTUFF_PORT` setting that picks another one.
- A Quit button. Settings, About has a new button, "Quit Starstuff". It asks first. While a job is running it refuses and says what is running; a second button, "Quit anyway", stops the job and quits. When it goes ahead it lets go of the connection to the scope, so that the phone app can connect, and then closes the program.
- A bar after an update. When Starstuff has been updated while a copy is still running, a bar says "Starstuff was updated. Restart it to finish." with a Restart button. If only your browser tab is old, the bar says "This page is from before the last restart. Reload it." A copy from before this build cannot show the bar.
- The Seestar connection of a copy without a window. If Starstuff was running without a window and a browser tab stayed open on the Seestar page, it kept its connection to the telescope, and the Seestar phone app could be refused. "Quit Starstuff" now closes that connection. This is what the code does; the team has not seen it at a telescope.
- No console window after an update. When you press "Restart into the new version", the new Starstuff starts without a console window, because the updater starts it that way. There is then no window to close. Use "Quit Starstuff" in Settings, About. The restart icon in the header still restarts it.

### Lists and buttons

- A corrected Caldwell list. 103 of the 109 Caldwell objects had a wrong position, type or brightness in Starstuff's own list; for example Caldwell 59, the Ghost of Jupiter, sat hours away from its real place and was called a galaxy. In earlier builds "Go to" and "Add to plan" from the Catalog or the Tonight list pointed at the wrong part of the sky for about 100 Caldwell objects, and their altitude, their hours above your floor and the names drawn on a plate-solved picture were wrong too. All 109 rows were rebuilt from the NGC and IC catalog that ships with Starstuff and checked a second time independently, without a reference from the internet. Caldwell 6, 14, 20, 27, 33 and 34 were already right. The Messier list was checked and needed no change. If you planned or shot a Caldwell object with an earlier build, check where the scope really pointed.
- The "Add to plan" button is no longer cut off on the rows of the Tonight list.

## What changed in the known issues

- Changed: "Updating in the program is new" now says that from 0.7.0-beta.5 this is the way to reach 0.7.0-beta.6.
- Changed: "Port 8100 is in use" is now "Port 8100 is in use by another program". A second Starstuff opens the running copy, so the row is about another program holding the port.
- Changed: "The phone app and Starstuff may not both fit on the scope" now also names "Quit Starstuff" as a way to let go of the scope. We have not yet seen both connected together on a real scope.
- New: a copy that was started by an update has no console window, and "Quit Starstuff" in Settings, About is how you close it.
- New: only the 377 stars that have a name in Starstuff's sky data can be found by name or clicked.
- The other rows were not re-read for this build.

## What we would like you to try first

1. The update path. If you run 0.7.0-beta.3, 0.7.0-beta.4 or 0.7.0-beta.5, open Settings, About, Updates, press "Check now" and then "Download and install", then "Restart into the new version". Tell us what the panel says at each step, even when it works. The new copy has no console window; check that the page comes back, and that "Quit Starstuff" in Settings, About closes it.
2. Search in the Planetarium. Type Vega, Jupiter, Orion and an object you know, and choose each result. Does the view turn to it, zoom in and show a marker? Then click a named star and tell us what the card says.
3. The new symbols. Look at the 3D view over your own targets. Is every shape right for its type? Can you read the names and see the dots of the targets you photographed, in Light, Dark and Night? Tell us about any symbol that is wrong or hard to see.
4. Starting twice. With Starstuff running, double-click `Starstuff.exe` again. Your browser should open on the running copy and no error should appear. Then press "Quit Starstuff", start it again, and, if a run is going, check that Quit refuses and says what is running.
5. A wide screen, and your report. If you have a wide monitor, look at each tab and tell us where the page still leaves the sides empty. If you have a scope: connect, press "Quit Starstuff", then open the phone app and tell us whether it connects. Then press "Send feedback", press "Preview" and read it. Save it and send it, even to say "all fine".

## How to update

Use Settings, About, Updates: "Check now", "Download and install", then "Restart into the new version". Your settings and history are kept, because Starstuff keeps them in a data folder outside the program folder. The [README](README.md) has the steps.

If the panel does not work, update by hand: download the new zip and check its fingerprint, unzip it into a new folder (not over the old one), and start the new `Starstuff.exe`. Then tell us what the panel said.

## What is not ready

- Nothing in this build was run against a real telescope by the team. That includes "Quit Starstuff": it lets go of the connection to the scope, and the team has not seen the phone app connect afterwards on a real scope.
- Whether the phone app and Starstuff fit on the scope together is still unproven.
- The stand-alone plate solve and its checks were run with real Siril 1.4.4 on synthetic star fields; the team has not run them on real Seestar stacks. The solve inside the finish was seen to work once on a real finished stack, online, with a Siril version we did not record. How it behaves on your stacks is what we would like to learn.
- The program is not code-signed. Windows warns on every new build.
- Siril and GraXpert are not included. Install them yourself.
- Video and timelapse export need ffmpeg, which is not included.
- Telescope control is an optional download. The stop on release for held mount moves, the smooth nudge, Polar alignment and the "Stop slew" report have not been checked on a real telescope by the team.
- The scope may still say aloud that you should update your app.
- Sub ratings are uncalibrated.
- 2x drizzle does not work with "Split LP into Ha + OIII" or on a mosaic, and it needs much more disk space than a normal stack.
