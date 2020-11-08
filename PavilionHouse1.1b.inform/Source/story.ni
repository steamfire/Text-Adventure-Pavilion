"Rogers Rd" by Dan Bowen,  Version 1.1beta

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
Say "You are in a house in the countryside.  You are into electronics, and it is night time.";

The time of day is 10:00 PM.

The oxygen flow is initially 0.
The methane flow is initially 0. 

Chapter 1 - Beginning


At 10:50 PM:
	say "--- You notice a faint sound in the far distance, as if a ray gun were charging up. ----"


At 11:00 PM: 
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

The front yard is north of the Front porch.  "In the sky you notice a bright point of light creeping overhead."  The front yard hydrant is in the front yard.  The front yard hydrant is a device. The front yard hydrant is fixed in place. the description of the front yard hydrant is "A gray metal pipe topped with a blue handle.  A blue garden hose is firmly rusted on to the output threads." A blue hose is in the front yard.  The blue hose is fixed in place.  The description of the blue hose is "The blue hose is connected to the hydrant permanently and snakes over into the west side yard. "
 
The driveway is east of the front yard and north of the garage and northwest of the side yard.  "The gravelly pavement seems gray and boring."

The back yard hill is south of the back porch. the back yard hill is southwest of the side yard. An antenna pole is in the back yard. The antenna pole is fixed in place.  The description of the pole is "The antenna pole is tall."  
There is a dish on the antenna pole. The dish is fixed in place. the description of the dish is "The dish is slowly tracking a bright spot in the sky." The dish is fixed in place.

The middle back yard is south of the back yard hill. The back yard hydrant is in the middle back yard.   The back yard hydrant is a device. The back yard hydrant is fixed in place. the description of the back yard hydrant is "A gray metal pipe topped with a red handle.  A red garden hose is firmly rusted on to the output threads."  A red hose is in the middle back yard.  The red hose is fixed in place.  The description of the red hose is "The red hose is connected to the hydrant permanently and snakes over into the west side yard."


The west side yard is west of the front yard and northwest of the back yard hill. "A long flat lawn down the road from the house."
The end of the red hose is in the west side yard.  The end of the red hose is fixed in place. The description of the end of the red hose is "This is the end of the red hose.  It snakes off toward the back yard. The hose is apparently infinitely long, frictionless and a genuine vacuum jacketed garden hose. "

The end of the blue hose is in the west side yard. The end of the blue hose is fixed in place. The description of the end of the blue hose is "This is the end of the blue hose.  It snakes off toward the front yard. The hose is apparently infinitely long, frictionless and a genuine vacuum jacketed garden hose. "

Part 3 - In the house

Danny's Bedroom is a room.  There is a dot matrix printout in danny's bedroom. The description of the printout is "This appears to be a list of satellite orbits,  showing the times that a satellite RDS-1 passes over this location.  Tonight's date is in the list."

The Hallway is southeast of Danny's Bedroom.

Michael's room is north of The Hallway. 
An air filter is in Michael's room.
The description of the air filter is "The filter whooshes quietly, blowing clean air into your eyes.  This is uncomfortable, so you stop peeking into it."

Dad's room is southwest of The Hallway.

A waterbed is in Dad's room. "in the middle of the room is a pink waterbed." It is an enterable vehicle.  The description of the waterbed is "It is a sloshy thing."

Dad's bathroom is east of Dad's room.

The Hall bathroom is south of The Hallway.

The Foyer is east of the hallway.  "Lined with a linoluem floor." An Ironing Board is in the foyer. The ironing board is fixed in place.  A can of starch is on the ironing board.  The description of the starch is "Niagara Starch: Not useful in this game :-)"


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

The cellar stairs are below the back hallway and above the cellar.  The cellar stairs is a door.

The radiostation is north of the cellar. "A suite of electronics is jammed into the small room. There is nothing to do with them, it appears fully automated."  There is a teal pipe in the radiostation.  The teal pipe is fixed in place.  The description of the teal pipe is " A 1.5 inch teal pipe is sticking out of the wall.  You notice that it ends in a Tee.  One branch of the Tee is open and available to connect.  The other branch returns into the wall, with a tag stating, 'To Front Yard Hydrant ^'"

The Furnace room is west of the cellar. 

The pump room is west of the furnace room.  "A small room about the size of a closet."  There is a pink pipe in the pump room.  The pink pipe is fixed in place.  The description of the pink pipe is " A 2 inch pink pipe is sticking out of the wall.  You notice that it ends in a Tee.  One branch of the Tee is open and available to connect.  The other branch returns into the wall, with a tag stating, 'To Back Yard Hydrant ^'"



Part 5 - Regions

Upstairs is a region.   The garage, The ham shack, The back hallway, The New room east, The New room west, the kitchen, The dining room, The living room, The Foyer, The Hall bathroom, Dad's bathroom,  Dad's room, Michael's room, The Hallway, and Danny's Bedroom are in the upstairs.

Downstairs is a region. The cellar, furnace room, pump room and the radiostation are in the downstairs.

Outdoors is a region.  The front porch, Front yard, driveway, side yard, back porch, middle back yard, and back yard hill are in the outdoors.

The sky is a backdrop. the sky is in the outdoors. instead of doing something to the sky, say "There is a bright satellite passing overhead."


Part 6 - External Doors

The front door is north of the foyer and south of the Front porch. The front door is a door.

The back door is south of the back hallway and north of the back porch. The back door is a door.

The side yard shack door is east of the ham shack and west of the side yard.  The side yard door is a door.




Part 7 - Stuff to do



Part 8 - Ham Radio Stuff

A heavy UHF radio and a teletype are in the ham shack. The radio is a device. The radio is switched off.   the radio is fixed in place.
The description of the radio is "The radio is about the size and shape of a VCR.  It says 'UHF Satellite decoder radio'  It is connected to the teletype."

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

'Your  GasCo CH4 Generator will take ambient humid air and convert it into liquid methane.  It has an output pipe that is 1.5 inches in diameter.
* Features convenient Drop-to-Connect pipe fittings.  Just drop the generator near your favorite pipe. *'"

A liquid oxygen generator is in the box. The liquid oxygen generator is a device. The description of the liquid oxygen generator is "A large, pink metal cabinet machine.  Printed on the side it says,

 'Your  GasCo O2 Generator will take ambient air and convert it into liquid oxygen.  It has an output pipe that is 2 inches in diameter.
* Features convenient Drop-to-Connect pipe fittings.   Just drop the generator near your favorite pipe. *'"

Every turn:
	if the methane generator is in the radiostation: 
		if the methane generator is switched on:
			if the player is in the radiostation:
				Say "A whooshing gurgling sound of liquid methane rattles through the teal pipe in the wall.";
			if the front yard hydrant is switched on:
				now The methane flow is 1;
				if the player is in the front yard:
					say "A whooshing gurgling sound of liquid methane rattles through the blue hydrant.";
				if the player is in the west side yard:
					say "** Clear cryogenic liquid methane roars out of the (now frosty) blue hose into a gasous cloud.  OSHA would not be pleased.** ";
	if the oxygen generator is in the pump room:
		if the oxygen generator is switched on:
			if the player is in the pump room:
				Say "A whooshing gurgling sound of liquid oxygen rattles through the green pipe in the wall.";
			if the back yard hydrant is switched on:
				Now The oxygen flow is 1;
				if the player is in the middle back yard:
					say "A whooshing gurgling sound of liquid oxygen rattles through the red hydrant.";
				if the player is in the west side yard:
					say "** Bluish cryogenic liquid oxygen rushes out of the (now frosty) red hose into a gasous cloud.  Safety minders, if there were any here, would not be pleased.**";			
	if the player is in the west yard:
		if ( oxygen flow is 1 ) and ( methane flow is 1 ): 
			say "
			you've got rocket fuel!!! ";
			end the story finally saying "The hyper flammable gas cloud ignites as you swish your nylon track pants.  You is ded.  But you won!  That's all Dan wrote so far :-)"

Part 102 - Space starting

[   FIX THE TIME HERE FOR RELEASE  ]
At 11:05 PM:
	Say "-- you hear the rumble of a truck pulling into the driveway. --";

At 11:08 PM:
	Say "-- you hear a loud thump from the area of the front porch, and then a truck roaring away. --";
	move large wooden box to front porch.
	

After dropping the methane generator in the radiostation:
	say "The liquid methane generator settles to the floor.  Conveniently, its 1.5 inch output pipe lines up perfectly with the black 1.5 inch pipe in the wall, and they snap together, sealed perfectly.";
	increase score by 10;
After dropping the methane generator in the pump room:
	say "The liquid methane generator clunks to the floor.  It's output pipe doesn't fit with the pink pipe in the wall."

After dropping the oxygen generator in the pump room:
	say "The liquid oxygen generator settles to the floor.  Conveniently, its 2 inch output pipe lines up perfectly with the pink 2 inch pipe in the wall, and they snap together, sealed perfectly.";
	increase score by 10;
After dropping the oxygen generator in the radiostation:
	say "The liquid oxygen generator clunks to the floor.  It's output pipe doesn't fit with the teal pipe in the wall."

Chapter 3 - Tests


Test radio with "s / e / get book / w / s / e / e / e / turn radio on / w / ".

test wait with "/ z / z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /"

Test radiation with " test radio / d / test wait / u / w / w / n / n / z / z / z / z / "

Test gen with " z / z/ open box / get all / s / s / e / e / d / n / drop methane / turn methane on / s / w / w / drop oxygen / turn oxygen on "

Test gases with "test gen / e / e / u / w / w / n / n / n / turn hydrant on / w / se / s / turn hydrant on / n / nw "

test all with "test radiation / test gases "




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

