class wantedAdd {
   idd = 41001;
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

       class RscText1 : RscText
       {
           idc = 1001;
           text = "Title:";
           x = 0.352083333333333 * safezoneW + safezoneX;
           y = 0.333515732546706 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0765625 * safezoneW;
       };

       class RscText2 : RscText
       {
           idc = 1003;
           text = "Beschriebung:";
           x = 0.352083333333333 * safezoneW + safezoneX;
           y = 0.38267994100295 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0682291666666667 * safezoneW;
       };

       class RscText3 : RscText
       {
           idc = 1005;
           text = "Strafgeld:";
           x = 0.352083333333333 * safezoneW + safezoneX;
           y = 0.626534414945919 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0479166666666667 * safezoneW;
       };
   };
   class controls
   {
       class RscEdit0 : RscEdit
       {
           x = 0.377083333333333 * safezoneW + safezoneX;
           y = 0.333515732546706 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.283854166666667 * safezoneW;
           idc = 1002;
       };
       class RscEdit1 : RscEdit
       {
           x = 0.352083333333333 * safezoneW + safezoneX;
           y = 0.413628318584071 * safezoneH + safezoneY;
           h = 0.201907571288102 * safezoneH;
           w = 0.305729166666667 * safezoneW;
           idc = 1004;
       };
       class RscEdit2 : RscEdit
       {
           x = 0.394791666666667 * safezoneW + safezoneX;
           y = 0.626534414945919 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.175520833333333 * safezoneW;
           idc = 1006;
       };
       class RscButton0 : RscButton
       {
           text = "Senden";
           x = 0.591788833333333 * safezoneW + safezoneX;
           y = 0.626534414945919 * safezoneH + safezoneY;
           w = 0.0665445000000001 * safezoneW;
           h = 0.037 * safezoneH;
           idc = 1007;
           action = "call lts_dialog_fnc_wantedAdd";
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
