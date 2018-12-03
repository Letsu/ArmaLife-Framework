private ["_shopClass", "_display", "_shopName", "_textPrice", "_lbShop", "_buttonBuy", "_buttonAbort"];
/*
 * Author: Johannes "Letus" Bidnriem
 * Fills the Listboxes from Shop Dialog whit Values from Config
 *
 * Arguments:
 * 1: ShopClass [String]
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] call lts_fialog_fnc_getVehShopConfig;
 *
 */

 _shopClass = param [0, ""];

 //Display Controlls
 _display = findDisplay 70001;

 _shopName = _display displayCtrl 1001;
 _textPrice = _display displayCtrl 1003;
 _lbShop = _display displayCtrl 1500;
 _buttonBuy = _display displayCtrl 1600;
 _buttonAbort = _display displayCtrl 1601;

//Get Shop Config
//_displayName = getText (missionConfigFile >> "Config_Shops" >> _shopClass >> "DisplayName");
