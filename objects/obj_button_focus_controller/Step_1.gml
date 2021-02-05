/// @description

if (instance_number(obj_button) == 0)
{
	instance_destroy();
}

if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")))
{
	var _old_active_index = active_index;
	with (obj_button)
	{
		if (index == other.active_index + 1)
		{
			active = true;
			other.active_index = index;
			break;
		}
	}
	// if active is unchanged
	if (_old_active_index == active_index)
	{
		with (obj_button)
		{
			if (index == 0)
			{
				active = true;
				other.active_index = index;
				break;
			}
		}
	}
	// deactivate old active if it has changed
	if (_old_active_index != active_index)
	{
		with (obj_button)
		{
			if (index == _old_active_index)
			{
				active = false;
				break;
			}
		}
	}
}
else if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")))
{
	var _old_active_index = active_index;
	with (obj_button)
	{
		if (index == other.active_index - 1)
		{
			active = true;
			other.active_index = index;
			break;
		}
	}
	// if active is unchanged
	if (_old_active_index == active_index)
	{
		// Get the max index
		var _max_index = active_index;
		with (obj_button)
		{
			_max_index = max(index, _max_index);
		}
		
		with (obj_button)
		{
			if (index == _max_index)
			{
				active = true;
				other.active_index = index;
				break;
			}
		}
	}
	// deactivate old active if it has changed
	if (_old_active_index != active_index)
	{
		with (obj_button)
		{
			if (index == _old_active_index)
			{
				active = false;
				break;
			}
		}
	}
}
	