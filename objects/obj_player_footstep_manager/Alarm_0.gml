/// @description Play random footstep

if (sound_id != pointer_null and audio_is_playing(sound_id))
{
	audio_stop_sound(sound_id);
}

sound_id = choose(
	snd_footstep_1,
	snd_footstep_2,
	snd_footstep_3,
	snd_footstep_4,
	snd_footstep_5,
	snd_footstep_6,
	snd_footstep_7,
	snd_footstep_8
);

var walking_speed = obj_player.walking_speed;
if (keyboard_check(vk_shift))
{
	walking_speed =	6;
}

audio_play_sound(sound_id, 10, false);
alarm_set(0, 0.8 * room_speed / (walking_speed * obj_player.walking_anmiation_speed));
