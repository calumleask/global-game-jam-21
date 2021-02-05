/// @description Init

dialogue_lines_and_duration = ds_list_create(); // [line, duration, callback (optional)][]
show_dialogue = false;
dialogue_x = 40;
dialogue_y = 40;
new_line_fade = 0;
fade_in_time = 1;
max_lines_to_show = 3;
top_line_index = 0;
bottom_line_index = 0;
next_line_wait = 0;			// transitions from 0 to 1 before showing the next line.

all_fade_out = 1;			// transitions from 1 to 0 to fade out all dialogue.

script_after_dialogue = -1;
