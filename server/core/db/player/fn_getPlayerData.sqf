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


_data = format ["Player:GetPlayerData:%1", _pid];
_query = call compile ("extDB3" callExtension _data);

if (_data select 0 isEqualTo 1) exitWith { _return = [false]; _return };

diag_log _query;
