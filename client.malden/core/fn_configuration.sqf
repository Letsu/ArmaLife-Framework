/*
 * Author: Johannes "Letus" Bindriem
 * Initalizies all Global Variables and Variables on the Player whit an default Value on Joining on the Server
 * or when you need to set the Player Empty Variables on Player!
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call lts_core_fnc_configuration;
 *
 */

//Core Values Initalisation
lts_core_food = 100; //Current Value of Food
lts_core_thirst = 100; //Current Value of Thirst
lts_core_curSide = "civ"; //Posible Value can set in Config_Side

lts_core_curVehicles = []; // All Parked out Vehicles
lts_core_licenses = []; //All Licenses an Player has


//Money
lts_money_cash = 0; //Cash of Player
lts_money_bank = 0; //Bank Cash of Player

//civ
lts_civ_inv = []; //Needs to fill whit an Defualt Value

//Cop
lts_cop_level = 0; //Cop Level
//lts_cop_inv = []; //Need to define in Site Init


//Medic
lts_med_level = 0;
//lts_med_inv = []; //Need to define in Site Init
