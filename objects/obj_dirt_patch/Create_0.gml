/// @desc Create shadow caster polygon

event_inherited();

sweeping = false;
interaction_hint_showing = false;
image_alpha = 1;

// Player interaction
function _on_collision()
{
	if (sweeping)
		return;
	
	_ui_show_space_prompt("Sweep");
	interaction_hint_showing = true;
}
on_collision = _on_collision;

function _on_collision_end()
{
	_ui_hide_space_prompt(true);
	interaction_hint_showing = false;
}
on_collision_end = _on_collision_end;
