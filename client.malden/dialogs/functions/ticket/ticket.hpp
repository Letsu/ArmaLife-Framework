class ticket {
   idd = 60001;
   movingenable = 0;

   class controlsBackground {
       class RscText0 : RscText {
           idc = 1000;
           colorbackground[] = {0,0,0,0.686274509803922};
           x = 0.340104166666667 * safezoneW + safezoneX;
           y = 0.415128318584071 * safezoneH + safezoneY;
           h = 0.0892964601769912 * safezoneH;
           w = 0.315104166666667 * safezoneW;
       };

       class RscText1 : RscText {
           idc = 1001;
           text = "Ticket Ausstellen:";
           x = 0.342708333333333 * safezoneW + safezoneX;
           y = 0.413161750245821 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.3 * safezoneW;
           colorbackground[] = {0,0,0,0};
       };

       class RscText2 : RscText {
           idc = 1003;
           text = "Betrag:";
           x = 0.34375 * safezoneW + safezoneX;
           y = 0.450009832841691 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.0375 * safezoneW;
       };
   };
   class controls {
       class RscEdit0 : RscEdit {
           x = 0.38125 * safezoneW + safezoneX;
           y = 0.450009832841691 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.205729166666667 * safezoneW;
           idc = 60030;
       };

       class RscButton0 : RscButton {
           text = "Ausstellen";
           x = 0.591788833333333 * safezoneW + safezoneX;
           y = 0.450009832841691 * safezoneH + safezoneY;
           w = 0.0618570000000001 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 60020;
       };
   };
};
