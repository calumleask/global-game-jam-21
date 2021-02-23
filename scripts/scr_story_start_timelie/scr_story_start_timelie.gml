
function _story_start_timeline(_timeline)
{
	with(obj_story_controller)
	{
		timeline_index = _timeline;
		timeline_position = 0;
		timeline_running = true;
		timeline_loop = false;
	}
}
