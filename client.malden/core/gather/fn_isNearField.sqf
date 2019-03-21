/*
 * Author: Johannes "Letus" Bindriem
 * Initalizies the Gather Action. Places the Ace Action to the Tress in Farming Fields
 * Function places an Invisable Helipad in the Tress and add the Action to this Helipad
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_fnc_initGather;
 *
 */

_return = [false];

 {
     private _pfad = str(_x) splitString "/, \";
     private _config = _pfad select ((count _pfad) - 1);

     private _fieldRange = getNumber (missionConfigFile >> "Config_Gather" >> _config >> "Range");
     private _item = getText (missionConfigFile >> "Config_Gather" >> _config >> "Item");
     private _fields = getArray (missionConfigFile >> "Config_Gather" >> _config >> "Fields");
     private _condition = getText (missionConfigFile >> "Config_Gather" >> _config >> "Condtion");

     private _hasCondition = false;
     if !(_condition isEqualTo "") then { _hasCondition = true };
     if (_hasCondition && !(call compile (_condition))) exitWith { };


     {
         if ( (player distance (getMarkerPos _x)) <= _fieldRange ) then {
             _return = [true, _item];
         };
     } forEach _fields;
 } forEach ("true" configClasses (missionConfigFile >> "Config_Gather"));


_return;




/* {
    private _pfad = str(_x) splitString "/, \";
    private _config = _pfad select ((count _pfad) - 1);

    private _fieldRange = getNumber (missionConfigFile >> "Config_Gather" >> _config >> "Range");
    private _item = getText (missionConfigFile >> "Config_Gather" >> _config >> "Item");
    private _fields = getArray (missionConfigFile >> "Config_Gather" >> _config >> "Fields");


    {
        private _pos = getMarkerPos _x;
        private _trees = nearestTerrainObjects [_pos, ["Tree"], _fieldRange];
        {
            private _logic = "Land_HelipadEmpty_F" createVehicle (getPos _x);
            _logic setPos [(getPos _x) select 0, (getPos _x) select 1, 1.6];

            private _actions = [ "action_1", "Pfluecken", "", {[_target, _player, _config] call lts_fnc_gather}, {true}, {[_target, _player, _item] call lts_fnc_gather}, {}, {}, 10 ] call ace_interact_menu_fnc_createAction;
            [ _logic, 0, ["ACE_MainActions"], _actions ] call ace_interact_menu_fnc_addActionToObject;

        } forEach _trees;
    } forEach _fields;
} forEach ("true" configClasses (missionConfigFile >> "Config_Gather")); */
