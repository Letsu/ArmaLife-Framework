/*
 * Author: Johannes "Letus" Bindriem
 * Open Licenses dialog and call all needet Functions
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_callLicenses
 *
 */

 //Check if Main Screen is Open!
waitUntil {!(isNull (findDisplay 46))};

//Create the Dialog
createDialog "pMenuLicense";
waitUntil {!(isNull (findDisplay 95001))};
