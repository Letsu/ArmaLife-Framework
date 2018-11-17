private ["_fnc_addToBackpack", "_item", "_amount", "_assignItem", "_addToBackpack"];
/*
 * Author: Johannes "Letus" Bindriem
 * To Add Items to PLayer Inventory when boaght an Item or Some other handels who an Weapon must add to the Player Inventory
 *
 * Arguments:
 * 0: The Item [String]
 * 1(Optiaml): Number of Items. Defualt: 1 [Number]
 * 2(Optiaml): Asseign Item to Player. Defualt: false [Bool]
 * 3(Optimal): Add Item to Backback. Default: false [Bool]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 */

//Function to Add ITem to Backpack when an ItemSlot is Full or when the AddToBackpack Variable is True.
_fnc_addToBackpack = {
    private ["_item", "_ammount", "_fits"];
    _item    = param[0];
    _ammount = param[1, 1];


    //Check if Item can Put to Backpack or its to Large.
    _fits = player canAddItemToBackpack _item;
    if (!_fits) exitWith { ["Du hast kein Platz um das Item zu Kaufen!"] call lts_fnc_hint };

     //Add Item to Backpack from Player!
     player addItemToBackpack _item;


};



_item = param[0];
_ammount = param[0, 1];
_assignItem = param [1, false];
_addToBackpack = param [2, false];

_exit = false;

//Check if Item is an Weapon to add the Weapon direkty to the Weaponslot
_isWeapon = ([_item] call BIS_fnc_itemType) select 0 isEqualTo "Weapon";
if (_isWeapon) then {
    //init some Defualt Variables!
    _isPrimaryWeapon   = false;
    _isHandgunWeapon   = false;
    _isSecondaryWeapon = false;

    //When addToBackpack is enable add Weapon to Backpack and exit!
    if (_addToBackpack) exitWith { [_item, _ammount] call _fnc_addToBackpack; _exit = true; };

    //Some Checks befor add Weapon.
    if (_amount > 1) exitWith { ["Du kannst nur maximal 1 Waffe auf einmal kaufen!"] call lts_fnc_hint; _exit = true; };

    //Get Typ of the Weapon
    _typ = [_item] call BIS_fnc_itemType;
    _typ = _typ select 1;
    [_item, _typ] call lts_fnc_addWeapon;

    _exit = true;
};

if (_exit) exitWith {};
