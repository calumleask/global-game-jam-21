/// @desc Show dialogue

_print_dialogue_line(2, "Basement’s locked, as usual.");
_print_dialogue_line(3, "Don’t think ah’ve seen it open the whole time ah’ve been here.");
_print_dialogue_line(3, "Probably for the best, gies me a bad feeling it does.");
function _callback()
{
	_ui_input_enable();
}
_set_callback_after_dialogue(_callback);
