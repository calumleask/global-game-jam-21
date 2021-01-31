
function show_space_prompt(text)
{
	if (instance_exists(obj_ui_manager))
	{
		obj_ui_manager.space_prompt_text = text;
		obj_ui_manager.space_prompt_show = true;
	}
	else
	{
		show_debug_message("obj_ui_manager does not exist");
	}
}
