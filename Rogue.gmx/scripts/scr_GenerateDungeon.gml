//------CLEAR available with 0s--------------------
for (i = 0; i < roomArrayW; i ++) {
    for (j = 0; j < roomArrayW; j ++) {
        roomArray[i, j].available = 0;
        roomArray[i, j].doorLayout = 0;
        roomArray[i, j].roomLayout = "";
    }
}
//---------------------------------------

//-----BORDER WITH -3s-------------------------------------------
for (i = 0; i < roomArrayW; i ++) { // border the grid with 3s
    roomArray[0, i].available               = -3;
    roomArray[roomArrayH - 1, i].available  = -3;
}
for (i = 0; i < roomArrayH; i ++) { // border the grid with 3s
    roomArray[i, 0].available               = -3;
    roomArray[i, roomArrayH - 1].available  = -3;
}

//---------------------------------------------------------------


//-----------------GENERATE RANDOM ROOM VARIABLES--------------------------
xArrayStart  = irandom(roomArrayH - 3) + 1;
yArrayStart  = irandom(roomArrayH - 3) + 1;
xArrayFinish = irandom(roomArrayH - 3) + 1;
xArrayFinish = irandom(roomArrayH - 3) + 1;
xMapPlayer = xArrayStart;
yMapPlayer = yArrayStart;

xDistance = xArrayStart - xArrayFinish; // VERTICAL   difference between Start and Finish
yDistance = yArrayStart - xArrayFinish; // HORIZONTAL difference between Start and Finish

sign_xDistance = sign(xDistance);
sign_yDistance = sign(yDistance);

roomArray[xArrayStart, yArrayStart].available  = 4;  // Mark START  with available = 4
roomArray[xArrayFinish, xArrayFinish].available  = 9;// Mark FINISH with available = 9
//-------------------------------------------------------------------------

//-----------------EXECUTE SCRIPTS-------------------------------------------------
script_execute(pathConnect, xArrayStart, yArrayStart, xArrayFinish, xArrayFinish);
script_execute(addSecondaryRooms);
script_execute(setDoorLayout);
//script_execute(setRoomLayout);
//---------------------------------------------------------------------------------