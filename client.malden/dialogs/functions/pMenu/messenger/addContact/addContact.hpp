/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class pMenuAddContact {
   idd = 93002;
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class RscText0 : RscText
       {
           idc = 1000;
           colorbackground[] = {0,0,0,0.501960784313725};
           x = 0.291145833333333 * safezoneW + safezoneX;
           y = 0.387862796833773 * safezoneH + safezoneY;
           h = 0.252418645558487 * safezoneH;
           w = 0.408854166666667 * safezoneW;
       };

       class RscText1 : RscText
       {
           idc = 1002;
           text = "Kontakt hinzufügen:";
           x = 0.291145833333333 * safezoneW + safezoneX;
           y = 0.390470976253298 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.3 * safezoneW;
       };
       class RscText2 : RscText
       {
           idc = 1004;
           text = "Name:";
           x = 0.291145833333333 * safezoneW + safezoneX;
           y = 0.446759454705365 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0416666666666667 * safezoneW;
       };
       class RscText3 : RscText
       {
           idc = 1005;
           text = "Nummer:";
           x = 0.291145833333333 * safezoneW + safezoneX;
           y = 0.5074454705365 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0526041666666667 * safezoneW;
       };
   };
   class controls
   {
       class RscButton0 : RscButton
       {
           text = "Hinzufügen";
           x = 0.598559666666667 * safezoneW + safezoneX;
           y = 0.5907701882146 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1001;
           action = "call lts_dialog_fnc_contactAdd";
       };
       class RscEdit0 : RscEdit
       {
           x = 0.332291666666667 * safezoneW + safezoneX;
           y = 0.446759454705365 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.2984375 * safezoneW;
           idc = 1003;
       };
       class RscEdit1 : RscEdit
       {
           x = 0.344270833333333 * safezoneW + safezoneX;
           y = 0.5074454705365 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.286458333333333 * safezoneW;
           idc = 1006;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
