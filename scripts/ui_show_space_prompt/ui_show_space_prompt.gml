
function _ui_show_space_prompt(text)
{
	if (instance_exists(obj_ui_controller))
	{
		obj_ui_controller.space_prompt_text = text;
		obj_ui_controller.space_prompt_show = true;
	}
	else
	{
		show_debug_message("obj_ui_controller does not exist");
	}
}
