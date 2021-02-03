/// @description Init

active = 0;
hover = 0;

script = -1;

if (!instance_exists(obj_button_focus_controller))
{
	instance_create_layer(0, 0, layer, obj_button_focus_controller);
}
