/*
 * Author: Johannes "letus" Bindriem
 * Send an request too Server to Read out Data from Player Database and send to lts_interface_fnc_getPlayerData
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_interface_fnc_requestPlayerData
 *
 */

private _pid = getPlayerUID player;

[_pid, player] remoteExec ["lts_db_fnc_getPlayerData", 2];
