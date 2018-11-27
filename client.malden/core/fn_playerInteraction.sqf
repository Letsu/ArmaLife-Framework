private [];
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

_side = lts_core_curSide;

_actions = [ "player_action_1", "Action1", "", {  hint _actionParams }, {true}, {}, "", {}, 10 ] call ace_interact_menu_fnc_createAction;
[ player, 0, ["ACE_MainActions"], _actions ] call ace_interact_menu_fnc_addActionToObject;
