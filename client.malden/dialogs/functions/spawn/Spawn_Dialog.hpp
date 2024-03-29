class SpawnDialog {
	idd = 60001;
	movingenable = 0;

	class ControlsBackground {
		class Backgrund_Spawn: RscText {
			idc = 1000;
			x = 0.309219 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.381563 * safezoneW;
			h = 0.187 * safezoneH;
			colorBackground[] = {0, 0, 0, 0.8};
		};

		class ListboxSpawnSelection: RscListBox {
			idc = 1500;
			onLBSelChanged = "_this call lts_dialog_fnc_spawnLbChange";
			x = 0.613438 * safezoneW + safezoneX;
			y = 0.412 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.088 * safezoneH;
			tooltip = "Auswahl deines Spawn punktes"; //--- ToDo: Localize;
		};
	};

	class controls {
		class ButtonSpawn: RscButton {
			idc = 1600;
			text = "Spawn"; //--- ToDo: Localize;
			x = 0.613437 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.055 * safezoneH;
			tooltip = "Zum Spawnen den Button Druecken"; //--- ToDo: Localize;
			action = " [] call lts_dialog_fnc_spawn ";
		};

		class TextMap: RscMapControl {
			idc = 1001;
			x = 0.319531 * safezoneW + safezoneX;
			y = 0.412 * safezoneH + safezoneY;
			w = 0.283594 * safezoneW;
			h = 0.165 * safezoneH;
			tooltip = "die Karte"; //--- ToDo: Localize;
		};
	};
};
