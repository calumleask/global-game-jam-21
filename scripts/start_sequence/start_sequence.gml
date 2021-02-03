/// @func _start_sequence(x, y, sequence_name)
/// @arg {real} x
/// @arg {real} y
/// @arg {string} sequence
/// @returns {real} The id of the sequence

function _start_sequence(_x, _y, _sequence_name)
{
	var _sequence = layer_sequence_create(layer, _x, _y, _sequence_name);
	
	with (obj_sequence_controller)
	{
		current_sequence = _sequence;
	}
	
	layer_sequence_play(_sequence);
	return _sequence;
}
