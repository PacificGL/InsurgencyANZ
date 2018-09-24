/*
Sound Restart (soundrestart.smx) 
Created by [AUR] Ace of Insurgency ANZ
© Insurgency ANZ (InsANZ) 2015 Dean Roffey.

CHANGELOG:
v1.0
* Initial Release
*/

#include <sourcemod>

#define Plugin_Version "1.0"

new Handle:g_CvarEnabled;

public Plugin:myinfo = {
	name = "[INS] Sound Restart",
	author = "Insurgency ANZ",
	description = "Restart Sound for Custom Mods (eg. InsurgenZ)",
	version = Plugin_Version,
	url = "http://www.insurgencyanz.com"
};

public OnPluginStart()
{
	g_CvarEnabled = CreateConVar("sm_soundrestart_enabled","1","Enables(1) or disables(0) the plugin.",FCVAR_NOTIFY);
	AutoExecConfig(true,"plugin.soundrestart");
}

public OnClientPutInServer(client)
{
	if (!IsFakeClient(client) && GetConVarBool(g_CvarEnabled))
	{
		PrintToServer("Restarting Client Sound...");
		PrintToConsole(client, "Listening for Undead...");
		CreateTimer(15.0, LoadSound, client);
	}
}

public Action:LoadSound(Handle:timer, any:client)
{
	FakeClientCommand(client, "snd_restart");
	return Plugin_Handled;
}