/// draw bars for transition

if (mode != TRANS_MODE.OFF)
{
    draw_set_color(c_black);
	draw_rectangle(0,0,w,percent * h_half, false);
	draw_rectangle(0,h,w,h - (percent * h_half),false);
	//stage_music = audio_play_sound(choose(sound_stage,sound_stage2,sound_stage3), 1,true);

}

//draw_set_color(c_white);
//draw_text(50,50, string(percent));