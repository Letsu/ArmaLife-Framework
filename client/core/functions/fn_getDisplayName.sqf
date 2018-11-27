/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Item Classname [String]
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

_item = param [0, ""];
_config = "";

 switch (true) do {
     case(isClass(configFile >> "CfgMagazines" >> _item)): {_config = "CfgMagazines"};
     case(isClass(configFile >> "CfgWeapons" >> _item))  : {_config = "CfgWeapons"};
     case(isClass(configFile >> "CfgVehicles" >> _item)) : {_config = "CfgVehicles"};
     case(isClass(configFile >> "CfgGlasses" >> _item))  : {_config = "CfgGlasses"};
 };

_name = getText (configFile >> _config >> _item >> "displayName");

 _name;
