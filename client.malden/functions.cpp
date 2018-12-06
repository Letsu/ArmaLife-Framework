//All Side specific Files
class lts_cop {
    tag = "lts_cop";

    class cop {
        file = "core\side\cop";
        class init    {};
        class loadout {};
    };
};

/* ---------------------
Start of Framwork Files
*/

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
        file = "core\Interface\player";
        class loadPlayerData {};
        class sendPlayerData {};
    };
};

//Framework Files
class lts_framework {
    tag = "lts";

    class functions {
        file = "core\functions";
        class hint           {};
        class log            {};
        class keyDown        {};
        class addItem        {};
        class addWeapon      {};
        class addToBackpack  {};
        class getDisplayName {};
        class deleteFormArr  {};
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
        class gather  {};
        class process {};
    };

    class player {
        file = "core\player";
        class buyLicense    {};
        class hasLicense    {};
        class removeLicense {};
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
        class callPMenu {};
        class fillPMenu {};
    };
};
