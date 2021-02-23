/// @desc Turn red wall light on

obj_player.direction = 90;					// Player facing door
obj_red_wall_light.on = true;
obj_red_wall_light.fade_in = true;
_player_flashlight_on(true);
obj_player.input_enabled = true;
_complete_todo_item("basement_door_1");
