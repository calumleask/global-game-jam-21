/// @description Prevent pass through
// We do nothing, just need the event

if (walking)
{
	// Only end animation if on specific frame
	if (floor(image_index) != 1 and floor(image_index) != 4)
	{
		image_speed = 0;
	}
}

if (footsteps_manager != pointer_null)
{
	instance_destroy(footsteps_manager);
	footsteps_manager = pointer_null;
}
