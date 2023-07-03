function assignName() {
	// Declare names array

	maxNames = 7;

	name[0] = "Cersei";
	name[1] = "Jamie";
	name[2] = "Petyr Baelish";
	name[3] = "Melissandre";
	name[4] = "Tywin";
	name[5] = "Joffrey";
	name[6] = "Aerys";
	name[7] = "Lysa";

	// Set a random name to EnemyName
	return(name[random(maxNames)]);


}
