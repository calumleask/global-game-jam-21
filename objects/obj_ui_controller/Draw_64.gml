/// @description

// Todo list
if (todo_alpha > 0)
{
	var _view_port_half_width = view_get_wport(0) * 0.5;
	var _todo_list_x = _view_port_half_width - sprite_get_width(spr_todo_list) * 0.5;
	var _todo_list_y = view_get_hport(0) * 0.5 - sprite_get_height(spr_todo_list) * 0.5;
	
	draw_set_color($000);
	draw_set_alpha(todo_alpha);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	
	draw_sprite(spr_todo_list, 0, _todo_list_x, _todo_list_y);
	
	draw_set_font(fnt_bloody_medium);
	draw_text(_view_port_half_width, _todo_list_y + 70, "TO DO");
	draw_line_width(_view_port_half_width - 31, _todo_list_y + 101, _view_port_half_width + 31, _todo_list_y + 101, 3);
	
	draw_set_alpha(1);
	
	return;
}

// Todo list
if (map_alpha > 0)
{
	var _map_x = view_get_wport(0) * 0.5 - sprite_get_width(spr_map) * 0.5;
	var _map_y = view_get_hport(0) * 0.5 - sprite_get_height(spr_map) * 0.5;
	
	draw_set_alpha(map_alpha);
	draw_sprite(spr_map, 0, _map_x, _map_y);
	draw_set_alpha(1);
	
	return;
}

// Postit hint
if (space_prompt_alpha > 0)
{
	draw_set_font(fnt_bloody);
	draw_set_color(ui_text_color);
	draw_set_alpha(space_prompt_alpha);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_sprite_ext(spr_ui_postit, 0, 733, 468, 1, 1, 0, noone, space_prompt_alpha);
	draw_text_transformed(870, 583, "\"" + space_prompt_text + "\"",  1, 1, 355);
	draw_text_transformed(858, 643, press_space_text, 1, 1, 355);
	
	draw_set_alpha(1);
}
