/*
 * Author: Johannes "Letus" Bindriem
 * Adds Fucntions to Update Spezific Value in Player Database
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

interface_update_fnc_money = {
    _money = lts_moeny_cash;

    //add RemoteExec on Server
};

interface_update_fnc_bank = {
    _bank = lts_money_bank;

    //add remoteExec On Server
};

interfase_update_fnc_side = {
    _curSides = lts_core_curSide;
};

interface_update_fnc_saveInv = {

};
