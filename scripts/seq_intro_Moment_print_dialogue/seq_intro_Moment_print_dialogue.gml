/// @description hide the player

function seq_intro_Moment_print_dialogue()
{
	_print_dialogue_line(3, "Welp Sarah, looks like it’s time for me to start ma shift.");
	_print_dialogue_line(2, "Another night in this place.");
	_print_dialogue_line(2.5, "Cannae believe ahm still here to be honest,");
	_print_dialogue_line(2.5, "3 years is a lot longer than I thought I’d last.");
	_print_dialogue_line(2.5, "Might be time tae pack it in soon I think.");
	_print_dialogue_line(2.5, "There’s only so long anyone can last in this school.");
	_print_dialogue_line(5, "Let’s see what tonight’s problems are.");
	_set_callback_after_dialogue(_todo_list_enable_interaction);
}
