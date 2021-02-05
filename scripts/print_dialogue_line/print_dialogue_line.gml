/// @func _print_dialogue_line(x, y, duration, line)
/// @arg {real} x
/// @arg {real} y
/// @arg {real} duration
/// @arg {string} line

function _print_dialogue_line(_duration, _line)
{
	with (obj_dialogue_controller)
	{
		ds_list_add(dialogue_lines_and_duration, [_line, _duration]);
	}
}
