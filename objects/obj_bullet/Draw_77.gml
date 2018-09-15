/// @description Insert description here
// You can write your code in this editor

// this makes sure the bullet is drawn first then will get rid of it
// POST-DRAW
if (place_meeting(x,y, obj_wall))
{
   instance_destroy();
}
