/*
Join Messages (joinmsg.smx) 
Created by [AUR] Ace of Insurgency ANZ
© Insurgency ANZ (InsANZ) 2015 Dean Roffey.

CHANGELOG:
v1.0
* Initial Release
v2.0
* Added CvarEnabled - Ability to turn motd on and off
*/

#include <sourcemod>

#define Plugin_Version "2.0"

new Handle:g_CvarEnabled;

public Plugin:myinfo = {
	name = "[INS] Message Of The Day",
	author = "Insurgency ANZ",
	description = "Launch MOTD on Player Join",
	version = Plugin_Version,
	url = "http://www.insurgencyanz.com"
};

public OnPluginStart()
{
	g_CvarEnabled = CreateConVar("sm_motd_enabled","1","Enables(1) or disables(0) the plugin.",FCVAR_NOTIFY);
	AutoExecConfig(true,"plugin.motd");
}

public OnClientPutInServer(client)
{
	if (client < 1 || IsFakeClient(client) || !GetConVarBool(g_CvarEnabled)) return;
	
	FakeClientCommand (client, "say /motd");
}