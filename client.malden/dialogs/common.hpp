///////////////////////////////////////////////////////////////////////////
/// Styles
///////////////////////////////////////////////////////////////////////////

// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_CHECKBOX         77

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4



// Grids
#define GUI_GRID_CENTER_WAbs		((safezoneW / safezoneH) min 1.2)
#define GUI_GRID_CENTER_HAbs		(GUI_GRID_CENTER_WAbs / 1.2)
#define GUI_GRID_CENTER_W		(GUI_GRID_CENTER_WAbs / 40)
#define GUI_GRID_CENTER_H		(GUI_GRID_CENTER_HAbs / 25)
#define GUI_GRID_CENTER_X		(safezoneX + (safezoneW - GUI_GRID_CENTER_WAbs)/2)
#define GUI_GRID_CENTER_Y		(safezoneY + (safezoneH - GUI_GRID_CENTER_HAbs)/2)

// Fonts
#define GUI_FONT_NORMAL			PuristaMedium
#define GUI_FONT_BOLD			PuristaSemibold
#define GUI_FONT_THIN			PuristaLight
#define GUI_FONT_MONO			EtelkaMonospacePro
#define GUI_FONT_NARROW			EtelkaNarrowMediumPro
#define GUI_FONT_CODE			LucidaConsoleB
#define GUI_FONT_SYSTEM			TahomaB
///////////////////////////////////////////////////////////////////////////
/// Base Classes
///////////////////////////////////////////////////////////////////////////
class RscText {
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = { 0, 0, 0, 0 };
	colorText[] = { 1, 1, 1, 1 };
	text = "";
	fixedWidth = 0;
	colorShadow[] = { 0, 0, 0, 0.5 };
	tooltipColorText[] = { 1, 1, 1, 1 };
	tooltipColorBox[] = { 1, 1, 1, 1 };
	tooltipColorShade[] = { 0, 0, 0, 0.65 };
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	font = "RobotoCondensed";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	linespacing = 1;
};

class RscStructuredText {
	deletable = 0;
	fade = 0;
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = { 1, 1, 1, 1 };
	class Attributes {
		font = "RobotoCondensed";
		color = "#ffffff";
		colorLink = "#D09B43";
		align = "left";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 1;
};

class RscPicture {
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] = { 0, 0, 0, 0 };
	colorText[] = { 1, 1, 1, 1 };
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	tooltipColorText[] = { 1, 1, 1, 1 };
	tooltipColorBox[] = { 1, 1, 1, 1 };
	tooltipColorShade[] = { 0, 0, 0, 0.65 };
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};

class RscEdit {
	deletable = 0;
	fade = 0;
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = { 0, 0, 0, 0 };
	colorText[] = { 0.95, 0.95, 0.95, 1 };
	colorDisabled[] = { 1, 1, 1, 0.25 };
	colorSelection[] = {
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
		1
	};
	autocomplete = "";
	text = "";
	size = 0.2;
	tooltipColorText[] = { 1, 1, 1, 1 };
	tooltipColorBox[] = { 1, 1, 1, 1 };
	tooltipColorShade[] = { 0, 0, 0, 0.65 };
	style = "0x00 + 0x40";
	font = "RobotoCondensed";
	shadow = 2;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	canModify = 1;
};

class RscCombo
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 4;
	colorSelect[] = { 0, 0, 0, 1 };
	colorText[] = { 1, 1, 1, 1 };
	colorBackground[] = { 0, 0, 0, 1 };
	colorScrollbar[] = { 1, 0, 0, 1 };
	colorDisabled[] = { 1, 1, 1, 0.25 };
	colorPicture[] = { 1, 1, 1, 1 };
	colorPictureSelected[] = { 1, 1, 1, 1 };
	colorPictureDisabled[] = { 1, 1, 1, 0.25 };
	colorPictureRight[] = { 1, 1, 1, 1 };
	colorPictureRightSelected[] = { 1, 1, 1, 1 };
	colorPictureRightDisabled[] = { 1, 1, 1, 0.25 };
	colorTextRight[] = { 1, 1, 1, 1 };
	colorSelectRight[] = { 0, 0, 0, 1 };
	colorSelect2Right[] = { 0, 0, 0, 1 };
	tooltipColorText[] = { 1, 1, 1, 1 };
	tooltipColorBox[] = { 1, 1, 1, 1 };
	tooltipColorShade[] = { 0, 0, 0, 0.65 };
	soundSelect[] = { "\A3\ui_f\data\sound\RscCombo\soundSelect", 0.1, 1 };
	soundExpand[] = { "\A3\ui_f\data\sound\RscCombo\soundExpand", 0.1, 1 };
	soundCollapse[] = { "\A3\ui_f\data\sound\RscCombo\soundCollapse", 0.1, 1 };
	maxHistoryDelay = 1;
	class ComboScrollBar {
		color[] = { 1, 1, 1, 1 };
	};

	colorSelectBackground[] = { 1, 1, 1, 0.7 };
	colorActive[] = { 1, 0, 0, 1 };
	style = "0x10 + 0x200";
	font = "RobotoCondensed";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
};

class RscListBox {
	deletable = 0;
	fade = 0;
	access = 0;
	type = 5;
	rowHeight = 0;
	colorText[] = { 1, 1, 1, 1 };
	colorDisabled[] = { 1, 1, 1, 0.25 };
	colorScrollbar[] = { 1, 0, 0, 0 };
	colorSelect[] = { 0, 0, 0, 1 };
	colorSelect2[] = { 0, 0, 0, 1 };
	colorSelectBackground[] = { 0.95, 0.95, 0.95, 1 };
	colorSelectBackground2[] = { 1, 1, 1, 0.5 };
	colorBackground[] = { 0, 0, 0, 0.3 };
	soundSelect[] = { "\A3\ui_f\data\sound\RscListbox\soundSelect", 0.09, 1 };
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	colorPicture[] = { 1, 1, 1, 1 };
	colorPictureSelected[] = { 1, 1, 1, 1 };
	colorPictureDisabled[] = { 1, 1, 1, 0.25 };
	colorPictureRight[] = { 1, 1, 1, 1 };
	colorPictureRightSelected[] = { 1, 1, 1, 1 };
	colorPictureRightDisabled[] = { 1, 1, 1, 0.25 };
	colorTextRight[] = { 1, 1, 1, 1 };
	colorSelectRight[] = { 0, 0, 0, 1 };
	colorSelect2Right[] = { 0, 0, 0, 1 };
	tooltipColorText[] = { 1, 1, 1, 1 };
	tooltipColorBox[] = { 1, 1, 1, 1 };
	tooltipColorShade[] = { 0, 0, 0, 0.65 };
	class ListScrollBar {
		color[] = { 1, 1, 1, 1 };
		autoScrollEnabled = 1;
	};
	colorShadow[] = { 0, 0, 0, 0.5 };
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.3;
	style = 16;
	font = "RobotoCondensed";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	period = 1.2;
	maxHistoryDelay = 1;
};

class RscButton {
	deletable = 0;
	fade = 0;
	access = 0;
	type = 1;
	text = "";
	colorText[] = { 1, 1, 1, 1 };
	colorDisabled[] = { 1, 1, 1, 0.25 };
	colorBackground[] = { 0, 0, 0, 0.5 };
	colorBackgroundDisabled[] = { 0, 0, 0, 0.5 };
	colorBackgroundActive[] = { 0, 0, 0, 1 };
	colorFocused[] = { 0, 0, 0, 1 };
	colorShadow[] = { 0, 0, 0, 0 };
	colorBorder[] = { 0, 0, 0, 1 };
	soundEnter[] = { "\A3\ui_f\data\sound\RscButton\soundEnter", 0.09, 1 };
	soundPush[] = { "\A3\ui_f\data\sound\RscButton\soundPush", 0.09, 1 };
	soundClick[] = { "\A3\ui_f\data\sound\RscButton\soundClick", 0.09, 1 };
	soundEscape[] = { "\A3\ui_f\data\sound\RscButton\soundEscape", 0.09, 1 };
	idc = -1;
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "RobotoCondensed";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	url = "";
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	borderSize = 0;
};

class RscShortcutButton {
	deletable = 0;
	fade = 0;
	type = 16;
	x = 0.1;
	y = 0.1;
	class HitZone {
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos {
		left = 0;
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		w = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		h = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	};
	class TextPos {
		left = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};

	shortcuts[] = { };
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	color[] = { 1, 1, 1, 1 };
	colorFocused[] = { 1, 1, 1, 1 };
	color2[] = { 0.95, 0.95, 0.95, 1 };
	colorDisabled[] = { 1, 1, 1, 0.25 };
	colorBackground[] = { "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])", 1 };
	colorBackgroundFocused[] = { "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])", 1 };
	colorBackground2[] = { 1, 1, 1, 1 };
	soundEnter[] = { "\A3\ui_f\data\sound\RscButton\soundEnter", 0.09, 1 };
	soundPush[] = { "\A3\ui_f\data\sound\RscButton\soundPush", 0.09, 1 };
	soundClick[] = { "\A3\ui_f\data\sound\RscButton\soundClick", 0.09, 1 };
	soundEscape[] = { "\A3\ui_f\data\sound\RscButton\soundEscape", 0.09, 1 };
	class Attributes {
		font = "RobotoCondensed";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	colorSecondary[] = { 1, 1, 1, 1 };
	colorFocusedSecondary[] = { 1, 1, 1, 1 };
	color2Secondary[] = { 0.95, 0.95, 0.95, 1 };
	colorDisabledSecondary[] = { 1, 1, 1, 0.25 };
	class AttributesImage {
		font = "RobotoCondensed";
		color = "#E5E5E5";
		align = "left";
	};
	idc = -1;
	style = 0;
	default = 0;
	shadow = 1;
	w = 0.183825;
	h = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)";
	textSecondary = "";
	sizeExSecondary = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary = "RobotoCondensed";
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	periodFocus = 1.2;
	periodOver = 0.8;
	period = 0.4;
	font = "RobotoCondensed";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text = "";
	url = "";
	action = "";
};

class RscShortcutButtonMain {
	color[] = { 1, 1, 1, 1 };
	colorDisabled[] = { 1, 1, 1, 0.25 };
	class HitZone {
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos {
		left = 0.0145;
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)) / 2";
		w = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2) * (3/4)";
		h = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	};
	class TextPos {
		left = "(((safezoneW / safezoneH) min 1.2) / 32) * 1.5";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)*2 - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)) / 2";
		right = 0.005;
		bottom = 0;
	};
	class Attributes
	{
		font = "RobotoCondensed";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class AttributesImage
	{
		font = "RobotoCondensed";
		color = "#E5E5E5";
		align = "false";
	};
	idc = -1;
	style = 0;
	default = 0;
	w = 0.313726;
	h = 0.104575;
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\disabled_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\down_ca.paa";
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\normal_ca.paa";
	period = 0.5;
	font = "RobotoCondensed";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	text = "";
	action = "";
};

class RscFrame {
	colorBackground[] = { 0, 0, 0, 0 };
	colorText[] = { 1, 1, 1, 1 };
	type = 0;
	idc = -1;
	deletable = 0;
	style = 64;
	shadow = 2;
	font = "RobotoCondensed";
	sizeEx = 0.02;
	text = "";
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.3;
};

class RscSlider {
	deletable = 0;
	fade = 0;
	access = 0;
	type = 3;
	style = 1024;
	color[] = { 1, 1, 1, 0.8 };
	colorActive[] = { 1, 1, 1, 1 };
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.025;
};

class IGUIBack {
	colorText[] = { 0, 0, 0, 0 };
	colorbackground[] = { "(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])", "(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])", "(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])","(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])" };
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	font = "RobotoCondensed";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
};

class RscCheckBox
{
	color[] = { 1, 1, 1, 0.7 };
	colorFocused[] = { 1, 1, 1, 1 };
	colorHover[] = { 1, 1, 1, 1 };
	colorPressed[] = { 1, 1, 1, 1 };
	colorDisabled[] = { 1, 1, 1, 0.2 };
	colorBackground[] = { 0, 0, 0, 0 };
	colorBackgroundFocused[] = { 0, 0, 0, 0 };
	colorBackgroundHover[] = { 0, 0, 0, 0 };
	colorBackgroundPressed[] = { 0, 0, 0, 0 };
	colorBackgroundDisabled[] = { 0, 0, 0, 0 };
	tooltipColorText[] = { 1, 1, 1, 1 };
	tooltipColorBox[] = { 1, 1, 1, 1 };
	tooltipColorShade[] = { 0, 0, 0, 0.65 };
	soundEnter[] = { "", 0.1, 1 };
	soundPush[] = { "", 0.1, 1 };
	soundClick[] = { "", 0.1, 1 };
	soundEscape[] = { "", 0.1, 1 };
	idc = -1;
	type = 77;
	deletable = 0;
	style = 0;
	checked = 0;
	x = "0.375 * safezoneW + safezoneX";
	y = "0.36 * safezoneH + safezoneY";
	w = "0.025 * safezoneW";
	h = "0.04 * safezoneH";
	textureChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureFocusedChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureFocusedUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureHoverChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureHoverUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	texturePressedChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	texturePressedUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureDisabledChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureDisabledUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
};

class RscTextCheckBox {
	colorText[] = { 1, 0, 0, 1 };
	color[] = { 0, 0, 0, 0 };
	colorBackground[] = { 0, 0, 0, 0 };
	colorTextSelect[] = { 0, 0.8, 0, 1 };
	colorSelectedBg[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])", 1 };
	colorSelect[] = { 0, 0, 0, 1 };
	colorTextDisable[] = { 0.4, 0.4, 0.4, 1 };
	colorDisable[] = { 0.4, 0.4, 0.4, 1 };
	tooltipColorText[] = { 1, 1, 1, 1 };
	tooltipColorBox[] = { 1, 1, 1, 1 };
	tooltipColorShade[] = { 0, 0, 0, 0.65 };
	strings[] = { "UNCHECKED" };
	checked_strings[] = { "CHECKED" };
	idc = -1;
	type = 7;
	style = 0;
	x = "0.375 * safezoneW + safezoneX";
	y = "0.36 * safezoneH + safezoneY";
	w = "0.025 * safezoneW";
	h = "0.04 * safezoneH";
	font = "RobotoCondensed";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	rows = 1;
	columns = 1;
};

class RscButtonMenu {
	colorBackground[] = { 0, 0, 0, 0.8 };
	colorBackgroundFocused[] = { 1, 1, 1, 1 };
	colorBackground2[] = { 0.75, 0.75, 0.75, 1 };
	color[] = { 1, 1, 1, 1 };
	colorFocused[] = { 0, 0, 0, 1 };
	color2[] = { 0, 0, 0, 1 };
	colorText[] = { 1, 1, 1, 1 };
	colorDisabled[] = { 1, 1, 1, 0.25 };
	colorSecondary[] = { 1, 1, 1, 1 };
	colorFocusedSecondary[] = { 0, 0, 0, 1 };
	color2Secondary[] = { 0, 0, 0, 1 };
	colorDisabledSecondary[] = { 1, 1, 1, 0.25 };
	tooltipColorText[] = { 1, 1, 1, 1 };
	tooltipColorBox[] = { 1, 1, 1, 1 };
	tooltipColorShade[] = { 0, 0, 0, 0.65 };
	class TextPos {
		left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};
	class Attributes {
		font = "PuristaLight";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class ShortcutPos {
		left = "5.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = 0;
		w = "1 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	};
	soundEnter[] = { "\A3\ui_f\data\sound\RscButtonMenu\soundEnter", 0.09, 1 };
	soundPush[] = { "\A3\ui_f\data\sound\RscButtonMenu\soundPush", 0.09, 1 };
	soundClick[] = { "\A3\ui_f\data\sound\RscButtonMenu\soundClick", 0.09, 1 };
	soundEscape[] = { "\A3\ui_f\data\sound\RscButtonMenu\soundEscape", 0.09, 1 };
	idc = -1;
	type = 16;
	style = "0x02 + 0xC0";
	default = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
	textSecondary = "";
	sizeExSecondary = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary = "PuristaLight";
	period = 1.2;
	periodFocus = 1.2;
	periodOver = 1.2;
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
};

class RscButtonMenuOK {
	shortcuts[] = { "0x00050000 + 0", 28, 57, 156 };
	soundPush[] = { "\A3\ui_f\data\sound\RscButtonMenuOK\soundPush", 0.09, 1 };
	idc = 1;
	default = 1;
	text = "OK";
};

class RscButtonMenuCancel {
	shortcuts[] = { "0x00050000 + 1" };
	idc = 2;
	text = "Cancel";
};

class RscControlsGroup {
	deletable = 0;
	fade = 0;
	class VScrollbar {
		color[] = { 1, 1, 1, 1 };
		width = 0.021;
		autoScrollEnabled = 1;
	};
	class HScrollbar {
		color[] = { 1, 1, 1, 1 };
		height = 0.028;
	};
	class Controls { };
	type = 15;
	idc = -1;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	shadow = 0;
	style = 16;
};
/////////////////////////////////////////////////////////
// 						Custom Class	               //
////////////////////////////////////////////////////////

#define CT_MAP_MAIN 101
#define ST_PICTURE 48

class RscMapControl {
    access = 0;
    type = 101;
    idc = 51;
    style = 48;
    colorBackground[] = {0.969,0.957,0.949,1};
    colorOutside[] = {0,0,0,1};
    colorText[] = {0,0,0,1};
    font = "TahomaB";
    sizeEx = 0.04;
    colorSea[] = {0.467,0.631,0.851,0.5};
    colorForest[] = {0.624,0.78,0.388,0.5};
    colorRocks[] = {0,0,0,0.3};
    colorCountlines[] = {0.572,0.354,0.188,0.25};
    colorMainCountlines[] = {0.572,0.354,0.188,0.5};
    colorCountlinesWater[] = {0.491,0.577,0.702,0.3};
    colorMainCountlinesWater[] = {0.491,0.577,0.702,0.6};
    colorForestBorder[] = {0,0,0,0};
    colorRocksBorder[] = {0,0,0,0};
    colorPowerLines[] = {0.1,0.1,0.1,1};
    colorRailWay[] = {0.8,0.2,0,1};
    colorNames[] = {0.1,0.1,0.1,0.9};
    colorInactive[] = {1,1,1,0.5};
    colorLevels[] = {0.286,0.177,0.094,0.5};
    colorTracks[] = {0.84,0.76,0.65,0.15};
    colorRoads[] = {0.7,0.7,0.7,1};
    colorMainRoads[] = {0.9,0.5,0.3,1};
    colorTracksFill[] = {0.84,0.76,0.65,1};
    colorRoadsFill[] = {1,1,1,1};
    colorMainRoadsFill[] = {1,0.6,0.4,1};
    colorGrid[] = {0.1,0.1,0.1,0.6};
    colorGridMap[] = {0.1,0.1,0.1,0.6};
    stickX[] = {0.2,{"Gamma",1,1.5}};
    stickY[] = {0.2,{"Gamma",1,1.5}};
    class Legend {
        colorBackground[] = {1,1,1,0.5};
        color[] = {0,0,0,1};
        x = "SafeZoneX + (((safezoneW / safezoneH) min 1.2) / 40)";
        y = "SafeZoneY + safezoneH - 4.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
        w = "10 * (((safezoneW / safezoneH) min 1.2) / 40)";
        h = "3.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
        font = "RobotoCondensed";
        sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    };
    class ActiveMarker {
        color[] = {0.3,0.1,0.9,1};
        size = 50;
    };
    class Command {
        color[] = {1,1,1,1};
        icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
        size = 18;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };
    class Task {
        colorCreated[] = {1,1,1,1};
        colorCanceled[] = {0.7,0.7,0.7,1};
        colorDone[] = {0.7,1,0.3,1};
        colorFailed[] = {1,0.3,0.2,1};
        color[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
        icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
        iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
        iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
        iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
        iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
        size = 27;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };
    class CustomMark {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
        size = 24;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };
    class Tree {
        color[] = {0.45,0.64,0.33,0.4};
        icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
        size = 12;
        importance = "0.9 * 16 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class SmallTree {
        color[] = {0.45,0.64,0.33,0.4};
        icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
        size = 12;
        importance = "0.6 * 12 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Bush {
        color[] = {0.45,0.64,0.33,0.4};
        icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
        size = "14/2";
        importance = "0.2 * 14 * 0.05 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Church {
        color[] = {1,1,1,1};
        icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Chapel {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Cross {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Rock {
        color[] = {0.1,0.1,0.1,0.8};
        icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
        size = 12;
        importance = "0.5 * 12 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Bunker {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
        size = 14;
        importance = "1.5 * 14 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Fortress {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
        size = 16;
        importance = "2 * 16 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Fountain {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
        size = 11;
        importance = "1 * 12 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class ViewTower {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
        size = 16;
        importance = "2.5 * 16 * 0.05";
        coefMin = 0.5;
        coefMax = 4;
    };
    class Lighthouse {
        color[] = {1,1,1,1};
        icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Quay {
        color[] = {1,1,1,1};
        icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Fuelstation {
        color[] = {1,1,1,1};
        icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Hospital {
        color[] = {1,1,1,1};
        icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class BusStop {
        color[] = {1,1,1,1};
        icon = "\A3\ui_f\data\map\mapcontrol\busstop_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Transmitter {
        color[] = {1,1,1,1};
        icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Stack {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
        size = 20;
        importance = "2 * 16 * 0.05";
        coefMin = 0.9;
        coefMax = 4;
    };
    class Ruin {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
        size = 16;
        importance = "1.2 * 16 * 0.05";
        coefMin = 1;
        coefMax = 4;
    };
    class Tourism {
        color[] = {0,0,0,1};
        icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
        size = 16;
        importance = "1 * 16 * 0.05";
        coefMin = 0.7;
        coefMax = 4;
    };
    class Watertower {
        color[] = {1,1,1,1};
        icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Waypoint {
        color[] = {0,0,0,1};
        size = 24;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
        icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
    };
    class WaypointCompleted {
        color[] = {0,0,0,1};
        size = 24;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
        icon = "\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
    };
    moveOnEdges = 0;//1;
    x = "SafeZoneXAbs";
    y = "SafeZoneY + 1.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
    w = "SafeZoneWAbs";
    h = "SafeZoneH - 1.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
    shadow = 0;
    ptsPerSquareSea = 5;
    ptsPerSquareTxt = 3;
    ptsPerSquareCLn = 10;
    ptsPerSquareExp = 10;
    ptsPerSquareCost = 10;
    ptsPerSquareFor = 9;
    ptsPerSquareForEdge = 9;
    ptsPerSquareRoad = 6;
    ptsPerSquareObj = 9;
    showCountourInterval = 0;
    scaleMin = 0.001;
    scaleMax = 1;
    scaleDefault = 0.16;
    maxSatelliteAlpha = 0.85;
    alphaFadeStartScale = 0.35;
    alphaFadeEndScale = 0.4;
    fontLabel = "RobotoCondensed";
    sizeExLabel = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    fontGrid = "TahomaB";
    sizeExGrid = 0.02;
    fontUnits = "TahomaB";
    sizeExUnits = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    fontNames = "RobotoCondensed";
    sizeExNames = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8) * 2";
    fontInfo = "RobotoCondensed";
    sizeExInfo = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    fontLevel = "TahomaB";
    sizeExLevel = 0.02;
    text = "#(argb,8,8,3)color(1,1,1,1)";
    //text = "\a3\ui_f\data\map_background2_co.paa";
    class power {
        icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1,1,1,1};
    };
    class powersolar {
        icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1,1,1,1};
    };
    class powerwave {
        icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1,1,1,1};
    };
    class powerwind {
        icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1,1,1,1};
    };
    class shipwreck {
        icon = "\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1,1,1,1};
    };
    class LineMarker {
        lineDistanceMin = 3e-005;
        lineLengthMin = 5;
        lineWidthThick = 0.014;
        lineWidthThin = 0.008;
        textureComboBoxColor = "#(argb,8,8,3)color(1,1,1,1)";
    };
};

class RscTree {
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = 1500; // Control identification (without it, the control won't be displayed)
	type = 12; // Type
	style = 0x00; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 0 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 0 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 40 * GUI_GRID_CENTER_W; // Width
	h = 30 * GUI_GRID_CENTER_H; // Height

	colorBorder[] = {0,0,0,1}; // Frame color

	colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
	colorSelect[] = {1,0.5,0,1}; // Selected item fill color (when multiselectEnabled is 0)
	colorMarked[] = {1,0.5,0,0.5}; // Marked item fill color (when multiselectEnabled is 1)
	colorMarkedSelected[] = {1,0.5,0,1}; // Selected item fill color (when multiselectEnabled is 1)

	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 1; // Shadow (0 - none, 1 - N/A, 2 - black outline)
	colorText[] = {1,1,1,1}; // Text color
	colorSelectText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 0)
	colorMarkedText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 1)

	tooltip = "CT_TREE"; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	multiselectEnabled = 1; // Allow selecting multiple items while holding Ctrl or Shift
	expandOnDoubleclick = 1; // Expand/collapse item upon double-click
	hiddenTexture = "A3\ui_f\data\gui\rsccommon\rsctree\hiddenTexture_ca.paa"; // Expand icon
	expandedTexture = "A3\ui_f\data\gui\rsccommon\rsctree\expandedTexture_ca.paa"; // Collapse icon
	maxHistoryDelay = 1; // Time since last keyboard type search to reset it

	// Scrollbar configuration
	class ScrollBar
	{
		width = 0; // Unknown?
		height = 0; // Unknown?
		scrollSpeed = 0.01; // Unknown?

		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

		color[] = {1,1,1,1}; // Scrollbar color
	};

	colorDisabled[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
	colorArrow[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown

	// onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
	// onDestroy = "systemChat str ['onDestroy',_this]; false";
	// onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
	// onMouseExit = "systemChat str ['onMouseExit',_this]; false";
	// onSetFocus = "systemChat str ['onSetFocus',_this]; false";
	// onKillFocus = "systemChat str ['onKillFocus',_this]; false";
	// onKeyDown = "systemChat str ['onKeyDown',_this]; false";
	// onKeyUp = "systemChat str ['onKeyUp',_this]; false";
	// onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
	// onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
	// onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
	// onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
	// onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
	// onMouseMoving = "";
	// onMouseHolding = "";
	//
	// onTreeSelChanged = "systemChat str ['onTreeSelChanged',_this]; false";
	// onTreeLButtonDown = "systemChat str ['onTreeLButtonDown',_this]; false";
	// onTreeDblClick = "systemChat str ['onTreeDblClick',_this]; false";
	// onTreeExpanded = "";
	// onTreeCollapsed = "";
	// //onTreeMouseMove = "systemChat str ['onTreeMouseMove',_this]; false"; // Causing CTD
	// //onTreeMouseHold = "systemChat str ['onTreeMouseHold',_this]; false"; // Causing CTD
	// onTreeMouseExit = "";
};
