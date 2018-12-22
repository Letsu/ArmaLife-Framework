/*
 * Author: Johannes "Letus" Bindriem
 * Get the Player Data from lts_interface_fnc_requestPlayerData
 *
 * Arguments:
 * 0: Data [Any]
 *
 * Return Value:
 * None
 *
 * Example:
 * [data] call lts_interface_fnc_getPlayerData
 *
 */

private _data = param [0, []];
_data = _data select 0;

private _pid      = parseNumber(_data select 0);
private _money    = parseNumber(_data select 1);
private _bank     = parseNumber(_data select 2);
private _licenses = parseSimpleArray(_data select 3);
//DBUG
dbug_licenses = _licenses;

//Macke own Inv Table
private _inv      = _data select 4;
//DBUG
dbug_inv = _inv;


[_money, _bank, _licenses, _inv] call lts_fnc_setPlayerCore;
