/*
    File: fn_animSync.sqf
    Author:

    Description:

*/
private _unit = param [0, objNull];
private _anim = param [1, ""];
private _cancelOwner = param[2, false];

if (isNull _unit || {(local _unit && _cancelOwner)}) exitWith {};
_unit switchMove _anim;
