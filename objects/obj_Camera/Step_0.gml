///update the camera

 //up the the destination
if (instance_exists(follow))
{
    xTo = follow.x;
	yTo = follow.y;
}

// update the object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// make the camera not show the outside of the stage
x = clamp(x,view_w_half,room_width - view_w_half);
y = clamp(y,view_h_half,room_height - view_h_half);

// update the camera view
camera_set_view_pos(cam,x - view_w_half,y - view_h_half);