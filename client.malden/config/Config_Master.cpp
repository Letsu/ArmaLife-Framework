/*
#define true 0
#define false 1
*/

class Config_Master {
    /*
    Logging
    Logging needs the Servermod A3Log!
    */
    LogMoney = 0; //Enable Money Logging. Needs A3Log!
    LogBuy   = 0;
    LogItem  = 0;
    LogCheat = 0;


    /*
    Global
    */
    StartMoney = 0; //Amount of Money the Player has at first Join
    StartBank  = 100000; //Amount of Bank the Player has at first Join






};

#include "Config_Side.cpp"
#include "Config_Spawn.cpp"
#include "Config_Gather.cpp"
#include "Config_License.cpp"
#include "Config_Process.cpp"
#include "Config_Shops.cpp"
#include "Config_Vehicle.cpp"
#include "Config_VehicleDefines.cpp"
#include "Config_PMenu.cpp"
