
function hide_space_prompt(fade_out)
{
	if (instance_exists(obj_ui_manager))
	{
		if (!fade_out)
		{
			obj_ui_manager.space_prompt_alpha = 0;
		}
		obj_ui_manager.space_prompt_show = false;
	}
	else
	{
		show_debug_message("obj_ui_manager does not exist");
	}
}
