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
createDialog "wanted";
waitUntil {!(isNull (findDisplay 40001))};

//diefine Local Global variables to get Values from other FIles
lts_dialog_wanted_lbPlayerList = []; //List of all Players in PLayer LB

systemChat "callWanted";
[] call lts_dialog_fnc_fillWanted;
