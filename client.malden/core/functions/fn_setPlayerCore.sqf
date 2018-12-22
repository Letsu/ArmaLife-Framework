/*
 * Author: Johannes "Letus" Bindriem
 * Set Core Data tp Player like Bank, Cash, Licenses, and Inventory
 *
 * Arguments:
 * 0: Money [Number]
 * 1: Bank [NUmber]
 * 2 Optional: Licenses [Array]
 * 3 Optional: Inventory [Array]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [0, 0, lts_core_licenses, getUnitLoadout player] call lts_fnc_setPlayerCore
 *
 */


private _money    = param [0, 0];
private _bank     = param [1, 0];
private _licenses = param [2, lts_core_licenses];
private _inv      = param [3, getUnitLoadout player];

lts_money_cash    = _money;
lts_money_bank    = _bank;
lts_core_licenses = _licenses;

player setUnitLoadout _inv;
