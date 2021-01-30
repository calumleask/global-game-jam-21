/// @description Start Walking

if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up))
{
	walking = true;
	direction = 90;
}

if (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down))
{
	walking = true;
	direction = 270;
}

if (keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left))
{
	walking = true;
	direction = 180;
}

if (keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right))
{
	walking = true;
	direction = 0;
}