/*
 * Author: Johannes "Letus" Bindriem
 * Adds all needed Ace Actions to te Player
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_core_fnc_playerInteraction;
 *
 */

private _side = lts_core_curSide;

private _actions1 = [ "player_action_1", "Action1", "", {  hint _actionParams }, {true}, {}, "", {}, 10 ] call ace_interact_menu_fnc_createAction;
[ player, 0, ["ACE_MainActions"], _actions ] call ace_interact_menu_fnc_addActionToObject;
