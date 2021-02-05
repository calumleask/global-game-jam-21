/// @func _print_dialogue_line_with_callback(duration, line, callback)
/// @arg {real} duration
/// @arg {string} line
/// @arg {expression} callback

function _print_dialogue_line_with_callback(_duration, _line, _callback)
{
	with (obj_dialogue_controller)
	{
		ds_list_add(dialogue_lines_and_duration, [_line, _duration, _callback]);
	}
}
