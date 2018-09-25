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
x = clamp(x,view_w_half + buff,room_width - view_w_half - buff);
y = clamp(y,view_h_half + buff,room_height - view_h_half - buff);

// rumble screen
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));

// update the camera view
camera_set_view_pos(cam,x - view_w_half,y - view_h_half);