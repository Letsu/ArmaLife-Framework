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
 */

private _sn    = param [0, -1];
private _level = param [1, 1];

player setVariable ["serviceNumber", _sn, true];
lts_med_level = _level;
