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

private _amount = param [0];
private _type   = param [1];

switch (_type) do {
    case (0): {
        lts_money_cash = lts_money_cash + _amount;
    };

    case (1): {
        lts_money_bank = lts_money_bank + _amount;
    };
};
