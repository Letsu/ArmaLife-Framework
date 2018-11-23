private ["_target", "_player", "_actionParams", "item"];
/*
 * Author: Johannes "Letus" Bindriem
 * Function for Gather Resources for Farming
 *
 * Arguments:
 * 0: The Target of the Ace Action [Object]
 * 1: Player that exec the Action [Object]
 * 2: Parameter of Function [Array]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [_target, _player, _actionParams] call lts_fnc_gather
 *
 */
_target = param [0];
_player = param [1];
_actionParams = param [2]; //Action Param dont working is giving evere Time Any from initGather!
_item = _actionParams select 0;

//Some Checks!
if (player canAdd _item) exitWith { ["Dein Inventar ist Voll!"] call lts_fnc_hint };


player addItem _item;
