/*
 * Author: Johannes 'Letus' Bindriem
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

private _copSN = call compile ("extDB3" callExtension "0:Cop:GetServiceNumbers");
private _medSN = call compile ("extDB3" callExtension "0:Med:GetServiceNumbers");
//_query = parseSimpleArray _query;

_copSN = _copSN select 1;
_medSN = _medSN select 1;

 allServiceNumbers = _copSN + _medSN;
 publicVariable "allServiceNumbers";