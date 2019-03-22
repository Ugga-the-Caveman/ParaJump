params ["_unit", "_role", "_vehicle", "_turret"];

player removeEventHandler ["GetOutMan",ugga_paraEH];


waituntil {(player distance _vehicle > 10) or (isnil "ugga_paraEH")};

if (!isnil "ugga_paraEH") then
{
  //player allowDamage false;
  private _chute = createVehicle ["Steerable_Parachute_F", position player, [], 0, "CAN_COLLIDE"];
  player moveInDriver _chute;
  //player allowDamage true;
  
  ugga_paraEH = nil;
};
