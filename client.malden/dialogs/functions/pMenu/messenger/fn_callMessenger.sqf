/*
 * Author: Johannes "Letus" Bindriem
 * Open Messages dialog and call all needet Functions
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_callMessages
 *
 */

 //Check if Main Screen is Open!
waitUntil {!(isNull (findDisplay 46))};

//Create the Dialog
createDialog "pMenuMessenger";
waitUntil {!(isNull (findDisplay 93001))};
