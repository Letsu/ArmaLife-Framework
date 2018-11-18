private [];
/*
 * Author: [Name of Author(s)]
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
_target = param [0];
_player = param [1];
_actionParams = param [2]; //Action Param dont working is giving evere Time Any from initGather!
_item = _actionParams select 0;

//Some Checks!
if (player canAdd _item) exitWith { ["Dein Inventar ist Voll!"] call lts_fnc_hint };


player addItem _item;
