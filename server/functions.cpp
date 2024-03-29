class lts_server {
    tag = "lts_server";
    class core {
        file = "\server\core";
    };

    class function {
        file = "\server\core\functions";
        class log {};
        class mission {};
    };

    class phone {
        file = "\server\core\functions\phone";
        class createMessage {};
        class getAllMessagesToPlayer {};
        class newMessage {};
    };
};

class lts_db {
  tag = "lts_db";

  class db_core {
      file = "\server\core\db";
      class createDB   {};
      class initDB     {};
      class staticVars {};
  };

  class db_player {
      file = "\server\core\db\player";
      class createNewPlayer {};
      class getPlayerData   {};
      class handlePlayer    {};
  };

  class db_vehicle {
      file = "\server\core\db\vehicle";
      class createNewVehicle {};
      class handleVehicle    {};
      class getVehicles      {};
  };

  class db_cop {
      file = "\server\core\db\player\cop";
      class createNewCop   {};
      class updateCopLevel {};
      class getCopData     {};
  };

  class db_med {
      file = "\server\core\db\player\med";
      class createNewMed   {};
      class updateMedLevel {};
      class getMedData     {};
  };

  class db_wanted {
      file = "\server\core\db\wanted";
      class getWanted     {};
      class getWantedInfo {};
      class addWanted     {};
      class disableWanted {};
      class addWantedNote {};
  };
};
