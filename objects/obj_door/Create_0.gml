/// @desc Create shadow caster polygon

event_inherited();

interaction_hint_showing = false;

if (open)
{
	visible = false;
	solid = false;
}
else
{
	polygon = polygon_from_instance(id);
}
