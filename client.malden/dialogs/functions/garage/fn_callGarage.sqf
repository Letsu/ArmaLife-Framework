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

private _spawnPos = param [0, ""];
waitUntil {!(isNull (findDisplay 46))};

if (_spawnPos isEqualTo "") exitWith { };

//Create the Dialog
createDialog "carGarage";
waitUntil {!(isNull (findDisplay 20001))};


[_spawnPos] call lts_dialog_fnc_fillGarage;
