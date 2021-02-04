/// @description hide the player

function _story_turn_on_flashlight()
{
	_print_dialogue_with_callback(40, 40, 2, "Ah better get ma torch oot...", _player_flashlight_on);
}
