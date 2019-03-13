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
private _firstContainer  = param [0];
private _secondContainer = param [0];

scopeName "main";

{
    if (isNull _x) then {false breakOut "main"};

    private _backpack = typeOf _x;
    if ( (getNumber("CfgVehicles" >> _backpack >> "isBackpack")) isEqualTo 1 ) exitWith {
        true breakOut "main";
    };


}count [_firstContainer, _secondContainer];
