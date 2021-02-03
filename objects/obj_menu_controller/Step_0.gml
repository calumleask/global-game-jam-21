/// @description

if (keyboard_check_pressed((ord("M"))) and can_open_menu)
{	
	menu_open = !menu_open;
	
	if (menu_open)
		event_user(0);
	else
		event_user(1);
}
