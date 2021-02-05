/// @description Try pick up todo list

if (interacted)
{
	with (obj_ui_controller)
	{
		todo_list_enabled = true;
	}
	visible = false;
	_ui_hide_space_prompt(true);
	_wait(0, 1);
}
