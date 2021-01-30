/// @desc Move with player

var reposition_torch = false;
if (direction != obj_player.image_angle)
{
	direction = obj_player.image_angle;
	reposition_torch = true;
}

if (x != obj_player.x)
{
	x = obj_player.x;
	reposition_torch = true;
}

if (y != obj_player.y)
{
	y = obj_player.y;
	reposition_torch = true;
}

if (reposition_torch)
{
	light[| eLight.X] = x + (28 * dcos(obj_player.image_angle));
	light[| eLight.Y] = y - (28 * dsin(obj_player.image_angle));
	light[| eLight.Direction] = obj_player.image_angle;
	light[| eLight.Flags] |= eLightFlags.Dirty; // rebuild static shadow casters
}
