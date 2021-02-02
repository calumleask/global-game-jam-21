
function hide_space_prompt(fade_out)
{
	if (instance_exists(obj_ui_controller))
	{
		if (!fade_out)
		{
			obj_ui_controller.space_prompt_alpha = 0;
		}
		obj_ui_controller.space_prompt_show = false;
	}
	else
	{
		show_debug_message("obj_ui_controller does not exist");
	}
}
