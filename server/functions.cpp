class lts_server {
    tag = "lts_server";
    class core {
        file = "core";
    };

    class function {
        file = "core\functions";
        class log {};
    };

    class gather {
        file = "core\gather";
        class initGather {};
    };
};

class lts_db {
  tag = "lts_db";

  class db_core {
      file = "core\db";
      class createDB {};
      class initDB   {};
  };
};
