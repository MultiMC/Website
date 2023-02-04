---
title: 0.7.0 - The forever develop release
author: peterix
date: 2023-02-03
---

This is a nice big rollup release with all kinds of things that accumulated since the last release.

With this, we are also abandoning the concept of stable releases. From now on, MultiMC will always use the `develop` channel.

### Some selected changes

- Remove concept of switching update channels
- Improve path parsing for modrinth packs
- [GH-4978](https://github.com/MultiMC/Launcher/issues/4978): Add button to log back in when the account has expired
- [GH-4964](https://github.com/MultiMC/Launcher/issues/4964): Load ShowGameTimeHours setting correctly on settings page
- Added a button to copy the MSA code
- Added a setting to display playtime in hours only
- [GH-3516](https://github.com/MultiMC/Launcher/issues/3516): Display available versions for Solder packs
- Match CurseForge pack description format in Technic UI
- Include the modpack version in instance title
- Allow Technic pack API urls to be used in search
- Improve ATLauncher modpack platform UI
- Confirm screenshot upload
- Improve Modrinth description's page rendering
- Log file extension of mods to clear ambiguity
- Shortcut creation has been added
- Added log upload confirmation
- Implement handling of client-overrides for Modrinth
- [GH-4724](https://github.com/MultiMC/Launcher/issues/4724): Set suggested version for Modrinth packs when it is changed
