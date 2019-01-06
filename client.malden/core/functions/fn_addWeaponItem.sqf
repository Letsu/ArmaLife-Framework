/*
 * Author: Johannes "Letus" Bindriem
 * Adds an Weapon Accessory to an Weapon or when already one exist to the Inventory
 *
 * Arguments:
 * 0: Item [String]
 * 1: Weapon Type [String]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["item", "typ"] call lts_fnc_addWeaponItem
 *
 */


private _item = param [0, ""];
private _typ  = param [1, "AssaultRifle"];
