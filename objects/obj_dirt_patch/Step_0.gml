/// @description 

if (sweeping)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = 1 * _seconds_passed;
	image_alpha = clamp(image_alpha - _fade_amount_this_frame, 0, 1);
	if (image_alpha == 0)
	{
		_ui_input_enable();
		obj_player.input_enabled = true;
		if (instance_number(obj_dirt_patch) == 1)
		{
			_story_start_timeline_gym_swept();
		}
		instance_destroy();
	}
	return;	
}

if (interaction_hint_showing)
{
	if (keyboard_check_pressed(vk_space))
	{
		_ui_hide_space_prompt(false);
		interaction_hint_showing = false;
		sweeping = true;
		// TODO: animation
		_ui_input_disable();
		obj_player.input_enabled = false;
	}
}
