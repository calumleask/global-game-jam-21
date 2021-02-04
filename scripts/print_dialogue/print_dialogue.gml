/// @func _print_dialogue(x, y, sequence_name)
/// @arg {real} x
/// @arg {real} y
/// @arg {real} duration
/// @arg {string} dialogue

function _print_dialogue(_x, _y, _duration, _dialogue)
{
	with (obj_dialogue_controller)
	{
		ds_list_add(dialogue_lines_and_duration, [_dialogue, _duration]);
		dialogue_x = _x;
		dialogue_y = _y;
	}
}
