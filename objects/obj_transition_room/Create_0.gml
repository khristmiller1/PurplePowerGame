/// size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;

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
