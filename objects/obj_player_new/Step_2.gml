/// @description Solid collisions checks and properties updates

//Update state properties
image_xscale = facing;		// Player sprite always looks on facing direction
depth = -1*y;				// Player depth updates with Y position. This way a lower Y, means a farther depth and a greater Y, a closer depth

// COLLISIONS AND POSITION UPDATE ------------------------- //

// Jump
repeat(abs(vz)) {
	z += sign(vz);															// ..update z position
}

// Vertical Walking
repeat(abs(vy)) {
    if (!position_meeting(x, y + sign(vy) + z, oParSolid)						// If player don't collide under or above..
	and (!onGround))				                                            // ...and is not in a hitting state...
	{
		if (kRight or kLeft)												// ..if combined with horizontal input
			y += sign(vy)/1.3;												// ..update y position (tweaked to not combine vertical + horizontal speeds)
		else
			y += sign(vy);													// ..update y position at full
	}
    else { 																	// BUT if he collides..
		vy = 0;																// ..can't go further..
		break;																	// ..and we stop checking vertical collisions in this frame
	}
}

// Horizontal
repeat(abs(vx)) 
{  
    // X Update
    if (!position_meeting(x + sign(vx), y + z, oParSolid)						// If player don't collide left or right..
	and (x + sign(vx) <= camera_get_view_x(cam) + camera_get_view_width(cam)) and (x + sign(vx) >= camera_get_view_x(cam))		// ...is inside the camera boundaries..
	and (!onGround))				                                        // ...and is not in a hitting state...
	{																		
		if (kDown or kUp)													// ..if combined with vertical input
			x += sign(vx)/1.3;												// ..update x position (tweaked to not combine vertical + horizontal speeds)
		else
			x += sign(vx);													// ..update x position at full
	}
    else { 																	// BUT if he collides..
		vx = 0;																// ..can't go further...
		break;																	// ..and we stop checking horizontal collisions in this frame
	}
}
// -------------------------------------------------------- //

