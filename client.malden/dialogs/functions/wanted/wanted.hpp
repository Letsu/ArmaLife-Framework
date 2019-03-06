class wanted {
   idd = 40001;
   movingenable = 0;
   enablesimulation = 1;

   class controlsBackground {
       class RscText0 : RscText {
           idc = 1000;
           colorbackground[] = {0,0,0,0.607843137254902};
           x = 0.1828125 * safezoneW + safezoneX;
           y = 0.150442477876106 * safezoneH + safezoneY;
           h = 0.787793018682399 * safezoneH;
           w = 0.652083333333333 * safezoneW;
       };

       class RscText1 : RscText {
           idc = 1002;
           text = "Gesuchte Personen:";
           x = 0.1890625 * safezoneW + safezoneX;
           y = 0.166357423795477 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.110416666666667 * safezoneW;
       };

       class RscText3 : RscText
       {
           idc = 1005;
           text = "Spieler Infos:";
           x = 0.1890625 * safezoneW + safezoneX;
           y = 0.509523598820059 * safezoneH + safezoneY;
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
   class controls {
       class RscListBox0 : RscListBox
       {
           idc = 1001;
           x = 0.1890625 * safezoneW + safezoneX;
           y = 0.202999016715831 * safezoneH + safezoneY;
           w = 0.110416666666667 * safezoneW;
           h = 0.30732546705998 * safezoneH;
       };
       class RscListBox1 : RscListBox
       {
           x = 0.1890625 * safezoneW + safezoneX;
           y = 0.545181907571288 * safezoneH + safezoneY;
           w = 0.110416666666667 * safezoneW;
           h = 0.295526057030482 * safezoneH;
           idc = 1003;
       };
       class RscListBox2 : RscListBox
       {
           x = 0.4109375 * safezoneW + safezoneX;
           y = 0.166357423795477 * safezoneH + safezoneY;
           w = 0.0994791666666667 * safezoneW;
           h = 0.344950344149459 * safezoneH;
           idc = 1009;
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
           w = 0.0994791666666667 * safezoneW;
           h = 0.385004916420846 * safezoneH;
           idc = 1013;
       };
       class RscStructuredText1 : RscStructuredText
       {
           idc = 1014;
           x = 0.521875 * safezoneW + safezoneX;
           y = 0.53338249754179 * safezoneH + safezoneY;
           h = 0.385004916420846 * safezoneH;
           w = 0.296354166666667 * safezoneW;
       };
       class RscStructuredText2 : RscStructuredText
       {
           idc = 1018;
           x = 0.30625 * safezoneW + safezoneX;
           y = 0.309734513274336 * safezoneH + safezoneY;
           h = 0.200589970501475 * safezoneH;
           w = 0.095589 * safezoneW;
       };
       class RscStructuredText0 : RscStructuredText
       {
           idc = 1008;
           x = 0.521875 * safezoneW + safezoneX;
           y = 0.166357423795477 * safezoneH + safezoneY;
           h = 0.343967059980334 * safezoneH;
           w = 0.296354166666667 * safezoneW;
       };
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
