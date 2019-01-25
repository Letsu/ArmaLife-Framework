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

 private _inv = getUnitLoadout player;
 private _pid = getPlayerUID player;


[3, _pid, _inv] remoteExec ["lts_db_fnc_handlePlayer", 2];
