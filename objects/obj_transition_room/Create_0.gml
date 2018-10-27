/// size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
stage_music = audio_play_sound(choose(sound_stage,sound_stage2,sound_stage3), 1,true);
// turning a order number into words, number never changes.
enum TRANS_MODE
{
  OFF,
  NEXT,
  GOTO,
  RESTART,
  INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
