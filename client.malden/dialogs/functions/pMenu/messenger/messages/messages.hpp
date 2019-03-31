/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class pMenuMessenges {
   idd = 93003;
   name = "pMenuMessenges";
   movingenable = 1;
   class controlsBackground
   {
       class handyBack : RscPicture
       {
           idc = 10001;
           text = "pictures\handy\msgback.paa";
           x = 0.658333333333333 * safezoneW + safezoneX;
           y = 0.326003638151426 * safezoneH + safezoneY;
           w = 0.1625 * safezoneW;
           h = 0.50592133726647 * safezoneH;
       };
       class MainFrame : RscPicture
       {
           idc = 10000;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           text = "pictures\handyFrame.paa";
           x = 0.65 * safezoneW + safezoneX;
           y = 0.28979842674533 * safezoneH + safezoneY;
           w = 0.178125 * safezoneW;
           h = 0.582374631268437 * safezoneH;
       };
       class RscText0 : RscText
       {
           idc = 1000;
           text = "Nachrichten:";
           x = 0.661979166666667 * safezoneW + safezoneX;
           y = 0.346298426745329 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0953125 * safezoneW;
       };
   };
   class controls
   {
       class RscListBox0 : RscListBox
       {
           x = 0.661979166666667 * safezoneW + safezoneX;
           y = 0.398672566371681 * safezoneH + safezoneY;
           w = 0.153645833333333 * safezoneW;
           h = 0.34960668633235 * safezoneH;
           idc = 1001;
       };
       class RscButton0 : RscButton
       {
           text = "Nachricht Schreiben";
           x = 0.661979166666667 * safezoneW + safezoneX;
           y = 0.753253356932153 * safezoneH + safezoneY;
           w = 0.154166666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1002;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
