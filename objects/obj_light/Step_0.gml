/// @description Turn on / off

if (disabled)
{
	if (in_world)
	{
		light_remove_from_world(light);
		in_world = false;
	}
}
else
{
	// Remove from world if not on
	if (not on and in_world)
	{
		if (fade_out and intensity_multiplier > 0)
		{
			var seconds_passed = delta_time / 1000000;
			var fade_amount_this_frame = 1 * seconds_passed;
			intensity_multiplier = clamp(intensity_multiplier, 0, intensity_multiplier - fade_amount_this_frame);
			show_debug_message(intensity_multiplier);
			light[| eLight.Intensity] = Light_Intensity * intensity_multiplier;
		}
		else
		{
			light_remove_from_world(light);
			in_world = false;
		}
	}
	else if (on and not in_world)
	{
		if (not fade_in)
		{
			intensity_multiplier = 1;
			light[| eLight.Intensity] = Light_Intensity;
		}
		else
		{
			intensity_multiplier = 0;
			light[| eLight.Intensity] = 0;
		}
	
		light_add_to_world(light);
		in_world = true;
	}

	if (on and intensity_multiplier < 1 and in_world)
	{
		var seconds_passed = delta_time / 1000000;
		var fade_amount_this_frame = 1 * seconds_passed;
		intensity_multiplier = clamp(intensity_multiplier, intensity_multiplier + fade_amount_this_frame, 1);
		show_debug_message(intensity_multiplier);
		light[| eLight.Intensity] = Light_Intensity * intensity_multiplier;
	}
}
