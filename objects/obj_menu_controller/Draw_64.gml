/// @description

if (menu_open)
{
	draw_surface(paused_surf, 0, 0);
	draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
}
