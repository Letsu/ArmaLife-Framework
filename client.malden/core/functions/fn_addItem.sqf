private [ "_fnc_addItems", "_item", "_amount", "_addToBackpack", "_typ", "_itemTyp", "_exit", "_aceItems"];
/*
 * Author: Johannes "Letus" Bindriem
 * To Add Items to PLayer Inventory when boaght an Item or Some other handels who an Weapon must add to the Player Inventory
 *
 * Arguments:
 * 0: The Item [String]
 * 1(Optiaml): Number of Items. Defualt: 1 [Number]
 * 2(Optimal): Add Item to Backback. Default: false [Bool]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["Item"] call lts_fnc_addItem
 *
 */

//IMPORTEN!!!!!!!
//ACE Items like Bandages and somethings are from Type ["Item","AccessoryBipod"] thats the Arma Bipod so this Item must Handels in Extra Class!!!!!
//And befor the Weapon Acc.
//IMPORTEN!!!!!!!

_item          = param[0];
_amount        = param[1, 1];
_addToBackpack = param [2, false];


_typ = [_item] call BIS_fnc_itemType;
_itemTyp = _typ select 0;
_exit = false;

//Init some Functions
_fnc_addItems = {
    private ["_item", "_amount"];
    _item param [0, ""];
    _amount = param [1, 1];

    for "_i" from 1 to _amount do {
        player additem _item; //Check if player can add more than fits?
    };

};


//Is Item an Weapon?
if (_itemTyp isEqualTo "Weapon") then {

    //Some Checks befor add Weapon.
    if (_amount > 1) exitWith { ["Du kannst nur maximal 1 Waffe auf einmal kaufen!"] call lts_fnc_hint; _exit = true; };

    //When addToBackpack is enable add Weapon to Backpack and exit!
    if (_addToBackpack) exitWith { [_item, _amount] call lts_fnc_addToBackpack; _exit = true; };


    //Get the Weapon Typ and send it to lts_fnc_addWeapon;
    _weaponTyp = _typ select 1;
    [_item, _weaponTyp] call lts_fnc_addWeapon;


    //Set Exit to true to Exit the Function
    _exit = true;
};
if (_exit) exitWith {};



//Is Item CLothing???
if (_itemTyp isEqualTo "Equipment") then {
    //Some checks befor add the Clothin!
    if (_amount > 1) exitWith { ["Du kannst nur maximal 1 ein Kleidungsstück auf einmal kaufen!"] call lts_fnc_hint; _exit = true; };

    if (_addToBackpack) exitWith { [_item, _amount] call lts_fnc_addToBackpack; _exit = true; };

    _clotTyp = _typ select 1;

    if (_clotTyp isEqualTo "Uniform") exitWith {
        player addUniform _item;
        _exit = true;
    };
    if (_clotTyp isEqualTo "Vest") exitWith {
        player addVest _item;
        _exit = true;
    };
    if (_clotTyp isEqualTo "Backpack") exitWith {
        player addBackpack _item;
        _exit = true;
    };
    if (_clotTyp isEqualTo "Headgear") exitWith {
        player addHeadgear _item;
        _exit = true;
    };
    if (_clotTyp isEqualTo "Glasses") exitWith {
        player addGoggles _item;
        _exit = true;
    };
    _exit = true;
};
if (_exit) exitWith {};




//Is Item Something else???
if (_itemTyp isEqualTo "Item") then {
    if (_addToBackpack) exitWith { [_item, _amount] call lts_fnc_addToBackpack; _exit = true; };

    _itemOtherTyp = _typ select 1;


    if (_itemOtherTyp isEqualTo "GPS") exitWith {
            player linkItem _item;
            _exit = true;
    };
    if (_itemOtherTyp isEqualTo "NVGoggles") exitWith {
            player linkItem _item;
            _exit = true;
    };
    if (_itemOtherTyp isEqualTo "Binocular") exitWith {
        player addWeapon _item;
        _exit = true;
    };
    if (_itemOtherTyp isEqualTo "Radio") exitWith {
        player linkItem _item;
        _exit = true;
    };
    if (_itemOtherTyp isEqualTo "Map") exitWith {
            player linkItem _item;
            _exit = true;
    };
    if (_itemOtherTyp isEqualTo "Compass") exitWith {
            player linkItem _item;
            _exit = true;
    };

    _exit = true;
};
if (_exit) exitWith {};

//Check if Item is Ace Item and give the Item to the Player Inv.
_aceItems = getArray (missionConfigFile >> "Config_Master" >> "AceItems");
if (_itemTyp in _aceItems) then {
    if (_addToBackpack) exitWith { [_item, _amount] call lts_fnc_addToBackpack; _exit = true };
    [_item, _amount] call _fnc_addItems;
    _exit = true;
};
if (_exit) exitWith {};

//Add Action for Weapon Mounts

//It was non Item from above so its an Normal Item that can add normaly to Player Inventory
if (!_exit) then {
    if (_addToBackpack) exitWith { [_item, _amount] call lts_fnc_addToBackpack };
    [_item, _amount] call _fnc_addItems;
};
