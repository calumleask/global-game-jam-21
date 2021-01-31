/// @desc Destroy light

if (in_world)
{
	light_remove_from_world(light);
	in_world = false;
}
light_destroy(light);