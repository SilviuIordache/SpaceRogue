xCurrent = argument0;
yCurrent = argument1;
xGridFinish = argument2;
yGridFinish = argument3;

xTimes = irandom(abs(xDistance))
yTimes = irandom(abs(yDistance))


if( xCurrent == xGridFinish && yCurrent == yGridFinish) { // end reached
    roomArray[xGridFinish, yGridFinish].available  = 9;
    return 0;
}
else {
     if(nextDirection == 1) { // Fill 1s on Y axis
         yDistance = (abs(yDistance) - yTimes) * sign_yDistance;
         for (i = 0; i < yTimes; i++) {
             if (sign_yDistance < 0 ) {
                roomArray[xCurrent, yCurrent + i + 1].available  = 1;
                if(i == yTimes - 1)
                    yCurrent = yCurrent + i + 1;
             }                        
             if (sign_yDistance >= 0) {
                roomArray[xCurrent, yCurrent - i - 1].available  = 1;
                if(i == yTimes - 1)
                    yCurrent = yCurrent - i - 1;
             }             
         }//end for
         nextDirection *= -1;
     }//end if
     else if(nextDirection == -1) { // Fill 1s on X axis
          xDistance = (abs(xDistance) - xTimes) * sign_xDistance;
          for (i = 0; i < xTimes; i++) {
              if (sign_xDistance < 0) {
                 roomArray[xCurrent + i + 1, yCurrent].available  = 1;
                 if(i == xTimes - 1)
                    xCurrent = xCurrent + i + 1;
              }
              if (sign_xDistance >= 0) {
                 roomArray[xCurrent - i - 1, yCurrent].available  = 1;
                 if(i == xTimes - 1)
                    xCurrent = xCurrent - i - 1;
              }
          }//end for
          nextDirection *= -1;
    }// end else
    script_execute(pathConnect, xCurrent, yCurrent, xGridFinish, yGridFinish);
}