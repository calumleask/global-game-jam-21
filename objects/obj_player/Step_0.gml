/// @description Movement

var _input_enabled = input_enabled;

if (os_is_paused())
{
	_input_enabled = false;
	ds_list_clear(direction_keys_down);
}

var seconds_passed = delta_time / 1000000;
var walking_speed_this_frame = walking_speed_pixels_per_second * seconds_passed;

if (keyboard_check(vk_shift))
{
	walking_speed_this_frame *=	3;
}

// Handle movement keys down
var num_direction_keys_down = ds_list_size(direction_keys_down);
if (num_direction_keys_down > 0 and _input_enabled)
{
	walking = true;
	var recent_key_down = ds_list_find_value(direction_keys_down, num_direction_keys_down - 1);
	switch (recent_key_down)
	{
	case "W":
	case "vk_up":
	{
		direction = 90;
		break;
	}
	case "S":
	case "vk_down":
	{
		direction = 270;
		break;
	}
	case "A":
	case "vk_left":
	{
		direction = 180;
		break;
	}
	case "D":
	case "vk_right":
	{
		direction = 0;
		break;
	}
	}
}
else
{
	walking = false;
}

// Handle direction changes
var turning = false;
if (image_angle != direction)
{
	var rotation_todo = direction - image_angle;
	if (rotation_todo < -180)
	{
		rotation_todo += 360;
	}
	if (rotation_todo > 180)
	{
		rotation_todo -= 360;
	}
	turning = true;
	
	var turning_speed_this_frame = turning_speed_degrees_per_second * seconds_passed;
	if (rotation_todo > 0)
	{
		image_angle = min(image_angle + turning_speed_this_frame, image_angle + rotation_todo);
	}
	else if (rotation_todo < 0)
	{
		image_angle = max(image_angle - turning_speed_this_frame, image_angle + rotation_todo);
	}
	
	// restrict image_angle
	if (round(image_angle) >= 360)
	{
		image_angle -= 360;
	}
	if (round(image_angle) < 0)
	{
		image_angle += 360;
	}
	
	if (image_angle = direction)
	{
		turning = false;
	}
}

// Movement
if (walking and not turning)
{
	var moved = _move_with_slipping(walking_speed_this_frame, direction, 89);
	if (moved)
	{
		sprite_index = spr_player_walk;
		image_speed = walking_anmiation_speed * walking_speed_this_frame;
		
		if (footsteps_manager = noone)
		{
			footsteps_manager = instance_create_depth(0, 0, 0, obj_player_footstep_manager);
		}
		
		// 3D audio
		audio_listener_position(x, y, 0);
	}
	else
	{
		if (floor(image_index) = 1 or floor(image_index) = 5)
		{
			image_speed = 0;
			sprite_index = spr_player;
		}

		if (footsteps_manager != noone)
		{
			instance_destroy(footsteps_manager);
			footsteps_manager = noone;
		}
	}
}
else
{
	if (footsteps_manager != noone)
	{
		instance_destroy(footsteps_manager);
		footsteps_manager = noone;
	}
	if (image_speed > 0)
	{
		// Only end animation if on specific frame
		if (floor(image_index) != 2 and floor(image_index) != 6)
		{
			image_speed = 0;
			sprite_index = spr_player;
		}
	}
}
