
function _add_todo_item(_tag, _text)
{
	with (obj_ui_controller)
	{
		var _todo_item = ds_map_create();
		ds_map_add(_todo_item, "done", false);
		ds_map_add(_todo_item, "tag", _tag);
		ds_map_add(_todo_item, "text", _text);
		ds_list_add(todo_items, _todo_item);
	}
}
