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


 private _DISPLAY = findDisplay 42001;
 private _EDITNOTE  = _DISPLAY displayCtrl 1004;

 private _note  = ctrlText _EDITNOTE;
 if (count _note isEqualTo 0) exitWith { ["Die Beschreibung darf nicht Leer sein"] call lts_fnc_hint };

_id     = lts_dialog_wanted_curWanted;


 [_id, player, _note] call lts_cop_fnc_wantedNoteAdd;

 closeDialog 0;
 [] call lts_dialog_fnc_callWanted;
