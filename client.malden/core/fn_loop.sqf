/*
 * Author: Johannes "Letus" Bindriem
 * The While excutet the whole Time and execute Commands thats need to Run in an FOrever Loop!
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] spawn lts_core_fnc_loop;
 *
 */

private _fnc_food = {
    switch (lts_core_food) do {
        case (20): {["Du hast Hunger und Solltest was Essen!"] call lts_fnc_hint};
        case (10): {["Du hast Hunger und Solltest was Essen!"] call lts_fnc_hint};
        case (5): {["Du hast Hunger und Solltest was Essen!"] call lts_fnc_hint};
        case (0): {[""] call lts_fnc_hint};// Add Death whit ACE
    };

    [5, 1] call lts_fnc_eat;
};

private _fnc_thirst = {
    switch (lts_core_thirst) do {
        case (20): {["Du hast Durst und Solltest was Trinken!"] call lts_fnc_hint};
        case (10): {["Du hast Durst und Solltest was Trinken!"] call lts_fnc_hint};
        case (5): {["Du hast Durst und Solltest was Trinken!"] call lts_fnc_hint};
        case (0): {[""] call lts_fnc_hint};// Add Death whit ACE
    };

    [5, 1] call lts_fnc_drink;
};

private _fnc_updateHud = {
    [] call lts_dialog_fnc_updatePHud;
};


private _foodTime   = time;
private _thirstTime = time;
private _saveTime   = time;
for "_i" from 0 to 1 step 0 do {

    if ((time - _foodTime) > 400 )   then { call _fnc_food; _foodTime = time };
    if ((time - _thirstTime) > 350 ) then { call _fnc_thirst; _thirstTime = time };
    if ((time - _saveTime) > 360 )   then { call lts_fnc_savePlayerInfo; _saveTime = time };

    //call Functions
    call _fnc_updateHud;

    uiSleep 10;
};
