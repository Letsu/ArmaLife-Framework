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

private _DISPLAY         = findDisplay 40001;
private _LBPLAYERS       = _DISPLAY displayCtrl 1003;
private _LBWANTED        = _DISPLAY displayCtrl 1009;
private _LBINFO          = _DISPLAY displayCtrl 1013;
private _OVERVIEW        = _DISPLAY displayCtrl 1018;
private _TEXTINFO        = _DISPLAY displayCtrl 1014;
private _TEXTWANTED      = _DISPLAY displayCtrl 1008;

_TEXTWANTED ctrlSetFade 1;
_TEXTWANTED ctrlCommit 0;


private _curSel = lbCurSel _LBWANTED;
private _target = lts_dialog_wanted_lbPlayerList select (lbCurSel _LBPLAYERS);

//Handle Data
private _data       = parseSimpleArray(_LBWANTED lbData _curSel);
private _id         = _data select 0;
private _time       = _data select 1;
private _copUID     = _data select 2;
private _copName    = _data select 3;
private _playerUID  = _data select 4;
private _playerName = _data select 5;
private _title      = _data select 6;
private _text       = _data select 7;
private _price      = _data select 8;

lts_dialog_wanted_curWanted = _id;

//Set Text
private _strukText = format["
<t size='2.0'>%1</t><br/>
Wanted ID: %2<br/>
Hinzugefügt von: %3[%4]<br/>
Gesucht wird: %5[%6] wegen:<br/>
<t size='1.3'>%1</t><br/>
%7<br/>
<br/>
Mit folgender Strafe: %8€<br/>
Hinzugefügt am: %9<br/>
", _title, _id, _copName, _copUID, _playerName, _playerUID, _text, _price, _time];
_TEXTWANTED ctrlSetText _strukText; //Set normal String whitout Parse. Parse is set in lts_dialog_fnc_fillWantedNote

[_target, _id] call lts_interface_fnc_requestWantedNote;
