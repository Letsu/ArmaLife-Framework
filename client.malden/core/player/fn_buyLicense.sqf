/*
 * Author: Johannes "Letus" Bindriem
 * Add an License to the Player and add teh License in the License Array
 *
 * Arguments:
 * 0: var auf the New License [String]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["LicenseVar"] call lts_fnc_buyLicense;
 *
 */

private _newLicense = param [0, ""];

//Get Configs & Vars
private _licenseName = getText (missionConfigFile >> "Config_License" >> _newLicense >> "DisplayName");
private _licensePrice = getNumber (missionConfigFile >> "Config_License" >> _newLicense >> "Price");
private _hasLicense = [_newLicense] call lts_fnc_hasLicense;

//Some Checks
if (_hasLicense select 1) exitWith { ["Du hast diese Lizenz schon!"] call lts_fnc_hint};
if (lts_money_cash < _licensePrice) exitWith { [format ["Du hast nicht genug Geld um die Lizenz: %1 zu kaufen!", _licenseName] ] call lts_fnc_hint };
lts_money_cash = lts_money_cash - _licensePrice;

//Add the License to the Player var lts_core_licenses or set it as enabled
if (_hasLicense select 2 isEqualTo -1) then {
    lts_core_licenses pushBack [_newLicense, true];
} else {
    if ((_hasLicense select 2) != -1 || (_hasLicense select 2) != objNull) then {
        lts_core_licenses select (_hasLicense select 3) set [1, true];
    };
};

[ format["Du hast dir die Lizenz: %1 gekauft", _licenseName] ] call lts_fnc_hint;
