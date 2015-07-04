xx        = argument0
yy        = argument1
radius    = argument2
precision = argument3
col = make_colour_hsv(0, 0, argument4);
//if (lightON == true)
//{
    surface_set_target(lightSurface)
    
    draw_set_blend_mode(bm_subtract)
        //draw_set_alpha(0.90)
        draw_set_color(col)
        
            for (i=0; i<=precision; i+=1)
                draw_circle(xx, yy, (radius-(radius/precision*i)), false)
       
        draw_set_alpha(1)//Important line to reset the alpha back to 1.
    draw_set_blend_mode(bm_normal)//Important thing here! Stop to substract.
    
    surface_reset_target();
//}