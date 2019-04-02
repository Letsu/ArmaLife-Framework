class pMenu {
	idd = 90001;
	movingEnable = 1;
	enableSimulation = 1;

	class ControlsBackground {
		class handyBack : RscPicture
        {
            idc = 10001;
            text = "pictures\handyBack.paa";
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
			moving = 1;
            text = "pictures\handyFrame.paa";
            x = 0.65 * safezoneW + safezoneX;
            y = 0.28979842674533 * safezoneH + safezoneY;
            w = 0.178125 * safezoneW;
            h = 0.582374631268437 * safezoneH;
 	   };
 	   class Header : RscStructuredText
        {
            idc = 11001;
            x = 0.65625 * safezoneW + safezoneX;
            y = 0.326450344149459 * safezoneH + safezoneY;
            h = 0.186823992133727 * safezoneH;
            w = 0.165104166666667 * safezoneW;
            text = "<t align='center' size='5' shadow='0'>17:49</t><br/><t align='center' size='1' shadow='0'>04.02.2018</t>";
        };
        class ico1_1 : RscPicture
        {
            idc = 1001;
            text = "pictures\bank.paa";
            x = 0.65625 * safezoneW + safezoneX;
            y = 0.511769911504425 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico1_2 : RscPicture
        {
            idc = 1002;
            text = "pictures\license.paa";
            x = 0.696666666666667 * safezoneW + safezoneX;
            y = 0.511769911504425 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico1_3 : RscPicture
        {
            idc = 1003;
            text = "pictures\settings.paa";
            x = 0.73625 * safezoneW + safezoneX;
            y = 0.511769911504425 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico1_4 : RscPicture
        {
            idc = 1004;
            text = "";
            x = 0.776354166666667 * safezoneW + safezoneX;
            y = 0.5117699115044253 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico2_1 : RscPicture
        {
            idc = 2001;
            text = "";
            x = 0.65625 * safezoneW + safezoneX;
            y = 0.571248770894789 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico2_2 : RscPicture
        {
            idc = 2002;
            text = "";
            x = 0.696666666666667 * safezoneW + safezoneX;
            y = 0.571248770894789 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico2_3 : RscPicture
        {
            idc = 2003;
            text = "";
            x = 0.73625 * safezoneW + safezoneX;
            y = 0.571248770894789 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico2_4 : RscPicture
        {
            idc = 2004;
            text = "";
            x = 0.776354166666667 * safezoneW + safezoneX;
            y = 0.571248770894789 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico3_1 : RscPicture
        {
            idc = 3001;
            text = "";
            x = 0.65625 * safezoneW + safezoneX;
            y = 0.630727630285153 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico3_2 : RscPicture
        {
            idc = 3002;
            text = "";
            x = 0.696666666666667 * safezoneW + safezoneX;
            y = 0.630727630285153 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico3_3 : RscPicture
        {
            idc = 3003;
            text = "";
            x = 0.73625 * safezoneW + safezoneX;
            y = 0.630727630285153 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico3_4 : RscPicture
        {
            idc = 3004;
            text = "";
            x = 0.776354166666667 * safezoneW + safezoneX;
            y = 0.630727630285153 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico4_1 : RscPicture
        {
            idc = 4001;
            text = "";
            x = 0.65625 * safezoneW + safezoneX;
            y = 0.690206489675517 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico4_2 : RscPicture
        {
            idc = 4002;
            text = "";
            x = 0.696666666666667 * safezoneW + safezoneX;
            y = 0.690206489675517 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico4_3 : RscPicture
        {
            idc = 4003;
            text = "";
            x = 0.73625 * safezoneW + safezoneX;
            y = 0.690206489675517 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico4_4 : RscPicture
        {
            idc = 4004;
            text = "";
            x = 0.776354166666667 * safezoneW + safezoneX;
            y = 0.690206489675517 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico5_1 : RscPicture
        {
            idc = 5001;
            text = "";
            x = 0.65625 * safezoneW + safezoneX;
            y = 0.749685349065881 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico5_2 : RscPicture
        {
            idc = 5002;
            text = "";
            x = 0.696666666666667 * safezoneW + safezoneX;
            y = 0.749685349065881 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico5_3 : RscPicture
        {
            idc = 5003;
            text = "";
            x = 0.73625 * safezoneW + safezoneX;
            y = 0.749685349065881 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
        class ico5_4 : RscPicture
        {
            idc = 5004;
            text = "";
            x = 0.776354166666667 * safezoneW + safezoneX;
            y = 0.749685349065881 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
        };
	};

	class controls {
		class but1_1 : RscButton
		{
			idc = 10010;
			text = "";
			x = 0.65625 * safezoneW + safezoneX;
			y = 0.511769911504425 * safezoneH + safezoneY;
			w = 0.04 * safezoneW;
			h = 0.06 * safezoneH;
			action = "call lts_dialog_fnc_callBanking";
			colorbackground[] = {-1,-1,-1,-1};
			colorBackgroundActive[] = {-1,-1,-1,-1};
			colorBackgroundDisabled[] = {-1,-1,-1,-1};
			colorFocused[] = {-1,-1,-1,-1};
			colorBorder[] = {-1,-1,-1,-1};
			colorShadow[] = {-1,-1,-1,-1};
		};

		class but1_2 : RscButton
		{
			idc = 10012;
			text = "";
			x = 0.696666666666667 * safezoneW + safezoneX;
            y = 0.511769911504425 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.06 * safezoneH;
			action = "call lts_dialog_fnc_callLicense";
			colorbackground[] = {-1,-1,-1,-1};
			colorBackgroundActive[] = {-1,-1,-1,-1};
			colorBackgroundDisabled[] = {-1,-1,-1,-1};
			colorFocused[] = {-1,-1,-1,-1};
			colorBorder[] = {-1,-1,-1,-1};
			colorShadow[] = {-1,-1,-1,-1};
		};

		class but1_3 : RscButton
		{
			idc = 10012;
			text = "";
			x = 0.73625 * safezoneW + safezoneX;
			y = 0.511769911504425 * safezoneH + safezoneY;
			w = 0.04 * safezoneW;
			h = 0.06 * safezoneH
			action = "call lts_dialog_fnc_callSettings";
			colorbackground[] = {-1,-1,-1,-1};
			colorBackgroundActive[] = {-1,-1,-1,-1};
			colorBackgroundDisabled[] = {-1,-1,-1,-1};
			colorFocused[] = {-1,-1,-1,-1};
			colorBorder[] = {-1,-1,-1,-1};
			colorShadow[] = {-1,-1,-1,-1};
		};
	};
};
