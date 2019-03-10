/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class ShopMenu {
   idd = 70001;
   name = "ShopMenu";
   movingenable = 0;
   class controlsBackground
   {
       class Background : RscText
       {
           idc = 1000;
           x = 0.447864333333333 * safezoneW + safezoneX;
           y = 0.186531956735497 * safezoneH + safezoneY;
           w = 0.189635666666667 * safezoneW;
           h = 0.452602753195674 * safezoneH;
           colorbackground[] = {-1,-1,-1,0.8};
       };
       class Text_Shop_Name : RscText
       {
           idc = 1001;
           text = "Shop_name";
           x = 0.454114333333333 * safezoneW + safezoneX;
           y = 0.189665683382498 * safezoneH + safezoneY;
           w = 0.124582833333333 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class Text_Shop_Price_Const : RscText
       {
           idc = 1002;
           text = "Preis:";
           x = 0.454114333333333 * safezoneW + safezoneX;
           y = 0.561637659783678 * safezoneH + safezoneY;
           w = 0.0307815 * safezoneW;
           h = 0.0312212389380531 * safezoneH;
       };
       class Text_Shop_Price : RscText
       {
           idc = 1003;
           text = "10";
           x = 0.486979166666667 * safezoneW + safezoneX;
           y = 0.561637659783678 * safezoneH + safezoneY;
           w = 0.143229166666667 * safezoneW;
           h = 0.0312826941986234 * safezoneH;
       };
	   class RscText3 : RscText
	   {
		   idc = 1010;
		   x = 0.7140625 * safezoneW + safezoneX;
		   y = 0.561637659783678 * safezoneH + safezoneY;
		   h = 0.037 * safezoneH;
		   w = 0.0802083333333333 * safezoneW;
		   text = "10";
	   };
   };

   class controls
   {
	   class Lb_Shop : RscTree
	   {
		   idc = 1500;
		   x = 0.453645833333333 * safezoneW + safezoneX;
		   y = 0.211665683382498 * safezoneH + safezoneY;
		   w = 0.181770833333333 * safezoneW;
		   h = 0.341 * safezoneH;
	   };
	   class Lb_Shop0 : RscTree
	   {
		   idc = 1501;
		   x = 0.648958333333333 * safezoneW + safezoneX;
		   y = 0.220847099311701 * safezoneH + safezoneY;
		   w = 0.14375 * safezoneW;
		   h = 0.341 * safezoneH;
	   };
       class Button_Buy : RscButton
       {
           idc = 1600;
           text = "In den Warenkorb";
           x = 0.454114333333333 * safezoneW + safezoneX;
           y = 0.598632251720747 * safezoneH + safezoneY;
           w = 0.0839065 * safezoneW;
           h = 0.033 * safezoneH;
           action = "call lts_dialog_fnc_onShopBuy";
       };
       class Button_Abort : RscButton
       {
           idc = 1601;
           text = "Abbrechen";
           x = 0.5640625 * safezoneW + safezoneX;
           y = 0.598632251720747 * safezoneH + safezoneY;
           w = 0.0659888333333332 * safezoneW;
           h = 0.033 * safezoneH;
           action = "closeDialog 0";
       };
       class RscText0 : RscText
       {
           idc = 1004;
           colorbackground[] = {0,0,0,0.717647058823529};
           x = 0.644270833333333 * safezoneW + safezoneX;
           y = 0.18503982300885 * safezoneH + safezoneY;
           h = 0.457044739429695 * safezoneH;
           w = 0.155729166666667 * safezoneW;
       };
       class RscText1 : RscText
       {
           idc = 1005;
           text = "Im Warenkorb:";
           x = 0.644270833333333 * safezoneW + safezoneX;
           y = 0.18503982300885 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0697916666666667 * safezoneW;
       };
       class RscButton0 : RscButton
       {
           text = "Kaufen";
           x = 0.73125 * safezoneW + safezoneX;
           y = 0.598632251720747 * safezoneH + safezoneY;
           w = 0.0608153333333333 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1007;
       };
       class RscButton1 : RscButton
       {
           text = "Entfernen";
           x = 0.649601333333333 * safezoneW + safezoneX;
           y = 0.598632251720747 * safezoneH + safezoneY;
           w = 0.0592528333333334 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1008;
       };
       class RscText2 : RscText
       {
           idc = 1009;
           text = "Preis Gesammt:";
           x = 0.649601333333333 * safezoneW + safezoneX;
           y = 0.561637659783678 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0796875 * safezoneW;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
