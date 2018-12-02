/*
 * Author: Johannes "Letus" Bindriem
 * Send an Request to the Server to Load the Player Data from his Database entry and set all needet variables for the Player
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_interface_fnc_loadPlayerData
 *
 */

//Need check  if Player exist in Database

//Need to Replayce whit the Funtion to Load Player Data
_data = [] call funtion_server_load_playerData
/*
* Data of _data (Currently )
* 0: Player UID
* 1: Player DisplayName
* 2: Player Money
* 3: Player Bank
* 4: Player Inv
* 5: Player Sides
* 6: Player Licenses
* 7:
*/

_uid;
_name;
_money;
_bank;
_inv;
_sides;
_licanses;
