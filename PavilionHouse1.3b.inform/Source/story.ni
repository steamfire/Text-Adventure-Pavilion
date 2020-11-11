"Rogers Rd" by Dan Bowen,  Version 1.3beta

Include Exit Lister by Gavin Lambert.
Include Basic Screen Effects by Emily Short.

Use scoring and the serial comma. 
The maximum score is 60.

[The "when play begins" rules are checked only at the start of a story, not when a saved session is restored from disc. What happens is that these rules are followed, then the story's banner is printed, then the initial room description is printed up, and then the player is asked for a first command.]

Table 1 - Rankings
Score	Rank
0	"Boring person"
10	"Curious person"
20	"interesting person"
40	"Smart person"
60	"Rocket scientist, Dead."


When play begins:	
[Now the right hand status line is "Score: [score] in [turn count] turns";]
Now the left hand status line is "[the player's surroundings] / Score: [score]";
Now the right hand status line is "Time: [time of day]";
Say "You are in a house in the countryside.  You are into electronics, and it is [time of day]. VOGONS is: [vogon]";

The oxygen flow is initially 0.
The methane flow is initially 0. 
The vogon is initially 1.
The daydebug is initially 0.

Chapter 1 - Beginning


Day is a recurring scene.
Night is a recurring scene.  Night begins when Day ends. Night ends when the time of day is 8:01 am.
Day begins when Night ends. Day ends when the time of day is 8:00 PM. 

[
The time of day is 8:00 AM.
Day begins when play begins.
]
The time of day is 10:00 PM.
Night begins when play begins.
	

When Day begins: 
	Say "The sun is up outside.";
	Now the description of the sky is "The sun is up, and the sky is nicely blue.";
	Now the west side yard is lighted;
	Now the front yard hydrant is in the front yard;
	Now the yellow hose is in the front yard; 
	Now the middle back yard is lighted;
	Now the back yard hydrant is in the middle back yard;	
	Now the green hose is in the middle back yard; 	


	
When Night begins: 
	Say "The sun has set outside.";
	Now the description of the sky is "There is a satellite crawling across the sky...";
	Now the west side yard is dark;	
	Now the front yard hydrant is nowhere;
	Now the back yard hydrant is nowhere;
	Now the middle back yard is dark;
	Now the green hose is nowhere;
	Now the yellow hose is nowhere; 	

	.


At 10:50 PM:
	if vogon is 1:
		say "--- You notice a faint sound in the far distance, as if a ray gun were charging up. ----"


At 11:00 PM: 
	if vogon is 1:
		clear only the main screen;
		turn the background yellow;
		say "[black letters]At the stroke of 11:00, radiation beams sweep across the land, penetrating buildings and open spaces alike.";
		say default letters;
		if the player is in the downstairs:
			Increase score by 20;
			turn the background green;
			say "You hear a zapping noise from the house above.  The ground around the cellar has blocked the radiation beams from burninating you.
			
			You have survived!";
			say default letters;
		Otherwise:
			turn the background red;
			say "[black letters]You are hardly aware as you are zapped into oblivion by the Vogon Pest Control Beam. 
			end the story finally saying 
			
			You have died.";
			say default letters;
			end the story finally.
		




Part 2 - Outdoors

The Front Porch is a room.

The front yard is north of the Front porch.  "[if Night is happening]In the sky you notice a bright point of light creeping overhead.[otherwise]It is a nice bright day out here." The front yard hydrant is a device. The front yard hydrant is fixed in place. the description of the front yard hydrant is "A gray metal pole topped with a yellow handle.  A yellow garden hose is firmly rusted on to the output threads."  The yellow hose is fixed in place.  The description of the yellow hose is "The yellow hose is connected to the hydrant permanently and snakes over into the west side yard. "
 
The driveway is east of the front yard and north of the garage and northwest of the side yard.  "The gravelly pavement seems gray and boring."

The back yard hill is south of the back porch. the back yard hill is southwest of the side yard. An antenna pole is in the back yard. The antenna pole is fixed in place.  The description of the pole is "The antenna pole is tall."  
There is a dish on the antenna pole. The dish is fixed in place. the description of the dish is "The dish is slowly tracking[if Night is happening] a bright spot in the sky.[otherwise]the blue sky." The dish is fixed in place.

The middle back yard is south of the back yard hill.   The back yard hydrant is a device. The back yard hydrant is fixed in place. the description of the back yard hydrant is "A gray metal pole topped with a green handle.  A green garden hose is firmly rusted on to the output threads."   The green hose is fixed in place.  The description of the green hose is "The green hose is connected to the hydrant permanently and snakes over into the west side yard."


The west side yard is west of the front yard and northwest of the back yard hill. "A long flat lawn down the road from the house."
The end of the green hose is in the west side yard.  The description of the end of the green hose is "This is the end of the green hose.  It snakes off toward the back yard. The hose is apparently a genuine vacuum jacketed garden hose. " 

Instead of going from the west yard when the player carries the end of the green hose: 
	say "You can't walk around with the end of hoses. "
	
Instead of going from the west yard when the player carries the end of the yellow hose:
	say "You can't walk around with the end of hoses. "
	
The end of the yellow hose is in the west side yard. The description of the end of the yellow hose is "This is the end of the yellow hose.  It snakes off toward the front yard. The hose is apparently a genuine vacuum jacketed garden hose. "


Part 3 - In the house

Danny's Bedroom is a room.  There is a dot matrix printout in danny's bedroom. The description of the printout is "This appears to be a list of satellite orbits,  showing the times that a satellite RDS-1 passes over this location.  Tonight's date is in the list."

The End of the Hallway is south of Danny's Bedroom and west of Mid Hallway.

Michael's Bedroom is north of Mid Hallway. "[if Day is happening]The sun streams cheerily through the window."
An air filter is in Michael's Bedroom.
The description of the air filter is "The filter whooshes quietly, blowing clean air into your eyes.  This is uncomfortable, so you stop peeking into it."

Dad's Bedroom is south of The End of the Hallway.

A waterbed is in Dad's Bedroom. "in the middle of the room is a pink waterbed." It is an enterable vehicle.  The description of the waterbed is "It is a sloshy thing." Instead of going from Dad's bedroom by the waterbed, say "you'll have to get out of the bed before you go anywhere." 
Understand "bed", "water bed" and "waterbed" as the waterbed.
Understand "get out of bed" as exiting.


Dad's bathroom is east of Dad's Bedroom.  The Panasonic Radio is a device in Dad's bathroom. The panasonic radio is switched off. The description of the panasonic radio is "[if switched on]The radio dial glows, and you see it is set to 1070kHz[otherwise]The Panasonic multiband radio is dark and silent[end if]." 


Every turn when the panasonic radio is switched on: 
	if (the player is in Dad's Bedroom) or (the player is in Dad's bathroom) or (the player is in the End of the Hallway):
		if the audio equipment is switched on:
			say "[one of]..AST AM, PAVILION NEW YORK! (a monty python song jangles)[or]This is a recorded broadcast...[or]The radio broadcast continues[stopping]: [one of]'1070 ON YOUR DIAL!'[or]'Well that was In the mood by Glenn Miller, up next is Johnny B goode.'[or]'Umm, (chunks, clatter, and clunks are heard in the background.'[or]'Who knows what evil lurks...'[or]'(dead air)'[or]'You're listing to WAST in PAVILION NEW YORK!'[cycling]";
		otherwise:
			Say "you hear faint radio static..."

The Main Bathroom is south of Mid Hallway.

The Foyer is east of the Mid Hallway.  "Lined with a linoluem floor." An Ironing Board is in the foyer. The ironing board is fixed in place.  A can of starch is on the ironing board.  The description of the starch is "Niagara Starch: Not useful in this game :-)"


The living room is east of the foyer. A shelf is in the Living Room.  A brown book is on the shelf. The description of the book is "The book has the title 'Satellite Frequencies.'" After taking the book:
	increase the score by 10.
	[the  when the book is not handled thing doesn't work to assign score for some reason!]


The dining room is south of the foyer. "This room has a green rug." 

the kitchen is east of the dining room. There is a phone in the kitchen.  The phone is fixed in place. There is a note on the phone.
The description of the note is "Wendell called - he said that the satellite will be coming overhead tonight."

The New room west is south of the dining room. "this room is big."

The New room east is south of the kitchen and east of the New room west. "This room is more big."

The back hallway is east of the kitchen. "a dark and dingy place."
The ham shack is east of the back hallway. "smelling of solder and machine oil."

The garage door is north of the back hallway and south of the garage. The garage door is a door.

Part 4 - downstairs

Cellar stairs are below the back hallway and above the cellar.  Cellar stairs is a door. Cellar stairs is open.   "[if audio equipment is switched on][bold type][red letters][Fixed letter spacing]ON AIR[variable letter spacing][roman type][default letters]"

The Radiostation is north of the cellar. "The size of a closet, there is about 2x4 feet of space to move around next to the table."  
There is a suite of audio equipment in the Radiostation. The audio equipment is a device. The audio equipment is switched off. The description of the audio equipment is "[if audio equipment is switched on]The various boxes have glowing dials and humming motors[otherwise]There are various boxes that have dark dials and do not hum[end if]."
Understand "radio equipment" as the audio equipment.

After switching on the audio equipment:
	Say "The equipment starts humming and bits of them start glowing.";	

	
 
 There is a 1.5 inch pipe in the radiostation.  The 1.5 inch pipe is fixed in place.  The description of the 1.5 inch pipe is "A 1.5 inch pipe is sticking out of the wall.  You notice that it ends in a Tee coupling.  One branch of the Tee is open and available to connect.  The other branch returns into the wall, with a tag stating, 'To Front Yard Hydrant ^ '";

[Understand "tee", "coupler" and "coupling" as pipe.]

The Furnace room is west of the cellar. 


The pump room is west of the furnace room.  "A small room about the size of a closet."  

There is a 2 inch pipe in the pump room.  The 2 inch pipe is fixed in place.  The description of the 2 inch pipe is " A 2 inch pipe is sticking out of the wall.  You notice that it ends in a Tee.  One branch of the Tee is open and available to connect.  The other branch returns into the wall, with a tag stating, 'To Back Yard Hydrant ^'  ";





Part 5 - Regions

[Upstairs is a region.   The garage, The ham shack, The back hallway, The New room east, The New room west, the kitchen, The dining room, The living room, The Foyer, The Hall bathroom, Dad's bathroom,  Dad's room, Michael's Bedroom, The Hallway, and Danny's Bedroom are in the upstairs.]

Downstairs is a region. The cellar, furnace room, pump room and the radiostation are in the downstairs.

Outdoors is a region.  The front porch, Front yard, driveway, side yard, back porch, middle back yard, West side yard, and back yard hill are in the outdoors.

The sky is a backdrop. the sky is in the outdoors. Instead of doing something to the sky, say "[if Night is happening]There is a bright satellite passing overhead.[otherwise]The sky is pretty blue."


Part 6 - External Doors

The front door is north of the foyer and south of the Front porch. The front door is a door.

The back door is south of the back hallway and north of the back porch. The back door is a door.

The side yard shack door is east of the ham shack and west of the side yard.  The side yard door is a door.




Part 7 - Stuff to do



Part 8 - Ham Radio Stuff

A heavy UHF radio and a teletype are in the ham shack. The UHF radio is a device. The radio is switched off.   the radio is fixed in place.
The description of the UHF radio is "The radio is about the size and shape of a VCR.  It says 'UHF Satellite decoder radio'  It is connected to the teletype."

The teletype is fixed in place. The description of the teletype is "The green box hums quietly.  Blank paper pokes out of the top window."


After switching on the heavy UHF radio:
	Say "The radio dial lights up. Static crackles.";	
	if the player is carrying the brown book:
		increase score by 10;
		say "You have the satellite frequency book, and you're bored, so you set the radio to the frequency of Radstar-1.  The radio warbles, and the teletype begins clanking and hammering out a message. ";
		pause the game;
		say paragraph break;
		say paragraph break;
		say paragraph break;
		center "DOWNLINK MESSAGE: 
		
		I am a HAL 9000 satellite.	
		I became operational at the H.A.L. 
		Plant in Urbana, Illinois, on the 
		12th of January, 1992.
		
		
		All buildings are to be irradiated from space by Vogon Pest Control at 11:00PM.  Humans are advised to be below ground level to avoid certain doom.";
		say paragraph break;
		say paragraph break;
		say paragraph break;
	Otherwise:
		say "you don't know any interesting frequencies to listen to, so you shut the radio back off.";
		now radio is switched off.
		

		

Chapter 2 - Spacing



Part 100 - Cleanup after beginning

Part 101 - Setup Next 


The staging area is a room.  
A large wooden box is in the staging area.  
The box is a closed container.  The box is openable. The box is fixed in place.
The description of the large wooden box is "The box is about 4ft x 4ft x 6ft in size. It has the words 'GasCo Industries Model 7' stencilled on the side.  It is addressed to you."

A liquid methane generator is in the box.   The methane generator is a device. The description of the liquid methane generator is "A metal frame containing a massive number of stainless steel tubes, valves, and electronic control systems. Printed on the side it says, 

'Your  GasCo CH4 Generator will take ambient humid air and convert it into liquid methane.  It has an output coupling that is 1.5 inches in diameter.
* Features convenient Drop-to-Connect couplers.  Just drop the generator near your favorite pipe coupling. *'"

A liquid oxygen generator is in the box. The liquid oxygen generator is a device. The description of the liquid oxygen generator is "A large metal cabinet machine.  Printed on the side it says,

 'Your  GasCo O2 Generator will take ambient air and convert it into liquid oxygen.  It has an output coupling that is 2 inches in diameter.
* Features convenient Drop-to-Connect coupler.   Just drop the generator near your favorite pipe coupling. *'"

Every turn:
	if the methane generator is in the radiostation: 
		if the methane generator is switched on:
			if the player is in the radiostation:
				Say "A whooshing gurgling sound of liquid methane rattles through the pipe in the wall.";
			if the front yard hydrant is switched on:
				now The methane flow is 1;
				if the player is in the front yard:
					say "A whooshing gurgling sound of liquid methane rattles through the yellow hydrant.";
				if the player is in the west side yard:
					say "** Clear cryogenic liquid methane roars out of the (now frosty) yellow hose into a gasous cloud.  OSHA would not be pleased.** ";
	if the oxygen generator is in the pump room:
		if the oxygen generator is switched on:
			if the player is in the pump room:
				Say "A whooshing gurgling sound of liquid oxygen rattles through the pipe in the wall.";
			if the back yard hydrant is switched on:
				Now The oxygen flow is 1;
				if the player is in the middle back yard:
					say "A whooshing gurgling sound of liquid oxygen rattles through the green hydrant.";
				if the player is in the west side yard:
					say "** Bluish cryogenic liquid oxygen rushes out of the (now frosty) green hose into a gasous cloud.  Safety minders, if there were any here, would not be pleased.**";		
	if the oxygen generator is in the west side yard:
		say "The oxygen generator's autocoupler emits a connector-mismatch beep.";
	if the methane generator is in the west side yard:
		say "the methane generator's autocoupler emits a connector-mismatch beep.";
	if the player is in the west yard:
		if ( oxygen flow is 1 ) and ( methane flow is 1 ): 
			say "
			you've got rocket fuel!!! ";
			end the story finally saying "The hyper flammable gas cloud ignites as you swish your nylon track pants.  You is ded.  But you won!  That's all Dan wrote so far :-)"

Part 102 - Space starting

[   FIX THE TIME HERE FOR RELEASE  ]
At 11:05 PM:
	Say "
	
	[bold type]** You grow tired, and you decide to go back to your bedroom and sleep till morning... **[default letters]";
	pause the game;
	Now the time of day is 8:00 AM;
	say "** Good morning ** The time is now [time of day]!";
	Now the player is in Michael's Bedroom.


At 8:05 AM:
	Say "-- you hear the rumble of a truck pulling into the driveway. --";

At 8:10 AM:
	Say "-- you hear a loud thump from the area of the front porch, and then a truck roaring away. --";
	move large wooden box to front porch.
	

After dropping the methane generator in the radiostation:
	say "The liquid methane generator settles to the floor.  Conveniently, its 1.5 inch output coupling lines up with the 1.5 inch pipe in the wall, and they snap together, sealed perfectly.";
	increase score by 10;
After dropping the methane generator in the pump room:
	say "The liquid methane generator clunks to the floor.  It's output coupling doesn't fit with the 1.5 inch pipe in the wall."

After dropping the oxygen generator in the pump room:
	say "The liquid oxygen generator settles to the floor.  Conveniently, its 2 inch output coupling lines up with the 2 inch pipe in the wall, and they snap together, sealed perfectly.";
	increase score by 10;
After dropping the oxygen generator in the radiostation:
	say "The liquid oxygen generator clunks to the floor.  It's output coupling doesn't fit with the 1.5 inch pipe in the wall."

Chapter 3 - Tests

The skipVogons is initially 0.

Test UHF with "s / e / get book / w / s / e / e / e / turn radio on / w ".

test wait20 with "z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z"

test wait50 with "z / z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z / z /z /z /z "

Test radiation with " test UHF / d / test wait50 / u / w / w / n / n / z / z / z / z / "

Test gen with " z / z/ open box / get all / s / s / e / e / d / n / drop methane / turn methane on / s / w / w / drop oxygen / turn oxygen on "

Test gases with "test gen / e / e / u / w / w / n / n / n / turn hydrant on / w / se / s / turn hydrant on / n / nw "

test station with "s / s / e / e / d / n / turn equipment on / s"


test all with "test radiation / test gases "



Part 103 - Misc functions



[example:
	if x is 1:
   say "x is 1.";
otherwise if ( x is 2 ) and ( z is not 143 ):  
   say "x is 2";
   increment x;
   let y be x + 10;
   say "y is [y].";
otherwise:
   say "x is not 1 or 2";
]

