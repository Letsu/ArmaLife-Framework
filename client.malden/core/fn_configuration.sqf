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
lts_core_firstSpawn = false; //True when Client is First Time on Server

lts_core_curVehicles = []; // All Parked out Vehicles
lts_core_allVehicles = []; //All Vehicle an Player owned at the Moment
lts_core_licenses = []; //All Licenses an Player has
lts_core_knocked = false;


//Money
lts_money_cash = 0; //Cash of Player
lts_money_bank = 0; //Bank Cash of Player


//Cop
lts_cop_level = 0; //Cop Level

//Wanted List





//Medic
lts_med_level = 0;


//System Variables
lts_dialog_shop_disableSell = false;
lts_dialog_atm_curUsing = false;
lts_gather_isGather = false;

//Init of Variables on the Player whit setVariable
player setVariable ["serviceNumber", -1, true]; //Filled whit value when Player join as Cop or Medic
