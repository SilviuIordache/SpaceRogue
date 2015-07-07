//-----------------GENERATE RANDOM ROOM VARIABLES-----------------------------------------
xArrayStart  = 0;
xArrayFinish = 0;
yArrayStart  = 0;
yArrayFinish = 0;

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

roomArray[xArrayStart, yArrayStart].cleared = true;
roomArray[xArrayStart, yArrayStart].modifierPosibility = false;
roomArray[xArrayStart, yArrayStart].available  = 4;  // Mark START  with available = 4
roomArray[xArrayFinish, xArrayFinish].available  = 9;// Mark FINISH with available = 9
//----------------------------------------------------------------------------------------
