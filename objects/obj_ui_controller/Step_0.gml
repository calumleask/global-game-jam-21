/// @description Animate UI

// Postit hints
if (space_prompt_show and space_prompt_alpha < 1)
{
	space_prompt_alpha += 1 / (room_speed * ui_fade_duration);
	if (space_prompt_alpha > 1)
	{
		space_prompt_alpha = 1;
	}
}
else if (!space_prompt_show and space_prompt_alpha > 0)
{
	space_prompt_alpha -= 1 / (room_speed * ui_fade_duration);
	if (space_prompt_alpha < 0)
	{
		space_prompt_alpha = 0;
	}
}


// Todo list
var _show_todo_list = keyboard_check(ord("Q")) and map_alpha == 0;

if (_show_todo_list and todo_alpha < 1)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = 5 * _seconds_passed;
	todo_alpha = clamp(todo_alpha + _fade_amount_this_frame, 0, 1);
}
else if (!_show_todo_list and todo_alpha > 0)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = 10 * _seconds_passed;
	todo_alpha = clamp(todo_alpha - _fade_amount_this_frame, 0, 1);
}

// Map
var _show_map = keyboard_check(ord("E")) and todo_alpha == 0;

if (_show_map and map_alpha < 1)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = 5 * _seconds_passed;
	map_alpha = clamp(map_alpha + _fade_amount_this_frame, 0, 1);
}
else if (!_show_map and map_alpha > 0)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = 10 * _seconds_passed;
	map_alpha = clamp(map_alpha - _fade_amount_this_frame, 0, 1);
}
