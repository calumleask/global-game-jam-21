/// @description Prevent pass through
// We do nothing, just need the event

if (walking and other.solid)
{
	// Only end animation if on specific frame
	if (floor(image_index) = 0 or floor(image_index) = 4)
	{
		image_speed = 0;
	}
}

if (footsteps_manager != noone)
{
	instance_destroy(footsteps_manager);
	footsteps_manager = noone;
}
