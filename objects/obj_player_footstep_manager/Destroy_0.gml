/// @description Stop footstep sound

if (sound_id != pointer_null and audio_is_playing(sound_id))
{
	audio_stop_sound(sound_id);
	sound_id = pointer_null;
}
