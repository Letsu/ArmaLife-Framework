//All Side specific Functions
class cop_side {
    tag = "lts_cop";
    class core {
        file = "core\side\cop";
        class init           {};
        class setCopLevel    {};
        class setCopCoreData {};
    };

    class interaction {
        file = "core\side\cop\interaction";
        class getLicenseCop  {};
        class getTicketCop   {};
        class giveTicket     {};
        class requestLicense {};
    };

    class wanted {
        file = "core\side\cop\wanted";
        class wantedAdd {};
        class wantedRemove {};
        class wantedNoteAdd {};
    };
};

class med_side {
    tag = "lts_med";
    class core {
        file = "core\side\med";
        class init           {};
        class setMedCoreData {};
    };
};


/* ---------------------
Start of Framwork Files
----------------------*/

//All Core Files the most of them called on Player join
class lts_core {
    tag = "lts_core";
    class core {
        file = "core";
        class configuration     {};
        class init              {};
        class setupEVH          {};
        class loop              {};
        class playerInteraction {};
    };
};

//All Files from the Interface to the Server
class lts_interface {
    tag = "lts_interface";
    class player_interface {
        file = "core\interface\player";
        class createNewPlayer   {};
        class getPlayerData     {};
        class requestPlayerData {};
        class updateBank        {};
        class updateCash        {};
        class updateInv         {};
        class updateLicense     {};
    };

    class cop_interface {
        file = "core\interface\cop";
        class createNewCop   {};
        class updateCopLevel {};
        class requestCopData {};
        class getCopData     {};
    };

    class med_interface {
        file = "core\interface\med";
        class createNewMed   {};
        class getMedData     {};
        class requestMedData {};
        class updateMedLevel {};
    };

    class vehicle_interface {
        file = "core\interface\vehicle";
        class createNewVeh {};
        class destroyVehicle   {};
        class disableVehicle   {};
        class enableVehicle    {};
        class updateVehFuel    {};
        class updateVehKeys    {};
        class getVehicles      {};
        class requestVehicles  {};
    };

    class wanted_interface {
        file = "core\interface\wanted";
        class getWanted {};
        class getWantedNote {};
        class noteAdd {};
        class requestNotes {};
        class requestWanted {};
        class requestWantedNote {};
        class wantedAdd {};
        class wantedNoteAdd {};
        class disableWanted {};
    };
};

//Framework Files
class lts_framework {
    tag = "lts";

    class functions {
        file = "core\functions";
        class hint            {};
        class log             {};
        class keyDown         {};
        class addItem         {};
        class addWeapon       {};
        class addToBackpack   {};
        class getDisplayName  {};
        class deleteFormArr   {};
        class drink           {};
        class eat             {};
        class setVehicleCargo {};
        class getVehicleCargo {};
        class addMoney        {};
        class savePlayerInfo  {};
    };

    class network {
        file = "core\functions\network";
        class giveMoney  {};
        class getLicenses {};
        class getTicket  {};
    };

    class respawn {
        file = "core\respawn";
        class onRespawn          {};
        class onPlayerUnconsious {};
    };

    class changeSide{
        file = "core\side";
        class changeSide {};
    };

    class gather {
        file = "core\gather";
        class gather     {};
        class process    {};
        class initGather {};
    };

    class player {
        file = "core\player";
        class buyLicense    {};
        class hasLicense    {};
        class removeLicense {};
        class setPlayerCore {};
        class getLicenses   {};
    };

    class vehicle {
        file = "core\vehicle";
        class addKeyToVeh             {};
        class createVehicle           {};
        class createNewVehicle        {};
        class deleteVehicle           {};
        class getVehicle              {};
        class removeVehicleFromPlayer {};
        class updateVehArray          {};
    };
};



//All Files to Handle Dialogs (create, delete, fill and update Dialogs)
class lts_dialog {
    tag = "lts_dialog";

    class core {
        file = "dialogs\functions";
    };

    class spawn {
        file = "dialogs\functions\spawn";
        class getSpawnPoints {};
        class spawn          {};
        class spawnLbChange  {};
        class callSpawn      {};
        class createCam      {};
        class intro          {};
    };

    class shop {
        file = "dialogs\functions\shop";
        class callShop      {};
        class getShopConfig {};
        class onShopBuy     {};
        class shopLbChange  {};
    };

    class vehicle {
        file = "dialogs\functions\vehShop";
        class callVehShop      {};
        class getVehShopConfig {};
        class onVehBuy         {};
    };

    class pMenu {
        file = "dialogs\functions\pMenu";
        class callPMenu   {};
//        class fillPMenu   {};
//        class pMenuSelect {};
        class loadTime    {};
    };

    class pManuSettings {
        file = "dialogs\functions\pMenu\settings";
        class callSettings {};
        class fillSettings {};
    };

    class pMenuBanking {
        file = "dialogs\functions\pMenu\banking";
        class callBanking {};
        class bankingGive {};
        class fillBanking {};
    };

    class pMenuLicense {
        file = "dialogs\functions\pMenu\license";
        class callLicense {};
        class fillLicense {};
    };

    class playerHud {
        file = "dialogs\functions\playerHud";
        class callPlayerHud  {};
        class updatePHud     {};
    };

    class ticket {
        file = "dialogs\functions\ticket";
        class callTicket {};
        class sendTicket {};
    };

    class wanted {
        file = "dialogs\functions\wanted";
        class callWanted           {};
        class fillWanted           {};
        class onPlayerWantedChange {};
        class setWantedValues      {};
        class onWantedWantedChange {};
        class fillWantedNote       {};
    };

    class wantedButtons {
        file = "dialogs\functions\wanted\buttons";
        class callWantedAdd {};
        class callWantedNoteAdd {};
        class wantedAdd     {};
        class wantedRemove  {};
        class wantedNoteAdd {};
    }
};

class log {
    tag = "lts_log";

    class log {
        file = "core\functions\logging";
        class logBuy   {};
        class logCheat {};
        class logItem  {};
        class logMoney {};
    };
};
