chanceToAddSecondary = irandom(100) + 1;
secRoomDirection = 0;

for (i = 0; i < roomArrayW; i++) {
    for (j = 0; j < roomArrayH; j++) {
        if (roomArray[i, j].available  == 1 ||
            roomArray[i, j].available  == 4 ||
            roomArray[i, j].available  == 9
        ) {
            chanceToAddSecondary = irandom(100) + 1;
            if (chanceToAddSecondary > 30) {
                secRoomDirection = irandom(3) + 1;
                if (secRoomDirection == 1) { // check for space TOP
                    if (roomArray[i, j - 1].available  == 0) {
                        roomArray[i, j - 1].available  = 2;
                    }
                }
                if (secRoomDirection == 2) { // check for space BOTTOM
                   if (roomArray[i, j + 1].available  == 0) {
                       roomArray[i, j + 1].available  = 2;
                    }
                }
                if (secRoomDirection == 3) { // check for space LEFT
                   if (roomArray[i - 1, j].available  == 0) {
                       roomArray[i - 1, j].available  = 2;
                    }
                }
                if (secRoomDirection == 4) { // check for space RIGHT
                   if (roomArray[i + 1, j].available  == 0) {
                       roomArray[i + 1, j].available  = 2;
                    }
                }

            }
        }

    }
}