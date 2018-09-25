/// the setup the camera

cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
// returns the original x and y position
xTo = xstart;
yTo = ystart;

// make the screen rumble
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

