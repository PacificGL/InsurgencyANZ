# InsurgencyANZ / CustomSkins
Competitive theaters, used on Insurgency ANZ servers, by Pacific Gaming League or created for the Steam Workshop. All theaters are original. Some are also available on the Steam Workshop.

## Installation
1) Download GCFScape: http://nemesis.thewavelength.net/files/files/gcfscape185.zip 
    * Exract the "HLLib.dll" and "GCFScape.exe" to any location and you are done

2) Download GIMP: http://download.gimp.org/pub/gimp/v2.8/windows/gimp-2.8.14-setup-1.exe
    * Run the setup file

3) Download GIMP vtf Plugin: https://code.google.com/p/gimp-vtf/downloads/detail?name=gimp-vtf-1.2.1_x64.zip&can=2&q=
    * Extract the "file-vtf.exe" and "VTFLib.dll" to your GIMP plug-ins folder. (C:\Users\<USER>\.gimp-x.x\plug-ins\)

**GCFScape**
1) Launch GCFScape

2) Open "insurgency_materials_dir.vpk" (C:\Program Files (x86)\Steam\SteamApps\common\insurgency2\insurgency\)

3) Navigate inside "materials" to "models" then copy "player" and "weapons" to any location (I use the GCFScape folder for ease)

4) Once they have copied across, close GCFScape

NOTE: The point of this is to access all Insurgency player, weapon and attachment vtf files

**Preparing Directory**
* Create "custom" folder in the Insurgency directory (Eg. C:\Program Files (x86)\Steam\SteamApps\common\insurgency2\insurgency\custom)

## Skin Editing
**Preview Skins**
* Launch Half-Life Model Viewer (C:\Program Files (x86)\Steam\SteamApps\common\insurgency2\bin\SDKLauncher.exe > 2nd option then close the SDKLauncher when HLMV opens)
* Open the Light Insurgent model (Eg. File > Load Model > characters > insurgent_light.mdl)
* After changes have been made to the current model you are viewing, you must refresh the model every time (F5 or File > Refresh)

**CONTROLS:**
* Zoom: Press & Hold RMB
* Rotate X: Press & Hold LMB in circle and move Left or Right
* Rotate Y: Press & Hold LMB in circle and move Up or Down
* Tilt L or R: Press & Hold LMD out of circle and move Left or Right
* Move Object: Press & Hold Shift & LMB and move any direction

**Editing Skins**
* Launch GIMP
* Open the vpk you want to edit (eg. Light Insurgent: GCFScape > player > ins_light > ins_light_color.vtf)
* Edit to your desire (Remember to save versions along the way to revert if needed and apply layers to separate details. Save as <description>.xcf in any location)
* When you make changes, it is good to check it along the way. First make a separate window with the single layer skin (Select > All... Edit > Copy Visible...  File > Create > From Clipboard)
* Create a folder in the Insurgency "custom" folder to describe your model (Eg. C:\Program Files (x86)\Steam\SteamApps\common\insurgency2\insurgency\custom\LightInsurgentCamo)
* Create folders that match where you got the GCFScape file from, inside that folder (Eg. \custom\LightInsurgentCamo\materials\models\player\ins_light)
* In the new window (File > Export As > *location from previous step*\*the exact name of the original file*) (Eg. insurgency2\insurgency\custom\LightInsurgentCamo\materials\models\player\ins_light\ins_light_color.vtf)
* Now refresh HLMV to see changes you made, applied to the model
* Repeat the "Select > All... Edit > Copy Visible...  File > Create > From Clipboard", in the new window "File > Export As > ins_light_color.vtf", and "Refresh" in HLMV for every change you want to check


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
