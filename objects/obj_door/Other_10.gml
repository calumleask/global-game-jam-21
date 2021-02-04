/// @description Animate door opening


if (animation_progress < 1)
{
	animating = true;
	if (open)
	{
		var _seconds_passed = delta_time / 1000000;
		var _animation_amount_this_frame = _seconds_passed;
		animation_progress = clamp(animation_progress + _animation_amount_this_frame, 0, 1);
		
		var _open_amount = invert_open_direction ? (10 - sprite_width) : (sprite_width - 10);
		var _is_vertical = ((abs(image_angle) - 90) % 180 == 0);
		if (_is_vertical)
		{
			y = closed_y - animation_progress * _open_amount;
		}
		else
		{
			x = closed_x - animation_progress * _open_amount;
		}
		
		// update shadow caster
		polygon = polygon_from_instance(id);
		
		if (animation_progress == 1)
		{
			animating = false;
			interaction_enabled = false;
		}
	}
}
else
{
	animating = false;
}
