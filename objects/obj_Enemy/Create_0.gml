///FOR THE ENEMY, Duplicated from player, but added functionality
// You can write your code in this editor

vsp = 0; // vertical speed
grv = 0.3; // gravity
walksp = 2; // walking speed
hsp = walksp; // horizontal speed
hp = 4;
flash = 0;
hitfrom = 0;
afraidOfHeights = true;
grounded = false;
hasWeapon = true;

if(hasWeapon)
{
  mygun = instance_create_layer(x,y,"Gun", obj_EnemyGun)
  with (mygun)
  {
    owner = other.id; 
  }  
}
else mygun = noone;
