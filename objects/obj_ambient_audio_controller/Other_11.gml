/// @description Play more intense ambient music

if (audio_is_playing(ambient_playing))
{
	audio_stop_sound(ambient_playing);
}

ambient_playing = audio_play_sound(snd_ambience_2, 100, true);

if (fade_in)
{
	audio_sound_gain(ambient_playing, 0, 0)
	audio_sound_gain(ambient_playing, 1, 5000)
}
