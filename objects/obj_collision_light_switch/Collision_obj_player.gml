/// @description Switch light off / on

var light_instance = instance_position(light_x, light_y, obj_light);
if (light_instance != noone)
{
	if (type = "ON" and not light_instance.on)
	{
		light_instance.on = true;
	}
	else if (type = "OFF" and light_instance.on)
	{
		light_instance.on = false;
	}
}
