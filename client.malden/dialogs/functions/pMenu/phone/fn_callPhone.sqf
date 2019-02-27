/*
 * Author: Johannes "Letus" Bindriem
 * Open Phone dialog and call all needet Functions
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_callPhone
 *
 */

 //Check if Main Screen is Open!
waitUntil {!(isNull (findDisplay 46))};

//Create the Dialog
createDialog "pMenuPhone";
waitUntil {!(isNull (findDisplay 94001))};
