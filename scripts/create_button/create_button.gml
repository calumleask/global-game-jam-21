/// @func _create_button(x, y, width, height, text, index, on_click)
/// @arg {real} x
/// @arg {real} y
/// @arg {real} width
/// @arg {real} height
/// @arg {string} text
/// @arg {real} index
/// @arg {string} on_click
/// @returns {real} The id of the button

function _create_button(_x, _y, _width, _height, _text, _index, _on_click)
{
	var _button = instance_create_depth(_x, _y, depth - 1000, obj_button);
	
	with (_button)
	{
		width = _width;
		height = _height;
		text = _text;
		index = _index;
		on_click = _on_click;
	}
	return _button;
}