/*
 * Author: JOhannes "Letus" Bindriem
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

_vehicle = param [0, objNull];
_inv = param [1, []];

if (_inv isEqualTo []) exitWith {};


_item     = _inv select 0;
_mag     = _inv select 1;
_weapon   = _inv select 2;
_backpack = _inv select 3;


//Item
_itemItem   = _item select 0;
_itemAmount = _item select 1;

_index = 0;
{
    _vehicle addItemCargo [_x, (_itemAmount select _index)];
    _index = _index + 1;
} forEach _itemItem;


//Mag
_magItem   = _mag select 0;
_magAmount = _mag select 1;

_index = 0;
{
    _vehicle addMagazineGlobal [_x, (_magAmount select _index)];
    _index = _index + 1;
} forEach _magItem;



//Weapon
_weaponItem   = _weapon select 0;
_weaponAmount = _weapon select 1;

_index = 0;
{
    _vehicle addWeaponGlobal [_x, (_weaponAmount select _index)];
    _index = _index + 1;
} forEach _weaponItem;


//Backpack
_backpackItem   = _backpack select 0;
_backpackAmount = _backpack select 1;
_index = 0;
{
    _vehicle addWeaponGlobal [_x, (_backpackAmount select _index)];
    _index = _index + 1;
} forEach _backpackItem;
