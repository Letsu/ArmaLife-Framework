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

_pid = param [0];
_player = param [1];

_data = format ["0:Vehicle:GetVehicles:%1", _pid];
_query = call compile ("extDB3" callExtension _data);

[format["Get Data: %1, Query: %2", _data, _query]] call lts_server_fnc_log; 

[_query] remoteExec ["lts_interface_fnc_getVehicles", _player];
