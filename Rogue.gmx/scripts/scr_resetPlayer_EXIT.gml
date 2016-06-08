with(obj_player) instance_destroy()

instance_create(112, 80, obj_player);


roomIndex = irandom(nrOfRooms - 1) + 1;
roomName = string("rm_normal"+string(roomIndex));
room_goto(asset_get_index(roomName))
