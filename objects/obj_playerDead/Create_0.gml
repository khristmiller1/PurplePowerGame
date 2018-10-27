/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0;

scr_rumble_screen(6,40);
audio_play_sound(sound_die, 10, false);
game_set_speed(30, gamespeed_fps);
with (obj_Camera) follow = other.id;