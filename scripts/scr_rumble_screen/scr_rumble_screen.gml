/// @desc rumble_screen(magnitude, frames)
/// @args Magnitude sets the strenght of the rumble (radius in pixels)
/// @args Frames, sets the length of the sake in frames (60 = 1 second at 60 fps)

with(obj_Camera)
{
    if (argument[0] > shake_remain)
	{
	    shake_magnitude = argument[0];
		shake_remain = argument[0];
		shake_length = argument[1];
	}
}