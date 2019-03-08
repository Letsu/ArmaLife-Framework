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

private _data = param [0];

//handle Data
_data = _data select 1;
systemChat str(_data);


[_data] call lts_dialog_fnc_setWantedValues; //Format Data [[Wanted], [Wanted], [Wanted]]
