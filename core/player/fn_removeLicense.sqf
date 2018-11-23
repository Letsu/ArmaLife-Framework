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

 _var = param [0, ""];

_license = [_var] call lts_fnc_hasLicense;
_hasLicense = _license select 0;
if (!_hasLicense) exitWith { ["Error in removeLicense Player hasen´t the License!"] call lts_fnc_log };
_index = _license select 1;

(lts_core_licenses select _index) set[1, false];
