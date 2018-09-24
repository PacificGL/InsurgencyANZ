/*
[INS] Coop Override (coop_override.smx) 
Created by [AUR] Ace of Insurgency ANZ
© Insurgency ANZ (InsANZ) 2015 Dean Roffey.

CHANGELOG:
v1.0
* Initial Release
*/

#pragma semicolon 1
#include <sourcemod>
#define PLUGIN_VERSION "1.0"
#define PLUGIN_DESCRIPTION "Plugin for overriding Insurgency Coop to x players"

public Plugin:myinfo = {
	name = "[INS] Coop Override",
	author = "Insurgency ANZ",
	description = PLUGIN_DESCRIPTION,
	version = PLUGIN_VERSION,
	url = "http://www.insurgencyanz.com"
};

public OnPluginStart()
{
	decl String:folder[64];
	GetGameFolderName(folder, sizeof(folder));
	if (strcmp(folder, "insurgency") == 0)
	{
		HookEvent("server_spawn", Event_GameStart, EventHookMode_Pre);
		HookEvent("game_init", Event_GameStart, EventHookMode_Pre);
		HookEvent("game_start", Event_GameStart, EventHookMode_Pre);
		HookEvent("game_newmap", Event_GameStart, EventHookMode_Pre);
		size_override();
	}
}

public Event_GameStart(Handle:event, const String:name[], bool:dontBroadcast)
{
	size_override();
}

public size_override()
{
	new Handle:cvar;
	cvar = FindConVar("mp_coop_lobbysize");
	SetConVarBounds(cvar,ConVarBound_Upper, true, 16.0);
}