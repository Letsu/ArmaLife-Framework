//--------------------- Ace Item Interactions ---------------------
{
    _class = getArray(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "className");
    for "_i" from 0 to (count _class)-1 do
    {
        _className = _class select _i;
        _self = getNumber(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "ACE_Menu");
        _var = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "variable");
        _displayName = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "displayName");
        _icon = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "icon");
        _code = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "code");
        _code = compile _code;
        _conditons = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "conditons");
        _conditons =  compile _conditons;
        _ace = [_var, _displayName, _icon, _code, _conditons,{},[0, 0, 0],10,[false,false,false,false,true]] call ace_interact_menu_fnc_createAction;
        [_className, _self, ["ACE_MainActions"], _ace] call ace_interact_menu_fnc_addActionToClass;
    };
} forEach ("true" configClasses (missionConfigFile >> "ACE_Interaction"));

//--------------------- Ace Vehicle Interactions ---------------------
{
  _var = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "variable");
  _displayName = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "displayName");
  _self = getNumber(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "ACE_Menu");
  _menu = getArray(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "Menu");
  _icon = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "icon");
  _code = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "code");
  _code = compile _code;
  _conditons = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "conditons");
  _conditons =  compile _conditons;
  _ace = [_var, _displayName, _icon, _code, _conditons, {},"",[0, 0, 0],10] call ace_interact_menu_fnc_createAction;
  ["LandVehicle", _self, _menu, _ace, true] call ace_interact_menu_fnc_addActionToClass;
  ["Air", _self, _menu, _ace, true] call ace_interact_menu_fnc_addActionToClass;
  ["Ship", _self, _menu, _ace, true] call ace_interact_menu_fnc_addActionToClass;
} forEach ("true" configClasses (missionConfigFile >> "ACE_V_Interaction"));

//--------------------- Ace Player Interactions ---------------------
{
  _var = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "variable");
  _displayName = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "displayName");
  _self = getNumber(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "ACE_Menu");
  _menu = getArray(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "Menu");
  _icon = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "icon");
  _code = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "code");
  _code = compile _code;
  _conditons = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "conditons");
  _conditons =  compile _conditons;
  _ace = [_var, _displayName, _icon, _code, _conditons,{},"",[0, 0, 0],10] call ace_interact_menu_fnc_createAction;
  ["Man", _self, _menu, _ace, true] call ace_interact_menu_fnc_addActionToClass;
} forEach ("true" configClasses (missionConfigFile >> "ACE_P_Interaction"));
