/// @function _wait(alarm, seconds);
/// @param {integer} alarm
/// @param {real} seconds

function _wait(_alarm, _seconds)
{
	alarm[_alarm] = _seconds * room_speed;
}
