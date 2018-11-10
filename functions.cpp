class lts_core {
    tag = "lts_core";
    class core {
        file = "core";
        class configuration {};
        class init          {};
        class setupEVH      {};
        class loop          {};
    };
};

class Lts_framework {
    tag = "lts";

    class functions {
        file = "core\functions";
        class hint {};
        class log {};
        class keyDown {};
    };

    class respawn {
        file = "core\respawn";
        class onRespawn {};
    };

    class changeSide{
        file = "core\side";
        class changeSide {};
    };

    class gather{
        file = "core\gather";
        class initGather {};
    }

    class player {
        file = "core\player";
        class buyLicense {};
        class hasLicense {};
        class removeLicense {};
    }

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
    };
};
