---
title: A new start
author: peterix
date: 2026-11-15T23:00:00+01:00
---
## Hello again!

It's been quite a while and a lot has happened in my life in the past few years. 

* The whole story with people making GPL forks left me utterly disgusted with open source development.
* Crazy things happened at Mojang (no comment, but it didn't help).
* I fell in love, twice.
* I got married!
* I went into some other, unrelated, projects.
* I changed jobs and I'm working on a Real Game™. Not Minecraft. Or its launcher.
* And generally, I've just been trying to exist and touching grass.

But, with some force multipliers at my side, and determination to get MultiMC back to where it should be, this is a new start.

I want to make it the best possible version of itself, with no exceptions.

## What was done in the past weeks

- **A new build and release system** on our own build server, replacing the old system:
  - MultiMC can always be built exactly the way it is now. It doesn't rely on ancient dependencies being kept online by others.
  - Builds are *almost* deterministic.
- **We have a new updater!**
- **MultiMC now fully supports visual themes**
- **Translations** now work the way they should have from the start

Generally, I have invested heavily into being able to ship large, numerous changes.

### Themes

You may have noticed that MultiMC now has a fairly comprehensive visual theme system.

![MultiMC's main window with a dark theme and a cat in the background](/images/2026_theme_better.png)

It looks better, it integrates better into all three operating systems, including titlebar colors, respecting system settings and generally being a much better experience.

There is also an editor for the themes, which gives you immediate response when you change the colors. Even when you work with the theme files outside MultiMC, it will dynamically reload your changes and show them as you work.

I plan to set up an online catalog of themes (and possibly more in the future), similar to what you would find on some Linux systems, accessible directly from the launcher.

### The updater

On the first start (or after an update from the old version), you will be greeted by a choice from three different update tiers:

![The update tier choice in MultiMC's quick setup](/images/2026_update_tiers.png)

- Latest

    This is what we had up until now. It is every change made to the code, available almost immediately (usually minutes after the change is pushed).
    Because I am planning to speed up development massively, there may be some unstable changes there. And that's why I've also added the other tiers.
- Testing

    This will have updates that aren't completely 'bleeding edge'. Testing is going to have things that are worth testing, and text changes in testing also get pushed to Crowdin for translation.

- Stable

    This is what you probably should be running from now on. It's what gets you a stable, safe experience. Testing builds are promoted to Stable once we are sure they don't cause trouble.

You can always change that in the settings afterwards.

### New platforms

Aside from that, you may also notice that you will be offered an upgrade to new variants of MultiMC builds. Until now, we have been building for some **very** old operating systems and computers. I do not want to drop this level of support, but I also want to bring MultiMC into the current decade.

So, I will be adding new variants of MultiMC:

- ARM64 builds on all systems

    This includes modern Apple devices

- Using newer versions of Qt6 on all systems.

    This should fix the rest of the display scaling issues, beyond the Qt 5.15 improvements.
    And it should also get us back to a good state on Linux systems, where Qt 5 is being deprecated.

Quite a bit of work went into making this easy, with the updater and a custom CI server at the center of it.

The immediate change is that on Windows, there is a variant that drops XP and Vista support, and has better handling of display scaling. We've had that in the background, but now it is offered automatically.

### Translations

It is now possible to translate the various dialog windows and parts of the UI that come from the UI toolkit we use.

## What comes next

All of this is **very** doable.

- Handling of Java runtimes

    With so many Java versions we need to deal with, it's to the point where this is a dealbreaker.

    MultiMC's current Java handling was fine when all we had was Java 7 and 8.

    This is the top priority.

- Qt 6 builds - mainly because of Linux compatibility

- Big improvements to mod platform features
  - Installing individual mods
  - Updating modpacks, regardless of platform where they came from

- More mod platforms. Especially CurseForge
- A theme store

    Similar to https://store.kde.org/browse/

- Better Linux packaging

    Some work has been done already, but it's nowhere near enough.

    I have some plans that [might change Linux packaging altogether](https://github.com/MultiMC/abipak). We'll see where that goes, but the idea is sound.
