/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class VehShopMenu {
   idd = 80001;
   name = "VehShopMenu";
   movingenable = 0;
   class controlsBackground
   {
       class Background : RscText
       {
           idc = 1000;
           x = 0.6734375 * safezoneW + safezoneX;
           y = 0.107869223205506 * safezoneH + safezoneY;
           w = 0.254166666666667 * safezoneW;
           h = 0.852799410029499 * safezoneH;
           colorbackground[] = {-1,-1,-1,0.8};
       };
       class Text_Shop_Name : RscText
       {
           idc = 1001;
           text = "Shop_name";
           x = 0.681146333333333 * safezoneW + safezoneX;
           y = 0.120835791543756 * safezoneH + safezoneY;
           w = 0.154687 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class Text_Shop_Price_Const : RscText
       {
           idc = 1002;
           text = "Preis:";
           x = 0.6828125 * safezoneW + safezoneX;
           y = 0.875122910521141 * safezoneH + safezoneY;
           w = 0.0307291666666667 * safezoneW;
           h = 0.035 * safezoneH;
       };
       class Text_Shop_Price : RscText
       {
           idc = 1003;
           text = "10";
           x = 0.711406 * safezoneW + safezoneX;
           y = 0.874139626352016 * safezoneH + safezoneY;
           w = 0.0833856666666667 * safezoneW;
           h = 0.035 * safezoneH;
       };
       class Lb_Shop : RscTree
       {
           idc = 1500;
           x = 0.682760166666667 * safezoneW + safezoneX;
           y = 0.15168534906588 * safezoneH + safezoneY;
           w = 0.238073166666667 * safezoneW;
           h = 0.699838741396264 * safezoneH;
           onTreeSelChanged = "call lts_dialog_fnc_onTvChange";
       };
   };
   class controls
   {
       class Button_Buy : RscButton
       {
           idc = 1600;
           text = "Kaufen";
           x = 0.682760166666667 * safezoneW + safezoneX;
           y = 0.913283185840708 * safezoneH + safezoneY;
           w = 0.0721874999999999 * safezoneW;
           h = 0.033 * safezoneH;
           action = "call lts_dialog_fnc_onVehBuy";
       };
       class Button_Abort : RscButton
       {
           idc = 1601;
           text = "Abbrechen";
           x = 0.845363833333333 * safezoneW + safezoneX;
           y = 0.913283185840708 * safezoneH + safezoneY;
           w = 0.0721874999999999 * safezoneW;
           h = 0.033 * safezoneH;
           action = "closeDialog 0";
       };
       class RscCombo0 : RscCombo
       {
           x = 0.798854166666667 * safezoneW + safezoneX;
           y = 0.869422320550639 * safezoneH + safezoneY;
           w = 0.12 * safezoneW;
           h = 0.035 * safezoneH;
           idc = 1004;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
