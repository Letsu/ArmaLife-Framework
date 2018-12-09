/*
 * Author: Johannes "Letus" Bindriem
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

_pid = getPlayerUID player;
_cash = lts_money_cash;
_bank = lts_money_bank;
_licenses = lts_core_licenses;
_inv = getUnitLoadout player;

[] remoteExec ["lts_db_fnc_createNewPlayer", 2];

hint "Create NEw Player";
