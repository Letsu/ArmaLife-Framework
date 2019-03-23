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

if (count (profileNamespace getVariable ["lts_contacts", []]) > 0) exitWith { ["Wrong call of Contact init! profile Variable is not Emtpy"] call lts_fnc_log };

//Create to Contact Arrays
private _police = ["Polizei", "911"] call lts_fnc_createContact;
private _firefighter = ["Feuerwehr", "112"] call lts_fnc_createContact;

private _arr = [_police, _firefighter];
profileNamespace setVariable ["lts_contacts", _arr];
saveProfileNamespace;
