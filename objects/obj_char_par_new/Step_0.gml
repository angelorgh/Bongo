/// @description Movement, actions and states management

// ----- Movement ------
checkInput();											// Check input controls (for keyboard and joypad). Except if Player is DEAD

#region Movement										// This region manages movement
if state != HIT1 and state != HITHARD					// On hitting states we don't manage any movement input
and state != HURT										// Neither while HURT state
{
	// Left 
	if (kLeft and !kRight)
	{
		facing = LEFT;                                  // Player looks to the left
		if (vx > 0)
		    vx = Approach(vx, 0, fric);					// Slide and brake if change direccion
		vx = Approach(vx, -maxVX, accel);				// Apply acceleration to get left speed
    
		if (onGround)
		    state = RUN;								// If onGround go to RUN state
	}

	// Right 
	if (kRight and !kLeft)
	{
		facing = RIGHT;                                 // Player looks to the right
		if (vx < 0)
		    vx = Approach(vx, 0, fric);					// Slide and brake if change direccion
		vx = Approach(vx, maxVX, accel);				// Apply acceleration to get right speed
    
		if (onGround)
		    state = RUN;                                // If onGround go to RUN state
	}
	// Down 
	if (kDown and !kUp)
	{
		if (vy > 0)
		    vy = Approach(vy, 0, fric);					// Slide and brake if change direccion
		vy = Approach(vy, maxVY, accel);				// Apply acceleration to get down speed
    
		if (onGround)
		    state = RUN;								// If onGround go to RUN state
	}

	// Up 
	if (kUp and !kDown)
	{
		if (vy < 0)
		    vy = Approach(vy, 0, fric);					// Slide and brake if change direccion
		vy = Approach(vy, -maxVY, accel);				// Apply acceleration to get up speed
    
		if (onGround)
		    state = RUN;								// If onGround go to RUN state
	}
}

#endregion
#region Gravity                                         // This region manages gravity
if (!onGround)
{
	if state != HIT1 and state != DEAD
		state = JUMP;
	// Make player fall
	if (vz < 0)
	{
		vz = Approach(vz, 0, gravRise);					// Gravity on rise
	}
	else
	{
		vz = Approach(vz, maxVZ, gravFall);				// Gravity on fall
	}
}
#endregion

// No moving inputs
if (!kRight and !kLeft) or (kRight and kLeft)
    vx = Approach(vx, 0, fric);								// Slide and brake when not moving or when pressing oposite inputs at the same time
if (!kDown and !kUp) or (kDown and kUp)
    vy = Approach(vy, 0, fric);	
    
#region Jump												// This region manages the jump action
if (kJump and onGround)										// If jump and touching ground..
and (state = RUN or state = IDLE)							// ..and Player is in an state permitted to jump...
{
	onGround = false;
    vz = -jumpHeight;										// ..give jump momentum to player..
    state = JUMP;											// ..and show jump animation
	hitCounter = 0;											// If we jump, reset the HITHARD counter
} 
#endregion

// ----- States ------
#region states												// UNACTIVE This region manages all Player states and animations
switch (state) {
    case IDLE: 
        image_speed = global.animFPS/2;										// We set the animations speed relative to the game fps
        sprite_index = asset_get_index("spr_player_idle");		// asset_get_index() can load an sprite from an string. So here we play the sprite animation sPlayer1Idle (or sPlayer1Idle, depending on playerId)
    break;
    
    case RUN: 
        image_speed = global.animFPS/2; 
        sprite_index = asset_get_index("spr_player_walk");
    break;
    
    case JUMP:
        image_speed = global.animFPS; 
        // Jump and fall
        if (vz <= 0)																							// JUMP has two diferent animations
            sprite_index = asset_get_index("spr_player_jump");										// The rising up animation...
        else
            sprite_index = asset_get_index("spr_player_fall");										// ...and the falling one
            
        if image_index > image_number-1																			// Once the animations end, Player goes directly to IDLE state
            image_speed = 0;
    break;
}
#endregion