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

_target      = param [0];
_player      = param [1];
_actionParam = param [2];

waitUntil {!(isNull (findDisplay 46))};

//Create the Dialog
createDialog "ticket";
/* waitUntil {!(isNull (findDisplay IDD?))}; */
