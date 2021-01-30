/// @desc Move with player

light[| eLight.Direction] = obj_player.image_angle + 90;

var rebuildShadowCasters = false;

if (obj_player.x != light[| eLight.X])
{
	light[| eLight.X] = obj_player.x;
	rebuildShadowCasters = true;
}

if (obj_player.y != light[| eLight.Y])
{
	light[| eLight.Y] = obj_player.y;
	rebuildShadowCasters = true;
}

if (rebuildShadowCasters)
{
	light[| eLight.Flags] |= eLightFlags.Dirty; // rebuild static shadow casters
}
