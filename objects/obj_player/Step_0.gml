/// @description Movement

var temp_walking_speed = walking_speed;
if (keyboard_check(vk_shift))
{
	walking_speed =	6;
}

// Handle movement keys down
var num_direction_keys_down = ds_list_size(direction_keys_down);
if (num_direction_keys_down > 0)
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
	var rotation_lerp_value = 0.1 + (0.9 * max(0, (45 - abs(rotation_todo))) / 45);
	image_angle = lerp(image_angle, image_angle + rotation_todo, rotation_lerp_value);
	
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
	speed = walking_speed;
	if (footsteps_manager = pointer_null)
	{
		footsteps_manager = instance_create_depth(0, 0, 0, obj_player_footstep_manager);
	}
	image_speed = walking_anmiation_speed * walking_speed;
}
else
{
	if (footsteps_manager != pointer_null)
	{
		instance_destroy(footsteps_manager);
		footsteps_manager = pointer_null;
	}
	if (image_speed > 0)
	{
		// Only end animation if on specific frame
		if (floor(image_index) != 1 and floor(image_index) != 4)
		{
			image_speed = 0;
		}
	}
	speed = 0;
}

walking_speed = temp_walking_speed;

// 3D audio

audio_listener_position(x, y, 0);
//audio_listener_orientation(-dcos(image_angle), dsin(image_angle), 0, 0, 0, 1);
audio_listener_orientation(0, 1, 0, 0, 0, 1);
