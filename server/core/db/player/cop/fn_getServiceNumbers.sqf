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

_query = call compile ("extDB3" callExtension "0:Cop:GetServiceNumbers");
_query = parseSimpleArray _query;

 allServiceNumbers =_query select 1;
 publicVariable "allServiceNumbers";
