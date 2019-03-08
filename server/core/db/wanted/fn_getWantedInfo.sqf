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

private _cop       = param [0];
private _targetPID = param [1];
private _wantedID  = param [2];


private _query = call compile ( "extDB3" callExtension (format ["0:WantedNotes:GetPlayerEntrys:%1", _wantedID]) );

if (_query select 0 != 1) exitWith { [ format["Error in getWantedInfo: %1", _query select 1] ] call lts_server_fnc_log };

[_query] remoteExec ["lts_interface_fnc_getWantedNote", _cop];
