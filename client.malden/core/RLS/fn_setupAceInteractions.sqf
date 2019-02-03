//--------------------- Ace Item Interactions ---------------------
{
    private _class = getArray(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "className");
    for "_i" from 0 to (count _class)-1 do
    {
        private _className = _class select _i;
        private _self = getNumber(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "ACE_Menu");
        private _var = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "variable");
        private _displayName = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "displayName");
        private _icon = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "icon");
        private _code = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "code");
        _code = compile _code;
        private _conditons = getText(missionConfigFile >> "ACE_Interaction" >> (configName _x) >> "conditons");
        _conditons =  compile _conditons;
        private _ace = [_var, _displayName, _icon, _code, _conditons,{},[0, 0, 0],10,[false,false,false,false,true]] call ace_interact_menu_fnc_createAction;
        [_className, _self, ["ACE_MainActions"], _ace] call ace_interact_menu_fnc_addActionToClass;
    };
} forEach ("true" configClasses (missionConfigFile >> "ACE_Interaction"));

//--------------------- Ace Vehicle Interactions ---------------------
{
  private _var = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "variable");
  private _displayName = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "displayName");
  private _self = getNumber(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "ACE_Menu");
  private _menu = getArray(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "Menu");
  private _icon = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "icon");
  private _code = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "code");
  _code = compile _code;
  private _conditons = getText(missionConfigFile >> "ACE_V_Interaction" >> (configName _x) >> "conditons");
  _conditons =  compile _conditons;
  private _ace = [_var, _displayName, _icon, _code, _conditons, {},"",[0, 0, 0],10] call ace_interact_menu_fnc_createAction;
  ["LandVehicle", _self, _menu, _ace, true] call ace_interact_menu_fnc_addActionToClass;
  ["Air", _self, _menu, _ace, true] call ace_interact_menu_fnc_addActionToClass;
  ["Ship", _self, _menu, _ace, true] call ace_interact_menu_fnc_addActionToClass;
} forEach ("true" configClasses (missionConfigFile >> "ACE_V_Interaction"));

//--------------------- Ace Player Interactions ---------------------
{
  private _var = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "variable");
  private _displayName = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "displayName");
  private _self = getNumber(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "ACE_Menu");
  private _menu = getArray(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "Menu");
  private _icon = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "icon");
  private _code = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "code");
  _code = compile _code;
 private _conditons = getText(missionConfigFile >> "ACE_P_Interaction" >> (configName _x) >> "conditons");
  _conditons =  compile _conditons;
  private _ace = [_var, _displayName, _icon, _code, _conditons,{},"",[0, 0, 0],10] call ace_interact_menu_fnc_createAction;
  ["Man", _self, _menu, _ace, true] call ace_interact_menu_fnc_addActionToClass;
} forEach ("true" configClasses (missionConfigFile >> "ACE_P_Interaction"));
