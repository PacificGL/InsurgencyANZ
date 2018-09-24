# InsurgencyANZ / Competitive Files
Competitive files, used on Insurgency ANZ servers, by Pacific Gaming League. Includes a combination of original and community made plugins. **Requires Sourcemod**

### Resulting Server Config:
* **Game Mode:** Firefight
* **Score Limit:** Best of 19 Rounds (First to 10)
* **Round Length:** 5 Minutes
* **Team Switch:** 5 Rounds
* **Workshop Mods:** Disabled
* **Player Spotting:** Disabled
* **Restricted Weapons:** C4, IED, RPG, AT4, Underbarrel Launchers
* **Supply Points:** 10
* **Spectating:** Team Only
* **Friendly Fire:** Enabled
* **3rd Person Spectating:** Disabled

##  Installation
1) Copy the contents to your server root (eg. `'insurgency/'`) ensuring you backup the original files, first. Here is what will be overwritten and where;
    * `'mapcycle.txt'` -> `'insurgency/'` (With all the other mapcycle files)

    * `'server.cfg'` -> `'insurgency/cfg/'` (Where 'server.cfg' is)

    * `'server_firefight.cfg'` -> `'insurgency/cfg/'` (Where 'server.cfg' is)

    * `'server_pure_whitelist.txt'` -> `'insurgency/cfg/'` (Where 'server.cfg' is)

    * `'insanz_ladder_v1.theater'` -> `'insurgency/scripts/theaters/'` (You may need to create those folders)

2) Open `'server.cfg'` and ensure you have set your `hostname`, `rcon_password`, `sv_password`.

3) Add `mp_theater_override insanz_ladder_v1` and change/add `mapcycle mapcycle.txt`. Save the file.

4) Restart your server and you're done. Enjoy!

## License
    Insurgency ANZ GitHub Repository
    Copyright (C) 2018 Pacific Gaming League.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
https://github.com/PacificGL/InsurgencyANZ/blob/master/LICENSE
