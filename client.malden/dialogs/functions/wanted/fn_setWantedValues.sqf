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
private _wanted = param [0, []];

private _DISPLAY         = findDisplay 40001;
private _LBPLAYERS       = _DISPLAY displayCtrl 1003;
private _LBWANTED        = _DISPLAY displayCtrl 1009;
private _LBINFO          = _DISPLAY displayCtrl 1013;
private _OVERVIEW        = _DISPLAY displayCtrl 1018;
private _TEXTINFO        = _DISPLAY displayCtrl 1014;
private _TEXTWANTED      = _DISPLAY displayCtrl 1008;

private _curSel = lbCurSel _LBPLAYERS;
private _target = lts_dialog_wanted_lbPlayerList select _curSel;

//get some Importent vars
private _crimeNum = count _wanted;
private _name     = name _target;

//Check if Player has Wanted entrys
if (_crimeNum isEqualTo 0) exitWith {
    private _ovText = format["
Name:<br/>%1<br/>
Status:<br/><t color=""#00ff00"">%2</t> <br/>
Begangene Straftaten:<br/>%3<br/>
Gesamt Strafgeld:<br/>%4<br/>
    ", _name, "Nicht Gesucht", "0", "0"]; //Add Name for Players that are Offline from Passport database
    _ovText = parseText _ovText;
    _OVERVIEW ctrlSetStructuredText _ovText;

    //request Notes
    [] call lts_interface_fnc_requestNotes;
};

//Setup some Vars
private _priceAll = 0;
{
    //Handle Wanted Entry
    private _arr        = [];
    private _id         = parseNumber (_x select 0);
    //Time
    private _time       = _x select 1;
            _time = format["%1.%2. %3:%4", _time select 2, _time select 1, _time select 3, _time select 4];
    private _copUID     = _x select 2;
    private _copName    = _x select 3;
    private _playerUID  = _x select 4;
    private _playerName = _x select 5;
    private _title = _x select 6;
    private _text = _x select 7;
    private _price = parseNumber(_x select 8);
    _LBWANTED lbAdd format["%1[%2]", _title, _id];

    //Set Data
    private _cur = lbSize _LBWANTED;
    _arr = [_id, _time, _copUID, _copName, _playerUID, _playerName, _title, _text, _price];
    _LBWANTED lbSetData [_cur - 1 , str(_arr)];

    _priceAll = _priceAll + _price;
} forEach _wanted;
_LBWANTED lbSetCurSel 0;

//Set Text
private _ovText = format["
Name:<br/>%1<br/>
Status:<br/><t color=""#ff0000"">%2</t> <br/>
Begangene Straftaten:<br/>%3<br/>
Gesamt Strafgeld:<br/>%4$<br/>
", _name, "Gesucht", str(_crimeNum), str(_priceAll)]; //Add Name for Players that are Offline from Passport database
_ovText = parseText _ovText;
_OVERVIEW ctrlSetStructuredText _ovText;

//request Notes
[] call lts_interface_fnc_requestWantedNotes;
