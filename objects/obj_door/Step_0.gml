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
		
		// Turn lights on
		with (obj_light)
		{
			if (array_contains(other.on_open_enable_lights, tag))
			{
				disabled = false;
				on = true;
				fade_in = false;
			}
		}
		
		instance_destroy(id); // animate opening
	}
}
