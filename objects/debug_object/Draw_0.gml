/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black);
draw_text(32, 32, "FPS = " + string(fps_real));
draw_text(32, 64, "Current FPS = " + string(fps));
draw_text(32, 96, "Resolution = " +  string(window_get_width())  + "x"  + string(window_get_height()));