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
            _action = [ "trees_gather", "Pfluecken", "", {  this call lts_fnc_gather }, {/*Condiction*/} ] call ace_interact_menu_fnc_createAction;
            [ _x, 0, ["ACE_MainActions"], _action ] call ace_interact_menu_fnc_addActionToObject;

        } forEach _trees;
    } forEach _fields;
} forEach ("true" configClasses (missionConfigFile >> "Config_Gather"));
