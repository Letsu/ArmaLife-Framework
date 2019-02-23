//All Side specific Functions
class cop_side {
    tag = "lts_cop";
    class core {
        file = "core\side\cop";
        class init           {};
        class setCopLevel    {};
        class setCopCoreData {};
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
        class fillPMenu   {};
        class pMenuSelect {};
        class loadTime    {};
    };

    class playerHud {
        file = "dialogs\functions\playerHud";
        class callPlayerHud {};
        class updatePHud     {};
    };
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
