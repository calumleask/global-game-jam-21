/// @description Create UI

var _view_port_width = view_get_wport(0);
var _view_port_height = view_get_hport(0);

instance_deactivate_all(true);
paused_surf = surface_create(_view_port_width, _view_port_height);
surface_set_target(paused_surf);
draw_surface(application_surface, 0, 0);
surface_reset_target();

var _button_height = 40;

var _view_port_hwidth = _view_port_width * 0.5;
var _view_port_hheight = _view_port_height * 0.5;

_create_button(_view_port_hwidth, _view_port_hheight - _button_height, 120, _button_height, "Continue", menu_quit_on_click)

_create_button(_view_port_hwidth, _view_port_hheight + _button_height, 60, _button_height, "Quit", menu_quit_on_click)
