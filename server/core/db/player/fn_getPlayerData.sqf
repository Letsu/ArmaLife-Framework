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

if (count (_query select 1) == 0) exitWith { false };

diag_log str(_query);

true;
