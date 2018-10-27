/// @description Progress the transition

// check if the mode is not off
if (mode != TRANS_MODE.OFF)
{
	// if mode is equal to intro
  if (mode == TRANS_MODE.INTRO)
  
  {	  
	 //percent =  max(0,percent - 0.05);
	 percent = max (0, percent - max((percent/10), 0.005));
	  
  }
  else
  {
	  //percent =  mix(0,percent + 0.05);
	  percent = min(1, percent + max(((1 - percent)/ 10), 0.005));
  }
  
  if (percent == 1) || (percent == 0)
  
  {
      switch (mode)	  
	  {
	      case TRANS_MODE.INTRO:
		  {
			  mode = TRANS_MODE.OFF;
		     break;
		  }
		  case TRANS_MODE.NEXT:
		  {
			  mode = TRANS_MODE.INTRO;
			  // go to the next room
			  room_goto_next();
		     break;
		  }
		  case TRANS_MODE.GOTO:
		  {
			  mode = TRANS_MODE.INTRO;
			  room_goto(target);
		     break;
		  }
		  
		  case TRANS_MODE.RESTART:
		  {
			  
			  game_restart();
		     break;
		  }
	  }
  }
}
