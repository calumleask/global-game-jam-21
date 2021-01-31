/// @description Handle door opening

if (door_id != 0)
{
	with (door_id)
	{
		if (!open and keyboard_check_pressed(vk_space))
		{
			open = true;
		}
	}
}
