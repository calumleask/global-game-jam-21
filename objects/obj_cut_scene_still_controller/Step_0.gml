/// @description Fade cut scene still

if (image == -1)
	return;

if (fade < 1 and time_displayed == 0)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = _seconds_passed;
	fade = clamp(fade + _fade_amount_this_frame, 0, 1);
}
else if (time_displayed < duration)
{
	var _seconds_passed = delta_time / 1000000;
	time_displayed = clamp(time_displayed + _seconds_passed, 0, duration);
}
else if (fade > 0)
{
	var _seconds_passed = delta_time / 1000000;
	var _fade_amount_this_frame = _seconds_passed;
	fade = clamp(fade - _fade_amount_this_frame, 0, 1);
}
else
{
	image = -1;
}
