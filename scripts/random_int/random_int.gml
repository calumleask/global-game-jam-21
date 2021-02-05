
function _random_int(min, max)
{
	min = ceil(min);
    max = floor(max);
    return floor(random(1) * (max - min + 1)) + min;
}
