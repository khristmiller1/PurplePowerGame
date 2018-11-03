// position of the weapon - follow the player sprite
x = obj_player.x + 1;
y = obj_player.y + 6;
// speed up bullets
super_shot = 4;

 super_shot_key = keyboard_check(ord("B"))

image_angle = point_direction(x,y,mouse_x,mouse_y);

fire_delay = fire_delay - 1;
// makes sure recoil doesn't drop below zero.
recoil = max(0,recoil - 1); // returns the largest of the values, will return 0 if recoil - 1 is less, otherwise returns that number.
if (mouse_check_button(mb_left)) && (fire_delay < 0)
{
	// if key B is held
	if (super_shot_key)
	{
		fire_delay = super_shot;
	}
	// otherwise, shot as normal
	else
	{
	   fire_delay = 10;
	}
	recoil = 4;
    //fire_delay = 10;
	audio_play_sound(sound_bullets,5,false);
	
	with (instance_create_layer(x,y,"Bullets",obj_bullet))
	{
		speed = 25;
		// makes the bullet travel in the same direction of the gun
		direction = other.image_angle + random_range(-3, 3); // refers to the original object --Gun object, by using "other"
		image_angle = direction;
	}
}

// to add recoil to the weapon
x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

// turn the weapon around
if(image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1; // flips the gun upside down
}
else
{
    image_yscale = 1; // as default	
}
