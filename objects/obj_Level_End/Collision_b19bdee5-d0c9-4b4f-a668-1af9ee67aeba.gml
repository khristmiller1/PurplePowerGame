/// move to next stage when player collides

with(obj_player)
{
    if (hasControl)
	{
	    hasControl = false;
		// target is set to room02 in the instance of the room, player level
		scr_slide_transition(TRANS_MODE.GOTO, other.target);
	}
}