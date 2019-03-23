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

private _contact = param [0, ["ERROR", getPlayerUID player, true]];

private _contacts = profileNamespace getVariable ["lts_contacts", []];
private _index = _contact find _contact;

(_contacts select _index) set [2, false];

profileNamespace setVariable ["lts_contacts", _curContacts];
saveProfileNamespace;
