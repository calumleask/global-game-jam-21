/// @description Init

direction = 0;
image_angle = direction;
direction_keys_down = ds_list_create();

footsteps_manager = noone;
input_enabled = false;
flashlight_on = false;

audio_listener_orientation(0, 1, 0, 0, 0, 1);

instance_create_depth(0, 0, 0, obj_player_flashlight_ambient);
instance_create_depth(0, 0, 0, obj_player_flashlight_spot);
