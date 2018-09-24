/*
Bot Count (botcount.smx) 
Created by [AUR] Ace of Insurgency ANZ
© Insurgency ANZ (InsANZ) 2015 Dean Roffey.

CREDITS: Jared Ballou <sourcemod@jballou.com> (Version 0.0.1)

CHANGELOG:
v0.0.1
* Initial Release (by Jared Ballou)
v1.0
* Added AutoExecConfig - Create Cvars in "insurgency/cfg/sourcemod/plugin.botcount.cfg"
* Removed Updater - Updater created errors if you didn't have that library, so was removed.
*/

#pragma unused cvarVersion

#include <sourcemod>
#include <sdktools>
#undef REQUIRE_PLUGIN

#define TEAM_SPECTATORS 1
#define TEAM_SECURITY 2
#define TEAM_INSURGENTS 3
#define PLUGIN_VERSION "1.0"
#define PLUGIN_DESCRIPTION "Shows Bots Left Alive"
#define UPDATE_URL    "http://www.insurgencyanz.com"

new Handle:cvarVersion = INVALID_HANDLE;
new Handle:cvarEnabled = INVALID_HANDLE;
new Handle:cvarTimer = INVALID_HANDLE;

public Plugin:myinfo =
{
	name = "[INS] Bot Counter",
	author = "Insurgency ANZ",
	description = PLUGIN_DESCRIPTION,
	version = PLUGIN_VERSION,
	url = UPDATE_URL
};

public OnPluginStart()
{
	cvarVersion = CreateConVar("sm_botcount_version", PLUGIN_VERSION, PLUGIN_DESCRIPTION, FCVAR_NOTIFY | FCVAR_PLUGIN | FCVAR_DONTRECORD);
	cvarEnabled = CreateConVar("sm_botcount_enabled", "1","Enables(1) or disables(0) the plugin.", FCVAR_NOTIFY | FCVAR_PLUGIN);
	cvarTimer = CreateConVar("sm_botcount_timer", "60","Frequency to show count", FCVAR_NOTIFY | FCVAR_PLUGIN);
	AutoExecConfig(true,"plugin.botcount");
}

new Handle:PanelTimers[MAXPLAYERS+1];
 
public OnClientPutInServer(client)
{
	PanelTimers[client] = CreateTimer(GetConVarFloat(cvarTimer), RefreshPanel, client, TIMER_REPEAT);
}
 
public OnClientDisconnect(client)
{
	if (PanelTimers[client] != INVALID_HANDLE)
	{
		KillTimer(PanelTimers[client]);
		PanelTimers[client] = INVALID_HANDLE;
	}
}
 
public Action:RefreshPanel(Handle:timer, any:client)
{
	if (!GetConVarBool(cvarEnabled))
	{
		return Plugin_Continue;
	}
	if (IsValidPlayer(client))
	{
		new myteam = GetClientTeam(client);
		new otherteam = (myteam == TEAM_SECURITY) ? TEAM_INSURGENTS : TEAM_SECURITY;
		decl String:hint[40];
		new num_ins = 0, total_ins;
		new maxplayers = GetMaxClients();

		for (new i = 1; i <= maxplayers; i++)
		{
			if (IsClientConnected(i) && IsClientInGame(i) && IsPlayerAlive(i))
			{
				if (GetClientTeam(i) == otherteam)
				{
					num_ins++;
				}
			}
		}
		total_ins = GetTeamClientCount(otherteam);
		Format(hint, 255,"Enemies Remaining: %i of %i", num_ins, total_ins);

		PrintHintText(client, "%s", hint);
	}
	return Plugin_Continue;
}

//Is Valid Player
public IsValidPlayer(client)
{
	if (client == 0)
		return false;
	
	if (!IsClientConnected(client))
		return false;
	
	if (IsFakeClient(client))
		return false;
	
	if (!IsClientInGame(client))
		return false;
	
	return true;
}

