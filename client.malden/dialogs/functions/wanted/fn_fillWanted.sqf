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

private _DISPLAY         = findDisplay 40001;
private _LBPLAYERS       = _DISPLAY displayCtrl 1003;
private _LBWANTED        = _DISPLAY displayCtrl 1009;
private _LBINFO          = _DISPLAY displayCtrl 1013;
private _OVERVIEW        = _DISPLAY displayCtrl 1018;
private _TEXTINFO        = _DISPLAY displayCtrl 1014;
private _TEXTWANTED      = _DISPLAY displayCtrl 1008;


//ADD Players to Player List
{
    _LBPLAYERS lbAdd (name _x);
    lts_dialog_wanted_lbPlayerList pushBackUnique _x;
    systemChat str(_x);
} forEach allPlayers; //remove PLayers that are Wanted

_LBPLAYERS lbSetCurSel 0;

systemChat "fillwanted";
