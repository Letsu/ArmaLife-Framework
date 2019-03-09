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
 private _id = param [0];
 private _cop    = param [1];
 private _note  = param [2];

 private _copUID    = getPlayerUID _cop;


 [_id, _copUID, (name _cop), _note] call lts_interface_fnc_wantedNoteAdd;
