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
_return = [];


_data = format ["0:Player:GetPlayerData:%1", _pid];
_query = call compile ("extDB3" callExtension _data);

server_dbug = (count (_query select 1) == 0);
publicVariable "server_dbug";

server_query = _query;
publicVariable "server_query"

if (_query isEqualTo []) exitWith { false };

diag_log str(_query);

true;
