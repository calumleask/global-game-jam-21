/// @description Create UI

instance_deactivate_all(true);
instance_activate_object(obj_button_focus_controller);

var _button_height = 40;

var _view_port_hwidth = view_get_wport(0) * 0.5;
var _view_port_hheight = view_get_hport(0) * 0.5;

function continue_on_click()
{
	with (obj_menu_controller)
	{
		menu_open = false;
		event_user(1);
	}
}

function quit_on_click()
{
	room_goto_previous();
}

_create_button(_view_port_hwidth, _view_port_hheight - _button_height, 120, _button_height, "Continue", 0, continue_on_click);

_create_button(_view_port_hwidth, _view_port_hheight + _button_height, 60, _button_height, "Quit", 1, quit_on_click);
