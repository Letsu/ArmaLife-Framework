class pMenu {
	idd = 90001;
	movingenable = 0;

	class ControlsBackground {
        class background: RscText {
        	idc = 1000;
        	x = 0.670156 * safezoneW + safezoneX;
        	y = 0.324 * safezoneH + safezoneY;
        	w = 0.165 * safezoneW;
        	h = 0.407 * safezoneH;
        	colorBackground[] = {-1,-1,-1,0.8};
        };
        class pMenuLB: RscListbox {
        	idc = 1500;
			//onLBSelChanged = "_this call lts_dialog_fnc_shopLbChange";
			onLBDblClick = "_this call lts_dialog_fnc_pMenuSelect";
        	x = 0.680469 * safezoneW + safezoneX;
        	y = 0.379 * safezoneH + safezoneY;
        	w = 0.144375 * safezoneW;
        	h = 0.33 * safezoneH;
        };
        class header: RscText {
        	idc = 1001;
        	text = "Player Menu"; //--- ToDo: Localize;
        	x = 0.685625 * safezoneW + safezoneX;
        	y = 0.335 * safezoneH + safezoneY;
        	w = 0.134062 * safezoneW;
        	h = 0.022 * safezoneH;
        };
	};

	class controls { };
};
