
function _player_toggle_flashlight()
{
	flashlight_on = !flashlight_on;
	if (flashlight_on)
	{
		_player_flashlight_on(false);
	}
	else
	{
		_player_flashlight_off(false);
	}
}

function _player_flashlight_off(_fade)
{
	with (obj_player)
	{
		flashlight_on = false;
		with(obj_player_flashlight_ambient)
		{
			on = false;
			fade_out = _fade;
		}
		with(obj_player_flashlight_spot)
		{
			on = false;
			fade_out = _fade;
		}
	}
}

function _player_flashlight_on(_fade)
{
	with (obj_player)
	{
		flashlight_on = true;
		with(obj_player_flashlight_ambient)
		{
			on = true;
			fade_in = _fade;
		}
		with(obj_player_flashlight_spot)
		{
			on = true;
			fade_in = _fade;
		}
	}
}
