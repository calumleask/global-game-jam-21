/// @desc Init

event_inherited();

// Player interaction
function _on_collision()
{
	_ui_show_space_prompt("Pick up map");
}
on_collision = _on_collision;

function _on_collision_over()
{
	_ui_hide_space_prompt(true);
}
on_collision_over = _on_collision_over;
