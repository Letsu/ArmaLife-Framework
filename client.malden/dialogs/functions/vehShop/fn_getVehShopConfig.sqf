private ["_shopClass", "_display", "_shopName", "_textPrice", "_lbShop", "_buttonBuy", "_buttonAbort"];
/*
 * Author: Johannes "Letus" Bidnriem
 * Fills the Listboxes from Shop Dialog whit Values from Config
 *
 * Arguments:
 * 1: ShopClass [String]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_fialog_fnc_getVehShopConfig;
 *
 */

 _shopClass = param [0, ""];

 //Display Controlls
 _display = findDisplay 70001;

 _shopName = _display displayCtrl 1001;
 _textPrice = _display displayCtrl 1003;
 _lbShop = _display displayCtrl 1500;
 _buttonBuy = _display displayCtrl 1600;
 _buttonAbort = _display displayCtrl 1601;

//Get Vheicle Shop Config
_displayName = getText  (missionConfigFile >> "Config_Vehicle" >> _shopClass >> "DisplayName" );
_condition   = getText  (missionConfigFile >> "Config_Vehicle" >> _shopClass >> "Condtion" );
_vehicleList = getArray (missionConfigFile >> "Config_Vehicle" >> _shopClass >> "Vehicles" );

_hasCondition = false;
if !(_condition isEqualTo "") then { _hasCondition = true };
if (_hasCondition && call compile (_condition)) exitWith { ["Du darfst dieses Geschäft nicht benutzen"] call lts_fnc_hint; closeDialog 0 };

_shopName ctrlSetText _displayName;

{
    _vehicleClass  = _x select 0;
    _price         = _x select 1;
    _vehCondition = _x select 2;

/*
    Dont Working!!!
    _hasCondition = false;
    if !(_condition isEqualTo "") then { _hasCondition = true };
    if (_hasCondition && call compile (_condition)) then {
*/
        _types          = getArray (missionConfigFile >> "Config_VehicleDefines" >> _vehicleClass >> "Types");
        _vehDisplayName = getText (missionConfigFile >> "Config_VehicleDefines" >> _vehicleClass >> "DisplayName");

        if (_vehDisplayName isEqualTo "") then {_vehDisplayName = [_vehDisplayName] call lts_fnc_getDisplayName};

        _lbShop lbAdd _vehDisplayName;
        _size = lbSize _lbShop;
        _data = format ["%1,%2", _shopClass, _vehicleClass];
        _lbShop lbSetData [(_size - 1), _data]; //Data: ShopClassname | VehClassname

/*
        {
            //Function to add Skin to Vehicle
            _skin           = _x select 0;
            _skinDisplayName = _x select 1;
            _skinCondition      = _x select 2;
        } forEach _types;
*/
//    };
} forEach _vehicleList;

_lbShop lbSetCurSel 0
