/// @description Init

direction = 180;
image_angle = direction;
direction_keys_down = ds_list_create();

footsteps_manager = pointer_null;
torch_light = instance_create_depth(0, 0, 0, obj_player_torch_light);
ambient_light = instance_create_depth(0, 0, 0, obj_player_ambient_light);

