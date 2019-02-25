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

 //Check if Main Screen is Open!
waitUntil {!(isNull (findDisplay 46))};

//Create the Dialog
createDialog "pMenuSettings";
waitUntil {!(isNull (findDisplay 92001))};
