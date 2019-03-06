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
systemChat "WAnted Change";

_notes = param [0]; //[ID, WantedID TIME, COPUID, COPNAME, NOTE]
systemChat str(_notes);
testNote = _notes;


_DISPLAY          = findDisplay 40001;
/* List Boxen */
_LBPLAYERS       = _DISPLAY displayCtrl 1003;
_LBWANTED        = _DISPLAY displayCtrl 1009;
_LBINFO          = _DISPLAY displayCtrl 1013;
/* text */
_OVERVIEW        = _DISPLAY displayCtrl 1018;
_TEXTINFO        = _DISPLAY displayCtrl 1014;
_TEXTWANTED      = _DISPLAY displayCtrl 1008;

_textArr = [];
_text = ctrlText _TEXTWANTED;
_textArr pushBack parsetext(_text);

systemChat _text;

{
    _time    = _x select 2;
    _copName = _x select 4;
    _note    = _x select 5;

    systemChat str(_x);

    _textInfo = format["<br/><br/>---%1@%2---<br/>%3", _copName, _time, _note];
    _textArr pushBack (parseText _textInfo);
} forEach _notes;

testArr = _textArr;

_TEXTWANTED ctrlSetStructuredText (composeText _textArr);
