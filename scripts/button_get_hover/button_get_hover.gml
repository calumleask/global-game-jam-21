
function button_get_hover() {
	var _mouse_x = device_mouse_x_to_gui(0);
	var _mouse_y = device_mouse_y_to_gui(0);
	return point_in_rectangle(_mouse_x, _mouse_y, x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5);
}