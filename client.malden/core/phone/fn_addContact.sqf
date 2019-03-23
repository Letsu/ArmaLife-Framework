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
if (_contact in _curContacts) exitWith {
    private _index = _curContacts find _contact;
    _contact =  _curContacts select _index;
    if (_contact select 2) exitWith { ["Du hast diesen Kontakt schon hinzugefügt"] call lts_fnc_hint };

    (_curContacts select _index) set [2, true];
    profileNamespace setVariable ["lts_contacts", _curContacts];
    saveProfileNamespace;

};


_curContacts pushBack _contact;
profileNamespace setVariable ["lts_contacts", _curContacts];
saveProfileNamespace;
