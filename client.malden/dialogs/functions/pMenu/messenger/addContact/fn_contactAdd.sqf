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

private _DISPLAY = findDisplay 93002;
private _EDITNAME = _DISPLAY displayCtrl 1003;
private _EDITNUMBER = _DISPLAY displayCtrl 1006;

private _name = ctrlText _EDITNAME;
private _number = ctrlText _EDITNUMBER;

if (_name isEqualTo "") exitWith { ["Bitte gib einen Namen ein!"] call lts_fnc_hint };
if (_number isEqualTo "") exitWith { ["Bitte gib eine Nummer ein!"] call lts_fnc_hint };
systemChat str(_name);
systemChat str(_number);


_numberCheck = parseNumber _number;
if (_numberCheck isEqualTo 0) exitWith { ["Bitte gib eine Gültige Nummer ein!"] call lts_fnc_hint };


[_name, _number] call lts_fnc_addContact;
closeDialog 0;
[] spawn {
    sleep 0.3;
    [] call lts_dialog_fnc_callMessenger
};
