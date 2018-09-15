/// @description Insert description here
// collision with the enemy

with (other)
{
    hp = hp - 1;
	flash = 3;
	hitfrom = other.direction
}

instance_destroy();