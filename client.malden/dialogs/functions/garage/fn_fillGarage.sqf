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
/* _DISPLAY = findDisplay 20001; */

//For all Player Vehicles
{
    //Vehicle is Pared out already so dont list it in the Garage
    if !(_x select 8) then {
        _plate = _x select 0;
        _class = _x select 1;
        _ownerUID = _x select 2;
        _ownerName = _x select 3;
        _keyUIDs = _x select 4;
        _keyNames = _x select 5;
        _fuel = _x select 6;
        _inv = _x select 7
    };
} forEach lts_core_allVehicles;
