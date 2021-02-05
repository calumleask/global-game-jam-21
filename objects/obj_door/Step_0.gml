/// @description

if (animating)
{
	event_user(0);
	return;
}

if (!interaction_enabled)
{
	return;
}

if (interaction_hint_showing)
{
	if (keyboard_check_pressed(vk_space))
	{
		_ui_hide_space_prompt(false);
		interaction_hint_showing = false;
		open = true;
		
		// Turn any lights on
		if (array_length(on_open_enable_lights) > 0)
		{
			with (obj_light)
			{
				if (array_contains(other.on_open_enable_lights, tag))
				{
					disabled = false;
					on = true;
					fade_in = false;
				}
			}
		}
		
		event_user(0);
	}
}
