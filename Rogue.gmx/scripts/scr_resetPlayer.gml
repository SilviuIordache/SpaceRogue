with(obj_player) instance_destroy()
oxygenLevel = oxygenLevelInitial;

global.playerHP         = 5
global.playerCanTakeDmg = true

instance_create(112, 80, obj_player);


global.canShootPistol           = true
global.canShootRifle            = true
global.canShootShotgun          = true
global.canShootRPG              = true

roomIndex = irandom(nrOfRooms - 1) + 1;
roomName = string("rm_normal"+string(roomIndex));
room_goto(asset_get_index(roomName))
