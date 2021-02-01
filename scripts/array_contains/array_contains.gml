
function array_contains(array, value)
{
	if (is_array(array))
	{
		for (i = 0; i < array_length(array); ++i)
		{
			if (array[i] = value)
			{
				return true;
			}
		}
	}
	else
	{
		show_debug_message("is not an array");
	}
	return false;
}