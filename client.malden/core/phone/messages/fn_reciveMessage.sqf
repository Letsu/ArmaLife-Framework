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
_number  = param [0];
_message = param [1];
_from    = param [2];




profileNamespace setVariable ["lts_messages", _curContacts];
saveProfileNamespace;