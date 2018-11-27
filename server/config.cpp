class CfgPatches {
    class server {
        units[] = {"C_man_1"};
        weapons[] = {};
        requiredAddons[] = {};
        fileName = "server.pbo";
        author = "Johannes Bindriem aka Letus";
    };
};

//Include function COnfig
class CfgFunctions {
    #include "functions.cpp"
};
