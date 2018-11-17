private [];
/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: CLassname of the Weapon
 * 1: Typ of Weapon
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

//Firt setup some Function that can used in this Function


/*
------------------------------------------------------------
Primary Weapon
------------------------------------------------------------
*/
_fnc_addPrimaryWeapon = {
    _weapon = param [0];

    _primaryWeapon = primaryWeapon player;
    if (isNil _primaryWeapon) then {
        //Player has no Weapon so add the Weapon to the Free Slot and Exit!
        player addWeapon _item;
    } else {
        //Player already has an Weapon ask him to put the Weapon to the Backpack when he has one!
        //First check if the Player has an Backpack
        if (isNil (backpack player)) exitWith { ["Du hast bereits eine Waffe!"] call lts_fnc_hint };
        _controll = [
            "Du hast schon eine Waffe. Willst du deine neue Waffe in dein Rucksack legen?",
            "Kein Platz!",
            "Ja",
            "Nein"
        ] call BIS_fnc_guiMessage;

        //If Player chose Yes put the Weapon to backpack
        if (_controll) exitWith { [_item] call _fnc_addToBackpack };
    };
};


/*
------------------------------------------------------------
Handgun Weapon
------------------------------------------------------------
*/
_fnc_addHandgunWeapon = {
    _weapon = param [0];

    _handgunWeapon = handgunWeapon player;
    if (isNil _handgunWeapon) then {
        //Player has no Weapon so add the Weapon to the Free Slot and Exit!
        player addWeapon _item;
    } else {
        //Player already has an Weapon ask him to put the Weapon to the Backpack when he has one!
        //First check if the Player has an Backpack
        if (isNil (backpack player)) exitWith { ["Du hast bereits eine Waffe!"] call lts_fnc_hint };
        _controll = [
            "Du hast schon eine Waffe. Willst du deine neue Waffe in dein Rucksack legen?",
            "Kein Platz!",
            "Ja",
            "Nein"
        ] call BIS_fnc_guiMessage;

        //If Player chose Yes put the Weapon to backpack
        if (_controll) exitWith { [_item] call _fnc_addToBackpack };
    };
};


/*
------------------------------------------------------------
Secondary Weapon
------------------------------------------------------------
*/
_fnc_addSecondaryWeapon = {
    _weapon = param [0];

    _secondaryWeapon = secondaryWeapon player;
    if (isNil _secondaryWeapon) then {
        //Player has no Weapon so add the Weapon to the Free Slot and Exit!
        player addWeapon _item;
    } else {
        //Player already has an Weapon ask him to put the Weapon to the Backpack when he has one!
        //First check if the Player has an Backpack
        if (isNil (backpack player)) exitWith { ["Du hast bereits eine Waffe!"] call lts_fnc_hint };
        _controll = [
            "Du hast schon eine Waffe. Willst du deine neue Waffe in dein Rucksack legen?",
            "Kein Platz!",
            "Ja",
            "Nein"
        ] call BIS_fnc_guiMessage;

        //If Player chose Yes put the Weapon to backpack
        if (_controll) exitWith { [_item] call _fnc_addToBackpack };
    };
};




/*
------------------------------------------------------------
Start of Function!!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
*/

//Init of Variaqbles
_weapon = param [0];
_type = param[1, "AssaultRifle"];

if (_typ == "AssaultRifle") then { [_weapon] call _fnc_addPrimaryWeapon } else { if (_typ == "Handgun") then { [_weapon] call _fnc_addHandgunWeapon } else { [_weapon] call _fnc_addPrimaryWeapon }/*End IF*/; }/*End Else*/;
