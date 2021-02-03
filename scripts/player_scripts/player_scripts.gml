
function _player_toggle_flashlight()
{
	flashlight_on = !flashlight_on;
	if (flashlight_on)
	{
		instance_create_depth(0, 0, 0, obj_player_flashlight_ambient);
		instance_create_depth(0, 0, 0, obj_player_flashlight_spot);
	}
	else
	{
		instance_destroy(obj_player_flashlight_ambient);
		instance_destroy(obj_player_flashlight_spot);
	}
}

function _player_flashlight_off()
{
	with (obj_player)
	{
		if (flashlight_on)
		{
			_player_toggle_flashlight();
		}
	}
}

function _player_flashlight_on()
{
	with (obj_player)
	{
		if (!flashlight_on)
		{
			_player_toggle_flashlight();
		}
	}
}
