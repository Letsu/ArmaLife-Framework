/*
 * Author: Johannes "Letus" Bindriem
 * Open Banking dialog and call all needet Functions
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_callBanking
 *
 */

 //Check if Main Screen is Open!
waitUntil {!(isNull (findDisplay 46))};

//Create the Dialog
createDialog "pMenuBanking";
waitUntil {!(isNull (findDisplay 91001))};

/* Call Function to add dynamic Text and fill the Player List Box  */
[] call lts_dialog_fnc_fillBanking;
