/// @func _show_cut_scene_still(image, duration)
/// @arg {asset} _image
/// @arg {real} duration

function _show_cut_scene_still(_image, _duration)
{
	with (obj_cut_scene_still_controller)
	{
		image = _image;
		duration = _duration;
		fade = 0;
		time_displayed = 0;
	}
}
