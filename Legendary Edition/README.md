# Toggleable Combat Music

> Current Version: **v1.0.0**

Allows one to turn on/off combat music. This version is for **Skyrim Legendary Edition**.

# Table Of Contents

<!-- TOC -->

-   [Toggleable Combat Music](#toggleable-combat-music)
-   [Table Of Contents](#table-of-contents)
-   [Installation](#installation)
-   [Compatibility](#compatibility)
-   [Known Issues](#known-issues)
-   [Limitations](#limitations)

<!-- /TOC -->

# Installation

-   Download VIA Mod Manager
-   MO2 left side order doesn't matter.
-   Load `Toggleable Combat Music.esp` anywhere, the mod uses a Script to change values, and I don't know of another mod that isn't also a Combat Music mod, that does that.
-   In the Inns and Taverns MCM, change the default room cost to 10

# Compatibility

-   I'm unaware of any mod this conflicts with other than other "No Combat Music" type mods.

# Known Issues

-   None.

# Limitations

-   Turning combat music off while in combat, won't stop the already playing music and seems to lead to combat music playing until on turns it back on in the MCM, enters combat, leaves combat, then turns it back off. This limitation should be fixed in v1.1.0 with the addition of ConsoleUtil and running `removemusic MUSCombat` console command when turning off music. Please let me know if it's not and I will look into another solution.
