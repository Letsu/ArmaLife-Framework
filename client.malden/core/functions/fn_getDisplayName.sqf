/*
 * Author: Johannes "Letus" Bindriem
 * Funcion to return Displayname from an Item from Class Name
 *
 * Arguments:
 * 0: Item Classname [String]
 *
 * Return Value:
 * Displayname of Item [String]
 *
 * Example:
 * ["Class"] call lts_fnc_getDisplayName
 *
 */

private _item = param [0, ""];
private _name = "";

 switch (true) do {
     case(isClass(configFile >> "CfgMagazines" >> _item))           : { _name = getText (configFile >> "CfgMagazines" >> _item >> "displayName") };
     case(isClass(configFile >> "CfgWeapons" >> _item))             : { _name = getText (configFile >> "CfgWeapons" >> _item >> "displayName") };
     case(isClass(configFile >> "CfgVehicles" >> _item))            : { _name = getText (configFile >> "CfgVehicles" >> _item >> "displayName") };
     case(isClass(configFile >> "CfgGlasses" >> _item))             : { _name = getText (configFile >> "CfgGlasses" >> _item >> "displayName") };
     case(isClass(missionConfigFile >> "Config_License" >> _item))  : { _name = getText (missionConfigFile >> "Config_License" >> _item >> "DisplayName") };
 };

 _name;
