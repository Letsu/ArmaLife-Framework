private ["_newLicense", "_var", "_licenseName", "_licensePrice" ];
/*
 * Author: [Name of Author(s)]
 * [Description]
 *
 * Arguments:
 * 0: var auf the New License [String]
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

_newLicense = _this select 0;

_var = getText (missionConfigFile >> "Config_License" >> _newLicense >> "Var");
if (!(_newLicense == _var)) exitWith { ["Something is badly Wrong in buyLicense!!!!!"] call lts_fnc_log };
_licenseName = getText (missionConfigFile >> "Config_License" >> _newLicense >> "DisplayName");
_licensePrice = getNumber (missionConfigFile >> "Config_License" >> _newLicense >> "Price");

_hasLicense = [_var] call lts_fnc_hasLicense;
if (_hasLicense select 0) exitWith { ["Du hast diese Lizenz schon!"] call lts_fnc_hint};


/if (lts_moeny_cash < _licensePrice) exitWith { [format ["Du hast nicht genug Geld um die Lizenz: %1 zu kaufen!", _licenseName] ] call lts_fnc_hint };
lts_moeny_cash = lts_moeny_cash - _price;

lts_core_licenses pushback [_var, true];
lts_moeny_cash = lts_moeny_cash - _price;
