/// @description draw_text_outlined(x, y, string, colour, outline_colour, image_xscale, image_yscale, image_angle, image_alpha, sep)
/// @arg {integer} x
/// @arg {integer} y
/// @arg {string} string
/// @arg {float} colour
/// @arg {float} outline_colour
/// @arg {integer} sizeX
/// @arg {integer} sizeY
/// @arg {integer} angle
/// @arg {integer} alpha
/// @arg {integer} sep
function draw_text_outlined(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	var xx = argument0;
	var yy = argument1;
	var str = argument2;
	var xScale = argument5;
	var yScale = argument6;
	var angle = argument7;
	var alpha = argument8;
	var sep = argument9;
	var width = view_get_wport(view_camera[0]);
	draw_set_colour(argument4);
	draw_text_ext_transformed_colour(xx-1, yy, str, sep, width, xScale, yScale, angle, argument4, argument4, argument4, argument4, alpha);
	draw_text_ext_transformed_colour(xx+1, yy, str, sep, width, xScale, yScale, angle, argument4, argument4, argument4, argument4, alpha);
	draw_text_ext_transformed_colour(xx, yy-1, str, sep, width, xScale, yScale, angle, argument4, argument4, argument4, argument4, alpha);
	draw_text_ext_transformed_colour(xx, yy+1, str, sep, width, xScale, yScale, angle, argument4, argument4, argument4, argument4, alpha);
	draw_set_colour(argument3);
	draw_text_ext_transformed_colour(xx, yy, str, sep, width, xScale, yScale, angle, argument3, argument3, argument3, argument3, alpha);
	draw_set_colour(c_white);


}
