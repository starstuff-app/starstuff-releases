# Starstuff 0.7.0-beta.7 (seventh test build)

This is the seventh test build. It changes one thing you will see: the list of stacks for a target in the Gallery. Files: `Starstuff-0.7.0-beta.7-win64.zip`, its `.sha256` fingerprint file and its `.sig` signature file. Install steps, the fingerprint check and the Windows warning are in the [README](README.md). Known problems are in [KNOWN-ISSUES.md](KNOWN-ISSUES.md). What came with the earlier builds is in [RELEASE-NOTES-0.7.0-beta.6.md](RELEASE-NOTES-0.7.0-beta.6.md), [RELEASE-NOTES-0.7.0-beta.5.md](RELEASE-NOTES-0.7.0-beta.5.md), [RELEASE-NOTES-0.7.0-beta.4.md](RELEASE-NOTES-0.7.0-beta.4.md), [RELEASE-NOTES-0.7.0-beta.3.md](RELEASE-NOTES-0.7.0-beta.3.md), [RELEASE-NOTES-0.7.0-beta.2.md](RELEASE-NOTES-0.7.0-beta.2.md) and [RELEASE-NOTES-0.7.0-beta.1.md](RELEASE-NOTES-0.7.0-beta.1.md).

The Settings page and the zip name show the version as 0.7.0-beta.7. If you run 0.7.0-beta.3, 0.7.0-beta.4, 0.7.0-beta.5 or 0.7.0-beta.6 you can install this build from Settings, About, Updates; see "How to update".

SHA-256 of `Starstuff-0.7.0-beta.7-win64.zip`: `7701923e4312e807166d4e9ee7fe4cd70d01828c880dbf8706e4fc1203b8bf86`

What the team has not tested: nothing in this build was run against a real telescope. Whether the Seestar phone app and Starstuff fit on the scope together is still unproven. Please read "What is not ready" below.

## What is new since 0.7.0-beta.6

### The Gallery

- Each stack says what it is. Open a target in the Gallery and look at its list of stacks. Every stack now carries a label that says what kind of file it is: Seestar livestack, Linear stack, Processed, GraXpert copies or Your edit.
- The facts are no longer cut off. The facts about each stack used to be cut short when they were long. They now show in full.
- The file name is one click away. You no longer have to guess which file a picture comes from.
- You choose the picture for a target. A target in the Gallery is shown with one picture. By default Starstuff picks it. Choose "Use as gallery picture" for a stack to make that stack the picture for the target. Choose "Back to automatic" to let Starstuff pick again.

### The Tonight tab

- Your plan is at the top. The objects you add to tonight's plan now show at the top of the Tonight list, with a way to remove them or open the plan in the Planetarium.
- The stars beside each object are labelled. They say how good tonight is for that object, so they no longer look like a priority you can set.

## What changed in the known issues

- Changed: "Updating in the program is new" now says that from 0.7.0-beta.6 this is the way to reach 0.7.0-beta.7.
- The other rows were not re-read for this build.

## What we would like you to try first

1. The update path. If you run 0.7.0-beta.3, 0.7.0-beta.4, 0.7.0-beta.5 or 0.7.0-beta.6, open Settings, About, Updates, press "Check now" and then "Download and install", then "Restart into the new version". Tell us what the panel says at each step, even when it works. The new copy has no console window; check that the page comes back, and that "Quit Starstuff" in Settings, About closes it.
2. The stack list. Open a target that has several stacks in the Gallery. Does each stack say what it is, and is it the right kind? Is any line of facts still cut off? Can you find the file name of a stack in one click?
3. Your own picture. Choose "Use as gallery picture" for a stack other than the one shown, and check that the Gallery now shows that stack for the target. Then choose "Back to automatic" and check that Starstuff picks again. Tell us if the picture does not change, or changes back by itself.
4. Your report. Press "Send feedback", press "Preview" and read it. Save it and send it, even to say "all fine".

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
