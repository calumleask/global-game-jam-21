/// @description

if (current_sequence >= 0)
{
	if (layer_sequence_is_finished(current_sequence))
	{
		layer_sequence_destroy(current_sequence);
		current_sequence = -1;
	}
}
