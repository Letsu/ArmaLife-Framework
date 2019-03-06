/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class wanted {
   idd = 40001;
   name = "wanted";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class RscText0 : RscText
       {
           idc = 1000;
           colorbackground[] = {0,0,0,0.607843137254902};
           x = 0.1828125 * safezoneW + safezoneX;
           y = 0.150442477876106 * safezoneH + safezoneY;
           h = 0.787793018682399 * safezoneH;
           w = 0.652083333333333 * safezoneW;
       };
       class RscText3 : RscText
       {
           idc = 1005;
           text = "Spieler Liste:";
           x = 0.1890625 * safezoneW + safezoneX;
           y = 0.166357423795477 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.110416666666667 * safezoneW;
       };
       class RscText2 : RscText
       {
           idc = 1006;
           text = "Nach Name Suchen:";
           x = 0.1890625 * safezoneW + safezoneX;
           y = 0.851706489675516 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.110416666666667 * safezoneW;
       };
   };
   class controls
   {
       class RscListBox1 : RscListBox
       {
           idc = 1003;
           x = 0.1890625 * safezoneW + safezoneX;
           y = 0.214413632251721 * safezoneH + safezoneY;
           w = 0.110416666666667 * safezoneW;
           h = 0.605645364798426 * safezoneH;
           onlbselchanged = "call lts_dialog_fnc_onPlayerWantedChange";
       };
       class RscListBox2 : RscListBox
       {
           x = 0.4109375 * safezoneW + safezoneX;
           y = 0.166357423795477 * safezoneH + safezoneY;
           w = 0.134895833333333 * safezoneW;
           h = 0.344950344149459 * safezoneH;
           idc = 1009;
           onlbselchanged = "call lts_dialog_fnc_onWantedWantedChange";
       };
       class RscButton0 : RscButton
       {
           text = "GO";
           x = 0.280729166666667 * safezoneW + safezoneX;
           y = 0.887571288102262 * safezoneH + safezoneY;
           w = 0.0197916666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1007;
       };
       class RscButton1 : RscButton
       {
           text = "Straftat Hinzufügen";
           x = 0.306893 * safezoneW + safezoneX;
           y = 0.166357423795477 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1010;
       };
       class RscButton2 : RscButton
       {
           text = "Entlasten";
           x = 0.306893 * safezoneW + safezoneX;
           y = 0.214413632251721 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1011;
       };
       class RscButton3 : RscButton
       {
           text = "Info Hinzufügen";
           x = 0.30625 * safezoneW + safezoneX;
           y = 0.26259455653884 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1012;
       };
       class RscButton4 : RscButton
       {
           text = "Info Hinzufügen";
           x = 0.306893 * safezoneW + safezoneX;
           y = 0.53338249754179 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1015;
       };
       class RscButton5 : RscButton
       {
           text = "Info Bearbeiten";
           x = 0.306893 * safezoneW + safezoneX;
           y = 0.57921205899705 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1016;
       };
       class RscButton6 : RscButton
       {
           text = "Info Entfernen";
           x = 0.306893 * safezoneW + safezoneX;
           y = 0.622476562438545 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1017;
       };
       class RscListBox3 : RscListBox
       {
           x = 0.4109375 * safezoneW + safezoneX;
           y = 0.53338249754179 * safezoneH + safezoneY;
           w = 0.134895833333333 * safezoneW;
           h = 0.385004916420846 * safezoneH;
           idc = 1013;
       };
       class RscStructuredText1 : RscStructuredText
       {
           idc = 1014;
           x = 0.5546875 * safezoneW + safezoneX;
           y = 0.53338249754179 * safezoneH + safezoneY;
           h = 0.385004916420846 * safezoneH;
           w = 0.266145833333334 * safezoneW;
       };
       class RscStructuredText2 : RscStructuredText
       {
           idc = 1018;
           x = 0.30625 * safezoneW + safezoneX;
           y = 0.309734513274336 * safezoneH + safezoneY;
           h = 0.200589970501475 * safezoneH;
           w = 0.095589 * safezoneW;
       };
       //TEST!!!!!
       class My_RscControlsgroup
       {
       	type = 15;
       	idc = -1;
       	style = 0;
        x = 0.55625 * safezoneW + safezoneX;
        y = 0.166357423795477 * safezoneH + safezoneY;
        h = 0.344950344149459 * safezoneH;
        w = 0.266145833333334 * safezoneW;

       	class VScrollbar
       	{
       		color[] = {1, 1, 1, 1};
       		width = 0.021;
       		autoScrollSpeed = -1;
       		autoScrollDelay = 5;
       		autoScrollRewind = 0;
       	};

       	class ScrollBar
       	{
       		color[] = {1,1,1,0.6};
       		colorActive[] = {1,1,1,1};
       		colorDisabled[] = {1,1,1,0.3};
       		thumb = "#(argb,8,8,3)color(1,1,1,1)";
       		arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
       		arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
       		border = "#(argb,8,8,3)color(1,1,1,1)";
       	};

       	class Controls
       	{
       		class RscStructuredText0 : RscStructuredText
       		{
       			idc = 1008;
       			colorBackground[] = {1,1,1,0};
       			x = 0;
       			y = 0;
       			w = (SafezoneW  * 0.3);
       			h = (SafezoneH  * 3);
       			text	= "";
       		};
       	};
       };


       // class RscStructuredText0 : RscStructuredText
       // {
           // idc = 1008;
           // x = 0.55625 * safezoneW + safezoneX;
           // y = 0.166357423795477 * safezoneH + safezoneY;
           // h = 0.344950344149459 * safezoneH;
           // w = 0.266145833333334 * safezoneW;
       // };
       //TEST!!!!


       class RscEdit0 : RscEdit
       {
           x = 0.1890625 * safezoneW + safezoneX;
           y = 0.887571288102262 * safezoneH + safezoneY;
           h = 0.039216 * safezoneH;
           w = 0.0911458333333333 * safezoneW;
           idc = 1004;
           text = "Funktion Deaktieviert";
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
