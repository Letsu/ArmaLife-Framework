private[];
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

//-------------------------------------------------------
//-------------------Need to Put in Server!!!------------
//-------------------------------------------------------

{
    _pfad = str(_x) splitString "/, \";
    _config = _pfad select ((count _pfad) - 1);

    _fieldRange = getNumber (missionConfigFile >> "Config_Gather" >> _config >> "Range");
    _item = getText (missionConfigFile >> "Config_Gather" >> _config >> "Item");
    _fields = getArray (missionConfigFile >> "Config_Gather" >> _config >> "Fields");

    {
        _pos = getMarkerPos _x;
        _trees = nearestTerrainObjects [_pos, ["Tree"], _fieldRange];
        {

            _logic = "Land_HelipadEmpty_F" createVehicle (getPos _x);
            _logic setPos [(getPos _x) select 0, (getPos _x) select 1, 1.6];

             _actions = [ "action_1", "Pfluecken", "", {  /*[_target, _player, _actionParams] call lts_fnc_gather*/ hint _actionParams }, {true}, {}, "Test", {}, 10 ] call ace_interact_menu_fnc_createAction;
            [ _logic, 0, ["ACE_MainActions"], _actions ] call ace_interact_menu_fnc_addActionToObject;

        } forEach _trees;
    } forEach _fields;
} forEach ("true" configClasses (missionConfigFile >> "Config_Gather"));
