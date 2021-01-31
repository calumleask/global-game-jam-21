/// @description Animate UI

if (space_prompt_show and space_prompt_alpha < 1)
{
	space_prompt_alpha += 1 / (room_speed * ui_fade_duration);
	if (space_prompt_alpha > 1)
	{
		space_prompt_alpha = 1;
	}
}
else if (!space_prompt_show and space_prompt_alpha > 0)
{
	space_prompt_alpha -= 1 / (room_speed * ui_fade_duration);
	if (space_prompt_alpha < 0)
	{
		space_prompt_alpha = 0;
	}
}
