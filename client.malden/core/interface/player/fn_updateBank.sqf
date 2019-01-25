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

private _bank = lts_money_bank;
private _pid  = getPlayerUID player;

[1, _pid, _bank] remoteExec ["lts_db_fnc_handlePlayer", 2];
