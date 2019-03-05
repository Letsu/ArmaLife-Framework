/*
 * Author: Johannes "Letus" bindriem
 *
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

private _from    = param [0];
private _licenses = param [1];

private _licenseNames = [];

{
    _licenseNames pushBack ([_x] call lts_fnc_getDisplayName);
} forEach _licenses;

private _text = format ["%1 hat folgene Lizenzen: "];

{
    _text pushBack (format ["<br/>%1", _x])
} forEach _licenseNames;

private _parseTexted = parseText _text;
hint _parseTexted;
