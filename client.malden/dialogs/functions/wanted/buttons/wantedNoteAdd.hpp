/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class wantedNoteAdd {
   idd = 42001;
   movingenable = 1;
   enablesimulation = 0;
   class controlsBackground
   {
       class RscText0 : RscText
       {
           idc = 1000;
           colorbackground[] = {0,0,0,0.650980392156863};
           x = 0.340104166666667 * safezoneW + safezoneX;
           y = 0.321716322517208 * safezoneH + safezoneY;
           h = 0.365599311701082 * safezoneH;
           w = 0.327604166666667 * safezoneW;
       };
       class RscText2 : RscText
       {
           idc = 1003;
           text = "Beschriebung:";
           x = 0.352083333333333 * safezoneW + safezoneX;
           y = 0.339415437561455 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0682291666666667 * safezoneW;
       };
   };
   class controls
   {
       class RscEdit1 : RscEdit
       {
           x = 0.3515625 * safezoneW + safezoneX;
           y = 0.378564405113078 * safezoneH + safezoneY;
           h = 0.236971484759095 * safezoneH;
           w = 0.30625 * safezoneW;
           idc = 1004;
       };
       class RscButton0 : RscButton
       {
           text = "Senden";
           x = 0.591788833333333 * safezoneW + safezoneX;
           y = 0.626534414945919 * safezoneH + safezoneY;
           w = 0.0665445000000001 * safezoneW;
           h = 0.037 * safezoneH;
           idc = 1007;
           action = "call lts_dialog_fnc_wantedNoteAdd";
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
