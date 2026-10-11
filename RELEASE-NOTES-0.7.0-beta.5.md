# Starstuff 0.7.0-beta.5 (fifth test build)

This is the fifth test build. It adds a Calendar tab, a larger camera view on the Seestar tab, plate solving for the stacks you make and the ones you already have, and rating for stacks that live in the archive. It also closes a few leftovers of the connection work in beta.4. Files: `Starstuff-0.7.0-beta.5-win64.zip`, its `.sha256` fingerprint file and its `.sig` signature file. Install steps, the fingerprint check and the Windows warning are in the [README](README.md). Known problems are in [KNOWN-ISSUES.md](KNOWN-ISSUES.md). What came with the earlier builds is in [RELEASE-NOTES-0.7.0-beta.4.md](RELEASE-NOTES-0.7.0-beta.4.md), [RELEASE-NOTES-0.7.0-beta.3.md](RELEASE-NOTES-0.7.0-beta.3.md), [RELEASE-NOTES-0.7.0-beta.2.md](RELEASE-NOTES-0.7.0-beta.2.md) and [RELEASE-NOTES-0.7.0-beta.1.md](RELEASE-NOTES-0.7.0-beta.1.md).

The Settings page and the zip name show the version as 0.7.0-beta.5. If you run 0.7.0-beta.3 or 0.7.0-beta.4 you can install this build from Settings, About, Updates; see "How to update".

SHA-256 of `Starstuff-0.7.0-beta.5-win64.zip`: `6f9036c498e1e1598ce2c2ddd7df09fb4e564ca7bc59118d63185091e6a564d5`

What the team has not tested: nothing in this build was run against a real telescope. The new stand-alone plate solve and its checks were run with real Siril 1.4.4 on synthetic star fields; the team has not run them on real Seestar stacks. The solve inside the finish was seen to work once on a real finished stack, online, with a Siril version we did not record. Whether the Seestar phone app and Starstuff fit on the scope together is still unproven. Please read "What is not ready" below.

## What is new since 0.7.0-beta.4

### Planning

- The sky calendar. A new Calendar tab, next to Tonight, shows a month of nights. From your saved observing location, and without the internet, it works out how long each night is dark, where the Moon is during those hours, the Moon phases, the annual meteor showers, planet oppositions, close pairings of the Moon and the planets, and the eclipses you can see from your site (the built-in eclipse list runs from 2025 to 2035, so later months show none). Each coming night gets a word: Shootable, Moon-limited or No darkness. With Live Weather on, the next seven nights can also show Clouded, from the forecast (that part needs the internet). Choose a night to see its detail, then press Open Tonight (on another night the button reads, for example, Open Tonight for Oct 21) to see that night's ranked targets on the Tonight page. The weather request is the one Starstuff already made for the dew-heater advice; it now also asks for cloud cover and eight days. Without a saved location the Calendar asks you to set one.

### The Seestar tab

- A bigger camera view. On a window 1366 pixels wide or more, the Seestar tab shows one camera as a large picture with the other feeds as small tiles beside it. On a narrower window or a phone, the tiles stack two by two, or one by one, with the one you picked first. Click the picture of a small tile to put that feed on the large stage. Starstuff remembers your choice in this browser; without one it opens on the live stack.
- Controls that look like controls. In each tile header the name is plain text, the state is a badge (for example "Camera off" on the Wide camera, "Off" on Video) and the action is a button (for example "Turn on" and "Start video").
- The Station mode note can be closed. It never shows while a scope is connected. Settings, Capture, "Station mode note on the Seestar tab" shows it again, and it comes back by itself when a scope that was connected stays missing for half a minute.

### Processing

- Plate solving after every run. Starstuff now tries to plate-solve what a run makes, so each picture knows where in the sky it points: the stack itself whether or not you tick Auto post-process, the GraXpert result when GraXpert ran, the Ha and OIII stacks of a dual-band run, and the finished picture when Auto post-process is on. The processing summary and the run folder record the center, scale and rotation of each one that was solved. Siril uses its local star catalog if you have one and otherwise the internet. A stack is solved on a copy and replaced only after the copy is checked to have the same size, bit depth, header entries and pixels, apart from what the solve itself writes; otherwise the stack is left exactly as it was. A solve that cannot be done (for example offline, or when the stack's header has no binning entry) is a warning in the run log, and the run still finishes. A stack that already has a solution keeps it.
- Plate-solve stacks you already have. In Check a finished stack, "Plate-solve this stack" sits beside "Rate this stack". "Plate-solve this stack" writes the sky position into the stack file itself, on a checked copy that then replaces the file. "Solve again" replaces a solution the stack already has, after asking, and needs Siril 1.4.4 or newer.
- Rate stacks that are in the archive. Check a finished stack now lists every finished stack of the target, split into "On the fast drive" and "In the archive", with each one's date and size, and the box also shows when the target has nothing on the fast drive. Rating an archive stack only reads it. When the archive is on a network or removable drive, or a read runs past three seconds, Starstuff says it is reading and offers Stop, which really stops the read. Frame counts come from the summary kept beside the stack and show as unknown when there is none. If the archive folder you typed is not the one saved in Settings, the box tells you to save it first.

### The connection to the Seestar

- A video feed left running in a browser tab nobody is looking at now ends even while a timelapse runs.
- The note that a running timelapse or star-trails capture keeps a second connection to the scope now sits at the top of the Seestar tab, outside the parts that the tab's display mode can hide, so it stays on screen.
- A copy of Starstuff started with STARSTUFF_SEESTAR_OFFLINE=1 now also leaves Find scope idle and says so, instead of searching the network.
- After a restart with Disconnect remembered, loading the telescope add-on no longer opens a connection to the scope; Connect makes the lookup that was skipped. The add-on still sends a short search message, repeated for about two seconds, on your home network (see the known issues).
- When Starstuff opens or refuses the connection that carries pictures, its log now says which part of Starstuff asked, at most once every 30 seconds for each part of Starstuff, each port and each kind of answer.

## What changed in the known issues

- Changed: "Updating in the program is new" now says that from 0.7.0-beta.4 this is the way to reach 0.7.0-beta.5.
- Changed: "The scope keeps asking aloud for an app update" now says our explanation of the cause is a guess that we have not proved.
- Changed: "The phone app and Starstuff may not both fit on the scope" now says we have not yet seen both connected together on a real scope.
- New: plate solving needs the internet unless Siril has a local star catalog; an online catalog that hangs makes a run wait (5 minutes for each solve, 20 for the finish); a stack whose header has no binning entry is not plate-solved; "Solve again" needs Siril 1.4.4 or newer; long text in a small camera tile shows in full only as a tooltip; the telescope add-on still sends a short search message after a restart with Disconnect remembered.
- Every other row was re-read against this build and is still true.

## What we would like you to try first

1. The update path. If you run 0.7.0-beta.3 or 0.7.0-beta.4, open Settings, About, Updates, press "Check now" and then "Download and install". Tell us what the panel says at each step, even when it works.
2. The Calendar. Open it, look at a night you know, and check that the dark hours and the Moon look right for your site. Press Open Tonight on a night (on another night the button reads, for example, Open Tonight for Oct 21). With Live Weather on, look at the cloud on the next seven nights.
3. Plate solving. Run a stack, then read the lines about the sky position in the run log and the processing summary. On an older stack, open Check a finished stack and press "Plate-solve this stack". It writes the sky position into the stack file itself (on a checked copy that then replaces the file), so try it on a copy of a stack first. Tell us what it said, especially when it says a stack was not solved.
4. Rating a stack in the archive. Pick one under "In the archive" in Check a finished stack and press "Rate this stack". If the read is slow, press Stop and check that it stops.
5. The Seestar tab. Click a small camera tile to put it on the stage, close the Station mode note and bring it back from Settings, Capture. If you have a scope: connect, press Disconnect, restart Starstuff, then open the phone app and tell us what each one shows. Then press "Send feedback", press "Preview" and read it. Save it and send it, even to say "all fine".

## How to update

Use Settings, About, Updates: "Check now", "Download and install", then "Restart into the new version". Your settings and history are kept, because Starstuff keeps them in a data folder outside the program folder. The [README](README.md) has the steps.

If the panel does not work, update by hand: download the new zip and check its fingerprint, unzip it into a new folder (not over the old one), and start the new `Starstuff.exe`. Then tell us what the panel said.

## What is not ready

- Nothing in this build was run against a real telescope by the team.
- The new stand-alone plate solve and its checks were run with real Siril 1.4.4 on synthetic star fields; the team has not run them on real Seestar stacks. The solve inside the finish was seen to work once on a real finished stack, online, with a Siril version we did not record. How it behaves on your stacks is what we would like to learn.
- Whether the phone app and Starstuff fit on the scope together is still unproven.
- The program is not code-signed. Windows warns on every new build.
- Siril and GraXpert are not included. Install them yourself.
- Video and timelapse export need ffmpeg, which is not included.
- Telescope control is an optional download. The stop on release for held mount moves, the smooth nudge, Polar alignment and the "Stop slew" report have not been checked on a real telescope by the team.
- The scope may still say aloud that you should update your app.
- Sub ratings are uncalibrated.
- 2x drizzle does not work with "Split LP into Ha + OIII" or on a mosaic, and it needs much more disk space than a normal stack.
