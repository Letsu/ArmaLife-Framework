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

 //Display Controlls
private _DISPLAY = findDisplay 80001;

//Get Controlls
private _LBSHOP      = _DISPLAY displayCtrl 1500;

//Get LB Data
_curSelect = (lbCurSel _LBSHOP);
_data      = _LBSHOP lbData _curSelect;
_dataSplit = _data splitString ",";

private _shopName = _dataSplit select 0;
private _vehClass = _dataSplit select 1;
private _indexPos = call (compile (_dataSplit select 2));
private _spawnPos = getMarkerPos (_dataSplit select 3);

private _objects = nearestObjects [_spawnPos, ["Car", "Truck","Tank"], 10];
if (count _objects > 0) exitWith { {"Es steht schon ein Fahrzeug am Spawn!"} call lts_fnc_hint };

//Get Config Entrys
private _shopVeh = getArray (missionConfigFile >> "Config_Vehicle" >> _shopName >> "Vehicles");
private _price   = (_shopVeh select _indexPos) select 1;
/*
Add Config for Texttures and read Vehicle Defines
*/

if (_shopName isEqualTo "policeCar") exitWith { [_vehClass, _spawnPos, player, (getPlayerUID player), [(getPlayerUID player)], [(name player)], true] call lts_fnc_createNewVehicle };
[_vehClass, _spawnPos, player, [(getPlayerUID player)], [(name player)], false] call lts_fnc_createNewVehicle;
