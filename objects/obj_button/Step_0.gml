/// @description

var _hover = button_get_hover();
var _click = _hover and mouse_check_button_pressed(mb_left);

hover = _hover and active ? 1 : lerp(hover, _hover, 0.1);

if (_hover)
{
	with (obj_button_focus_controller)
	{
		if (active_index > -1)
		{
			active_index = -1;
			with (obj_button)
			{
				active = false;
			}
		}
	}
}

if (on_click >= 0)
{
	if (_click)
	{
		script_execute(on_click);
	}
	else if ((active or _hover) and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space)))
	{
		script_execute(on_click);
	}
}
