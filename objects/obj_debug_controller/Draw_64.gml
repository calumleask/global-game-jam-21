/// @description

if (show_debug_ui)
{
	draw_set_font(fnt_bloody);
	draw_set_color($FFFFFF);
	draw_text(20, 20, "FPS = " + string(fps));
	draw_text(20, 60, "REAL FPS = " + string(fps_real));
	draw_text(20, 100, "ROOM SPEED = " + string(room_speed));
}
