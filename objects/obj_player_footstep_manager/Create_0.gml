/// @description Play footstep sound

footstep_number = random_int(1, 8);
show_debug_message(footstep_number);

audio_play_sound(snd_footstep_1, 10, true);
