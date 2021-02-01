/// @func _move(speed, direction)
/// @param {real} speed
/// @param {real} direction
/// @return {boolean} Whether movement happend or not

function _move(_spd, _dir)
{

	var xtarg = x+lengthdir_x(_spd,_dir);
	var ytarg = y+lengthdir_y(_spd,_dir);
 
	if place_free(xtarg,ytarg)
	{
	    x = xtarg;
	    y = ytarg;
		return true;
	}
	return false;
}

/// @func _move_with_slipping(speed, direction, degrees_sweep_angle)
/// @param {real} speed
/// @param {real} direction
/// @param {real} degrees_sweep_angle
/// @return {boolean} Whether movement happend or not

function _move_with_slipping(_spd, _dir, _swp_ang)
{

	if (_move(_spd, _dir))
	{
		return true;
	}
	else
	{
	    var sweep_interval = 10;

	    for (var angle = sweep_interval; angle <= _swp_ang; angle += sweep_interval)
		{
	        for (var multiplier = -1; multiplier <= 1; multiplier += 2)
			{
	            var angle_to_check = _dir+angle*multiplier;
	            xtarg = x+lengthdir_x(_spd, angle_to_check);
	            ytarg = y+lengthdir_y(_spd, angle_to_check);
	            if place_free(xtarg, ytarg)
				{
	                x = xtarg;
	                y = ytarg;
	                return true;
	            }
	        }
	    }
	}
	return false;
}
