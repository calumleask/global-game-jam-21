/// @description Animate UI

// Postit hints
if (space_prompt_show and space_prompt_alpha < 1)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = _seconds_passed / ui_fade_duration;
	space_prompt_alpha = clamp(space_prompt_alpha + _fade_amount_this_frame, 0, 1);
}
else if (!space_prompt_show and space_prompt_alpha > 0)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = _seconds_passed;
	var _fade_amount_this_frame = 10 * _seconds_passed;
	space_prompt_alpha = clamp(space_prompt_alpha - _fade_amount_this_frame, 0, 1);
}


// Todo list
var _show_todo_list = keyboard_check(ord("Q")) and map_alpha == 0 and todo_list_enabled;

if (_show_todo_list and todo_alpha < 1)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = _seconds_passed / ui_fade_duration;
	todo_alpha = clamp(todo_alpha + _fade_amount_this_frame, 0, 1);
}
else if (!_show_todo_list and todo_alpha > 0)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = 10 * _seconds_passed;
	todo_alpha = clamp(todo_alpha - _fade_amount_this_frame, 0, 1);
}

// Map
var _show_map = keyboard_check(ord("E")) and todo_alpha == 0 and map_enabled;

if (_show_map and map_alpha < 1)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = _seconds_passed / ui_fade_duration;
	map_alpha = clamp(map_alpha + _fade_amount_this_frame, 0, 1);
}
else if (!_show_map and map_alpha > 0)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = 10 * _seconds_passed;
	map_alpha = clamp(map_alpha - _fade_amount_this_frame, 0, 1);
}
