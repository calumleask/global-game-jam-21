/// @description

var distance_to_player = distance_to_object(obj_player);
var player_within_reach = distance_to_player < interaction_distance;

if (player_within_reach and not interaction_hint_showing)
{
	show_space_prompt("Open Door");
	interaction_hint_showing = true;
}
else if (not player_within_reach and interaction_hint_showing)
{
	hide_space_prompt(true);
	interaction_hint_showing = false;
}

if (interaction_hint_showing)
{
	if (keyboard_check_pressed(vk_space))
	{
		hide_space_prompt(false);
		interaction_hint_showing = false;
		open = true;
		
		with (obj_light)
		{
			if (layer_get_name(layer) = other.light_layer_on_open)
			{
				on = true;
			}
		}
		
		instance_destroy(id); // animate opening
	}
}
