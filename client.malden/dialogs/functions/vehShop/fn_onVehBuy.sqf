private ["_dispaly", "_shopName", "_textPrice", "_lbShop", "_buttonBuy", "_buttonAbort", "_curSelect", "_data", "_dataSplit", "_shopName", "_vehClass"];
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
 _display = findDisplay 80001;

//Get Controlls
 _shopName    = _display displayCtrl 1001;
 _textPrice   = _display displayCtrl 1003;
 _lbShop      = _display displayCtrl 1500;
 _buttonBuy   = _display displayCtrl 1600;
 _buttonAbort = _display displayCtrl 1601;

//Get LB Data
_curSelect = (lbCurSel _lbShop);
_data      = _lbShop lbData _curSelect;
_dataSplit = _data splitString ",";

_shopName = _dataSplit select 0;
_vehClass = _dataSplit select 1;
_indexPos = call (compile (_dataSplit select 2));
_spawnPos = getMarkerPos (_dataSplit select 3);


//Get Config Entrys
_shopVeh = getArray (missionConfigFile >> "Config_Vehicle" >> _shopName >> "Vehicles");
_price   = (_shopVeh select _indexPos) select 1;
/*
Add Config for Texttures and read Vehicle Defines
*/

[_vehClass, _spawnPos] call lts_fnc_createVehicle;
