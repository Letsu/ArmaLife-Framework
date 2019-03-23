/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

//Check if Profile Variable exists
private _contacts = profileNamespace getVariable ["lts_contacts", []];
if (_contacts isEqualTo []) then { [] call lts_fnc_initContact };
waitUntil {count _contacts > 0};

_contacts = profileNamespace getVariable ["lts_contacts", []];
_contacts;
