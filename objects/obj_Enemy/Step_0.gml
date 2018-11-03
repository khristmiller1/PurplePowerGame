// FOR ENEMEY! Duplicated the player object and cut out some functionality

vsp = vsp + grv;

// Stop from walking off edges
if (grounded) && (afraidOfHeights) && (!place_meeting(x + hsp, y+1, obj_wall))
{
    hsp = -hsp;
}


// Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
	grounded = false;
    sprite_index = spr_EnemyJump;
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
		grounded = true;
		image_speed = 1;
		if (hsp == 0)
		{
			sprite_index = spr_Enemy;
		}
		else
		{
		    sprite_index = spr_EnemyRun;
		}
	}

if (hsp != 0)
{
    image_xscale = sign(hsp);	
}