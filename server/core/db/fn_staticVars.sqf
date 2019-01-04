/*
 * Author: Johannes 'Letus' Bindriem
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
 /*--------------
 Get Cop and Medic Service Numbers!
 ----------------*/
allServiceNumbers = [];
private _copSN = call compile ("extDB3" callExtension "0:Cop:GetCopServiceNumbers");
private _medSN = call compile ("extDB3" callExtension "0:Med:GetMedServiceNumbers");
//_query = parseSimpleArray _query;

_copSN = _copSN select 1;
_medSN = _medSN select 1;


{
    allServiceNumbers pushBackUnique (parseNumber (_x select 0));
    diag_log _x;
} forEach _copSN;

{
    allServiceNumbers pushBackUnique (parseNumber (_x select 0));
    diag_log _x;
} forEach _medSN;

//Make Value Public
publicVariable "allServiceNumbers";

/*------------
End of Cop and Medic Service Numbers!
-------------*/

/*-----------
Vehicle Plates
-------------*/
allVehiclePlates = [];

private _plates = call compile ("extDB3" callExtension "0:Vehicle:GetVehiclePlate");
_plates = _plates select 1;

_numPlates = [];
{
_numPlates pushBackUnique (parseNumber (_x select 0));
} forEach _plates;

allVehiclePlates = _numPlates;
publicVariable "allVehiclePlates";
/*------------
End of Vehicle Plates
---------------*/
