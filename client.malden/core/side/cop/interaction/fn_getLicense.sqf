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

private _target       = param [0];
private _player       = param [1];
private _actionParams = param [2];
private _licenses     = param [3];

_licenseArr = [];

{
    if (_x select 1) then {
        _licenseArr pushBackUnique (_x select 0)
    };
} forEach _licenses;

//Out Put _licenseArr
