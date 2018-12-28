/*
 * Author: Johannes "letus" Bindriem
 * Send an Request to Database to read out the Cop table
 * The Returnd Data sended to "lts_interface_fnc_getCopData"
 *
 * Arguments:
 * 0: PID from Player
 * 1: Object of PLayer
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [pid, player] remoteExec ["lts_db_fnc_getCopData", 2]
 *
 */
private _pid = param [0];
private _player = param [1];

private _query = call compile ("extDB3" callExtension (format ["0:Player:GetPlayerData:%1", _pid]) );

if (_query select 0 != 0) exitWith { [ format["Error in getPlayerData", _query select 1] ] call lts_server_fnc_log };

_query = _query select 1;

[_query] remoteExec ["lts_interface_fnc_getPlayerData", _player];
