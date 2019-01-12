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
private _config = "";

 switch (true) do {
     case(isClass(configFile >> "CfgMagazines" >> _item)): {_config = "CfgMagazines"};
     case(isClass(configFile >> "CfgWeapons" >> _item))  : {_config = "CfgWeapons"};
     case(isClass(configFile >> "CfgVehicles" >> _item)) : {_config = "CfgVehicles"};
     case(isClass(configFile >> "CfgGlasses" >> _item))  : {_config = "CfgGlasses"};
 };

private _name = getText (configFile >> _config >> _item >> "displayName");

 _name;
