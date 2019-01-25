/*
 * Author: Johannes "Letus" Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Mode [Number]
 *  0: Update Cash
 *      2: New Cash
 *  1: Update Bank
 *      2: New Bank
 *  2: Update License
 *      2: New License
 *  3: Update Inv
 *      2: New Inv
 * 1: Player UID [Number]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * ["example"] call lts_db_fnc_updatePlayer;
 *
 */
private _mode = param [0, 0];
private _uid = param [1];

switch (_mode) do {
    case (0): /*Update Cash*/{
        private _cash = param [3, 0];
        _data = format ["0:Player:UpdateMoney:%1:%2", _cash, _uid];
        _query = call compile ("extDB3" callExtension _data);
    };

    case (1): /*Update Bank*/{
        private _bank = param [3, 0];
        _data = format ["0:Player:UpdateBank:%1:%2", _bank, _uid];
        _query = call compile ("extDB3" callExtension _data);
    };

    case (2): /*Update License*/{
        private _license = param [3, []];
        _data = format ["0:Player:UpdateLicense:%1:%2", _bank, _uid];
        _query = call compile ("extDB3" callExtension _data);
    };

    case (3): /*Update Inventory*/{
        private _inv = param [3, []];
        _data = format ["0:Player:UpdateInventory:%1:%2", _bank, _uid];
        _query = call compile ("extDB3" callExtension _data);
    };
};
