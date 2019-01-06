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

//Get Config Vars
private _var = getText (missionConfigFile >> "Config_License" >> _newLicense >> "Var");
if (!(_newLicense == _var)) exitWith { ["Something is badly Wrong in buyLicense!!!!!"] call lts_fnc_log };
private _licenseName = getText (missionConfigFile >> "Config_License" >> _newLicense >> "DisplayName");
private _licensePrice = getNumber (missionConfigFile >> "Config_License" >> _newLicense >> "Price");

//Some Checks
private _hasLicense = [_var] call lts_fnc_hasLicense;
if (_hasLicense select 0) exitWith { ["Du hast diese Lizenz schon!"] call lts_fnc_hint};
if (lts_moeny_cash < _licensePrice) exitWith { [format ["Du hast nicht genug Geld um die Lizenz: %1 zu kaufen!", _licenseName] ] call lts_fnc_hint };

//Add the License to the player and remove the Money that the License cost
if (((_hasLicense select 1) isEqualTo -1)) then {
    lts_moeny_cash = lts_moeny_cash - _price;

    lts_core_licenses pushback [_var, true];
} else {
    lts_moeny_cash = lts_moeny_cash - _price;

    (lts_core_licenses select (_hasLicense select 1)) set[1, true];
}
