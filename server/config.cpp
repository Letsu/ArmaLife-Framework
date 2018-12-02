class CfgPatches {
    class server {
        units[] = {};
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
