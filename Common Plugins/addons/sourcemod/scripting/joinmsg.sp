/*
Join Messages (joinmsg.smx) 
Created by [AUR] Ace of Insurgency ANZ
© Insurgency ANZ (InsANZ) 2015 Dean Roffey.

CHANGELOG:
v1.0
* Initial Release
v2.0
* Added CvarEnabled - Ability to turn joinmsg on and off
v3.0
* No longer shows bots connecting
*/

#include <sourcemod>

#define Plugin_Version "3.0"

new Handle:g_CvarEnabled;

public Plugin:myinfo = {
	name = "[INS] Join Messages",
	author = "Insurgency ANZ",
	description = "Notify on Player Join",
	version = Plugin_Version,
	url = "http://www.insurgencyanz.com"
};

public OnPluginStart()
{
	g_CvarEnabled = CreateConVar("sm_joinmsg_enabled","1","Enables(1) or disables(0) the plugin.",FCVAR_NOTIFY);
	AutoExecConfig(true,"plugin.joinmsg");
}

public OnClientPutInServer(client)
{
	if (!GetConVarBool(g_CvarEnabled)) return;
	if (!IsFakeClient(client))
	{
		new String:name[32];
		GetClientName(client, name, sizeof(name));
		PrintToChatAll("%s joined the fight.", name);
	}
}