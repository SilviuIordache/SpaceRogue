
randomize(); 
//------CLEAR available with 0s--------------------
for (i = 0; i < roomArrayW; i ++) {
    for (j = 0; j < roomArrayW; j ++) {
        roomArray[i, j].available          = 0;
        roomArray[i, j].doorLayout         = 0;
        roomArray[i, j].roomLayout         = "";
        roomArray[i, j].nearUnexplored     = false;
        roomArray[i, j].modifierPosibility = true;
        roomArray[i, j].createExitHere     = false;
        roomArray[i, j].cleared            = false;

        // make some rooms not contain any monsters
        //hasHazardsVar = irandom(100);
        //if (hasHazardsVar < 10) roomArray[i, j].cleared = true;
        //else                    roomArray[i, j].cleared = false;
    }
}
//-------------------------------------------------


//-----BORDER WITH -3s-------------------------------------------
for (i = 0; i < roomArrayW; i ++) {
    roomArray[0, i].available               = -3;
    roomArray[roomArrayH - 1, i].available  = -3;
    roomArray[i, 0].available               = -3;
    roomArray[i, roomArrayH - 1].available  = -3;
}
//---------------------------------------------------------------


//-----------------GENERATE RANDOM ROOM VARIABLES-----------------------------------------
xArrayStart  = 0;
xArrayFinish = 0;
yArrayStart  = 0;
yArrayFinish = 0;

xArrayStart  = irandom(roomArrayH - 3) + 1;
yArrayStart  = irandom(roomArrayH - 3) + 1;
xArrayFinish = irandom(roomArrayH - 3) + 1;
yArrayFinish = irandom(roomArrayH - 3) + 1;

xMapPlayer = xArrayStart;
yMapPlayer = yArrayStart;

xDistance = xArrayStart - xArrayFinish; // VERTICAL   difference between Start and Finish
yDistance = yArrayStart - yArrayFinish; // HORIZONTAL difference between Start and Finish

sign_xDistance = sign(xDistance);
sign_yDistance = sign(yDistance);

roomArray[xArrayStart, yArrayStart].cleared = true;
roomArray[xArrayStart, yArrayStart].modifierPosibility = false;
roomArray[xArrayFinish, yArrayFinish].createExitHere     = true;
roomArray[xArrayStart, yArrayStart].available  = 4;  // Mark START  with available = 4
roomArray[xArrayFinish, yArrayFinish].available  = 9;// Mark FINISH with available = 9
//----------------------------------------------------------------------------------------


//-----------------EXECUTE SCRIPTS-----------------------------------------------------
script_execute(scr_pathConnect, xArrayStart, yArrayStart, xArrayFinish, yArrayFinish);
script_execute(scr_addSecondaryRooms);
script_execute(scr_setDoorLayout);
script_execute(scr_placeDoors);
//-------------------------------------------------------------------------------------