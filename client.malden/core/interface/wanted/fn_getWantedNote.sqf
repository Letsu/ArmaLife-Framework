/*
 * Author: Johannes "Letus" bindriem
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

//Handle Data

[_data] call lts_dialog_fnc_fillWantedNote; //Format Data: [[Note], [Note], [Note]]
