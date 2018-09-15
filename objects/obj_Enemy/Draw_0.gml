/// @description Insert description here
//How the enemy is drawn to the screen

draw_self();

if (flash > 0 ) 
{
	flash = flash - 1;
	shader_set(shader_White);
	draw_self();
	shader_reset();
}