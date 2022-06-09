---
title: 0.6.16 - The Modpack Apocalypse
author: peterix
date: 2022-06-09
---

This brings some good and bad changes to modpack platforms, along with various fixes.

We've added Modrinth as a directly supported modpack platform. It's nice, and the list of packs available from it is slowly growing.

We can no longer directly import FTB modpacks from the FTB platform. Instead, this has been replaced by import from the [FTB App](https://www.feed-the-beast.com/app). You can get FTB modpacks through the FTB App and then import them into MultiMC using the `FTB App Import` page in `Add Instance`.

We can also no longer directly download CurseForge modpacks, although this should be only temporary (once the issues we have with the CurseForge API ToS are resolved, it will make a comeback). Currently, you can get CurseForge packs using the `FTB App Import`, just make sure you switch the FTB App to the CurseForge mode. The button for that isn't too obvious, look for the CurseForge logo.

Aside from these changes, the release brings some general fixes.

### Changes, itemized.

- Modrinth platform has been added, along with importing `.mrpack` files.
- FTB App Import has been added as a way to automate copying over modpacks installed using the FTB App.
- Curseforge platform and importing `.zip` files from the platform has been removed (replaced by FTB App Import).
- FTB platform has been removed (replaced by FTB App Import).
- MultiMC is now blocking passing the `-version` argument to the Java Runtime. This should stop some really strange (unaccounted for) things from happening.
- GH-3742: Added Quilt modloader installation button and support for importing Quilt-using modpacks in general.
- When the game crashes on Windows, MultiMC gives you a nicer representation of what the exit code could mean.
- Some odd corner cases when importing ATLauncher modpacks are now handled better.
- Custom player name for offline mode is now saved for your convenience.
- GH-3012: Added command line options to launch instances offline.

    Used like this:
    ```
    ./MultiMC --launch 1.17.1 --offline --name Steve
    ```

### Next steps

Obviously, we want CurseForge import back. Aside from that (in rough order of importance):

- Switch release model from distinct development and stable builds to a stream of builds with some of them promoted to stable.
- Proper support for M1 Apple hardware, and ARM pletforms in general.
- Complete rework of Java runtime management.
- Overhauling theming in general, ideally with a repository of themes [like teamspeak has](https://www.myteamspeak.com/).
- Deconstructing Forge installers and replacing them with something that doesn't randomly break and we can host ourselves.
- Investigation into gathering and providing mod metadata for all mods.
- Fixing skins in old releases, and telemetry blocking.
- ... and others.
