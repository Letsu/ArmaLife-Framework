/*
 * Author: Johannes "Letus" Bindriem
 * Give status of License of the Player and the Position in the License Array
 *
 * Arguments:
 * 0: License Type [String]
 *
 * Return Value:
 * 0: Player has the License [Bool]
 * 1: Player of teh License in the Array [Number]
 *
 * Example:
 * [""] call lts_fnc_hasLicense;
 *
 */
private _license = param [0, ""];

//check Parameter
if (_license isEqualTo "") exitWith {};
if (lts_core_licenses isEqualTo []) exitWith { [objNull, false, -1] };

//Find Array of License
_pos = lts_core_licenses find [_license, true];
if (_pos isEqualTo -1) exitWith { [objNull, false, -1] };

//Return
[_license, true, _pos];
