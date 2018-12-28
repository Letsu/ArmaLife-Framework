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

private _data  = param [0];
if ( _data isEqualTo [] ) exitWith { };

private _pid   = _data select 1;
private _sn    = parseNumber(_data select 0);
private _level = parseNumber(_data select 2);

[_sn, _level] call lts_med_setMedCoreData;
