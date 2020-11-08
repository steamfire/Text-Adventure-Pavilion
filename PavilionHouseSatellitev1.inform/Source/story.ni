"Rogers Rd" by Dan Bowen,  Version 1.0

Include Exit Lister by Gavin Lambert.
Include Basic Screen Effects by Emily Short.

Use scoring. 
The maximum score is 40.
[The "when play begins" rules are checked only at the start of a story, not when a saved session is restored from disc. What happens is that these rules are followed, then the story's banner is printed, then the initial room description is printed up, and then the player is asked for a first command.]

Table 1 - Rankings
Score	Rank
0	"Boring person"
10	"Curious person"
20	"interesting person"
40	"Smart person"




[Every turn when the turn count is 92:
    end the story finally saying "You have grown bored, never having figured out the satellite, and you die.  THE END" ]


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
		end the story finally;
	Otherwise:
		turn the background red;
		say "[black letters]You are hardly aware as you are zapped into oblivion by the Vogon Pest Control Beam. 
		end the story finally saying 
		
		You have died.";
		say default letters;
		end the story finally.
	
	



When play begins:	
[Now the right hand status line is "Score: [score] in [turn count] turns";]
Now the left hand status line is "[the player's surroundings] / Score: [score]";
Now the right hand status line is "Time: [time of day]";
Say "You are in a house in the countryside.  You are into electronics, and it is night time.";


The time of day is 10:00 PM.

Part 1 - Outdoors

The Front Porch is a room.

The front yard is north of the Front porch.  "In the sky you notice a bright point of light creeping overhead."
 
The driveway is east of the front yard and north of the garage and northwest of the side yard.  "The gravelly pavement seems gray and boring."

The back yard hill is south of the back porch. the back yard hill is southwest of the side yard. An antenna is in the back yard. The antenna is fixed in place.  The description of the antenna is "The antenna pole is tall, and has a satellite dish on top.  The disk is slowly tracking a bright spot in the sky."

The middle back yard is south of the back yard hill.


Part 2 - In the house

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

Part 3 - downstairs

The cellar stairs are below the back hallway and above the cellar.   The cellar stairs is a door.

The Furnace room is west of the cellar. 

The radiostation is north of the cellar. "A suite of electronics is jammed into the small room. There is nothing to do here, it appears fully automated."

Part 4 - Regions

Upstairs is a region.   The garage, The ham shack, The back hallway, The New room east, The New room west, the kitchen, The dining room, The living room, The Foyer, The Hall bathroom, Dad's bathroom,  Dad's room, Michael's room, The Hallway, and Danny's Bedroom are in the upstairs.

Downstairs is a region. The cellar, furnace room, and the radiostation are in the downstairs.

Outdoors is a region.  The front porch, Front yard, driveway, side yard, back porch, middle back yard, and back yard hill are in the outdoors.

The sky is a backdrop. the sky is in the outdoors. instead of doing something to the sky, say "There is a bright satellite passing overhead."


Part 5 - External Doors

The front door is north of the foyer and south of the Front porch. The front door is a door.

The back door is south of the back hallway and north of the back porch. The back door is a door.

The side yard shack door is east of the ham shack and west of the side yard.  The side yard door is a door.




Part 6 - Stuff to do



Part 7 - Ham Radio Stuff

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
		
	


Test me with "s / e / get book / w / s / e / e / e / turn radio on".
		

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

