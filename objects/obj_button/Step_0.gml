/// @description

var _hover = button_get_hover();
var _click = _hover and mouse_check_button_pressed(mb_left);

hover = lerp (hover, _hover, 0.1);

if (_click and on_click >= 0)
{
	script_execute(on_click);
}
