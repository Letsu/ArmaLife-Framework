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

systemChat "Interaction";

private _target = param [0];
systemChat str(_target);
private _player = param [1];
systemChat str(_player);
private _item = param [2, "L_Item_wood"]; //Action Param dont working is giving evere Time Any from initGather!
systemChat str(_this select 2);

//Get an Random Amount of Item
private _amount = round(random[1, 2, 4]);
systemChat str(_amount);
//Add Items
[_item, _amount] call lts_fnc_addItem;
