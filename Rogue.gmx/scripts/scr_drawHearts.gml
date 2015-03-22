for(i = 0; i < global.playerHP; i++)
{
    draw_sprite_ext(spr_heart, image_index, x + 725 + i * 35, y + 50, image_xscale * 3, image_yscale * 3, 0, c_white, 1)
}
