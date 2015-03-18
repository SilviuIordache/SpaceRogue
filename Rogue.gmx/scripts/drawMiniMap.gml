depth = - 5000;
draw_set_alpha(0.5);
draw_rectangle_colour(1, 1, 50, 50, c_white, c_white, c_white, c_white, false); // minimap white bck
draw_set_alpha(1);


// Draw the the grid & the information numbers-----------------------
for (i = 0; i < roomArrayW; i += 1)
{
    for (j = 0; j < roomArrayH; j += 1)
    {
        draw_rectangle(
                       i * arrayCellSize, 
                       j * arrayCellSize, 
                       i * arrayCellSize + arrayCellSize, 
                       j * arrayCellSize + arrayCellSize, 
                       true
                       );    
        /*   
        if(swapMiniMapInfo == -1)
        {          
            draw_text_transformed(
                                 i * arrayCellSize + arrayCellSize/2 - 1.1, //substracted 1.1 to fit double digits in square
                                 j * arrayCellSize + arrayCellSize/2,
                                 roomArray[i, j].available,
                                 0.2, 
                                 0.2, 
                                 image_angle
                                 );
        }
        else if (swapMiniMapInfo == 1)
        {
            draw_text_transformed(
                                 i * arrayCellSize + arrayCellSize/2 - 1.1,
                                 j * arrayCellSize + arrayCellSize/2,
                                 roomArray[i, j].doorLayout,
                                 0.2, 
                                 0.2, 
                                 image_angle
                                 );
        }
        */
    }
}
//--------------------------------------------------------------------------------------------

// Color relevant room squares----------------------------------------------------------------
for (i = 0; i < roomArrayW; i++)
{
    for(j = 0; j < roomArrayH; j++)
    {
        if (roomArray[i,j].available == 1 )
        {
            script_execute(drawSquareAt, i, j, c_orange) // MAIN PATH
        }
        else if (roomArray[i,j].available == 2 )
        {
            script_execute(drawSquareAt, i, j, c_purple) // ADDITIONAL ROOMS
        }
    }
}

script_execute(drawSquareAt, xArrayStart, yArrayStart, c_green)  // START
script_execute(drawSquareAt, xArrayFinish, xArrayFinish, c_red)  //FINISH

script_execute(drawSquareAt, xMapPlayer, yMapPlayer, c_blue)  //Player Location

//-------------------------------------------------------------------------------
