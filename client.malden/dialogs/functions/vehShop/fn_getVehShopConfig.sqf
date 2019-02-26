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

private _shopClass = param [0, ""];
private _spawnPos  = param [1, ""];

 //Display Controlls
private _DISPLAY = findDisplay 80001;

private _SHOPNAME    = _DISPLAY displayCtrl 1001;
private _TEXTPRICE   = _DISPLAY displayCtrl 1003;
private _LBSHOP      = _DISPLAY displayCtrl 1500;
private _BUTTONBUY   = _DISPALY displayCtrl 1600;
private _BUTTONABORT = _DISPLAY displayCtrl 1601;

//Get Vheicle Shop Config
private _displayName = getText  (missionConfigFile >> "Config_Vehicle" >> _shopClass >> "DisplayName" );
private _condition   = getText  (missionConfigFile >> "Config_Vehicle" >> _shopClass >> "Condtion" );
private _vehicleList = getArray (missionConfigFile >> "Config_Vehicle" >> _shopClass >> "Vehicles" );

private _hasCondition = false;
if !(_condition isEqualTo "") then { _hasCondition = true };
if (_hasCondition && call compile (_condition)) exitWith { ["Du darfst dieses Geschäft nicht benutzen"] call lts_fnc_hint; closeDialog 0 };

_SHOPNAME ctrlSetText _displayName;

private _vehPos = 0;
{
    private _vehicleClass  = _x select 0;
    private _price         = _x select 1;
    private _vehCondition = _x select 2;

/*
    Dont Working!!!
    _hasCondition = false;
    if !(_condition isEqualTo "") then { _hasCondition = true };
    if (_hasCondition && call compile (_condition)) then {
*/
        private _types          = getArray (missionConfigFile >> "Config_VehicleDefines" >> _vehicleClass >> "Types");
        private _vehDisplayName = getText (missionConfigFile >> "Config_VehicleDefines" >> _vehicleClass >> "DisplayName");

        if (_vehDisplayName isEqualTo "") then {_vehDisplayName = [_vehDisplayName] call lts_fnc_getDisplayName};

        _LBSHOP lbAdd _vehDisplayName;
        private _size = lbSize _LBSHOP;
        private _data = format ["%1,%2,%3,%4", _shopClass, _vehicleClass, _vehPos, _spawnPos];
        _LBSHOP lbSetData [(_size - 1), _data]; //Data: ShopClassname | VehClassname | Pos in Veh Array | Spawn Marker

/*
        {
            //Function to add Skin to Vehicle
            _skin           = _x select 0;
            _skinDisplayName = _x select 1;
            _skinCondition      = _x select 2;
        } forEach _types;
*/
//    };
    _vehPos = _vehPos + 1;
} forEach _vehicleList;

_LBSHOP lbSetCurSel 0
