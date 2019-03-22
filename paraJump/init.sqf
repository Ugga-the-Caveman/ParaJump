if (!isNil "ace_interact_menu_fnc_createAction") then
{
  private _statement1 = {
    ugga_paraEH = player addEventHandler ["GetOutMan",{_this spawn compile preprocessFile "paraJump\EH.sqf";}];
  };
  
  private _statement2 = {
    player removeEventHandler ["GetOutMan",ugga_paraEH];
	ugga_paraEH = nil;
  };

  private _condition1 = {
    isnil "ugga_paraEH" and
	(true) and
	((typeOf vehicle player) isKindOf "Plane" or (typeOf vehicle player) isKindOf "Helicopter")
  };
  
  private _action1 = ["Ugga_AceAction_para1","Einhaken","",_statement1,_condition1] call ace_interact_menu_fnc_createAction;
  private _action2 = ["Ugga_AceAction_para2","Aushaken","",_statement2,{!isnil "ugga_paraEH"}] call ace_interact_menu_fnc_createAction;

  [player, 1, ["ACE_SelfActions"], _action1] call ace_interact_menu_fnc_addActionToObject;
  [player, 1, ["ACE_SelfActions"], _action2] call ace_interact_menu_fnc_addActionToObject;
};