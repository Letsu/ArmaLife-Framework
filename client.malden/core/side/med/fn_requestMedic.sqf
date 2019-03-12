/*
 * Author: Johannes "Letus" bindriem
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
if (count(units allMedicGroup) isEqualTo 0) exitWith { hint "Du konntest keinen Medic erreichen!"};

[allMedicGroup, (name player), [(format["%1 hat einen Medic Requestet!", name player]),"Medic Requestet", "Medic Requestet"], (getPos player), "CREATED", 0, true] call BIS_fnc_taskCreate
