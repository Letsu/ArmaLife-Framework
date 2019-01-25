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

private _cash = lts_money_cash;
private _pid  = getPlayerUID player;

[1, _pid, _cash] remoteExec ["lts_db_fnc_handlePlayer", 2];
