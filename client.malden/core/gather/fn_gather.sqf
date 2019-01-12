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

/*--------------------------------
This File MAYBE musst in the Server
-----------------------------------*/

private _target = param [0];
private _player = param [1];
private _actionParams = param [2]; //Action Param dont working is giving evere Time Any from initGather!
private _item = _actionParams select 0;

//Get an Random Amount of Item
private _amount = random[1, 2, 4];

//Add Items
[_item, _amount] call lts_fnc_addItem;
