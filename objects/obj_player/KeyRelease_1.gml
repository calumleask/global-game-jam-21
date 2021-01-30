/// @description Stop Walking

walking = false;
if (keyboard_check(ord("W")) or keyboard_check(vk_up))
{
	walking = true;
}

if (keyboard_check(ord("S")) or keyboard_check(vk_down))
{
	walking = true;
}

if (keyboard_check(ord("A")) or keyboard_check(vk_left))
{
	walking = true;
}

if (keyboard_check(ord("D")) or keyboard_check(vk_right))
{
	walking = true;
}