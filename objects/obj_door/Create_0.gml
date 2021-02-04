/// @desc Create shadow caster polygon

event_inherited();

interaction_hint_showing = false;
animating = false;
animation_progress = 0;

closed_x = x;
closed_y = y;

if (open)
{
	interaction_enabled = false;
	var _open_amount = invert_open_direction ? (10 - sprite_width) : (sprite_width - 10);
	var _is_vertical = ((abs(image_angle) - 90) % 180 == 0);
	if (_is_vertical)
	{
		y = closed_y - _open_amount;
	}
	else
	{
		x = closed_x - _open_amount;
	}
}

polygon = polygon_from_instance(id);
