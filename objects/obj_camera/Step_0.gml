
if (follow != noone)
{
    xTo = follow.x;
    yTo = follow.y;
}

x += (xTo - x)/25;
y += (yTo - y)/25;

var cam_x = x-(camWidth*0.5);
var cam_y = y-(camHeight*0.5);

cam_x = clamp(cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
cam_y = clamp(cam_y, 0, room_height - camera_get_view_height(view_camera[0]));

camera_set_view_pos(view_camera[0],cam_x,cam_y);

global.view_xview = camera_get_view_x(view_camera[0]);
global.view_yview = camera_get_view_y(view_camera[0]);