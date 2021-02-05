/// @func _set_callback_after_dialogue()
/// @arg {expression} callback

function _set_callback_after_dialogue(_callback)
{
	with (obj_dialogue_controller)
	{
		script_after_dialogue = _callback;
	}
}
