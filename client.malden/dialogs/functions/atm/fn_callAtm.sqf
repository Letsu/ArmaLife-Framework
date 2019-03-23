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
 * private _atm = [ "openATM", "Geldautomat", "", {  [] call lts_dialog_fnc_callAtm }, {true}, {}, "", {}, 10 ] call ace_interact_menu_fnc_createAction; [ this, 0, ["ACE_MainActions"], _atm ] call ace_interact_menu_fnc_addActionToObject;
 *
 * Public: [Yes/No]
 */
waitUntil {!(isNull (findDisplay 46))};

//Create the Dialog
createDialog "atmMenu";
waitUntil {!(isNull (findDisplay 30001))};

[] call lts_dialog_fnc_updateAtmText;

/* private _atm = [ "openATM", "Geldautomat", "", {  [] call lts_dialog_fnc_callAtm }, {true}, {}, "", {}, 10 ] call ace_interact_menu_fnc_createAction;
[ this, 0, ["ACE_MainActions"], _atm ] call ace_interact_menu_fnc_addActionToObject; */
