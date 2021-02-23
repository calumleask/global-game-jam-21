
function _story_turn_on_flashlight()
{
	function _callback() {
		_player_flashlight_on(false)
	}
	_print_dialogue_line(1, "I better get ma torch oot...");
	_set_callback_after_dialogue(_callback);
}
