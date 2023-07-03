/// @desc Add particles
/// @arg {integer} Number of particles
/// @arg {integer} x position
/// @arg {integer} y position
/// @arg {integer} horSpeed
/// @arg {integer} vertSpeed
/// @arg {integer} size
/// @arg {integer} color
/// @arg {integer} alpha
/// @arg {integer} depth
/// @arg {integer} delayToDie
/// @arg {boolean} decrease
/// @arg {index} Image sprite
/// @arg {boolean} rotate
function addParticles() {

	for (i = 0; i <= argument[0]; i++)
	{
		myParticle = instance_create_depth(argument[1] + irandom_range(-5,5), argument[2] + irandom_range(-5,5), argument[8], oParticles);
		myParticle.vh = argument[3];
		myParticle.vv = argument[4];
		myParticle.size = argument[5];
		myParticle.color = argument[6];
		myParticle.alpha = argument[7];
		myParticle.alarm[0] = argument[9];
		myParticle.decrease = argument[10];
		myParticle.sprite_index = argument[11];
		myParticle.rotate = argument[12];
	}


}
