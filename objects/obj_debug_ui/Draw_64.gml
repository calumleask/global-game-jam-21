/// @description

if (show_debug_ui)
{
	draw_set_font(fnt_bloody);
	draw_set_color($FFFFFF);
	draw_text(32, 32, "FPS = " + string(fps));
	draw_text(32, 64, "Room Speed = " + string(room_speed));
}
