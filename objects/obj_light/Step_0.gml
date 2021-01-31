/// @description Turn on / off

if (not on and in_world)
{
	light_remove_from_world(light);
	in_world = false;
}
else if (on and not in_world)
{
	light_add_to_world(light);
	in_world = true;
}
