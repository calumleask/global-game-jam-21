/// @desc Move with player

event_inherited();

if (!instance_exists(obj_player))
	return;

var rebuild_shadows = false;

if (obj_player.x != light[| eLight.X])
{
	light[| eLight.X] = obj_player.x;
	rebuild_shadows = true;
}

if (obj_player.y != light[| eLight.Y])
{
	light[| eLight.Y] = obj_player.y;
	rebuild_shadows = true;
}

if (rebuild_shadows)
{
	light[| eLight.Flags] |= eLightFlags.Dirty; // rebuild static shadow casters
}
