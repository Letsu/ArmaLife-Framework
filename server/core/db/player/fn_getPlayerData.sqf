private ["_pid", "_return", "_data", "_query"];
/*
 * Author: Johannes "letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * [] call lts_db_fnc_getPlayerData
 *
 */
_pid = param [0];
_player = param [1];
_return = [];


_data = format ["0:Player:GetPlayerData:%1", _pid];
_query = call compile ("extDB3" callExtension _data);


if ((_query select 1) isEqualTo []) exitWith { [] remoteExec ["lts_db_fnc_createNewPlayer", _player] };



[] remoteExec ["lts_interface_fnc_getPlayerData", _player];
