/// @desc Turn red wall light off

obj_red_wall_light.on = false;
_player_flashlight_off(true);
_ui_input_disable();
obj_player.input_enabled = false;
