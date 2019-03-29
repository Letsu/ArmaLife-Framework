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

 private _DISPLAY = findDisplay 20001;
 private _LBCARS = _DISPLAY displayCtrl 1000;
 private _TEXTINFO = _DISPLAY displayCtrl 1003;
 private _TEXTFOOTER = _DISPLAY displayCtrl 1008;

private _index = lbCurSel _LBCARS;
private _data = parseSimpleArray (_LBCARS lbData _index);

_index = parseNumber (_data select 0);
private _spawnPos = _data select 1;
systemChat str(_index);
systemChat str(_spawnPos);

//Get Data of cur Select Vehicle
private _vehData = lts_core_allVehicles select _index;
systemChat str(_vehData);
private _plate = _vehData select 0;
private _class = _vehData select 1;
private _ownerUID = _vehData select 2;
private _ownerName = _vehData select 3;
private _keyUIDs = _vehData select 4;
private _keyNames = _vehData select 5;
private _fuel = parseNumber(_vehData select 6);
private _inv = _vehData select 7;
private _displayName = [_class] call lts_fnc_getDisplayName;
systemChat _displayName;

private _speed = getNumber (configFile >> "CfgVehicles" >> _class >> "maxSpeed");
private _armor = getNumber (configFile >> "CfgVehicles" >> _class >> "armor");
private _seats = (getNumber (configFile >> "CfgVehicles" >> _class >> "transportSoldier")) + 1;
private _power = getNumber (configFile >> "CfgVehicles" >> _class >> "enginePower");
private _maxFuel = getNumber (configFile >> "CfgVehicles" >> _class >> "fuelCapacity");
private _fuel = _fuel * 100;

//set Text
//TITLE dont Working?
private _text = format["<h1>%1</h1><br/>
Nummernschild: %2<br/>
Maximal Geschwindichkeit: %3km/h<br/>
Pferde Stärke: %4PS<br/>
Panzerung: %5<br/>
Sitze: %6<br/>
Maximale Tankgröße: %7L<br/>
Aktuell Getankt: %8%<br/>
",  _displayName, _plate, _speed, _power, _armor, _seats, _maxFuel, _fuel];

_TEXTINFO ctrlSetStructuredText parseText(_text);
