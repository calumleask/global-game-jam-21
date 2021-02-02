/// @description Init

direction = 0;
image_angle = direction;
direction_keys_down = ds_list_create();

footsteps_manager = noone;
torch_light = noone;
ambient_light = noone;

audio_listener_orientation(0, 1, 0, 0, 0, 1);
