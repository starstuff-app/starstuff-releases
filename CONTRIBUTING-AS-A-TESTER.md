# Testing Starstuff: how reports work

Thank you for testing. This page says how to report, what happens to your report, and what to watch out for. Reports go to the issues of https://github.com/starstuff-app/starstuff-releases

## Where to report

| What | Where |
|---|---|
| A bug, with a report file | Issues tab, New issue, "Bug report" |
| An idea or something you liked | Issues tab, New issue, "Feedback or idea" |
| A question | Issues tab, New issue, "Question" |
| A quick chat, or something urgent | Message the person who invited you |

You do not need both. An issue is best, because it does not get lost.

How to make the report file is in the [README](README.md) under "How to report a problem". In short: speech-bubble icon in the header, fill in the two boxes, "Preview", "Save", then drag the zip from your Downloads folder into the issue form.

## What makes a good report

- One problem per report.
- What you did, in order, and what happened. If you can repeat it, say how. If it happened once, say that.
- What you expected instead.
- The Starstuff version (Settings, About), your Windows version, and the report zip.
- If Starstuff would not start, attach `starstuff.log` from `%APPDATA%\Starstuff\logs`.
- If a telescope was involved, its model and firmware.

Stuck at any point? That is a result too. Write down where.

## What happens next

1. We read every report. A new issue gets the label `needs-triage`.
2. We give it a severity. S1: data loss, a crash, or Starstuff will not start. S2: a main flow is blocked. S3: annoying, but there is a workaround. S4: an idea or polish.
3. We reply in the issue. We usually do so within a few days, and faster for S1. This is a small, volunteer test, so this is a goal, not a promise.
4. S1 problems are fixed first. Everything else goes into a later build. We aim for a new build every one to two weeks while the test runs.
5. When a fix ships, the release notes say so, and we tell you in the issue.
6. If something cannot be fixed soon, it goes into KNOWN-ISSUES.md with a workaround.

We may close a report as a duplicate, or ask you for more detail. That is not a rejection.

## Privacy

- Everyone who has access to this repository can read every issue, every comment and every attachment. Treat an issue like a message in a group chat.
- Starstuff removes folder paths, names, addresses and exact coordinates from the report zip before it saves it. Press "Preview" in the feedback window to see the text that will be saved.
- Screenshots are different. Starstuff removes the hidden data inside an image (such as where a photo was taken), but what you can see in the picture stays. Before you attach a screenshot, look for:
  - your Windows user name, for example in a folder path that begins with the drive letter, then `Users`, then your name
  - folder paths and drive names
  - your location name, coordinates, or a map showing your home
  - your telescope's network name or address
  Crop or cover these. Then attach the picture.
- Do not paste private details into the text of an issue.
- You have the Read role, which lets you open issues and write comments. You can edit your own issues and delete your own comments on GitHub. Tell us if you attached something by mistake, and we will remove it too.

## Terms

By testing you accept the [terms of this test](TEST-TERMS.md). Do not share the download link, the files, or what you see in this repository.
