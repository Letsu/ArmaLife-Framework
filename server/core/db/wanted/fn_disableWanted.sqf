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

private _id = param [0];
private _sender = param [1];


_data = format ["0:Wanted:DisableEntry:%1", _id];
_query = call compile ("extDB3" callExtension _data);
