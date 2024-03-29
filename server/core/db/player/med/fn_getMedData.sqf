/*
 * Author: Johannes "letus" Bindriem
 * Send an Request to Database to read out the Med table
 * The Returnd Data sended to "lts_interface_fnc_getMedData"
 *
 * Arguments:
 * 0: PID from Player
 * 1: Object of PLayer
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [pid, player] remoteExec ["lts_db_fnc_getMedData", 2]
 *
 */
private _pid = param [0];
private _player = param [1];

private _query = call compile ("extDB3" callExtension (format ["0:Med:GetMedData:%1", _pid]) );
diag_log str(_query);

if (_query select 0 != 1) exitWith { [ format["Error in getMedData: %1", _query select 1] ] call lts_server_fnc_log };

_query = _query select 1;

[_query] remoteExec ["lts_interface_fnc_getMedData", _player];
