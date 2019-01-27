class player_HUD {
   idd = 100001;
   name = "player_HUD";
   duration = 999999999999;
   movingenable = false;
   enablesimulation = true;
   class controlsBackground
   {
	   class picFood : RscPicture
       {
           idc = 1000;
           text = "pictures\foodWhite.paa";
           x = 0.9421875 * safezoneW + safezoneX;
           y = 0.929203539823009 * safezoneH + safezoneY;
           w = 0.0385416666666667 * safezoneW;
           h = 0.0573008849557522 * safezoneH;
       };
       class picWater : RscPicture
       {
           idc = 1001;
           text = "pictures\waterWhite.paa";
           x = 0.904166666666667 * safezoneW + safezoneX;
           y = 0.929203539823009 * safezoneH + safezoneY;
           w = 0.0385416666666667 * safezoneW;
           h = 0.0573008849557522 * safezoneH;
       };
       /* Not in Use A.t.m.
       class picPill : RscPicture
       {
           idc = 1002;
           text = "pictures\waterOrange.paa";
           x = 0.866666666666667 * safezoneW + safezoneX;
           y = 0.929203539823009 * safezoneH + safezoneY;
           w = 0.0385416666666667 * safezoneW;
           h = 0.0573008849557522 * safezoneH;
       };
       */
   };
   class controls {};
};
