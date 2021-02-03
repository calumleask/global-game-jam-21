/// @description Try trigger

if (active)
{
	var _obj_index = asset_get_index(collision_obj);
	if (_obj_index > -1 and instance_exists(_obj_index))
	{
		if (place_meeting(x, y, _obj_index))
		{
			if (on_collision >= 0)
			{
				script_execute(on_collision);
				instance_destroy();
			}
			else
			{
				show_debug_message("obj_one_time_trigger does not have on_collision callback set");
			}
		}
	}
}
