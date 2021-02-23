
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

function _complete_todo_item(_tag)
{
	with (obj_ui_controller)
	{
		var _todo_item_index = -1;
		var _todo_item = -1;
		for (var i = 0; i < ds_list_size(todo_items); ++i)
		{
			_todo_item = ds_list_find_value(todo_items, i);
			if (ds_map_find_value(_todo_item, "tag") == _tag)
			{
				_todo_item_index = i;
				ds_map_set(_todo_item, "done", true);
				ds_list_set(todo_items, _todo_item_index, _todo_item);
				return;
			}
		}
		show_debug_message("No todo item exists with tag: " + string(_tag));
	}
}
