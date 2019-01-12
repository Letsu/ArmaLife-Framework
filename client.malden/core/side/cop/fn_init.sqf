/*
 * Author: Johannes "Letus" Bindriem
 * Exec on Site switch to init the Side spezific Scripts
 *
 * Arguments:
 * 0 : New Site
 * 1 : Old Site
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_cop_fnc_init;
 *
 */

private _side = param [0, "cop"];
private _oldSide = param [1, "civ"];

//Load Cop Loadout

/*
[] call lts_cop_fnc_loadout;
*/


//Add Acces to Wanted List
