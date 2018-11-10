private ["_var"]
/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: License Type [String]
 *
 * Return Value:
 * 0: Player has the License [Bool]
 * 1: Player of teh License in the Array [Number]
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
_var = _this select 0;
_hasLicense = false;

_num = 0;
_num2 = 0;
{
    if (_x select 0 == _var && _x select 1) then {
        _hasLicense = true;
        _num2 = _num;
    } else {
        _hasLicense = false;
    }
    _num = _num + 1;
} forEach lts_core_licenses;

_return = [_hasLicense, _num2];
_return;
