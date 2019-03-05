/*
 * Author: Johannes "Letus" Bindriem
 * Adds all needed Ace Actions to te Player
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_core_fnc_playerInteraction;
 *
 */

private _side = lts_core_curSide;

private _checkLicense = [ "_checkLicense", "Lizenzen Überprüfen", "", {  _this call lts_cop_fnc_requestLicense }, {true}, {}, "", {}, 10 ] call ace_interact_menu_fnc_createAction;
[ "C_man_1", 0, ["ACE_MainActions"], _checkLicense ] call ace_interact_menu_fnc_addActionToClass;

private _giveTicket = [ "giveTicket", "Strafzettel Ausstellen", "", {  _this call lts_dialog_fnc_callTicket }, {true}, {}, "", {}, 10 ] call ace_interact_menu_fnc_createAction;
[ "C_man_1", 0, ["ACE_MainActions"], _giveTicket ] call ace_interact_menu_fnc_addActionToClass;
