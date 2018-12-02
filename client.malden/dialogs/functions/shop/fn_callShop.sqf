/*
 * Author: Johannes "Letus" Bindriem
 * Init the Shop Dialog, open the Dialog and call all needed Functions
 *
 * Arguments:
 * 0: Class of Shop
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_callShop;
 *
 */

 //Check if Display is opend and crate an Eventhandler to Disable the ESC Key that the Player can´t exit in Spawn screen
waitUntil {!(isNull (findDisplay 46))};

_shop = param [0, ""];
if (_shop isEqualTo "") exitWith { ["None Class given on Shop Dialog Call!"] call lts_fnc_log };

//Create the Dialog
createDialog "ShopMenu";
waitUntil {!(isNull (findDisplay 70001))};

//Read Config File and Fill List Box
[_shop] call lts_dialog_fnc_getShopConfig;
