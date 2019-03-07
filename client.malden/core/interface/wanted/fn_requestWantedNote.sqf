/*
 * Author: Johannes "Letus" Bindriem
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
private _target    = param [0];
private _targetUID = getPlayerUID _target;
private _player    = player;

[_player, _targetUID] remoteExec ["lts_db_fnc_getWantedInfo", 2];
