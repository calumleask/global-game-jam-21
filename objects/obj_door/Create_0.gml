/// @desc Create shadow caster polygon

// Inherit the parent event
event_inherited();

// Create a sprite polygon for this instance
polygon = polygon_from_instance(id);

// This is a static shadow caster (it never changes its polygon)
flags |= eShadowCasterFlags.Static;

if (open)
{
	visible = false;
	interactable_instance = noone;
}
else
{
	interactable_instance = instance_create_layer(x + 50, y, layer, obj_door_interaction);
	interactable_instance.sprite_index = spr_door;
	interactable_instance.image_angle = image_angle;
	interactable_instance.door_id = instance_id;
}
