private["_respawnPos"];
/*
 * Author: Johannes "Letus" Bindriem
 * Script Exec Automatikly on Server start and run local on the Server.
 * Script init the Serverside scripts.
 *
 * Arguments:
 * ??
 *
 * Return Value:
 * NONE
 *
 */

 if (!(_this select 0)) exitWith {}; //Not server
 [] call compile preprocessFileLineNumbers "\serverMod\init.sqf";
