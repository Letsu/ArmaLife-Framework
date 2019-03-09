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
 private _id     = param [0];
 private _copUID    = param [1];
 private _copName  = param [2];
 private _note = param [3];


private  _data = format ["0:WantedNotes:CreateWantedNoteEntry:%1:%2:%3:%4",
     _id,
     _copUID,
     _copName,
     _note
     ];


 private _query = call compile ("extDB3" callExtension _data);
