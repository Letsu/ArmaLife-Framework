private ["_pid", "_return"];
/*
 * Author: Johannes "letus" Bindriem
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

_pid = getPlayerUID player;



[_pid] remoteExec ["_return = [] lts_db_fnc_getPlayerData", 2];

return = _return;

if (!_return) exitWith { [] call lts_interface_fnc_createNewPlayer };
