if(room_get_name(room) != "rm_MENU")
{
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 1 ) //UP
    {
        with (instance_nearest(112, 0, obj_block)) instance_destroy();
        with (instance_nearest(112, 0, obj_blockTop)) instance_destroy();    
             instance_create(112, 0, obj_door);
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 2 ) //DOWN
    {
        with (instance_nearest(112, 160, obj_block)) instance_destroy();
        with (instance_nearest(112, 160, obj_blockTop)) instance_destroy();    
             instance_create(112, 160, obj_door);    
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 3 ) //RIGHT
    {
        with (instance_nearest(224, 80, obj_block)) instance_destroy();
        with (instance_nearest(224, 80, obj_blockTop)) instance_destroy();    
             instance_create(224, 80, obj_door);   
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 4 ) //LEFT
    {
        with (instance_nearest(0, 80, obj_block)) instance_destroy();
        with (instance_nearest(0, 80, obj_blockTop)) instance_destroy();    
             instance_create(0, 80, obj_door);   
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 5 )
    {
        with (instance_nearest(112, 0, obj_block)) instance_destroy(); 
        with (instance_nearest(112, 0, obj_blockTop)) instance_destroy();     
             instance_create(112, 0, obj_door);
        with (instance_nearest(0, 80, obj_block)) instance_destroy();
        with (instance_nearest(0, 80, obj_blockTop)) instance_destroy();    
             instance_create(0, 80, obj_door); 
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 6 )
    {
        with (instance_nearest(112, 0, obj_block)) instance_destroy();
        with (instance_nearest(112, 0, obj_blockTop)) instance_destroy();    
             instance_create(112, 0, obj_door);  
        with (instance_nearest(112, 160, obj_block)) instance_destroy();
        with (instance_nearest(112, 160, obj_blockTop)) instance_destroy();  
             instance_create(112, 160, obj_door);           
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 7 )
    {
        with (instance_nearest(112, 0, obj_block)) instance_destroy();  
        with (instance_nearest(112, 0, obj_blockTop)) instance_destroy();    
             instance_create(112, 0, obj_door); 
        with (instance_nearest(224, 80, obj_block)) instance_destroy();
        with (instance_nearest(224, 80, obj_blockTop)) instance_destroy();    
             instance_create(224, 80, obj_door);      
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 8 )
    {
        with (instance_nearest(224, 80, obj_block)) instance_destroy();
        with (instance_nearest(224, 80, obj_blockTop)) instance_destroy();    
             instance_create(224, 80, obj_door);  
        with (instance_nearest(0, 80, obj_block)) instance_destroy();
        with (instance_nearest(0, 80, obj_blockTop)) instance_destroy();    
             instance_create(0, 80, obj_door); 
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 9 )
    {
        with (instance_nearest(0, 80, obj_block)) instance_destroy();
        with (instance_nearest(0, 80, obj_blockTop)) instance_destroy();    
             instance_create(0, 80, obj_door); 
        with (instance_nearest(112, 160, obj_block)) instance_destroy();
        with (instance_nearest(112, 160, obj_blockTop)) instance_destroy();    
             instance_create(112, 160, obj_door);         
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 10 )
    {
        with (instance_nearest(224, 80, obj_block)) instance_destroy();
        with (instance_nearest(224, 80, obj_blockTop)) instance_destroy();    
             instance_create(224, 80, obj_door); 
        with (instance_nearest(112, 160, obj_block)) instance_destroy();
        with (instance_nearest(112, 160, obj_blockTop)) instance_destroy();    
             instance_create(112, 160, obj_door);    
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 11 )
    {
        with (instance_nearest(112, 0, obj_block)) instance_destroy();  
        with (instance_nearest(112, 0, obj_blockTop)) instance_destroy();    
             instance_create(112, 0, obj_door);
        with (instance_nearest(224, 80, obj_block)) instance_destroy();
        with (instance_nearest(224, 80, obj_blockTop)) instance_destroy();    
             instance_create(224, 80, obj_door);  
        with (instance_nearest(0, 80, obj_block)) instance_destroy();
        with (instance_nearest(0, 80, obj_blockTop)) instance_destroy();    
             instance_create(0, 80, obj_door); 
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 12 )
    {
        with (instance_nearest(112, 0, obj_block)) instance_destroy();  
        with (instance_nearest(112, 0, obj_blockTop)) instance_destroy();    
             instance_create(112, 0, obj_door);
        with (instance_nearest(0, 80, obj_block)) instance_destroy();
        with (instance_nearest(0, 80, obj_blockTop)) instance_destroy();    
             instance_create(0, 80, obj_door); 
        with (instance_nearest(112, 160, obj_block)) instance_destroy();
        with (instance_nearest(112, 160, obj_blockTop)) instance_destroy();    
             instance_create(112, 160, obj_door);  
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 13 )
    {
        with (instance_nearest(112, 0, obj_block)) instance_destroy();  
        with (instance_nearest(112, 0, obj_blockTop)) instance_destroy();    
             instance_create(112, 0, obj_door);
        with (instance_nearest(224, 80, obj_block)) instance_destroy();
        with (instance_nearest(224, 80, obj_blockTop)) instance_destroy();    
             instance_create(224, 80, obj_door); 
        with (instance_nearest(112, 160, obj_block)) instance_destroy();
        with (instance_nearest(112, 160, obj_blockTop)) instance_destroy();    
             instance_create(112, 160, obj_door);  
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 14 )
    {
        with (instance_nearest(0, 80, obj_block)) instance_destroy();
        with (instance_nearest(0, 80, obj_blockTop)) instance_destroy();    
             instance_create(0, 80, obj_door); 
        with (instance_nearest(224, 80, obj_block)) instance_destroy();
        with (instance_nearest(224, 80, obj_blockTop)) instance_destroy();    
             instance_create(224, 80, obj_door); 
        with (instance_nearest(112, 160, obj_block)) instance_destroy();
        with (instance_nearest(112, 160, obj_blockTop)) instance_destroy();    
             instance_create(112, 160, obj_door);   
    }
    if (roomArray[xMapPlayer, yMapPlayer].doorLayout == 15 )
    {
        with (instance_nearest(112, 0, obj_block)) instance_destroy();  
        with (instance_nearest(112, 0, obj_blockTop)) instance_destroy();    
             instance_create(112, 0, obj_door);
        with (instance_nearest(0, 80, obj_block)) instance_destroy();
        with (instance_nearest(0, 80, obj_blockTop)) instance_destroy();    
             instance_create(0, 80, obj_door); 
        with (instance_nearest(224, 80, obj_block)) instance_destroy();
        with (instance_nearest(224, 80, obj_blockTop)) instance_destroy();    
             instance_create(224, 80, obj_door); 
        with (instance_nearest(112, 160, obj_block)) instance_destroy();
        with (instance_nearest(112, 160, obj_blockTop)) instance_destroy();    
             instance_create(112, 160, obj_door);   
    }
}