/*
 * Author: Johanens "Letus" Bindriem
 * Adds an Player to the Wanted List
 *
 * Arguments:
 * 0:
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
private _target = param [0];
private _cop    = param [1];
private _title  = param [2];
private _note   = param [3];
private _price  = param [4];

private _copUID    = getPlayerUID _cop;
private _targetUID = getPlayerUID _target;




hint "Durch das im Cop Ordner gehts durch!";
dbug1 = _this;
[_copUID, (name _cop), _targetUID, (name _target), _title, _note, _price] call lts_interface_fnc_wantedAdd;
