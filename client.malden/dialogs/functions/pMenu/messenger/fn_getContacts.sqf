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

private _DISPLAY = findDisplay 93001;
private _CONTACTLB = _DISPLAY displayCtrl 1000;

private _contacts = [] call lts_fnc_getContacts;

{
    //Skip if Contact is Disabled
    if ((_x select 2)) then {
        private _name = _x select 0;
        private _number = _x select 1;

        private _text = format["%1 [%2]", _name, _number];
        _CONTACTLB lbAdd _text;
        private _index = (lbSize _CONTACTLB)-1;
        _CONTACTLB lbSetData [_index, str(_x)];
    };
} forEach _contacts;
