private ["_pid"];
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

_pid = getPlayerUID player;

[_pid] call lts_fnc_log;

[_pid, player] remoteExec ["lts_db_fnc_getPlayerData", 2];
