Kick = argument0;

KickDirection = image_angle + point_direction(x, y, other.x, other.y) + 180

if (!place_meeting(x + lengthdir_x(1, KickDirection), 
                   y + lengthdir_y(1, KickDirection), 
                   obj_block))
{
    x += lengthdir_x(Kick, KickDirection);
    y += lengthdir_y(Kick, KickDirection);
}
