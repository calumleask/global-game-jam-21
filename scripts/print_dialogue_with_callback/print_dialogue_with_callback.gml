/// @func _print_dialogue(x, y, sequence_name)
/// @arg {real} x
/// @arg {real} y
/// @arg {real} duration
/// @arg {string} dialogue
/// @arg {expression} callback

function _print_dialogue_with_callback(_x, _y, _duration, _dialogue, _callback)
{
	with (obj_dialogue_controller)
	{
		ds_list_add(dialogue_lines_and_duration, [_dialogue, _duration, _callback]);
		dialogue_x = _x;
		dialogue_y = _y;
	}
}
