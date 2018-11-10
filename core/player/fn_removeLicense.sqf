/*
 * Author: Johannes "Letus" Bindriem
 * Remove the License form the Player from the Var Name!
 *
 * Arguments:
 * 0: typ of teh License [String]
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

 _var = _this select 0;

_license = [_var] call lts_fnc_hasLicense;
_hasLicense = _license select 0;
if (!_hasLicense) exitWith { ["Error in removeLicense Player hasen´t the License!"] call lts_fnc_log };
_index = _license select 1;

lts_core_licenses select _index select 1 = false;
