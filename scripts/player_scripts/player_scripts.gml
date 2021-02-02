
function player_turn_on_flashlight() {
	obj_player.torch_light = instance_create_depth(0, 0, 0, obj_player_torch_light);
	obj_player.ambient_light = instance_create_depth(0, 0, 0, obj_player_ambient_light);
}

function player_turn_off_flashlight(player) {
	if (obj_player.torch_light != noone)
	{
		instance_destroy(obj_player.torch_light);
		instance_destroy(obj_player.ambient_light);
		obj_player.torch_light = noone;
		obj_player.ambient_light = noone;
	}
}