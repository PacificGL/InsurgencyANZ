# InsurgencyANZ / CustomSkins
Competitive theaters, used on Insurgency ANZ servers, by Pacific Gaming League or created for the Steam Workshop. All theaters are original. Some are also available on the Steam Workshop.

## Installation (Do Once)
1) Download [GCFScape](http://nemesis.thewavelength.net/files/files/gcfscape185.zip) & extract `HLLib.dll` & `GCFScape.exe` to any location on your PC

2) Download [GIMP](http://download.gimp.org/pub/gimp/v2.8/windows/gimp-2.8.14-setup-1.exe) & run the setup file

3) Download [GIMP vtf Plugin](https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/gimp-vtf/gimp-vtf-1.2.1_x64.zip) & extract `file-vtf.exe` & `VTFLib.dll` to your GIMP plug-ins folder
    * *eg.* `'C:/Users/<USER>/.gimp-x.x/plug-ins/'`

**GCFScape**
1) Launch GCFScape & open `'insurgency_materials_dir.vpk'`
    * *Located in* `'C:/Program Files (x86)/Steam/SteamApps/common/insurgency2/insurgency/'`

2) Navigate inside `materials` to `models`, then copy `player` & `weapons` to any location on your PC

3) Once they have copied across, close GCFScape

*NOTE: The point of this is to access all Insurgency player, weapon and attachment vtf files*

**Preparing Directory**
1) Create "custom" folder in the Insurgency directory
    * *eg.* `'C:/Program Files (x86)/Steam/SteamApps/common/insurgency2/insurgency/custom'`

## Skin Editing (Do For Each)
**Preview Skins**
1) Launch Half-Life Model Viewer
   * `'.../SteamApps/common/insurgency2/bin/SDKLauncher.exe'` > 2nd option (HLMV)
2) Open the Light Insurgent model
   * *eg.* `File` > `Load Model` > `characters` > `insurgent_light.mdl`
3) After changes have been made to the current model you are viewing, you must refresh the model every time
   * `F5` or `File` > `Refresh`* to update the display

**CONTROLS:**
   * **Zoom:** Press & Hold RMB
   * **Rotate X:** Press & Hold LMB in circle and move Left or Right
   * **Rotate Y:** Press & Hold LMB in circle and move Up or Down
   * **Tilt L or R:** Press & Hold LMD out of circle and move Left or Right
   * **Move Object:** Press & Hold Shift & LMB and move any direction

**Editing Skins**
1) Launch GIMP & open the vpk you want to edit
    * *eg.* Light Insurgent: `GCFScape` > `player` > `ins_light` > `ins_light_color.vtf`
2) Edit to your desire, remembering to save versions along the way to revert if needed and apply layers to separate details
    * Save as `<yourfilename>.xcf` in any location
3) When you make changes, it is good to check it along the way. First make a separate window with the single layer skin
    * `Select` > `All`... `Edit` > `Copy Visible`...  `File` > `Create` > `From Clipboard`
4) Create a folder in the Insurgency "custom" folder to describe your model
    * *eg.* `'C:/Program Files (x86)/Steam/SteamApps/common/insurgency2/insurgency/custom/LightInsurgentCamo)'`
5) Create folders that match where you got the GCFScape file from, inside that folder
    * *eg.* `'/custom/LightInsurgentCamo/materials/models/player/ins_light'`
6) In the new window (`File` > `Export As` > *location from previous step*\*the exact name of the original file*)
    * *eg.* `'insurgency2/insurgency/custom/LightInsurgentCamo/materials/models/player/ins_light/ins_light_color.vtf'`
7) Now refresh HLMV to see changes you made, applied to the model
8) Repeat the `Select` > `All`... `Edit` > `Copy Visible`...  `File` > `Create` > `From Clipboard`, in the new window `File` > `Export As` > `ins_light_color.vtf`, and `Refresh` in HLMV for every change you want to check


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
