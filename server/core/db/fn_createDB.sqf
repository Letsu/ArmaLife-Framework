/*
 * Author: Johannes "Letus" Bindriem
 * Checks if all Database Tabels exits and creats tables if none Exits
 * Need to Run when the Server starts the first time to crate all needed Tabels.
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_db_fnc_createDB;
 *
 */
private _query = [];

//create Player DB table
_query = call compile ("extDB3" callExtension "0:CreateDB:CreatePlayerDB");

//create Passport table
_query = call compile ("extDB3" callExtension "0:CreateDB:CreatePassportDB");

//Create Cop DB
_query = call compile ("extDB3" callExtension "0:CreateDB:CreateCopDB");

//Create Med DB
_query = call compile ("extDB3" callExtension "0:CreateDB:CreateMedDB");

//Create Vehicle Db
_query = call compile ("extDB3" callExtension "0:CreateDB:CreateVehicleDB");
