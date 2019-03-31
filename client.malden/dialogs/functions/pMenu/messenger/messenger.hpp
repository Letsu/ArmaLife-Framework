/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class pMenuMessenger {
   idd = 93001;
   name = "pMenuMessenger";
   movingenable = 1;
   class controlsBackground
   {
       class handyBack : RscPicture
       {
           idc = 10001;
           text = "pictures\handy\contacts.paa";
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
           idc = 1003;
           x = 0.685416666666667 * safezoneW + safezoneX;
           y = 0.451509832841691 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.127604166666667 * safezoneW;
       };
   };
   class controls
   {
       class RscListBox0 : RscListBox
       {
           x = 0.660416666666667 * safezoneW + safezoneX;
           y = 0.512733529990167 * safezoneH + safezoneY;
           w = 0.153645833333333 * safezoneW;
           h = 0.227679449360865 * safezoneH;
           idc = 1000;
           onlbdblclick = "_this call lts_dialog_fnc_callMessages";
       };
       class RscButton0 : RscButton
       {
           text = "Hinzufügen";
           x = 0.660416666666667 * safezoneW + safezoneX;
           y = 0.756203209439528 * safezoneH + safezoneY;
           w = 0.0712320000000001 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1001;
           action = "call lts_dialog_fnc_createContact";
       };
       class RscButton1 : RscButton
       {
           text = "Entfernen";
           x = 0.739583333333333 * safezoneW + safezoneX;
           y = 0.756203209439528 * safezoneH + safezoneY;
           w = 0.0744791666666666 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1002;
           action = "call lts_dialog_fnc_removeContact";
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
