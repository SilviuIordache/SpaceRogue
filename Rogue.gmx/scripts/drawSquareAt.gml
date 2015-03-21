xPos = argument0 
yPos = argument1
color = argument2

draw_set_alpha(0.5)
draw_rectangle_colour(
                      xPos * arrayCellSize + 1, 
                      yPos * arrayCellSize + 1, 
                      xPos * arrayCellSize + 5, 
                      yPos * arrayCellSize + 5, 
                      color, 
                      color, 
                      color, 
                      color, 
                      false);
draw_rectangle_colour(
                      xPos * arrayCellSize + 1, 
                      yPos * arrayCellSize + 1, 
                      xPos * arrayCellSize + 5, 
                      yPos * arrayCellSize + 5, 
                      c_white, 
                      c_white, 
                      c_white, 
                      c_white, 
                      true);                      
draw_set_alpha(1)
