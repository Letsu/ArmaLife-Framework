/*
 * Author: Johannes "Letus" Bindriem
 * Updates the Player tabels
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 */

 _updateMoney = {
     _player = param [0]; //Player UID
     _money = param [1, 0];

     //Database Update
 };

 _updateBank = {
     _player = param [0];
     _bank = param [1, 0];

     //Database Update
 };

 _updateInv = {
     _player = param [0];
     _inv = param [1, ""]; //Needs to define a Strukture for Array and add Function on CLient to get and Add Inventory of Player
     //Can use Equipment Script from ARC 

     //Database Update
 };

 /*
    update License when its finally if license is in own table
*/
