/*
 * Author: Johannes "Letus" Bindriem
 * Function to add Item to Players Backpack
 *
 * Arguments:
 * 0: Item that would added [String]
 * 1: Amount of Items [Number]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_fnc_addToBackpack
 *
 */
private _item    = param[0];
private _ammount = param[1, 1];

//Check if Item can Put to Backpack or its to Large.
private _fits = player canAddItemToBackpack _item;
if (!_fits) exitWith { ["Du hast kein Platz um das Item zu Kaufen!"] call lts_fnc_hint };

 //Add Item to Backpack from Player!

 for "_i" from 1 to _amount do {
     if (!_fits) exitWith { ["Du hast nicht genug Platz für alles"] call lts_fnc_hint };

     player addItemToBackpack _item;
 };
