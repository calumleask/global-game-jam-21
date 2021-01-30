// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_int(min, max)
{
	min = ceil(min);
    max = floor(max);
    return floor(random(1) * (max - min + 1)) + min;
}
