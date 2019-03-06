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
 _DISPLAY          = findDisplay 40001;
/* List Boxen */
_LBPLAYERS       = _DISPLAY displayCtrl 1003;
_LBWANTED        = _DISPLAY displayCtrl 1009;
_LBINFO          = _DISPLAY displayCtrl 1013;
/* text */
_OVERVIEW        = _DISPLAY displayCtrl 1018;
_TEXTINFO        = _DISPLAY displayCtrl 1014;
_TEXTWANTED      = _DISPLAY displayCtrl 1008;



_curSel = lbCurSel _LBWANTED;
_target = lts_dialog_wanted_lbPlayerList select (lbCurSel _LBPLAYERS);

_data = parseSimpleArray(_LBWANTED lbData _curSel);

_id = _data select 0;
_time = _data select 1;
_copUID = _data select 2;
_copName = _data select 3;
_playerUID = _data select 4;
_playerName = _data select 5;
_title = _data select 6;
_text = _data select 7;
_price = _data select 8;

_strukText = format["
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

/* _strukText = parseText _strukText; */
_TEXTWANTED ctrlSetText _strukText;

/* [] call lts_interface_fnc_requestWantedNote; */
[[[1, 1, "12.07.2019 17:18", 3885747586978574, "Letus Lemurus", "Person wurde in Kavalla gemeldet!"], [2, 1, "12.07.2019 17:18", 3885747586978574, "Letus Lemurus", "Nein Doch nicht!"], [1, 1, "12.07.2019 17:18", 3885747586978574, "Letus Lemurus", "Oder doch?"]]] call lts_dialog_fnc_fillWantedNote;
