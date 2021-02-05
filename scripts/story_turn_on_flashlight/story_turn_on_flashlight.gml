/// @description hide the player

function _story_turn_on_flashlight()
{
	_print_dialogue_line(1, "I better get ma torch oot...");
	_set_callback_after_dialogue(_player_flashlight_on);
}
