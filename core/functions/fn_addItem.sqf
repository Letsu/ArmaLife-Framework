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
if (isClass (configFile >> "CFGweapons" >> _item) then {
    //init some Defualt Variables!
    _isPrimaryWeapon   = false;
    _isHandgunWeapon   = false;
    _isSecondaryWeapon = false;

    //Some Checks befor add Weapon.
    if (_amount > 1) exitWith { ["Du kannst nur maximal 1 Waffe auf einmal kaufen!"] call lts_fnc_hint; _exit = true };
    //Get Typ of the Weapon
    _typ = [_item] call BIS_fnc_itemType;
    _typ = _typ select 1;
    if (_typ == "AssaultRifle") then { _isPrimaryWeapon = true } else { if (_typ == "Handgun") then { _isHandgunWeapon = true } else { _isSecondaryWeapon = true };};
    //When addToBackpack is enable add Weapon to Backpack and exit!
    if (_addToBackpack) exitWith { [_item, _ammount] call _fnc_addToBackpack; _exit = true };
    //Exec 3 DiferentCode for every Weapon Typ
    if (_isPrimaryWeapon) then {



        //-----------------------------------------------------------------------
        //Primary Weapon
        //------------------------------------------------------------------------
        //Check if Player alrady has an Primary Weapon
        _primaryWeapon = primaryWeapon player;
        if (isNil _primaryWeapon) then {
            //Player has no Weapon so add the Weapon to the Free Slot and Exit!
            player addWeapon _item;
            _exit = true;
         } else {
             //Player already has an Primary Weapon ask him to put the Weapon to the Backpack when he has one!
             //First check if the Player has an Backpack
             if (isNil (backpack player)) exitWith { ["Du hast bereits eine Waffe!"] call lts_fnc_hint; _exit = true};
             _controll = [
                "Du hast schon eine Waffe. Willst du deine neue Waffe in dein Rucksack legen?",
                "Kein Platz!",
                "Ja",
                "Nein"
             ] call BIS_fnc_guiMessage;

             //Player chose Yes so put the Weapon to backpack
             if (_controll) exitWith { [_item] call _fnc_addToBackpack; _exit = true};
         };
         _exit = true;
    } else {



        //-----------------------------------------------------------------------
        //Handgun Weapon
        //------------------------------------------------------------------------
        if (_isHandgunWeapon) then {
            //Check if Player alrady has an Handgun Weapon
            _handgunWeapon = handgunWeapon player;
            if (isNil _handgunWeapon) then {
                //Player has no Weapon so add the Weapon to the Free Slot and Exit!
                player addWeapon _item;
                _exit = true;
             } else {
                 //Player already has an Hadngun Weapon ask him to put the Weapon to the Backpack when he has one!
                 //First check if the Player has an Backpack
                 if (isNil (backpack player)) exitWith { ["Du hast bereits eine Waffe!"] call lts_fnc_hint; _exit = true};
                 _controll = [
                    "Du hast schon eine Waffe. Willst du deine neue Waffe in dein Rucksack legen?",
                    "Kein Platz!",
                    "Ja",
                    "Nein"
                 ] call BIS_fnc_guiMessage;

                 //Player chose Yes so put the Weapon to backpack
                 if (_controll) exitWith { [_item] call _fnc_addToBackpack; _exit = true};
             };
             _exit = true;
        } else { // is no Handgun and no Primary so it´s an secondary



            //-----------------------------------------------------------------------
            //Secondary Weapon
            //------------------------------------------------------------------------
            //Check if Player alrady has an Secondary Weapon
            _secondaryWeapon = secondaryWeapon player;
            if (isNil _secondaryWeapon) then {
                //Player has no Weapon so add the Weapon to the Free Slot and Exit!
                player addWeapon _item;
                _exit = true;
            } else {
                //Player already has an Secondary Weapon ask him to put the Weapon to the Backpack when he has one!
                //First check if the Player has an Backpack
                if (isNil (backpack player)) exitWith { ["Du hast bereits eine Waffe!"] call lts_fnc_hint; _exit = true};
                _controll = [
                    "Du hast schon eine Waffe. Willst du deine neue Waffe in dein Rucksack legen?",
                    "Kein Platz!",
                    "Ja",
                    "Nein"
                ] call BIS_fnc_guiMessage;

                //Player chose Yes so put the Weapon to backpack
                if (_controll) exitWith { [_item] call _fnc_addToBackpack; _exit = true};
            };
        _exit = true;
        };
    };
};

if (_exit) exitWith {};
