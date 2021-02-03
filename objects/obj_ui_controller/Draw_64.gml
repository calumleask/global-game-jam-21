/// @description

draw_set_font(fnt_bloody);

if (space_prompt_alpha > 0)
{
	draw_set_color(ui_text_color);
	draw_set_alpha(space_prompt_alpha);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_sprite_ext(spr_ui_postit, 0, 733, 468, 1, 1, 0, noone, space_prompt_alpha);
	draw_text_transformed(870, 583, "\"" + space_prompt_text + "\"",  1, 1, 355);
	draw_text_transformed(858, 643, press_space_text, 1, 1, 355);
	
	draw_set_alpha(1);
}
