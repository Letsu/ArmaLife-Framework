class pMenuBanking {
	idd = 91001;
	movingenable = 1;

	class ControlsBackground {
		class handyBack : RscPicture
        {
            idc = 10001;
            text = "pictures\handy\banking.paa";
            x = 0.65625 * safezoneW + safezoneX;
            y = 0.314650934119961 * safezoneH + safezoneY;
            w = 0.165104166666667 * safezoneW;
 		         h = 0.534906588003933 * safezoneH;
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
	};

	class controls { };
};
