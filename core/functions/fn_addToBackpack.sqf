private ["_item", "_ammount", "_fits"];
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
_item    = param[0];
_ammount = param[1, 1];


//Check if Item can Put to Backpack or its to Large.
_fits = player canAddItemToBackpack _item;
if (!_fits) exitWith { ["Du hast kein Platz um das Item zu Kaufen!"] call lts_fnc_hint };

 //Add Item to Backpack from Player!
 player addItemToBackpack _item;
