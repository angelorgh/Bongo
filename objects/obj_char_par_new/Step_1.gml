/// @description Previous frame checks

// Check if we're on the ground (Look at Jump action and Gravity management in the Step event to see how z and vz change)
if (z + vz > 0)			// If z position plus vz speed is bigger than 0, means that we reached the gound
{
	onGround = true;
	vz = 0;				// In this case, we set our vz to 0...
	z = 0;				// ...and the z position to 0 too
}

// IDLE state always except for this cases
state = IDLE;
