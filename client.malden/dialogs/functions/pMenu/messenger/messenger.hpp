class pMenuMessenger {
	idd = 93001;
	movingenable = 1;

	class ControlsBackground {
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
	};

	class controls {

	};
};
