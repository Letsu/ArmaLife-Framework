/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
private _player = param [0];
private _target = param [1];

if (isNull _target) exitWith {};
/* if (!isPlayer _target) exitWith {}; */

[player,"AwopPercMstpSgthWrflDnon_End2"] remoteExecCall ["lts_fnc_animSync",0];


[_target, _player] remoteExec ["lts_fnc_knockOutTarget", _target];
