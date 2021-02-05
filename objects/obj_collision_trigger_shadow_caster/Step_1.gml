/// @description Test collision

if (interaction_enabled)
{
	var _obj_index = asset_get_index(collision_obj);
	if (_obj_index > -1 and instance_exists(_obj_index))
	{
		if (distance_to_object(_obj_index) < interaction_distance)
		{
			if (can_trigger)
			{
				can_trigger = false;
				has_collision = true;
				if (on_collision >= 0)
					script_execute(on_collision);
			}
		}
		else if (!can_trigger)
		{
			can_trigger = true;
			has_collision = false;
			if (on_collision_end >= 0)
				script_execute(on_collision_end);
			
			if (one_time_only)
				instance_destroy();
		}
	}
}
