
function _ui_input_enable()
{
	with(obj_ui_controller)
		force_hide = false;
}

function _ui_input_disable()
{
	with(obj_ui_controller)
		force_hide = true;
}
