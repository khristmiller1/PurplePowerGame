
// if the user has control of the player, starts out as true
// the transistion to stages takes away control
if(hasControl)
{
	// Get player input
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) || keyboard_check(vk_up) || keyboard_check(ord("W"));
	key_smile = keyboard_check(ord("P"));
	make_gun = keyboard_check_pressed(ord("G"));
		
}

else 
{
    key_left = 0;
	key_right = 0;
	key_jump = 0;
}


// Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y+1,obj_wall)) && (key_jump)
{
	vsp = -7;
}
// Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// Sprite Animation
if (!place_meeting(x,y+1,obj_wall)) // if sprite is in the air
{
    sprite_index = spr_jump;
	image_speed = 0; // effects the speed of sprite
	if (sign(vsp) > 0)
	{
		 image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}

else
    {
		if (sprite_index == spr_jump) audio_play_sound(sound_landing, 4, false);
		
		image_speed = 1;
		if (hsp == 0)
		{
			sprite_index = spr_player;
		}
		else
		{
		    sprite_index = spr_run;
		}
	}

// direction sprite is looking
if (hsp != 0)
{
    image_xscale = sign(hsp);	
}


// THIS WILL DESTROY THE GUN OBJECT 
// TODO: FIX HOW MORE THAN ONE GUN CAN BE CREATED
// sprite smile
if (key_smile) && (num_of_gun >= 0)
{	

  sprite_index = spr_player_smile;
  //obj_gun.visible = false;
  instance_destroy(obj_gun);
  num_of_gun = 0; 
}

if (make_gun) && (num_of_gun == 0)
{
	instance_create_layer(obj_player.x,obj_player.y,"Gun",obj_gun);
    //obj_gun.visible = true;	
	num_of_gun = 1;
}

