/// @description Init

space_prompt_text = noone;
space_prompt_show = false;
space_prompt_alpha = 0;

todo_list_enabled = false;
todo_alpha = 0;

map_enabled = false;
map_alpha = 0;

todo_items = ds_list_create();

_add_todo_item("basement_1", "Check basement door is locked");
_add_todo_item("gym", "Sweep gym floor");
