/*
 * Author: Johannes 'Letus' Bindriem
 * Send an Request to the Server to Update the Level of the Cop
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * noLevel: Player has no Cop
 * noCop: Player had no ServiceNumber so he is no Cop
 *
 * Example:
 * [] call lts_interface_fnc_updateCopLevel
 *
 */
private _newLevel = lts_cop_level;
private _pid = getPlayerUID player;

if ( player getVariable ["serviceNumber", -1] isEqualTo -1 ) exitWith { ["Send Cop Level Update Request for Player but Player is no Cop"] call lts_fnc_log; [1, "noCop"] };
if (_newLevel == 0) exitWith { ["Cop Update send an Request to Update to Level 0"] call lts_fnc_log; [1, "noLevel"] };

["Your Cop Level synced to the Database!"] call lts_fnc_log;
[_pid, _newLevel] remoteExec ["lts_db_fnc_updateCopLevel", 2];
