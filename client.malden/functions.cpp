class lts_core {
    tag = "lts_core";
    class core {
        file = "core";
        class configuration {};
        class init          {};
        class setupEVH      {};
        class loop          {};
        class playerInteraction {};
    };
};

class Lts_framework {
    tag = "lts";

    class functions {
        file = "core\functions";
        class hint {};
        class log {};
        class keyDown {};
        class addItem {};
        class addWeapon {};
        class addToBackpack {};
        class getDisplayName {};
    };

    class respawn {
        file = "core\respawn";
        class onRespawn {};
        class onPlayerUnconsious {};
    };

    class changeSide{
        file = "core\side";
        class changeSide {};
    };

    class gather {
        file = "core\gather";
        class gather {};
        class process {};
    };

    class player {
        file = "core\player";
        class buyLicense {};
        class hasLicense {};
        class removeLicense {};
    };

    class vehicle {
        file = "core\vehicle";
        class addKeyToVeh {};
        class createVehicle{};
        class deleteVehicle {};
        class getVehicle {};
        class removeVehicleFromPlayer {};
        class updateVehArray {};
    };

};

class lts_dialog {
    tag = "lts_dialog";

    class core {
        file = "dialogs\functions";
    };

    class spawn {
        file = "dialogs\functions\spawn";
        class getSpawnPoints {};
        class spawn {};
        class spawnLbChange {};
        class callSpawn {};
        class createCam {};
    };

    class shop {
        file = "dialogs\functions\shop";
        class callShop {};
        class getShopConfig {};
        class onShopBuy {};
        class shopLbChange {};
    };
};
