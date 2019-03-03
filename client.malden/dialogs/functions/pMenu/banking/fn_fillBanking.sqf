/*
 * Author: Johannes "Letus" Bindriem
 * Add Text and fills the Dialog Listbox whith all Players
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_dialog_fnc_fillBanking
 *
 */

private _DISPLAY  = findDisplay 91001;
private _BANKCTRL = _DISPLAY displayCtrl 91010;
private _CASHCTRL = _DISPLAY displayCtrl 91011;
private _GIVE     = _DISPLAY displayCtrl 91020;
private _LBGIVE   = _DISPLAY displayCtrl 91050;
private _EDITGIVE = _DISPLAY displayCtrl 91030;

private _bank = str(lts_money_bank);
private _cash = str(lts_money_cash);

_BANKCTRL ctrlSetText _bank;
_CASHCTRL ctrlSetText _cash;

lts_banking_lb_players = []; //Add Global Variable to give the players as object to script
{
    private _name = name _X;
    _LBGIVE lbAdd _name;
    /*Add RFEquest for Side and write it behind the Nam!*/
    private _size = lbSize _LBGIVE;
    _LBGIVE lbSetData [(_size - 1), str(_X)];
    lts_banking_lb_players pushBack _x;


} forEach ((allPlayers - [player])); //Add Distance to PLayers!

if ((count lts_banking_lb_players) isEqualTo 0) then {_LBGIVE lbAdd "Keine Spieler in der nähe!"};
