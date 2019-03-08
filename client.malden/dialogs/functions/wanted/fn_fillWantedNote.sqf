/*
 * Author: Johannes "letus" Bindriem
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
private _notes = param [0]; //[ID, WantedID TIME, COPUID, COPNAME, NOTE]


private _DISPLAY          = findDisplay 40001;
/* List Boxen */
private _LBPLAYERS       = _DISPLAY displayCtrl 1003;
private _LBWANTED        = _DISPLAY displayCtrl 1009;
private _LBINFO          = _DISPLAY displayCtrl 1013;
/* text */
private _OVERVIEW        = _DISPLAY displayCtrl 1018;
private _TEXTINFO        = _DISPLAY displayCtrl 1014;
private _TEXTWANTED      = _DISPLAY displayCtrl 1008;

private _textArr = [];
private _text = ctrlText _TEXTWANTED;

if (count _notes isEqualTo 0) exitWith { _textArr pushBack (parseText _text) };



_textArr pushBack parsetext(_text);


{
    private _time    = _x select 2;
    private _copName = _x select 4;
    private _note    = _x select 5;

    private _textInfo = format["<br/><br/>---%1@%2---<br/>%3", _copName, _time, _note];
    _textArr pushBack (parseText _textInfo);
} forEach _notes;

_TEXTWANTED ctrlSetStructuredText (composeText _textArr);

[] call lts_interface_fnc_requestNotes;
