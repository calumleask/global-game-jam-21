/// @func _create_button(x, y, width, height, text, on_click)
/// @arg {real} x
/// @arg {real} y
/// @arg {real} width
/// @arg {real} height
/// @arg {string} text
/// @arg {string} on_click
/// @returns {real} The id of the button

function _create_button(_x, _y, _width, _height, _text, _on_click)
{
	var _button = instance_create_layer(_x, _y, layer, obj_button);
	
	with (_button)
	{
		width = _width;
		height = _height;
		text = _text;
		on_click = _on_click;
	}
	return _button
}