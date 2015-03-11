roomIndex = irandom(nrOfRooms) + 1

if(obj_player.x < 17) // left
{
    roomName = string("rm_"+roomArray[xMapPlayer - 1, yMapPlayer].roomLayout+string(roomIndex));
}
