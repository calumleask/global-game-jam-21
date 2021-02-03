/// @description Add movement keys to list

if (!input_enabled)
{
	return;
}

//if (keyboard_check_pressed(ord("E")))
//{
//	_player_toggle_flashlight();
//}

if (keyboard_check_pressed(ord("W")))
{
	ds_list_add(direction_keys_down, "W");
}

if (keyboard_check_pressed(ord("S")))
{
	ds_list_add(direction_keys_down, "S");
}

if (keyboard_check_pressed(ord("A")))
{
	ds_list_add(direction_keys_down, "A");
}

if (keyboard_check_pressed(ord("D")))
{
	ds_list_add(direction_keys_down, "D");
}

if (keyboard_check_pressed(vk_up))
{
	ds_list_add(direction_keys_down, "vk_up");
}

if (keyboard_check_pressed(vk_down))
{
	ds_list_add(direction_keys_down, "vk_down");
}

if (keyboard_check_pressed(vk_left))
{
	ds_list_add(direction_keys_down, "vk_left");
}

if (keyboard_check_pressed(vk_right))
{
	ds_list_add(direction_keys_down, "vk_right");
}
