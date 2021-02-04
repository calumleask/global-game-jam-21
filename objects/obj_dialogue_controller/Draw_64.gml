/// @description Draw dialogue

if (show_dialogue)
{
	draw_set_font(fnt_courier);
	draw_set_color($FFFFFF);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	for (var i = top_line_index; i <= bottom_line_index; ++i)
	{
		var _dialogue = ds_list_find_value(dialogue_lines_and_duration, i)[0];
		var _y = dialogue_y + 30 * (i - top_line_index);
		
		// showing an extra line while we fade in the new line
		if (bottom_line_index - top_line_index == max_lines_to_show)
		{
			_y -= 30 * new_line_fade;
			
			if (i == top_line_index)
			{
				draw_set_alpha(1 - new_line_fade);
					draw_text(dialogue_x, _y, _dialogue);
				draw_set_alpha(1);
				continue;
			}
		}
		
		if (i == bottom_line_index)
			draw_set_alpha(new_line_fade * all_fade_out);
		else
			draw_set_alpha(all_fade_out);
			
		draw_text(dialogue_x, _y, _dialogue);
		draw_set_alpha(1);
	}
}
