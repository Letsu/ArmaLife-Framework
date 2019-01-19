/*
 * Author: Johannes "Letus" Bindriem
 * Get the Cargo from an Vehicle
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
_veh = param [0, objNull];

_items     = getItemCargo _veh;
_mags      = getMagazineCargo _veh;
_weapons   = getWeaponCargo _veh;
_backpacks = getBackpackCargo _veh;

[_items, _mags, _weapons, _backpacks];
