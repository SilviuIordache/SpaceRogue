if(room_get_name(room) != "rm_MENU")
{
    switch (roomArray[xMapPlayer, yMapPlayer].doorLayout)
    {
        case 1:
            script_execute(scr_buildDoors, 0, 0, 1, 0);
            break;
        case 2:
            script_execute(scr_buildDoors, 0, 0, 0, 1);
            break;
        case 3:
            script_execute(scr_buildDoors, 0, 1, 0, 0);
            break;
        case 4:
            script_execute(scr_buildDoors, 1, 0, 0, 0);
            break;
        case 5:
            script_execute(scr_buildDoors, 1, 0, 1, 0);
            break;
        case 6:
            script_execute(scr_buildDoors, 0, 0, 1, 1);
            break;
        case 7:
            script_execute(scr_buildDoors, 0, 1, 1, 0);
            break;
        case 8:
            script_execute(scr_buildDoors, 1, 1, 0, 0);
            break;
        case 9:
            script_execute(scr_buildDoors, 1, 0, 0, 1);
            break;
        case 10:
            script_execute(scr_buildDoors, 0, 1, 0, 1);
            break;
        case 11:
            script_execute(scr_buildDoors, 1, 1, 1, 0);
            break;
        case 12:
            script_execute(scr_buildDoors, 1, 0, 1, 1);
            break;
        case 13:
            script_execute(scr_buildDoors, 0, 1, 1, 1);
            break;
        case 14:
            script_execute(scr_buildDoors, 1, 1, 0, 1);
            break;
        case 15:
            script_execute(scr_buildDoors, 1, 1, 1, 1);
            break;                 
   }
}