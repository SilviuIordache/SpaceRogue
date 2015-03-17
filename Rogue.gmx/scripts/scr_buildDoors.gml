leftDoor  = argument0;
rightDoor = argument1;
upDoor    = argument2;
downDoor  = argument3;

if ( leftDoor == 1 )
{
    with (instance_nearest(0, 80, obj_block)) instance_destroy();
    with (instance_nearest(0, 80, obj_blockTop)) instance_destroy();    
    instance_create(0, 80, obj_LockedDoor)
    instance_create(0, 80, obj_door); 
}
if ( rightDoor == 1 )
{
    with (instance_nearest(224, 80, obj_block)) instance_destroy();
    with (instance_nearest(224, 80, obj_blockTop)) instance_destroy();    
    instance_create(224, 80, obj_LockedDoor)
    instance_create(224, 80, obj_door);
}
if ( upDoor == 1 )
{
    with (instance_nearest(112, 0, obj_block)) instance_destroy();
    with (instance_nearest(112, 0, obj_blockTop)) instance_destroy();    
    instance_create(112, 0, obj_door);
    instance_create(112, 0, obj_LockedDoor)
}
if ( downDoor == 1 )
{
    with (instance_nearest(112, 160, obj_block)) instance_destroy();
    with (instance_nearest(112, 160, obj_blockTop)) instance_destroy();    
    instance_create(112, 160, obj_door);  
    instance_create(112, 160, obj_LockedDoor);
}


