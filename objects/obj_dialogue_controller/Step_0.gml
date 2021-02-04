/// @description Continue dialogue

var _num_dialogue_lines = ds_list_size(dialogue_lines_and_duration);
if (_num_dialogue_lines == 0)
{
	show_dialogue = false;
	return;
}
else
{
	show_dialogue = true;
}

var _speed_up = 1;
if (keyboard_check(vk_space))
{
	_speed_up = 10;
}

// Continue fading in new line.
if (show_dialogue and new_line_fade < 1)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = _speed_up * _seconds_passed / fade_in_time;
	new_line_fade = clamp(new_line_fade, new_line_fade + _fade_amount_this_frame, 1);
}
// Wait the duration before showing the next line.
else if (next_line_wait < 1)
{
	if (next_line_wait == 0)
	{
		var _value = ds_list_find_value(dialogue_lines_and_duration, bottom_line_index);
		if (array_length(_value) == 3)
		{
			var _callback = _value[2];
			if (_callback)
			{
				script_execute(_callback);
			}
		}
	}
	
	if (bottom_line_index - top_line_index >= max_lines_to_show)
	{
		top_line_index += 1;
	}
	
	show_dialogue = true;
	var _duration = ds_list_find_value(dialogue_lines_and_duration, bottom_line_index)[1];
	var _seconds_passed = delta_time / 1000000;
	var _wait_amount_this_frame = _speed_up * _seconds_passed / _duration;
	next_line_wait = clamp(next_line_wait, next_line_wait + _wait_amount_this_frame, 1);
}
// Do we have a new line to display.
else if (bottom_line_index < _num_dialogue_lines - 1)
{
	bottom_line_index += 1;
	new_line_fade = 0;
	next_line_wait = 0;
}
else if(all_fade_out > 0)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = _speed_up * _seconds_passed / 1;
	all_fade_out = clamp(new_line_fade, 0, all_fade_out - _fade_amount_this_frame);
}
else
{
	// Reset.
	ds_list_clear(dialogue_lines_and_duration);
	show_dialogue = false;
	new_line_fade = 0;
	next_line_wait = 0;
	all_fade_out = 1;
	bottom_line_index = 0;
	top_line_index = 0;
}
