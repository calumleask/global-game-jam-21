/// @description Init

audio_emitter_id = audio_emitter_create();

audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(audio_emitter_id, 50, 150, 1.5);
audio_emitter_position(audio_emitter_id, x, y, 0);
audio_play_sound_on(audio_emitter_id, snd_water_drops, true, 10);
