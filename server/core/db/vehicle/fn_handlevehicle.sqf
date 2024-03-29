/*
 * Author: Johannes "letus" Bindriem
 * Send Request to Database to handle with Vehicle
 *
 * Arguments:
 * 0: Mode [Number]
 *  0: Destroy Vehicle
 *  1: Disable Vehicle
 *  2: Enable Vehicle
 * 1: Vehicle Plate
 * Return Value:
 * NONE
 *
 * Example:
 * [0] call lts_db_fnc_handleVehicle
 *
 */

_mode    = param [0, 0];
_vehicle = param [1];

switch (_mode) do {
    case (0): /*Destroy Vehicle*/{
        _data = format ["0:Vehicle:DestroyVehicle:%1", _vehicle];
        _query = call compile ("extDB3" callExtension _data);
    };

    case (1): /*Disable vehicle*/{
        _data = format ["0:Vehicle:DisableVehicle:%1", _vehicle];
        _query = call compile ("extDB3" callExtension _data);
    };

    case (2): /*Enable vehicle*/{
        _data = format ["0:Vehicle:EnableVehicle:%1", _vehicle];
        _query = call compile ("extDB3" callExtension _data);
    };

    case (3): /*Set Fuel*/{
        _fuel = param [2, 1];
        _data = format ["0:Vehicle:UpdateFuel:%1:%2", _fuel, _vehicle];
        diag_log format ["%1, %2", _fuel, _data];
        _query = call compile ("extDB3" callExtension _data);
    };

    case (4): /*Update Vehicle Keys*/{
        _keyUids  = param [2];
        _keyNames = param [3];

        _data = format ["0:Vehicle:UpdateKeys:%1:%2", _keyUids, _vehicle];
        _query = call compile ("extDB3" callExtension _data);

        _data = format ["0:Vehicle:UpdateKeysNames:%1:%2", _keyNames, _vehicle];
        _query = call compile ("extDB3" callExtension _data);
    };
};
