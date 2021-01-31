/// @description Remove interactable once open

if (open and interactable_instance != noone)
{
	instance_destroy(interactable_instance);
	interactable_instance = noone;
}
