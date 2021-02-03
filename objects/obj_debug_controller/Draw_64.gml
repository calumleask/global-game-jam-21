/// @description

if (show_debug_ui)
{
	draw_set_font(fnt_courier);
	draw_set_color($FFFFFF);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(20, 20, "FPS = " + string(fps));
	draw_text(20, 60, "REAL FPS = " + string(fps_real));
	draw_text(20, 100, "ROOM SPEED = " + string(room_speed));
}
