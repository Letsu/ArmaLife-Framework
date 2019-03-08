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
private _DISPLAY = findDisplay 41001;
private _EDITTITLE = _DISPLAY displayCtrl 1002;
private _EDITNOTE  = _DISPLAY displayCtrl 1004;
private _EDITPRICE = _DISPLAY displayCtrl 1006;

private _title = ctrlText _EDITTITLE;
if (count _title < 4 || count _title > 18) exitWith { ["Der Title muss mindestens 3 Zeichen und maximnal 18 Zeichen Lang sein"] call lts_fnc_hint };

private _note  = ctrlText _EDITNOTE;
if (count _note < 0) exitWith { ["Die Beschreibung darf nicht Leer sein"] call lts_fnc_hint };

private _price = ctrlText _EDITPRICE;
_price = parseNumber _price;
if (_price <= 0) exitWith { ["Du hast keinen Preis oder 0 eingegeben bitte gebe eine zahl ein!"] call lts_fnc_hint };

_target = lts_dialog_wanted_curSelect;

[_target, player, _title, _note, _price] call lts_cop_fnc_wantedAdd;

closeDialog 0;
