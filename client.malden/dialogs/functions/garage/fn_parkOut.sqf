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

//Get Data out of LB
_spawnMarker = _data select 1;
marker = _spawnMarker;
_vehData     = _data select 0;

_markerPos = getmarkerPos _spawnMarker;
private _objects = nearestObjects [_markerPos, ["LandVehicle", "Ship", "Air"], 10];
if (count _objects > 0) exitWith { ["Es steht schon ein Fahrzeug am Spawn!"] call lts_fnc_hint };
closeDialog 0;

//Get All Vehicle Data
_plate      = _vehData select 0;
_vehClass   = _vehData select 1;
_ownerUID   = _vehData select 2;
_ownerName  = _vehData select 3;
_keyUIDs    = _vehData select 4;
_keyNames   = _vehData select 5;
_fuel       = _vehData select 6;
_inv        = _vehData select 7;

[ format ["Du hast deinen: %1 ausgeparkt", [_vehClass] call lts_fnc_getDisplayName] ] call lts_fnc_hint;

[_plate, _vehClass, _markerPos, _ownerUID, _ownerName, _keyUIDs, _keyNames, _fuel, _inv] call lts_fnc_createVehicle;
