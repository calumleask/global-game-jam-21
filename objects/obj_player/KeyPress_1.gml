
if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up))
{
	hspeed = 0;
	vspeed = -walking_speed;
	image_angle = 0;
}

if (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down))
{
	hspeed = 0;
	vspeed = walking_speed;
	image_angle = 180;
}

if (keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left))
{
	vspeed = 0;
	hspeed = -walking_speed;
	image_angle = 90;
}

if (keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right))
{
	vspeed = 0;
	hspeed = walking_speed;
	image_angle = 270;
}