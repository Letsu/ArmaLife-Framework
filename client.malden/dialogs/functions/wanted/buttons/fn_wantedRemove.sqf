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

_id = lts_dialog_wanted_curWanted;
if (_id isEqualTo -1) exitWith { ["Du hast keinen Eintrag in der Wanted List ausgewählt!"] call lts_fnc_hint };

/* _exit = [
    format["Du willst denn Wanted Eintrag mit der ID: %1 löschen? Damit entlastest du denn Verdächtigen Komplett!", _id],
    "Bist du dir sicher?",
    "Ja",
    "Nein"
] call BIS_fnc_guiMessage;

if (!_exit) exitWith { ["Löschen des Eintrags abgebrochen"] call lts_fnc_hint }; */
dbug11 = _id;

[_id] call lts_cop_fnc_wantedRemove;
