/// @description Switch light off / on

with (obj_light)
{
	if (array_contains(other.light_tags, tag))
	{
		if (other.type = "ON" and not on)
		{
			on = true;
		}
		else if (other.type = "OFF" and on)
		{
			on = false;
		}
	}
}
