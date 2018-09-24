------------------------
-----INSURGENCY ANZ-----
------------------------
Title: READ_ME.txt
Author: [AUR] Ace
Description: Installation/Configuration Instructions

SUMMARY:
Insurgency ANZ host a 5v5 Competitve Firefight competition in Australia and New Zealand, with CyberGamer. In this collection, there are the files required to replicate this. If you do so, please give credit where credit is due. Thanks!
* Game Mode: Firefight
* Score Limit: Best of 19 Rounds (First to 10)
* Round Length: 5 Minutes
* Team Switch: 5 Rounds
* Workshop Mods: Disabled
* Player Spotting: Disabled
* Restricted Weapons: C4, IED, RPG, AT4, Underbarrel Launchers
* Supply Points: 10
* Spectating: Team Only
* Friendly Fire: Enabled
* 3rd Person Spectating: Disabled

INSTALLATION:
1) Copy the following files to their respective locations (Make copies of your files and overwrite with these new ones);
mapcycle.txt 				"insurgency/" (With all the other mapcycle files)
server.cfg 					"insurgency/cfg/" (Where your server.cfg and server_gamemodes config files are)
server_firefight.cfg 		"insurgency/cfg/" (Where your server.cfg and server_gamemodes config files are)
server_pure_whitelist.txt	"insurgency/cfg/" (Where your server.cfg and server_gamemodes config files are)
insanz_ladder_v1.theater 	"insurgency/scripts/theaters/" (You may have to create folders "scripts" and "theaters")

2) Open server.cfg and ensure you have set your "hostname", "rcon_password", "sv_password".

3) Add "mp_theater_override insanz_ladder_v1" and change/add "mapcycle mapcycle.txt". Save the file.

4) Restart your server and you're done. Enjoy!
