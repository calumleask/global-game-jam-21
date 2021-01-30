/// @description Remove movement keys from list

if (keyboard_check_released(ord("W")))
{
	var pos = ds_list_find_index(direction_keys_down, "W");
	ds_list_delete(direction_keys_down, pos);
}

if (keyboard_check_released(ord("S")))
{
	var pos = ds_list_find_index(direction_keys_down, "S");
	ds_list_delete(direction_keys_down, pos);
}

if (keyboard_check_released(ord("A")))
{
	var pos = ds_list_find_index(direction_keys_down, "A");
	ds_list_delete(direction_keys_down, pos);
}

if (keyboard_check_released(ord("D")))
{
	var pos = ds_list_find_index(direction_keys_down, "D");
	ds_list_delete(direction_keys_down, pos);
}

if (keyboard_check_released(vk_up))
{
	var pos = ds_list_find_index(direction_keys_down, "vk_up");
	ds_list_delete(direction_keys_down, pos);
}

if (keyboard_check_released(vk_down))
{
	var pos = ds_list_find_index(direction_keys_down, "vk_down");
	ds_list_delete(direction_keys_down, pos);
}

if (keyboard_check_released(vk_left))
{
	var pos = ds_list_find_index(direction_keys_down, "vk_left");
	ds_list_delete(direction_keys_down, pos);
}

if (keyboard_check_released(vk_right))
{
	var pos = ds_list_find_index(direction_keys_down, "vk_right");
	ds_list_delete(direction_keys_down, pos);
}
