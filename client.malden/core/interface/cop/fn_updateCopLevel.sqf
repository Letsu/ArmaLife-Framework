/*
 * Author: Johannes 'Letus' Bindriem
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
_newLevel = lts_cop_level;
_pid = getPlayerUID player;

["Your Cop Level synced to the Database!"] call lts_fnc_log;
[_pid, _newLevel] remoteExec ["lts_db_fnc_updateCopLevel", 2];
