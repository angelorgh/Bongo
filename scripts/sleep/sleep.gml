/// @description sleep(Milliseconds);
/// @param Milliseconds
function sleep(argument0) {
	var endTime = get_timer() + ((argument0*1000));
	do
		room_speed = 1;
	until
		(get_timer() >= endTime);

	if get_timer() >= endTime
		room_speed = 60;



}
