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
private _TVSHOP      = _DISPLAY displayCtrl 1500;
private _VEHCOMP     = _DISPLAY displayCtrl 1004;

//Get LB Data
_curSelect = (tvCurSel _TVSHOP);
_data      = _TVSHOP tvData _curSelect;
_data      = parseSimpleArray _data;

private _shopName = _data select 0;
private _vehClass = _data select 1;
private _indexPos = _data select 2;
private _spawnPos = getMarkerPos (_data select 3);
_price = _data select 4;

private _objects = nearestObjects [_spawnPos, ["LandVehicle", "Ship", "Air"], 10];
if (count _objects > 0) exitWith { ["Es steht schon ein Fahrzeug am Spawn!"] call lts_fnc_hint };

if (lts_money_cash < _price) exitWith { ["Du hast nicht genug Geld um dir das zu kaufen!"] call lts_fnc_hint };
lts_money_cash = lts_money_cash - _price;
/*
Add Config for Texttures and read Vehicle Defines
*/

if (_shopName isEqualTo "policeCar" || _shopName isEqualTo "medCar") exitWith { [_vehClass, _spawnPos, player, (getPlayerUID player), [(getPlayerUID player)], [(name player)], true] call lts_fnc_createNewVehicle };
[_vehClass, _spawnPos, player, [(getPlayerUID player)], [(name player)], false] call lts_fnc_createNewVehicle;
