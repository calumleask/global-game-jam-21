/// @desc Turn red wall light on

obj_red_wall_light.on = true;
_player_flashlight_on();
obj_player.input_enabled = true;
_complete_todo_item("basement_door_1");
