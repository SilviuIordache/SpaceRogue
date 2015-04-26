depth = - 5000;
draw_set_alpha(0.35);
draw_rectangle_colour(1, 1, 50, 50, c_white, c_white, c_white, c_white, false); // minimap white bck
draw_set_alpha(1);


//--------------------------------------------------------------------------------------------

// Color relevant room squares----------------------------------------------------------------
script_execute(scr_drawSquareAt, xArrayStart, yArrayStart, c_green)  // START

for (i = 0; i < roomArrayW; i++)
{
    for(j = 0; j < roomArrayH; j++)
    {
        if (roomArray[i,j].nearUnexplored == true)
        {
            script_execute(scr_drawSquareAt, i, j, c_white)
        }
        if (roomArray[i,j].cleared        == true && 
            roomArray[i,j].nearUnexplored == true && 
            roomArray[i,j].available      !=  0    && 
            roomArray[i,j].available      != -3 )
        {
            script_execute(scr_drawSquareAt, i, j, c_green)
        }    
    }
}

script_execute(scr_drawSquareAt, xMapPlayer, yMapPlayer, c_blue)  //Player Location

// Draw the the grid & the information numbers-----------------------

for (i = 0; i < roomArrayW; i += 1)
{
    for (j = 0; j < roomArrayH; j += 1)
    {
        /*
        draw_rectangle(
                       i * arrayCellSize, 
                       j * arrayCellSize, 
                       i * arrayCellSize + arrayCellSize, 
                       j * arrayCellSize + arrayCellSize, 
                       true
                       );    
       */ 
//------DEBUG-----------------------------------------------
         
        if(drawAvailable)
        {          
            draw_text_transformed( i * arrayCellSize + arrayCellSize/2 - 1.1, j * arrayCellSize + arrayCellSize/2, roomArray[i, j].available, 0.2, 0.2, image_angle );
        }
        else if (drawDoorLayout)
        {
            draw_text_transformed( i * arrayCellSize + arrayCellSize/2 - 1.1, j * arrayCellSize + arrayCellSize/2, roomArray[i, j].doorLayout, 0.2, 0.2, image_angle );
        }
        else if (drawRoomLayout)
        {
            draw_text_transformed( i * arrayCellSize + arrayCellSize/2 - 1.1, j * arrayCellSize + arrayCellSize/2, roomArray[i, j].roomLayout, 0.2, 0.2, image_angle );
        }
        else if (drawCleared)
        {
            draw_text_transformed( i * arrayCellSize + arrayCellSize/2 - 1.1, j * arrayCellSize + arrayCellSize/2, roomArray[i, j].cleared, 0.2, 0.2, image_angle );
        }
        else if (drawUnexplored)
        {
            draw_text_transformed( i * arrayCellSize + arrayCellSize/2 - 1.1, j * arrayCellSize + arrayCellSize/2, roomArray[i, j].nearUnexplored, 0.2, 0.2, image_angle );
        }
        else if (drawNothing)
        {
            draw_text_transformed( i * arrayCellSize + arrayCellSize/2 - 1.1, j * arrayCellSize + arrayCellSize/2, "", 0.2, 0.2, image_angle );
        }
        
    }
}
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//---------DEBUG COLORING--------------------------------------
/*
for (i = 0; i < roomArrayW; i++)
{
    for(j = 0; j < roomArrayH; j++)
    {
        if (roomArray[i,j].available == 1 )
        {
            script_execute(scr_drawSquareAt, i, j, c_orange) // MAIN PATH
        }
        else if (roomArray[i,j].available == 2 )
        {
            script_execute(scr_drawSquareAt, i, j, c_purple) // ADDITIONAL ROOMS
        }
    }
}


script_execute(scr_drawSquareAt, xArrayFinish, xArrayFinish, c_red)  //FINISH
script_execute(scr_drawSquareAt, xMapPlayer, yMapPlayer, c_blue)  //Player Location
*/
//-------------------------------------------------------------------------------
