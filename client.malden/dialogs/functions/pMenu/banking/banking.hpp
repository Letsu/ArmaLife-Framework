class pMenuBanking {
	idd = 91001;
	movingenable = 1;

	class ControlsBackground {
		class handyBack : RscPicture
        {
            idc = 10001;
            text = "pictures\handy\banking.paa";
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
		class TextBank : RscText
        {
            idc = 91010; //Change Text Color to Gray // Marvin!!
            x = 0.694791666666667 * safezoneW + safezoneX;
            y = 0.462325958702065 * safezoneH + safezoneY;
            h = 0.037 * safezoneH;
            w = 0.110416666666667 * safezoneW;
        };
        class TextCash : RscText
        {
            idc = 91011; //Change Text Color to Gray //Marvin !!
            x = 0.722916666666667 * safezoneW + safezoneX;
            y = 0.508540314650934 * safezoneH + safezoneY;
            h = 0.037 * safezoneH;
            w = 0.0864583333333333 * safezoneW;
        };
        class EditGiveMoney : RscEdit
        {
            x = 0.722916666666667 * safezoneW + safezoneX;
            y = 0.560137659783677 * safezoneH + safezoneY;
            h = 0.04 * safezoneH;
            w = 0.090625 * safezoneW;
            idc = 91030;
        };
        class LBGiveMoney : RscListBox
        {
            x = 0.659895833333333 * safezoneW + safezoneX;
            y = 0.602212389380531 * safezoneH + safezoneY;
            w = 0.1578125 * safezoneW;
            h = 0.159252833333333 * safezoneH;
            idc = 91050;
			colorSelectBackground[] = { 0, 0, 0, 0 };
			colorSelectBackground2[] = { 0, 0, 0, 0 };
			colorBackground[] = { 0, 0, 0, 0 };
			colorText[] = { 0, 0, 0, 1 };
			colorSelect[] = { 0, 0, 0, 0.6 };
			colorSelect2[] = { 0, 0, 0, 0.2 };
			colorScrollbar[] = { 0, 0, 0, 1 };
			class ListScrollBar {
				color[] = { 0, 0, 0, 1 };
				autoScrollEnabled = 1;
			};
        };
        class GiveMoney : RscButton
        {
            x = 0.659497166666667 * safezoneW + safezoneX;
            y = 0.765052766961652 * safezoneH + safezoneY;
            w = 0.159252833333333 * safezoneW;
            h = 0.039216 * safezoneH;
            idc = 91020;
			action = "call lts_dialog_fnc_bankingGive; closeDialog 0";
			colorbackground[] = {-1,-1,-1,-1};
			colorBackgroundActive[] = {-1,-1,-1,-1};
			colorBackgroundDisabled[] = {-1,-1,-1,-1};
			colorFocused[] = {-1,-1,-1,-1};
			colorBorder[] = {-1,-1,-1,-1};
			colorShadow[] = {-1,-1,-1,-1};
        };

	};
};
