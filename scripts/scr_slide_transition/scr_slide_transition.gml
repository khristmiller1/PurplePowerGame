// setting some auto completes
/// @desc scr_slide_transition(mode, targetroom)
///  @arg Mode sets transistion mode between next, restart and goto
/// @arg Target sets target room when using the goto mode

with(obj_transition_room)
{
    mode = argument[0];
	if (argument_count > 1)
	{
	    target = argument[1];
	}
}
