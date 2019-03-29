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
private _fuel = _vehData select 6;
private _inv = _vehData select 7;


(lts_core_allVehicles select _index) set[8, false];
[_plate, _class, (getMarkerPos _spawnPos), _ownerUID, _ownerName, _keyUIDs, _keyNames, _fuel, _inv, _index] call lts_fnc_createVehicle;
