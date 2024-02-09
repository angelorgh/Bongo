//---You can update variables here!---//
reset_dialogue_defaults();

switch(choice_variable){
	case -1:

		//Line 0
		var i = 0;
		//myText[i]		= "¿Eras de los niños que arrancaban petálos de las flores?";
		myText[i]		= "Were you one of the children who plucked petals from flowers?";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		//myText[i]		= ["Tal vez.", "¡Imposible, amo las flores!", "¿Por qué hablas en pasado? Sigo siendo un nino."];
		myText[i]		= ["Maybe.", "No way! I love flowers!", "¿Why are you speaking in past tense? I'm still a kid."];
		myTypes[i]		= 1;
		mySpeaker[i]	= obj_player;
		myScripts[i]	= [[change_variable, id, "choice_variable", "tal_vez"], [change_variable, id, "choice_variable", "imposible"], [change_variable, id, "choice_variable", -1]];
		myNextLine[i]	= [2,3,4];
		
		//Line 2
		i++;
		//myText[i]		= "¡Lo sabía! Ustedes son todos iguales.";
		myText[i]		= "I knew it! You people are all the same.";
		myEmotion[i]	= 0;
		myEmote[i]		= 0;
		myNextLine[i]	= -1;
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		//myText[i]		= "¡Eres un mentiroso! ¡Lo sabía!";
		myText[i]		= "You're a liar! I knew it!";
		myEmotion[i]	= 0;
		myEmote[i]		= 0;
		myNextLine[i]	= -1;
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		//myText[i]		= "Bueno querido, será mejor que mires un espejo.";
		myText[i]		= "Well dear, you better look in the mirror";
		myEmotion[i]	= 0;
		myEmote[i]		= 0;
		mySpeaker[i]	= id;
		myNextLine[i] = -1;
		 
		
	break;
	
	case "tal_vez":
		// Tal vez. 2
		
		var i = 0;
		//myText[i] = "No quiero hablar contigo.";
		myText[i] = "Leave me alone. I do not want to talk to you.";
		mySpeaker[i] = id;
	break;
	
	case "imposible":
		// Imposible. ¡Amo las flores! 2
		
		var i = 0;
		//myText[i] = "A las flores no les puedes mentir, todo lo vemos.";
		myText[i] = "You can't lie to the flowers, we see everything.";
		mySpeaker[i] = id;
	break;
	
}


// switch(choice_variable){
// 	case -1:
// 	#region First Dialogue
// 		//Line 0
// 		var i = 0;
// 		myText[i]		= "Yo";
// 		mySpeaker[i]	= id;
// 		myScripts[i]	= [create_instance_layer, 170,120,"Instances",obj_emote];
		
// 		//Line 1
// 		i++;
// 		myText[i]		= "You can even have it depend on player choice. Which object should I make?";
// 		mySpeaker[i]	= id;
		
// 		//Line 2
// 		i++;
// 		myText[i]		= ["An emote", "Another you!"];
// 		myTypes[i]		= 1;
// 		mySpeaker[i]	= obj_player;
// 		myScripts[i]	= [[create_instance_layer, 170,120,"Instances",obj_emote], [create_instance_layer, 170,120,"Instances",obj_flor]];
// 		myNextLine[i]	= [0,0];
		
// 		//Line 3
// 		i++;
// 		myText[i]		= "Pretty cool, right? Now, let's get back to our conversation.";
// 		mySpeaker[i]	= id;
		
// 		//Line 4
// 		i++;
// 		myText[i]		= "Looky here, green hood.";
// 		myEffects[i]	= [13,1, 18,0];
// 		mySpeaker[i]	= id;
// 		myTextCol[i]	= [13, c_lime, 18, c_black];

// 		//Line 5
// 		i++;
// 		myText[i]		= "We both know blue is the best colour.";
// 		myEmotion[i]	= 1;
// 		myEmote[i]		= 0;
// 		mySpeaker[i]	= id;
// 		myTextCol[i]	= [14, c_aqua, 18, c_black];

// 		//Line 6
// 		i++;
// 		myText[i]		= "Say it... or else.";
// 		myTextSpeed[i]	= [1,0.5, 10,0.1];
// 		myEmotion[i]	= 0;
// 		myEmote[i]		= 4;
// 		mySpeaker[i]	= id;
// 		myTextCol[i]	= [11, c_red, 18, c_black];

// 		//Line 7
// 		i++;
// 		myText[i]		= ["(sarcastically) Blue is the best colour.", "Green is the best colour."];
// 		myTypes[i]		= 1;
// 		myNextLine[i]	= [8,9];
// 		myScripts[i]	= [[change_variable, id, "choice_variable", "blue"], [change_variable, id, "choice_variable", "green"]];
// 		mySpeaker[i]	= obj_player;

// 		//Line 8
// 		i++;
// 		myText[i]		= "Exactly! Thank you!";
// 		myEmotion[i]	= 0;
// 		myEmote[i]		= 0;
// 		myNextLine[i]	= -1;
// 		mySpeaker[i]	= id;

// 		//Line 9
// 		i++;
// 		myText[i]		= "Nooooooooooooooooooooooo!";
// 		myTextSpeed[i]	= [1,1, 6,0.3, 10,1];
// 		myEmotion[i]	= 2;
// 		myEmote[i]		= 9;
// 		mySpeaker[i]	= id;
// 		#endregion
// 	break;
	
// 	case "green":
// 	#region If you chose green
// 		var i = 0;
// 		//Line 0
// 		myText[i]		= "I can't believe you like green better...";
// 		myTextSpeed[i]	= [1, 0.3];
// 		myEmotion[i]	= 2;
// 		myEmote[i]		= 9;
// 		mySpeaker[i]	= id;
// 		myTextCol[i]	= [26,c_lime, 31,c_black];
		
// 		//uncommenting this will make the first conversation begin again
// 		//choice_variable	= -1;
// 	#endregion
	
// 	break;
	
// 	case "blue":
// 	#region If you chose blue
// 		var i = 0;
// 		//Line 0
// 		myText[i]		= "Hey there, fellow blue lover!";
// 		myTextSpeed[i]	= [1,1, 10,0.5];
// 		myEmotion[i]	= 1;
// 		myEmote[i]		= 0;
// 		mySpeaker[i]	= id;
// 		myTextCol[i]	= [19,c_aqua, 23,c_black];
		
// 		//uncommenting this will make the first conversation begin again
// 		//choice_variable	= -1;
// 	#endregion
// 	break;
// }