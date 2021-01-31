/// @desc Create shadow caster polygon

event_inherited();

interactable_instance = noone;

if (open)
{
	visible = false;
	solid = false;
}
else
{
	polygon = polygon_from_instance(id);
	
	interactable_instance = instance_create_layer(x, y, layer, obj_door_interaction);
	interactable_instance.sprite_index = spr_door;
	interactable_instance.image_angle = image_angle;
	interactable_instance.image_xscale = image_xscale;
	interactable_instance.image_yscale = image_yscale;
	interactable_instance.door_id = id;
}
