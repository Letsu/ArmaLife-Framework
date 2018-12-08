class lts_server {
    tag = "lts_server";
    class core {
        file = "\server\core";
    };

    class function {
        file = "\server\core\functions";
        class log {};
    };

    class gather {
        file = "\server\core\gather";
        class initGather {};
    };
};

class lts_db {
  tag = "lts_db";

  class db_core {
      file = "\server\core\db";
      class createDB {};
      class initDB   {};
  };
};
