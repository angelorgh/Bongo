/// @description Init camera properties

/// Window size and resolution vars
view_width = 1024;			// Width resolution
view_height = 768;			// Height resolution
window_scale = 1;			// Set the scale of the window

/// Camera scroll vars
cameraDir = 0;				// Init camera direction
lastX = x;
camSpeedX = 10;				// Standard camera speed. With -1 will always be as fast as the Player speed
xBorder = view_width/2;		// Set at what distance from xBorder will camera start moving. (This values will depend on your selected resolution to work!)
yBorder = 200;				// Set at what distance from xBorder will camera start moving. (This values will depend on your selected resolution to work!)
yDisp = 96;					// Displacement set to camera position to detect vertical scrolling

/// Battle area vars
lastBattleAreaX = 0;		// Will store x position of the last Battle area Player/s has crossed

cam = camera_create_view(0, 96, view_wport[0], view_hport[0], 0, self, camSpeedX, -1, xBorder, yBorder);		// We create the game camera. "camera" is a macro that stores view_camera[0]

window_set_size(view_width*window_scale, view_height*window_scale);												// Set the the game window with resolution and scale
alarm[0] = 1;																									// Some milliseconds after, we center the window to the monitor screen (see alarm[0]

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);							// Update the game surface with resolution and scale