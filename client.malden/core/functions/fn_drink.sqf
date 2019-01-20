/*
 * Author: Johannes "Letus" Bindriem
 * Function to Increase the thirst value when player drinking something
 *
 * Arguments:
 * 0: Amount [Number]
 * 1: Increase = 0, Decrease = 1, Set = 2 [Number]
 *
 * Return Value:
 * falseValue: Value over 100 or under 0 is passed to Function
 *
 * Example:
 * [100] call lts_fnc_drink
 *
 */

private _amount = param [0, 100];
private _type   = param [1, 2];

switch (_type) do {
    case (0): {
        if (lts_core_thirst + _amount > 100) then { lts_core_thirst = 100 } else { lts_core_thirst = lts_core_thirst + _amount };
    };

    case (1): {
        if (lts_core_thirst - _amount < 0) then { lts_core_thirst = 0 } else { lts_core_thirst = lts_core_thirst - _amount };
    };

    case (2): {
        if (_amount > 100 || _amount < 0) exitWith { ["None posible Value passed to lts_fnc_drink"] call lts_fnc_log; [1, "falseValue"] };
        lts_core_thirst = _amount;
    };
};

if (lts_core_thirst > 100 || lts_core_thirst < 100) exitWith { ["Amount of lts_core_thirst is after change in some non possible Value!"] call lts_fnc_log; [1, "overValue"]};
