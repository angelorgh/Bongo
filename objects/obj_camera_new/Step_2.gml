/// @description Make camera follow Player/s

lastX = x;				// store the last x position of oCamera to check its direction

if instance_exists(obj_char_par_new)
{
	
	x = obj_char_par_new.x;
	y = obj_char_par_new.y - yDisp;
	
}

camera_set_view_size(cam,view_width,view_height);			// Update camera size (in case of zoom or fullscreen)
camera_set_view_speed(cam, camSpeedX, -1);					// Update camera speed

