
function _story_play_intense_music()
{
	with(obj_ambient_audio_controller)
	{
		fade_in = false;
		event_user(1);
	}
}
