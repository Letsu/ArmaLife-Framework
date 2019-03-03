class pMenuLicense {
	idd = 95001;
	movingenable = 1;

	class ControlsBackground {
		class handyBack : RscPicture
        {
            idc = 10001;
            text = "pictures\handy\license.paa";
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

	   class Header : RscText
	   {
		   idc = 95010;
		   text = "Deine Lizenzen:";
		   x = 0.6625 * safezoneW + safezoneX;
		   y = 0.350231563421829 * safezoneH + safezoneY;
		   h = 0.037 * safezoneH;
		   w = 0.146875 * safezoneW;
	   };
	};

	class controls {
		class Licenses : RscListBox
        {
			idc = 95050;
			x = 0.6609375 * safezoneW + safezoneX;
            y = 0.387596361848574 * safezoneH + safezoneY;
            w = 0.15625 * safezoneW;
            h = 0.397064405113078 * safezoneH;
			colorSelectBackground[] = { 0, 0, 0, 0 };
			colorSelectBackground2[] = { 0, 0, 0, 0 };
			colorBackground[] = { 0, 0, 0, 0 };
			colorText[] = { 0, 0, 0, 0 };
			colorSelect[] = { 0, 0, 0, 0.4 };
			colorSelect2[] = { 0, 0, 0, 0.4 };
			colorScrollbar[] = { 0, 0, 0, 1 };
			class ListScrollBar {
				color[] = { 0, 0, 0, 1 };
				autoScrollEnabled = 1;
			};
        };
	};
};
