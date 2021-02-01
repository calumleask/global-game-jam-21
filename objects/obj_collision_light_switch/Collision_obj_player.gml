/// @description Switch light off / on

with (obj_light)
{
	if (array_contains(other.light_tags, tag))
	{
		if (other.type = "ON" and not on)
		{
			on = true;
			fade_in = true;
		}
		else if (other.type = "OFF" and on)
		{
			on = false;
			fade_out = true;
		}
	}
}
