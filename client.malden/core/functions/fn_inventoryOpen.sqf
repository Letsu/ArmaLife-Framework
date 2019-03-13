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
private _unit            = param [0];
private _firstContainer  = param [1];
private _secondContainer = param [2];

scopeName "main";

{
    if (isNull _x) then {false breakOut "main"};

    private _backpack = typeOf _x;
    if (getNumber(configFile >> "CfgVehicles" >> _backpack >> "isBackpack") isEqualTo 1 ) exitWith {
        true breakOut "main";
    };

    if ((_x isKindOf "LandVehicle" || _x isKindOf "Ship" || _x isKindOf "Air") && ((locked _x) isEqualTo 2)) exitWith {
        ["Das Fahrzeug ist abgeschlossen!"] call lts_fnc_hint;
        true breakOut "main";
    };

}count [_firstContainer, _secondContainer];
