/// @description hide the player

function _story_enable_input_on_office_door()
{
	with (obj_door)
	{
		if (tag == "office_door")
		{
			interaction_enabled = true;
		}
	}
}
