/// @description Draw cut scene still

if (image == -1)
	return;

var _view_port_half_width = view_get_wport(0) * 0.5;
var _view_port_half_height = view_get_hport(0) * 0.5;

draw_set_alpha(fade);
	draw_sprite(image, 0, _view_port_half_width - 320, _view_port_half_height - 240);
draw_set_alpha(1);
