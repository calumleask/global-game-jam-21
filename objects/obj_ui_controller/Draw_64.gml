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
	
	
	draw_set_font(fnt_bloody);
	draw_set_halign(fa_left);
	
	for (var i = 0; i < ds_list_size(todo_items); ++i)
	{
		var _todo_item = ds_list_find_value(todo_items, i);
		
		var _checkbox_x = _todo_list_x + 45;
		var _checkbox_y = _todo_list_y + 122 + (66 * i);
		var _checkbox_subimage = i % 2 == 0 ? 0 : 1;
		draw_sprite(spr_checkbox, _checkbox_subimage, _checkbox_x, _checkbox_y);
		
		var _item_text_x = _todo_list_x + 82;
		var _item_text_y = _todo_list_y + 122 + (66 * i);
		draw_text_ext(_item_text_x, _item_text_y, ds_map_find_value(_todo_item, "text"), 25, 189);
		
		if (!ds_map_find_value(_todo_item, "done"))
		{
			var _checkmark_x = _checkbox_x + 4;
			var _checkmark_y = _checkbox_y - 5;
			draw_sprite(spr_checkmark, 0, _checkmark_x, _checkmark_y);
			
			var _scored_line_x = _item_text_x;
			var _scored_line_y = _item_text_y + 10;
			draw_line_width(_scored_line_x, _scored_line_y, _scored_line_x + 170, _scored_line_y, 2);
		}
	}
	
	draw_set_alpha(1);
	
	return;
}

// Map
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
	draw_text_ext_transformed(870, 583, "\"" + space_prompt_text + "\"",  30, 140, 1, 1, 355);
	draw_text_transformed(858, 643, press_space_text, 1, 1, 355);
	
	draw_set_alpha(1);
}
