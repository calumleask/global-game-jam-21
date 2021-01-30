/// @description Animate Direction

var turning = false;
var 
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
	image_angle = lerp(image_angle, image_angle + rotation_todo, 0.15);
	
	// restrict image_angle
	if (image_angle >= 360)
	{
		image_angle -= 360;
	}
	if (image_angle < 0)
	{
		image_angle += 360;
	}
	
	if (round(image_angle) == round(direction))
	{
		image_angle = direction;
		turning = false;
	}
}

if (walking and not turning)
{
	speed = walking_speed;
}
else
{
	speed = 0;
}
