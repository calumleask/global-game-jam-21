/// @description Try pick up map

if (interacted)
{
	with (obj_ui_controller)
	{
		map_enabled = true;
	}
	_ui_hide_space_prompt(true);
	_story_enable_input_on_office_door();
	instance_destroy();
}
