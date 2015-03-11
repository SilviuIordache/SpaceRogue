xs      = argument0 //current x
ys      = argument1 //current y
parentX = argument2;
parentY = argument3;

//show_message("x: " + string(xs) + ", y: " + string(ys)); DEBUG ONLY

if (xs != xGridStart && ys != yGridStart ||xs != xGridFinish && ys != yGridFinish) { //mark rooms apart from S and F rooms
   mainGrid[# xs, ys] = 1;
}

if (endFound == true){
    mainGrid [# xs, ys] = 2;
}

if (xs == xGridFinish && ys == yGridFinish){
    show_message("end found");
    endFound = true;
    mainGrid [# xs, ys] = 9;
    exit;
}


if(endFound == false) {
    //TOP
    if (mainGrid[# xs, ys - 1] == 0) {
       mainGrid[# xs, ys - 1] = 1;
       script_execute(pathFinding, xs, ys - 1, xs, ys);
    }
    
    //BOTTOM
    if (mainGrid[# xs, ys + 1] == 0) {
         mainGrid[# xs, ys + 1] = 1;
         script_execute(pathFinding, xs, ys + 1, xs, ys);
    }
    
    //LEFT
    if (mainGrid[# xs - 1, ys] == 0) {
         mainGrid[# xs - 1, ys] = 1;
         script_execute(pathFinding, xs - 1, ys, xs, ys);
    }
    
    //RIGHT
    if (mainGrid[# xs + 1, ys] == 0) {
         mainGrid[# xs + 1, ys] = 1;
         script_execute(pathFinding, xs + 1, ys, xs, ys);
    }
}
else{
     exit;
}

