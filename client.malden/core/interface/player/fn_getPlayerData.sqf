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

_return = [_uid] remoteExec ["lts_db_fnc_getPlayerData", 2]:

if !(_return select 0) exitWith { [] call lts_interface_fnc_createNewPlayer };

hint _return;
