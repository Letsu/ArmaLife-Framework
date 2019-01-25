/*
 * Author: Johanens "Letus" Bindriem
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

private _licenses = lts_core_licenses;
private _pid      = getPlayerUID player;

[3, _pid, _licenses] remoteExec ["lts_db_fnc_getPlayerData", 2];
