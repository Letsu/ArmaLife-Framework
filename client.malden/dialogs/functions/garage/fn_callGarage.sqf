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
waitUntil {!(isNull (findDisplay 46))};

//Create the Dialog
createDialog "carGarage";
waitUntil {!(isNull (findDisplay 20001))};

[] call lts_fnc_fillGarage;
