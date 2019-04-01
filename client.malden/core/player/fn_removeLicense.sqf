/*
 * Author: Johannes "Letus" Bindriem
 * Remove the License form the Player from the Var Name!
 *
 * Arguments:
 * 0: Typ of the License [String]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["LicenseVar"] call lts_fnc_removeLicense;
 *
 */

private _license = param [0, ""];

private _licenseArr = [_license] call lts_fnc_hasLicense;

if !(_licenseArr select 1) exitWith {};
if ((_licenseArr select 2) isEqualTo -1) exitWith {};

_indexPos = _licenseArrselect select 2;

(lts_core_licenses select _index) set[1, false];
