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
private _pid = param [0];
private _player = param [1];

private _query = call compile ("extDB3" callExtension (format ["0:Med:GetMedData:%1", _pid]) );

_query = _query select 1;

[_query] remoteExec ["lts_interface_fnc_getCopData", _player];
