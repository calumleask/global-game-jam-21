
function seq_intro_Moment_move_to_final_position()
{
	instance_activate_object(obj_player);
	_move_obj_by(obj_player, 116, 58);
	obj_player.input_enabled = true;
}
