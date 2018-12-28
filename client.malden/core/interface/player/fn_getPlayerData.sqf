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
//Macke own Inv Table??
private _inv      = parseSimpleArray(_data select 4);


[_money, _bank, _licenses, _inv] call lts_fnc_setPlayerCore;
