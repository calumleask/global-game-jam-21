/// @description Remove interactable once open

if (open and visible)
{
	if (interactable_instance != noone)
	{
		instance_destroy(interactable_instance);
		interactable_instance = noone;
	}
	instance_destroy(id);
}
