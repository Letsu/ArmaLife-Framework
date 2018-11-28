private [ "_weapon", "_type", "_weapon", "_item" ];
/*
 * Author: Johannes "Letus" Bindriem
 * Adds an Weapon to the PLayer Inv or Backpack
 *
 * Arguments:
 * 0: CLassname of the Weapon
 * 1: Typ of Weapon
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["Classname", "WeaponTyp"] call lts_fnc_addWeapon;
 *
 */

_item = param [0, ""];
_type = param[1, "AssaultRifle"];
_weapon = "";

//Check wich type of Weapon the Player has and if the Weapon slot is full
if (_type == "AssaultRifle") then { _weapon = primaryWeapon player } else { if (_type == "Handgun") then { _weapon = handgunWeapon player } else { _weapon = secondaryWeapon player }/*End IF*/; }/*End Else*/;

//Add Weapon to Weapon Slot or backpack of the Player
if (_weapon isEqualTo "") then {
    //Player has no Weapon so add the Weapon to the Free Slot and Exit!
    player addWeapon _item;
    player action ["WeaponOnBack", player];
} else {
    //Player already has an Weapon ask him to put the Weapon to the Backpack when he has one!
    //First check if the Player has an Backpack and if the Backpack is Full?
    if (!(player canAddItemToBackpack _item)) exitWith { ["Du hast bereits eine Waffe!"] call lts_fnc_hint };

    closeDialog 0;

//Dialog dont open!
    _controll = [
        "Du hast schon eine Waffe. Willst du deine neue Waffe in dein Rucksack legen?",
        "Kein Platz!",
        "Ja",
        "Nein"
    ] call BIS_fnc_guiMessage;

    //If Player chose Yes put the Weapon to backpack
    if (_controll) exitWith { [_item] call lts_fnc_addToBackpack };
};
