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

_imagePath = "pictures";

//Get Dialogs
private _dispaly = findDisplay 100001;
private _picFood      = _dispaly displayCtrl 1000;
private _picWater     = _dispaly displayCtrl 1001;
private _picPill      = _dispaly displayCtrl 1002



_food   = lts_core_food;
_thirst = lts_core_thirst;

if (lts_core_food > 75) then {
    _picFood ctrlSetText format ["%1\foodWhite.paa", _imagePath];
} else {
    if (lts_core_food > 50) exitWith { _picFood ctrlSetText format ["%1\foodYellow.paa", _imagePath] };
    if (lts_core_food > 25) exitWith { _picFood ctrlSetText format ["%1\foodOrange.paa", _imagePath] };
    if (lts_core_food > 0)  exitWith { _picFood ctrlSetText format ["%1\foodRed.paa", _imagePath] };
};

if (lts_core_thirst > 75) then {
    _picWater ctrlSetText format ["%1\waterWhite.paa", _imagePath];
} else {
    if (lts_core_thirst > 50) exitWith { _picWater ctrlSetText format ["%1\waterYellow.paa", _imagePath] };
    if (lts_core_thirst > 25) exitWith { _picWater ctrlSetText format ["%1\waterOrange.paa", _imagePath] };
    if (lts_core_thirst > 0)  exitWith { _picWater ctrlSetText format ["%1\waterRed.paa", _imagePath] };
};


/*Pill For Future Use!!!!!
if (lts_core_thirst > 75) then {
    _picWater ctrlSetText format ["%1\waterWhite.paa", _imagePath];
} else {
    if (lts_core_thirst > 50) exitWith { _picWater ctrlSetText format ["%1\waterYellow.paa", _imagePath] };
    if (lts_core_thirst > 25) exitWith { _picWater ctrlSetText format ["%1\waterOrange.paa", _imagePath] };
    if (lts_core_thirst > 0)  exitWith { _picWater ctrlSetText format ["%1\waterRed.paa", _imagePath] };
};
*/
