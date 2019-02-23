/*
 * Author: Johanens "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

private _pid = getPlayerUID player;
private _player = player;


[_pid, _player] remoteExec ["lts_db_fnc_getVehicles", 2];
