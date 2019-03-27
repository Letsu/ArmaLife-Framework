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
private _TVSHOP      = _DISPLAY displayCtrl 1500;
private _BUTTONBUY   = _DISPALY displayCtrl 1600;
private _BUTTONABORT = _DISPLAY displayCtrl 1601;

//Get Vheicle Shop Config
private _displayName = getText  (missionConfigFile >> "Config_Vehicle" >> _shopClass >> "DisplayName" );
private _condition   = getText  (missionConfigFile >> "Config_Vehicle" >> _shopClass >> "Condtion" );

private _hasCondition = false;
if !(_condition isEqualTo "") then { _hasCondition = true };
if (_hasCondition && call compile (_condition)) exitWith { ["Du darfst dieses Geschäft nicht benutzen"] call lts_fnc_hint; closeDialog 0 };

private _vehicleList = configProperties[missionConfigFile >> "Config_Vehicle" >> _shopClass];
_vehicleList deleteAt 0; //Delete DispalyName
_vehicleList deleteAt 0; //Delete Condition


_SHOPNAME ctrlSetText _displayName;

private _vehPos = 0;
{
    _y = getArray _x;
    _tvPos = _TVSHOP tvAdd [[], (_y select 0)];
    _y deleteAt 0;
    {
        private _vehicleClass  = _x select 0;
        private _price         = _x select 1;
        private _vehCondition  = _x select 2;


        /* _hasCondition = false;
        if !(_condition isEqualTo "") then { _hasCondition = true };
        if (_hasCondition && (call compile (_condition))) then { */
            _vehDisplayName = "";
            if (isClass (missionConfigFile >> "Config_VehicleDefines" >> _vehicleClass)) then {
                private _types          = getArray (missionConfigFile >> "Config_VehicleDefines" >> _vehicleClass >> "Types");
                private _vehDisplayName = getText (missionConfigFile >> "Config_VehicleDefines" >> _vehicleClass >> "DisplayName");
            } else {
                _vehDisplayName = [_vehicleClass] call lts_fnc_getDisplayName;
            };

            _itemPos = _TVSHOP tvAdd [[_tvPos], _vehDisplayName];
            private _data = [_shopClass, _vehicleClass, _vehPos, _spawnPos, _price];
            _TVSHOP tvSetData [[_tvPos, _itemPos], str(_data)];


            _vehPos = _vehPos + 1;
        /* }; */
    } forEach (_y);
} forEach _vehicleList;
