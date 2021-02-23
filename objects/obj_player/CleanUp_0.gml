/// @description Remove torch

if (flashlight_on)
{
	instance_destroy(obj_player_flashlight_ambient);
	instance_destroy(obj_player_flashlight_spot);
}
