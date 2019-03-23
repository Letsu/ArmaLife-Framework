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
private _name = param [0, "ERROR"];
private _number = param [1, getPlayerUID player];

private _contact = [_name, _number] call lts_fnc_createContact;

private _curContacts = profileNamespace getVariable ["lts_contacts", []];
_curContacts pushBack _contact;
profileNamespace setVariable ["lts_contacts", _curContacts];
saveProfileNamespace;
