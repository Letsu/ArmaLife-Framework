/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class carGarage {
   idd = 20001;
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class RscText3 : RscText
       {
           colorbackground[] = {0,0,0,0.529411764705882};
           x = 0.2375 * safezoneW + safezoneX;
           y = 0.131942477876106 * safezoneH + safezoneY;
           h = 0.647801868239921 * safezoneH;
           w = 0.6015625 * safezoneW;
       };
       class RscText0 : RscText
       {
           idc = 1001;
           text = "Deine Fahrzeuge:";
           x = 0.244270833333333 * safezoneW + safezoneX;
           y = 0.14079203539823 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.124479166666667 * safezoneW;
       };
       class RscStructuredText0 : RscStructuredText
       {
           idc = 1003;
           x = 0.3734375 * safezoneW + safezoneX;
           y = 0.176450344149459 * safezoneH + safezoneY;
           h = 0.550196656833825 * safezoneH;
           w = 0.147916666666667 * safezoneW;
       };
       class RscText2 : RscText
       {
           idc = 1005;
           text = "Vorschau:";
           x = 0.524479166666667 * safezoneW + safezoneX;
           y = 0.14079203539823 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.308854166666667 * safezoneW;
       };
       class RscPicture1 : RscPicture
       {
           idc = 1006;
           x = 0.524479166666667 * safezoneW + safezoneX;
           y = 0.176450344149459 * safezoneH + safezoneY;
           w = 0.308854166666667 * safezoneW;
           h = 0.550196656833825 * safezoneH;
       };
       class RscText1 : RscText
       {
           idc = 1002;
           text = "Fahrzeuginfos:";
           x = 0.3734375 * safezoneW + safezoneX;
           y = 0.14079203539823 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.147916666666667 * safezoneW;
       };
       class RscStructuredText1 : RscStructuredText
       {
           idc = 1008;
           x = 0.3734375 * safezoneW + safezoneX;
           y = 0.728671252704031 * safezoneH + safezoneY;
           h = 0.039216 * safezoneH;
           w = 0.460416666666667 * safezoneW;
       };
   };
   class controls
   {
       class RscListBox0 : RscListBox
       {
           x = 0.244270833333333 * safezoneW + safezoneX;
           y = 0.176450344149459 * safezoneH + safezoneY;
           w = 0.124479166666667 * safezoneW;
           h = 0.550196656833825 * safezoneH;
           idc = 1000;
           onLBSelChanged = "_this call lts_dialog_fnc_selectGarageVehicle";
       };
       class RscButton0 : RscButton
       {
           text = "Ausparken";
           x = 0.244270833333333 * safezoneW + safezoneX;
           y = 0.728671252704031 * safezoneH + safezoneY;
           w = 0.0895833333333333 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1004;
       };
       class RscButton1 : RscButton
       {
           text = "Sell";
           x = 0.3375 * safezoneW + safezoneX;
           y = 0.728671252704031 * safezoneH + safezoneY;
           w = 0.0317708333333333 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1007;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
