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

 private _DISPLAY = findDisplay 90001;
 private _HEADER  = _DISPLAY displayCtrl 11001;

private _date = (date call BIS_fnc_fixDate) apply {format [["%1", "0%1"] select (_x < 10), _x]};
private _year = _date select 0;
private _month = _date select 1;
private _day = _date select 2;
private _hour = _date select 3;
private _minute = _date select 4;


private _text = format ["<t align='center' size='5' shadow='0'>%1:%2</t><br/><t align='center' size='1' shadow='0'>%3.%4.%5</t>", _hour, _minute, _day, _month, _year];
_text = parseText _text;

_HEADER ctrlSetStructuredText _text;
