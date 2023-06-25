/// @description Draw player and Debug info

// Draw Player sprite taking into account the z value (for jumps)
draw_sprite_ext(sprite_index, image_index, x, y + z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

#region Debug Info
if global.DebugGUIOn
{
	#region state names
	var statename = "";
	switch (state) {
	    case IDLE:
			statename = "IDLE";
	    break;
    
	    case RUN: 
	        statename = "RUN";
	    break;
	
		case HIT1: 
	        statename = "HIT 1";
	    break;
		
		case HITHARD: 
	        statename = "HIT HARD";
	    break;
	
		case HURT: 
	        statename = "HURT";
	    break;
	
	    case DEAD: 
	        statename = "DEAD";
	    break;
	}
	#endregion
	draw_line(x - 30, y, x + 30, y);								// Draw a line where the player's "floor" is
	draw_sprite(sCollisionChar,0,x,y + z);							// Show the Player's collision box
	if canHit and (state = HIT1 or state = HITHARD)					// Show oHitCollision. This is for debug but not accurate...
	{																// ...the real oHitCollision lasts only 0,016 seconds but we draw it for debug reasons for a little bit more
		if onGround
			draw_sprite(sHitCollisionMask,0, x + (sprite_get_width(sHitCollisionMask)/2)*facing, y + z - (sprite_height/2 + 5));
		else
			draw_sprite_ext(sHitCollisionMask,0, x + (sprite_get_width(sHitCollisionMask)/2)*facing, y + z - (sprite_height/2 + 5) + 20, 1, 1.5, 0, c_white, 1);
	}
	draw_text(x - string_width(statename)/2, y + 5, statename);		// Show the name of the actual state 
	if global.friendlyFire
	{
		draw_circle_color(x,y + z - sprite_get_height(sCollisionChar) - 12, 9, c_red, c_red, false);
		draw_set_halign(fa_center);
		draw_text_color(x, y + z - sprite_get_height(sCollisionChar) - string_height("!"), "!", c_white,c_white,c_white,c_white,image_alpha);
		draw_set_halign(fa_left);
	}
}
#endregion