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

private _pid      = _data select 0;
private _money    = _data select 1;
private _bank     = _data select 2;
private _licenses = _data select 3;

//Macke own Inv Table
private _inv      = _data select 4;


dataPid = _pid;
dataMoney = _money;
dataBank = _bank;
dataLicenses = _licenses;
dataInv = _inv;
