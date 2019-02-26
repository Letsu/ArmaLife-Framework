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
createDialog "pMenu";
waitUntil {!(isNull (findDisplay 90001))};

//Load Time and Date
[] call lts_dialog_fnc_loadTime;
