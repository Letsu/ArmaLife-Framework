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

diag_log format ["%1, %2", _mode, _vehicle];

switch (_mode) do {
    case (0): /*Destroy Vehicle*/{
        diag_log "Mode 0";
        _data = format ["0:Vehicle:DestroyVehicle:%1", _vehicle];
        _query = call compile ("extDB3" callExtension _data);
    };

    case (1): /*Disable vehicle*/{

            diag_log "Mode 1";
        _data = format ["0:Vehicle:DisableVehicle:%1", _vehicle];
        _query = call compile ("extDB3" callExtension _data);
    };

    case (2): /*Enable vehicle*/{
        diag_log "Mode 2";
        _data = format ["0:Vehicle:EnableVehicle:%1", _vehicle];
        _query = call compile ("extDB3" callExtension _data);
    };
};
