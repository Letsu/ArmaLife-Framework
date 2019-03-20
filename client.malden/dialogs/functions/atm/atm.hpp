class atmMenu {
   idd = 40001;
   movingenable = 0;
   class controlsBackground
   {
       class RscText0 : RscText
       {
           idc = 1000;
           colorbackground[] = {0,0,0,0.592156862745098};
           x = 0.356770833333333 * safezoneW + safezoneX;
           y = 0.278451819075713 * safezoneH + safezoneY;
           h = 0.509158800393314 * safezoneH;
           w = 0.2171875 * safezoneW;
       };
       class RscText1 : RscText
       {
           idc = 1001;
           text = "Geldautomat";
           x = 0.356770833333333 * safezoneW + safezoneX;
           y = 0.278451819075713 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.175520833333333 * safezoneW;
       };
       class RscText2 : RscText
       {
           idc = 1002;
           text = "Auf der Hand:";
           x = 0.380208333333333 * safezoneW + safezoneX;
           y = 0.404312192723697 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0651041666666667 * safezoneW;
       };
       class cash : RscText
       {
           idc = 1003;
           x = 0.444791666666667 * safezoneW + safezoneX;
           y = 0.404312192723697 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0984375 * safezoneW;
       };
       class RscText3 : RscText
       {
           idc = 1004;
           text = "Auf der Bank:";
           x = 0.380208333333333 * safezoneW + safezoneX;
           y = 0.454459685349066 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0651041666666667 * safezoneW;
       };
       class bank : RscText
       {
           idc = 1005;
           x = 0.444791666666667 * safezoneW + safezoneX;
           y = 0.454459685349066 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0984375 * safezoneW;
       };
       class RscText4 : RscText
       {
           idc = 1007;
           text = "Geld Abheben & Auszahlen:";
           x = 0.356770833333333 * safezoneW + safezoneX;
           y = 0.552788102261554 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.141666666666667 * safezoneW;
       };
   };
   class controls
   {
       class RscEdit0 : RscEdit
       {
           x = 0.380208333333333 * safezoneW + safezoneX;
           y = 0.589636184857424 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.165625 * safezoneW;
           idc = 1006;
       };
       class RscButton0 : RscButton
       {
           text = "Abheben";
           x = 0.403247166666667 * safezoneW + safezoneX;
           y = 0.646075382497542 * safezoneH + safezoneY;
           w = 0.116023666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1008;
       };
       class RscButton1 : RscButton
       {
           text = "Einzahlen";
           x = 0.403247166666667 * safezoneW + safezoneX;
           y = 0.693273022615536 * safezoneH + safezoneY;
           w = 0.116023666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1009;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
