params ["_unit", "_role", "_vehicle", "_turret"];

hint format ["fired %1",time];

player removeEventHandler ["GetOutMan",ugga_paraEH];
ugga_paraEH = nil;