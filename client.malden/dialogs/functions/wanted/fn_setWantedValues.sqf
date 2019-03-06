/*
 * Author: Johannes "Letus" bindriem
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
_wanted = param [0, []];

disableSerialization;

_DISPLAY          = findDisplay 40001;
 /* List Boxen */
 _LBPLAYERS       = _DISPLAY displayCtrl 1003;
 _LBWANTED        = _DISPLAY displayCtrl 1009;
 _LBINFO          = _DISPLAY displayCtrl 1013;
 /* text */
 _OVERVIEW        = _DISPLAY displayCtrl 1018;
 _TEXTINFO        = _DISPLAY displayCtrl 1014;
 _TEXTWANTED      = _DISPLAY displayCtrl 1008;

_curSel = lbCurSel _LBPLAYERS;
_target = lts_dialog_wanted_lbPlayerList select _curSel;

//GET Wanted List entrys
/* [ID, TimeAdded, CopUID, CopName, playerUID, playerName, WantedTitle, WantedtText, price] */
_crimeNum = count _wanted;
_name = name _target;

if (_crimeNum isEqualTo 0) exitWith {
    //Set OV Text
    _ovText = format["
Name:<br/>%1<br/>
Status:<br/><t color=""#00ff00"">%2</t> <br/>
Begangene Straftaten:<br/>%3<br/>
Gesammt Strafgeld:<br/>%4<br/>
    ", _name, "Nicht Gesucht", "0", "0"]; //Add Name for Players that are Offline from Passport database
    _ovText = parseText _ovText;
    _OVERVIEW ctrlSetStructuredText _ovText;

    /* [] call lts_interface_fnc_requestNotes; */
};

test_wanted = _wanted;
test_var = [];
//Setup some Vars
_priceAll = 0;
{
    _arr = [];
    _id = _x select 0;
    _time = _x select 1;
    _copUID = _x select 2;
    _copName = _x select 3;
    _playerUID = _x select 4;
    _playerName = _x select 5;
    _title = _x select 6;
    _text = _x select 7;
    _price = _x select 8;

    _LBWANTED lbAdd format["%1[%2]", _title, _id];
    _cur = lbSize _LBWANTED;
    _arr = [_id, _time, _copUID, _copName, _playerUID, _playerName, _title, _text, _price];
    _LBWANTED lbSetData [_cur - 1 , str(_arr)];
    test_var pushBack _arr;
    _priceAll = _priceAll + _price;
} forEach _wanted;

_LBWANTED lbSetCurSel 0;

_ovText = format["
Name:<br/>%1<br/>
Status:<br/><t color=""#ff0000"">%2</t> <br/>
Begangene Straftaten:<br/>%3<br/>
Gesammt Strafgeld:<br/>%4$<br/>
", _name, "Gesucht", str(_crimeNum), str(_priceAll)]; //Add Name for Players that are Offline from Passport database
_ovText = parseText _ovText;
_OVERVIEW ctrlSetStructuredText _ovText;
