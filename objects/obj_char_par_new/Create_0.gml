/// @description Init players

// ----- MOVEMENT VARS ---------------------------------- //
var kLeft, kRight, kUp, kDown, kJump, kJumpRelease, kJumpIn, kHit1;
// Movement speed
vx = 0;
vy = 0;
vz = 0;
z = 0;
// Acceleration + friction
accel		= 1;							// Depending if we're onGround or not...
fric		= 0.5;							// ...we will apply gound values or air values
// Max movement speeds
maxVX       = 3.0;
maxVY       = 2.0;
maxVZ       = 15.0;
// Jump and gravity variables
jumpHeight  = 12.0;
gravRise    = 1.25;							// Gravity value while jumping up
gravFall    = 0.25;							// Gravity value while falling

// ----- COLLISION VARS -------------------------------- //
// Fake ground collisions (See Begin Step to check if Player is grounded or no)
onGround = true;
groundZ = 0;
// ----------------------------------------------------- //

// ----- PLAYER STATES INFO ---------------------------- //
// States
IDLE     = 10;
RUN      = 11;
JUMP     = 12;
HIT1	 = 13;
HITHARD	 = 14;
DEAD     = 18;
HURT	 = 19;
// Facings
RIGHT =  1;
LEFT  = -1;
// Initialize player's properties
playerId = string_digits(object_get_name(object_index));		// We extract the id in numbers from the object name. So, if the name is "oPlayer1", playerId is "1"
state  = IDLE;
facing = RIGHT;
dir = facing;													// direction where moving (may be different than facing direction!)
// ---------------------------------------------------- //

