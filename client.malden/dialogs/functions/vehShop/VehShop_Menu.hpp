class VehShopMenu {
	idd = 80001;
	movingenable = 0;

	class ControlsBackground {
        class Background: RscText {
        	idc = 1000;
        	x = 0.711406 * safezoneW + safezoneX;
        	y = 0.159 * safezoneH + safezoneY;
        	w = 0.165 * safezoneW;
        	h = 0.407 * safezoneH;
        	colorBackground[] = {-1,-1,-1,0.8};
        };

        class Text_Shop_Name: RscText {
        	idc = 1001;
        	text = "Shop_name"; //--- ToDo: Localize;
        	x = 0.716563 * safezoneW + safezoneX;
        	y = 0.17 * safezoneH + safezoneY;
        	w = 0.154687 * safezoneW;
        	h = 0.022 * safezoneH;
        };

        class Text_Shop_Price_Const: RscText {
        	idc = 1002;
        	text = "Preis:"; //--- ToDo: Localize;
        	x = 0.716563 * safezoneW + safezoneX;
        	y = 0.544 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.022 * safezoneH;
        };

        class Text_Shop_Price: RscText {
        	idc = 1003;
        	text = "10"; //--- ToDo: Localize;
        	x = 0.742344 * safezoneW + safezoneX;
        	y = 0.544 * safezoneH + safezoneY;
        	w = 0.12375 * safezoneW;
        	h = 0.022 * safezoneH;
        };

        class Lb_Shop: RscListbox {
        	idc = 1500;
  	    //	onLBSelChanged = "_this call lts_dialog_fnc_shopLbChange";
        	x = 0.716563 * safezoneW + safezoneX;
        	y = 0.192 * safezoneH + safezoneY;
        	w = 0.154687 * safezoneW;
        	h = 0.341 * safezoneH;
        };
	};

	class controls {
        class Button_Buy: RscButton {
        	idc = 1600;
        	text = "Kaufen"; //--- ToDo: Localize;
        	x = 0.711406 * safezoneW + safezoneX;
        	y = 0.577 * safezoneH + safezoneY;
        	w = 0.0721875 * safezoneW;
        	h = 0.033 * safezoneH;
			action = "call lts_dialog_fnc_onVehBuy";
        };

        class Button_Abort: RscButton {
        	idc = 1601;
        	text = "Abbrechen"; //--- ToDo: Localize;
        	x = 0.804218 * safezoneW + safezoneX;
        	y = 0.577 * safezoneH + safezoneY;
        	w = 0.0721875 * safezoneW;
        	h = 0.033 * safezoneH;
			action = "closeDialog 0";
        };
	};
};
