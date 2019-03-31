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
_message = param [0];
_from    = param [1];
_to      = param [2];



[ format["Du hast eine Nachricht von: %1", _from] ] call lts_fnc_hint;
systemChat "Neue Nachricht";
