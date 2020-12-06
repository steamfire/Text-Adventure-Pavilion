"Rogers Rd" by Dan Bowen

The story headline is "Version 1.4.3 Beta". 
The story genre is "Science Fiction". 
The story description is "A nerdy adventurer in their rural home uses technology at hand to bring space is closer than they thought possible.".
The story creation year is 2020.

Include Exit Lister by Gavin Lambert.
Include Basic Screen Effects by Emily Short.
Include Easy Doors by Hanon Ondricek.
Include ComputersTeletype by Dan Bowen.

Book 1 - Setting up the game

Use memory economy.

Use scoring and the serial comma. 
The maximum score is 200.

Part 1 - Variables, Scenes, Times

[Fix the halNotice when UHF/teletype go off/on]

[The "when play begins" rules are checked only at the start of a story, not when a saved session is restored from disc. What happens is that these rules are followed, then the story's banner is printed, then the initial room description is printed up, and then the player is asked for a first command.]

Table 1 - Rankings
Score	Rank
0	"Boring person"
10	"Curious person"
20	"Interesting person"
40	"Smart person"
60	"Nosey Sleuth"
100	"Elon Musk"
200	"Astronaut, Marooned"


The player's firstName is a text that varies. The player's full name is a text that varies.
SleepyMoveToBed is initially false.

When play begins:
	Now the left hand status line is "[the player's surroundings] / Score: [score]";
	Now the right hand status line is "Time: [time of day]";
	say "[banner text][paragraph break]";
	say "[if SleepyMoveToBed is false] DEBUG: NO AUTO-MOVE TO BEDROOM WHEN ADVANCING TO MORNING[paragraph break]";
	Say "You are in your rural home in the countryside, and it is [time of day].";
	Now the command prompt is "What is your name? > ";
	if the screen width is less than 64:
		say "[paragraph break]*** It would be good if you could widen your window, or shrink your font, so this line fits: ";
		say "[line break][fixed letter spacing]----------------------------------------------------------------[line break][variable letter spacing]";

The player is in Your Bedroom.

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
	[Say "The sun is up outside.";]
	Now the description of the sky is "The sun is up, and the sky is nicely blue.";
	Now the west side yard is lighted;
	Now the front yard hydrant is in the front yard;
	Now the yellow hose is in the front yard; 
	Now the middle back yard is lighted;
	Now the back yard hydrant is in the middle back yard;	
	Now the green hose is in the middle back yard; 	


	
When Night begins: 
	[Say "The sun has set outside.";]
	Now the description of the sky is "There is a satellite crawling across the sky...";
	Now the west side yard is dark;	
	Now the front yard hydrant is nowhere;
	Now the back yard hydrant is nowhere;
	Now the middle back yard is dark;
	Now the green hose is nowhere;
	Now the yellow hose is nowhere; 	

			
Part 2 - Initial Player Name Collecting

To decide whether collecting names:
	if the command prompt is "What is your name? > ", yes;
	no.
	
After reading a command when collecting names:
	now the player's full name is the substituted form of "[the player's command in title case]";
	now the player's firstName is word number 1 in the player's full name;
	now the command prompt is ">";
	say "Hi, [player's firstName]![paragraph break]";
	move the player to the location;
	reject the player's command.

[We also want to postpone the proper beginning of the game until we've gotten the name:]

Instead of looking when collecting names: do nothing.

Rule for printing the banner text when collecting names: do nothing.

Rule for constructing the status line when collecting names: do nothing.

		
Book 2 - Initial House/Yard exploration

Part 1 - Places Setup

The staging area is a room. 
The post office is a room.
The UPS Depot is a room.  "A huge parking lot at the edge of the airport freight ramp next to a hulking brown warehouse.  A brown 767 jet plane is parked to the east.".
The UPS Plane is east of the Depot.

Chapter 1 - Outdoors 

The Front Porch is a room.

The front yard is north of the Front porch.  "[if Night is happening]In the sky you notice a bright point of light creeping overhead.[otherwise]It is a nice bright day out here." The front yard hydrant is a device. The front yard hydrant is fixed in place. the description of the front yard hydrant is "A gray metal pole topped with a yellow handle.  A yellow garden hose is firmly rusted on to the output threads."  The yellow hose is fixed in place.  The description of the yellow hose is "The yellow hose is connected to the hydrant permanently and snakes over into the west side yard. "
 
The driveway is east of the front yard and north of the garage and northwest of the side yard.  "The gravelly pavement seems gray and boring."  There is a mailbox in the driveway.  The mailbox is an openable container.  The mailbox is fixed in place.

The back yard hill is south of the back porch. the back yard hill is southwest of the side yard. An antenna pole is in the back yard. The antenna pole is fixed in place.  The description of the pole is "The antenna pole is tall."  
There is a dish on the antenna pole. The dish is fixed in place. the description of the dish is "The dish is slowly tracking[if Night is happening] a bright spot in the sky.[otherwise] the blue sky." The dish is fixed in place.

The middle back yard is south of the back yard hill.   The back yard hydrant is a device. The back yard hydrant is fixed in place. the description of the back yard hydrant is "A gray metal pole topped with a green handle.  A green garden hose is firmly rusted on to the output threads."   The green hose is fixed in place.  The description of the green hose is "The green hose is connected to the hydrant permanently and snakes over into the west side yard."


The west side yard is west of the front yard and northwest of the back yard hill. "A long flat lawn down the road from the house."
The end of the green hose is in the west side yard.  The description of the end of the green hose is "This is the end of the green hose.  It snakes off toward the back yard. The hose is apparently a genuine vacuum jacketed garden hose. " 

Instead of going from the west yard when the player carries the end of the green hose: 
	say "You can't walk around with the end of hoses. "
	
Instead of going from the west yard when the player carries the end of the yellow hose:
	say "You can't walk around with the end of hoses. "
	
The end of the yellow hose is in the west side yard. The description of the end of the yellow hose is "This is the end of the yellow hose.  It snakes off toward the front yard. The hose is apparently a genuine vacuum jacketed garden hose. "

The front door is north of the foyer and south of the Front porch. The front door is a door.

The back door is south of the back hallway and north of the back porch. The back door is a door.

The side yard shack door is east of the ham shack and west of the side yard.  The side yard door is a door.

Chapter 2 - In the house

Section 1 - Upstairs

Danny's Bedroom is a room.  There is a dot matrix printout in danny's bedroom. The description of the printout is "This appears to be a list of satellite orbits,  showing the times that a satellite RDS-1 passes over this location.  Tonight's date is in the list."

The End of the Hallway is south of Danny's Bedroom and west of Mid Hallway.

Your Bedroom is north of Mid Hallway. "[if Day is happening]The sun streams cheerily through the window."
An air filter is in Your Bedroom. The description of the air filter is "The filter whooshes quietly, blowing clean air into your eyes.  This is uncomfortable, so you stop peeking into it.".
after taking the filter:
	say "Well, now you have an air filter.";
	now the description of the air filter is "The filter is mutely silent, contemplating its lost glory and gusto."

Dad's Bedroom is south of The End of the Hallway.

A waterbed is in Dad's Bedroom. "in the middle of the room is a pink waterbed." It is an enterable supporter.  The description of the waterbed is "It is a sloshy thing." 
After entering the waterbed:
	say "Ahhh, this is comfy.  You stretch out, and can't resist taking a 10 minute nap.";
	Increase the time of day by 10 minutes;
	Say "It's now [time of day].  That was nice.";
	
Instead of going from Dad's bedroom by the waterbed, say "you'll have to get out of the bed before you go anywhere." 
Understand "bed", "water bed" and "waterbed" as the waterbed.
Understand "get out of bed" as exiting.

There is an answering machine in Dad's bedroom. The description of the answering machine is "A fine product from the Tel-O-Matic corporation.  The features were once written on the worn woodgrain finish, but you can only make out every few letters.  Now it looks like  'With Garble-Tone erase-yo-calls'.  There is a worn out button on the machine.".
Instead of taking the answering machine, say "The answering machine emits a little plastic objecting noise, so you put it back nicely and give it a pat on the tape head. It will be happier here.".

A button is a kind of thing. The play button is a part of the answering machine. The play button is a button.  The description is "A rubbery thing, tiredly awaiting its fate.".

After pushing the play button:
	say "Hey [player's FirstName], it's Wendell.  I finally hacked into that old asteroid scanner satellite!  The password was so simple- '[password of HALsecureA]'.  It took me like a week of trying though. I was definitely disappointed that it didn't offer me any nuclear-themed games to play hahaha.  The behavior was a little glitchy once I got in, hopefully it doesn't crap out before you get to play with it.  later.";



Dad's bathroom is east of Dad's Bedroom.  The Panasonic Radio is a device in Dad's bathroom. The panasonic radio is switched off. The description of the panasonic radio is "[if switched on]The radio dial glows, and you see it is set to 1070kHz[otherwise]The Panasonic multiband radio is dark and silent[end if]." 


Every turn when the panasonic radio is switched on: 
	if (the player is in Dad's Bedroom) or (the player is in Dad's bathroom) or (the player is in the End of the Hallway):
		if the audio equipment is switched on:
			say "[one of]..AST AM, PAVILION NEW YORK! (a monty python song jangles)[or]This is a recorded broadcast...[or]The radio broadcast continues[stopping]: [one of]'1070 ON YOUR DIAL!'[or]'Well that was In the mood by Glenn Miller, up next is Johnny B goode.'[or]'Umm, (chunks, clatter, and clunks are heard in the background.'[or]'Who knows what evil lurks...'[or]'(dead air)'[or]'You're listing to WAST in PAVILION NEW YORK!'[cycling]";
		otherwise:
			Say "you hear faint radio static..."

The Main Bathroom is south of Mid Hallway.
The toilet is a supporter in the main bathroom.  The toilet is fixed in place.  The Popular Mechanics Magazine is on the toilet. The popular mechanics magazine is a container. it is closed. It is unopenable.

The Foyer is east of the Mid Hallway.  "Lined with a linoleum floor." An Ironing Board is in the foyer. The ironing board is fixed in place.  A can of starch is on the ironing board.  The description of the starch is "The spray can, shiny green, coyly proclaims 'Niagara Starch:  Now your life has meaning!™'"

The Living room is east of the foyer. A shelf is in the Living Room.  A brown book is on the shelf. The description of the book is "The book has the title 'Satellite Frequencies.'" After taking the book for the first time:
	increase the score by 5.

The Dining room is south of the foyer. "This room has a green rug." A green rug is scenery in the dining room.  "The rug is green and shaggy, as a grassy lawn in the springtime isn't.".

The Kitchen is east of the dining room. There is a phone in the kitchen.  The phone is fixed in place. There is a note on the phone.
The description of the note is "Wendell called - he said that the satellite will be coming overhead tonight."

There is a hot dog in the staging area. The hot dog is edible.

Check eating something for the second time:
	say "If you don't be careful you're going to break your teeth.";
	rule succeeds;
	
Check eating something for the third time:
	move the hot dog to the kitchen;
	say "ok fine.  There's food in the kitchen.";
	rule succeeds;

The New room West is south of the dining room. "this room is big."  
The Sliding Glass Door is an easydoor in the New Room West. "A sliding glass door is to the south, and looks to lead out the back of the house.". It leads to the Middle Back yard.  It is closed.  The description of the sliding glass door is "You see [if the middle back yard is dark]darkness[otherwise]a dropoff of about 4 feet down to the back yard[end if] through the door.".
 Instead of going south in the New Room West, try entering the sliding glass door.  
instead of entering the sliding glass door for the first time:
	say "Hmm.  It looks like there's no porch, just a 4 foot dropoff to the yard.";
Instead of jumping when the sliding glass door is open:
	say "You sail out of the doorway, tucking and rolling as the grass meets you.";
	move player to middle back yard;
Carry out entering sliding glass door:
	say "You tumble off the 4 foot ledge into the back yard.  That didn't feel good.";
	decrease the score by 1;

Understand "jump out" as jumping.

The New room East is south of the kitchen and east of the New room west. "This room is more big."

The Back hallway is east of the kitchen. "a dark and dingy place."
The Ham shack is east of the back hallway. "A room of radios and gadgets, smelling of solder and machine oil."

The garage door is north of the back hallway and south of the garage. The garage door is a door.  

There is a roll of paper tape in the garage. The description of the tape is "A large roll of inch-wide paper, about 10 inches in diameter.  Hundreds of rows of holes are punched along it in a seemingly random pattern in a grid 6 holes wide.";

Section 3 - Downstairs

Cellar stairs are below the back hallway and above the cellar.  Cellar stairs is a door. Cellar stairs is open.   "[if audio equipment is switched on][bold type][red letters][Fixed letter spacing]ON AIR[variable letter spacing][roman type][default letters]"

The Radiostation is north of the cellar. "The size of a closet, there is about 2x4 feet of space to move around next to the table."  
There is a suite of audio equipment in the Radiostation. The audio equipment is a device. The audio equipment is switched off. The audio equipment is fixed in place. The description of the audio equipment is "[if audio equipment is switched on]The various boxes have glowing dials and humming motors[otherwise]There are various boxes that have dark dials and do not hum[end if]."
Understand "radio equipment" as the audio equipment.  

The AM Transmitter is a device in the Radiostation.  AM Transmitter is switched off. The AM transmitter is fixed in place.
The AM Transmitter Frequency is initially 1070.

After switching on the audio equipment:
	Say "The equipment starts humming and tape reels starts turning...";	

After switching on the AM Transmitter:
	Say "A glass vacuum tube begins to glow slightly.";
	increase score by 5;
	
 
 There is a 1.5 inch pipe in the radiostation.  The 1.5 inch pipe is fixed in place.  The description of the 1.5 inch pipe is "A 1.5 inch pipe is sticking out of the wall.  You notice that it ends in a Tee coupling.  One branch of the Tee is open and available to connect.  The other branch returns into the wall, with a tag stating, 'To Front Yard Hydrant ^ '";

[Understand "tee", "coupler" and "coupling" as pipe.]

The Furnace room is west of the cellar. 

The Pump room is west of the furnace room.  "A small room about the size of a closet.".  There is an abandoned well pump in the pump room.  The well pump is fixed in place. The description of the well pump is "A black motor on a tall metal tank.  It seems disconnected from everything else.".
Does the player mean doing something to the well pump: it is likely.

There is a 2 inch pipe in the pump room.  The 2 inch pipe is fixed in place.  The description of the 2 inch pipe is " A 2 inch pipe is sticking out of the wall.  You notice that it ends in a Tee.  One branch of the Tee is open and available to connect.  The other branch returns into the wall, with a tag stating, 'To Back Yard Hydrant ^'  ";





Chapter 3 - Regions

[Upstairs is a region.   The garage, The ham shack, The back hallway, The New room east, The New room west, the kitchen, The dining room, The living room, The Foyer, The Hall bathroom, Dad's bathroom,  Dad's room, Your Bedroom, The Hallway, and Danny's Bedroom are in the upstairs.]

Downstairs is a region. The cellar, furnace room, pump room and the radiostation are in the downstairs.

Outdoors is a region.  The front porch, Front yard, driveway, side yard, back porch, middle back yard, West side yard, and back yard hill are in the outdoors.

The sky is a backdrop. the sky is in the outdoors. Instead of doing something to the sky, say "[if Night is happening]There is a bright satellite passing overhead.[otherwise]The sky is pretty blue." 


Part 2 - Doing Ham Radio Stuff

A heavy UHF radio is in the ham shack. The UHF radio is a device. The radio is switched off.   the radio is fixed in place.
The description of the UHF radio is "The radio is about the size and shape of a VCR.  It says 'UHF Satellite decoder radio'  It is connected to the teletype."

The Teletype is computer in the ham shack.  The teletype is switched off.  The description is "The teletype is a green boxy thing, with a typwriter keyboard, paper coming out the top, and a paper tape reader on the side.[if the teletype is switched on]A motor deep inside hums quietly.[otherwise] It is turned off."  The description of the keyboard is "An array of rods sticking out of the lower front of the boxy teletype.  The end of each rod is bent upward, and sports a round, cylindrical, black cap, each marked with a letter or number, like the keys of an old fashioned typewriter".  The paper tape reader is an extension port.  It is part of the teletype.  the description of the paper tape reader is "The punched paper tape reader is a bulging box hanging off the left side of the main teletype. It is used to transmit large amounts pre-recorded data through the teletype."

Understand "paper", "message", "text", "slot", "glass", "window" and "readout" as a screen.
Understand "tty" as teletype.

The roll of paper tape is a data storage device.
Does the player mean examining the paper tape roll: it is unlikely.


Book 1 - Magazine and Mail Ordering

Part 1 - Reading mechanism

The Popular Mechanics Magazine has a number called the last page read. The Popular Mechanics Magazine has a number called the length. The length of the Popular Mechanics Magazine is 50. 

Understand the command "read" as something new.
Instead of opening the magazine:
	if the noun is carried by the player:	
		try reading the magazine;
	otherwise:
		say "You don't have that.";
		rule fails;
Instead of closing the magazine:
	say "Done.";

Understand "read [something]" or "consult [something]" or "read in/from [something]" as reading. Reading is an action applying to one thing, requiring light.

Understand "read [number] in/from/of [something]" or "read page [number] in/from/of [something]" or "look up page [number] in/from/of [something]" or "consult page [number] in/from/of [something]" as reading it in. Reading it in is an action applying to one number and one thing, requiring light.

Instead of reading the magazine for the first time:
		try examining magazine;
		wait for any key;
		try reading magazine;

Named page is a kind of value. The named pages are first page, last page, next page, previous page.

To decide what number is the effective value of (L - last page):
	decide on the length of the magazine.

To decide what number is the effective value of (F - first page):
	decide on 1.

To decide what number is the effective value of (N - next page):
	let X be the last page read of the magazine plus 1;
	decide on X.

To decide what number is the effective value of (P - previous page):
	let X be the last page read of the magazine minus 1;
	decide on X.

Understand "read [named page] in/from/of [something]" or "read the [named page] in/from/of [something]" as reading it relatively in. Reading it relatively in is an action applying to one named page and one thing, requiring light.

Does the player mean reading something in the Popular Mechanics Magazine: it is very likely.

This is the magazine requirement rule:
	if the player is not carrying the Popular Mechanics Magazine, say "You strain your eyes, but alas, it's too far away to read the print." instead.

Check reading it relatively in:
	if the second noun is not the Popular Mechanics Magazine, say "There are no pages in [the second noun]." instead;
	abide by the magazine requirement rule.

Carry out reading it relatively in:
	let N be the effective value of the named page understood;
	now the number understood is N;
	try reading N in the magazine.

Check reading it in:
	if the second noun is not the Popular Mechanics Magazine, say "There are no pages in [the second noun]." instead;
	abide by the magazine requirement rule.

Check reading it in:
	if the number understood is greater than the length of the Popular Mechanics Magazine, say "There are only [length of Popular Mechanics Magazine in words] pages in the magazine." instead;
	if the number understood is less than 1, say "The page numbering begins with 1." instead.

Carry out reading it in:
	read page number understood.

Check reading:
	if the noun is not the Popular Mechanics Magazine, say "There are no pages in [the noun]." instead;
	abide by the magazine requirement rule.

Carry out reading:
	say "You open to the contents page. [paragraph break]";
	try reading 1 in the Popular Mechanics Magazine.


To read page (N - a number):
	now the last page read of the Popular Mechanics Magazine is N;	
	if there is a content corresponding to a page of N in the Table of magazine Contents:
		choose row with a page of N in the Table of magazine Contents;
		say "[fixed letter spacing][line break][if N is an even number]
 [N]                                             Popular Mechanics [line break] ----------------------------------------------------------------[line break][otherwise]
FEBRUARY, 1957                                                [N] [line break] ----------------------------------------------------------------[line break][end if][variable letter spacing]
[content entry][paragraph break]";
	otherwise:
		say "Page [N] appears to be boring."
		
[THIS IS HOW TO MAKE SOMETHING HAPPEN WHEN READING A SPECIFIC PAGE!]
To read page (N - 47):
	say "Your eyes burn; your ears ring. Beneath your gaze, the dreadful sigils writhe, reminding you of that which lies outside the edges of the universe...";
	end the story saying "You have lost your remaining sanity".

Part 1 - Table of Contents

PMTOC is initially "[line break][bold type]IN THIS ISSUE:[roman type][paragraph BREAK]PAGE                         ARTICLE[line break]   1..............................Table of Contents[line break]   6..............................The Quest for Rocket Power[LINE BREAK] 13..............................Exciting Outdoor Gear Reviews[line break] 16..............................Advertising Section[line break] 21..............................Miracle computers that understand your voice[line break]";

Table of magazine Contents
page	content
1	"[PMTOC]"
6	"[rocketPower]"
13	"[camping]"
16	"[advertisingSection]"
21	"[computerArticle]"


		

Part 2 - Content Articles

computerArticle is initially "Computers are Whizz-bang!".

advertisingSection is initially "[bold type]ADVERTISEMENT SECTION[roman type][paragraph break]
HAMSTERS - Ideal pets.  $2.95 per rodent.  Jer-fre's Hamstery,[line break]
1447 Apple, Muskegon 13 Michigan.  Order a Hamster today![paragraph break]
Join R.H. Goddard in the ELITE CLUB OF LIQUID FUEL ROCKET[line break]
FUELERS!  Until now amateur rocket fuels have been tame and[line break]
lacking get-up-and-go, with such humdrum materials such as[line break]
gasoline, kerosene, and potassium permanganate.  GasCo[line break]
Industries has a special offer for you.  The GasCo Model 7[line break]
Generator Pack is now available by mail order.  For making[line break]
liquid oxygen and liquid methane in your backyard, this pair[line break]
can't be beat.  Comes with one Liquid Methane Generator, and one[line break]
Liquid Oxygen Generator.  No assembly required.  Self-powered,[line break]
and draws the raw materials needed directly from the air around[line break]
you.  Just set them up and watch the cryogenic liquids flow![line break]
Order generators today![paragraph break]
ACCORDIONS - new.  Lowest prices available.  Save up to 50%. [line break]
Accordion Manufacturers, Dept 40-R, 2003 Chicago 22, Illinois.[line break]
Order an accordion today![paragraph break]
MAGIC TRICKS - Amaze—mystify-entertain!  500 TRICKS.  Contains[line break]
latest, best magic for pocket, club, stage.  Only 10¢. DOUGLAS[line break]
MAGICLAND, Dept. E, DALLAS TEXAS. Order magic tricks today![line break]".

rocketPower is initially "[bold type]Seeking Fuel for Space Rockets[roman type][paragraph break]
    Guarded by sandbags, a man sits before a panel on which[line break]
are rows of gauges. as he turns valves, needles of the gauges[line break]
spin and gyrate.  From behind the sandbags comes a hiss, and[line break]
a puff of smoke.  The man relaxes as the gauges come back to[line break]
rest.  In those few seconds all the fires of hell have been[line break]
raging in the little cylinder behind the sandbags. [line break]
Terrifically explosive liquids have just reached a[line break]
temperature half that of the sun and a velocity of 3,600[line break]
miles per hour.[paragraph break]
    Scientists do not speculate on traveling to the moon[line break]
every time they see a sky rocket.  However, they do say: 'We[line break]
are experimenting with fuels for rocekts.  It may be that in[line break]
the reasonably near future science will succeed in sending a[line break]
rocket higher than any man-made contrivance ever traveled[line break]
before.  Perhaps such a rocket might reach an altitude of[line break]
500,000 feet.  A rocket to the moon... that is still a[line break]
dream.'[paragraph break]
    The problems of a powerful enough fuel and a long-life[line break]
combustion chamber are the stumbling blocks which are holding[line break]
back rocket flights.  Certain experiments seem to favor the[line break]
use of powder explosives, but in general, liquid fuels seem[line break]
to offer the best prospects.  A combination of liquid oxygen[line break]
and liquid methane has proved very efficient.  Combustion[line break]
chambers of carbon, stainless steel alloys and copper alloys[line break]
have shown modest success, but it is likely that the ideal[line break]
metal may be an alloy yet to be discovered.[paragraph break]
    Rocket scientists have calculated that a velocity of[line break]
seven miles per second, or approximately 25,000 miles per[line break]
hour, would be necessary for a rocket to escape the earth's[line break]
gravity.  With the hissing roar of the sandbagged motor,[line break]
another significant step is taken in humankind's struggle to[line break]
conquer space.[line break]"


camping is initially "[bold type]Outdoor Gear of the Year[roman type][paragraph break]
  Outdoor activities far from power lines and modern[line break]
  conveniences have brought back many 'old-time' appliances for[line break]
  campers, boaters and others. Now you can have a wood or[line break]
  coal-burning cast-iron stove, just like Grandma used to use,[line break]
  only better.  The compact little stove stands only 10 inches[line break]
  high, is 18 by 13 inches square and weighs 40 pounds. It'll[line break]
  burn any kind of fuel, from logs and coal to patent chemical[line break]
  fuels, and an optional attachment will rig it for oil. For[line break]
  boaters, it has a top railing to keep pots and pans from[line break]
  sliding off in rough seas. It's made by Washington Stove[line break]
  Works, Box 919, Everett, Wash. 
  
  Another convenience for outdoor living in a new compact form[line break]
  is the little 6 or 12- volt electrical water-pressure system[line break]
  being made by Grover Products Co., of 1233 South Hope St., Los[line break]
  Angeles 15, Calif. The motor and pump don't take up any more[line break]
  space than half a loaf of bread, but they'll put running water[line break]
  in a car or boat with instant. automatic pressure without[line break]
  a pressure tank, and will supply up to six faucets. The[line break]
  gadget will work as a bilge pump or bait-tank circulation[line break]
  system, too.
  
  Fishers and bird-watchers can learn to spot their quarry[line break]
  by sound with a new 12-inch long-playing record of fish and[line break]
  bird noises that comes with the Part Animal Sounds and[line break]
  Communication, published by the American Institute of[line break]
  Biological Sciences, 2000 P. St. N.W., Washington 6, D.C.[line break]".


instead of examining the magazine:
	say fixed letter spacing;
	say paragraph break;
	say " _ \  _ \  _ \ |  | |      \   _ \           '''''''''''''''''''[line break]";
	say " __/ (   | __/ |  | |     _ \    /  FEBRUARY ''''_''''''___,::~~[line break]";
	say "_|  \___/ _|   \__/____|_/  _\_|_\      1957 ''''''''''____,:::,[line break]";
	say "                                             '''''''''__________[line break]";
	say "  \  | __|  __| |  |   \    \ |_ _|  __|  __|''''''''''''_''''''[line break]";
	say " |\/ | _|  (    __ |  _ \  .  |  |  (   \__ \'''''''''''''''''''[line break]";
	say "_|  _|___|\___|_| _|_/  _\_|\_|___|\___|____/'''''''''''''''''''[line break]";
	say "_______________'':,''''''''''''''''''__'''''''''''''''''''''''''[line break]";
	say "__,,,__________',}y)=_'''''''''''''_____'''''''''' ''''''''''''''[line break]";
	say ",,,,___________'_Jy4aos>~'''''''____'_''''''''''''''''''''''''''[line break]";
	say ",,,,_____________?a444o2ZC~'''''_'''''''''''''''........''''''''[line break]";
	say ",,,_,____________~yZ42h44ZJ:''''''''''''''''''..........''''''''[line break]";
	say ",,,____,,,,,,,____=XUhPeehcJ~''''''''......................'''..[line break]";
	say ",,,,,:,,:,,,,,,,,,:}A6ZeePh{J;'''''''..------..........-----....[line break]";
	say ":::::::::::::::::::!\ADGeeePst='''..-``````-...''....-```````---[line break]";
	say ":::::::::::~~~~::,,,,=4DkeeePyt*'.-```````-..'''....-`````````--[line break]";
	say ":::::::::::::::,,_____~VdKPheeyJ|'``````---....-----````````````[line break]";
	say ":,,,,::,,,,,,_________':{d6Zhhe4J7_```````-----`````````````````[line break]";
	say ",,,,,,,,________''_''''''LDDGehP2tc:````````````````````  ``````[line break]";
	say ":::,__________'''''''''...rKDAehPZC/+``````````            `````[line break]";
	say "~~~:,____''''''''''.-``````,GdKZhhPGcr-```` ````          ``````[line break]";
	say "~~~~:,___'''''..--````````` _CdqGheZo|*-       ````````         [line break]";
	say "~~~~:,_''.--````````         `}bHXPeZ*>*'        ``````         [line break]";
	say ":,__''.```````                `/dDKZh/rr*~        ``````-.''_'''[line break]";
	say "''.``                          '$dd6G}^^^>!` `   ```-..'''___'''[line break]";
	say "``                             `q&RdDZz^=+rr```-.'''''''''______[line break]";
	say "```                        `   `/@@&bDX}rr*>+''''_____'''___,,,,[line break]";
	say "                       ``````--._X@@Qbd$y>!,_____,,,,___:::~~~~:[line break]";
	say "                    ```-.''''''''_JWWGC*!-  `'::~~~~::~~~~~~~~~~[line break]";
	say "                 ```.'_,,,::::,,,_,~,,,,,::_`  '~~~~~~~!!!!!!!!![line break]";
	say "             `  ```-'_::~~~~~~~~~~~~~~~~~~~~~:-  '~!!!!+++++++==[line break]";
	say "             `  ``-'_,:~~~~~~~!!!!!!!!!!!!!!;++!_-`'!=^^^^r^rrrr[line break]";
	say "               ``.'_,:::~~~~~!!!!;+++=======^^^^^=~_'!r>>>>>>>>>[line break]";
	say "           `  ``.''___,,,:~~!!!!++==^^rrrrrr^^rrrrrr^rr**<<<<<<<[line break]";
	say "`  `  ``ROCKETS OF THE FUTURE!+==^^rrr>>>>rrrr^^^rr><<**********[line break]";
	say "``.''''''__'_____,,,,::~~~!!++=^^rrr>><<<>>>>rrrr>><<<******<<>>[line break]";
	say "..''''___,,,,:::::~~~~~~~!!!+=^^rr>>><<<<<<<<<<<<<<<<<<<<<<>r^!![line break]";
	say "````.'_,,:::,,,::~~~!!!!!;+=^^rr>><<<<<<<<<<<>>>>rrrrrrrrr^^=+!~[line break]";
	say variable letter spacing;



Part 2 - The ordering process

Hamsters item, generators item, magic tricks item, and accordions item are part of the magazine.  
The hamsters order form, a generators order form, a magic tricks order form, and an accordions order form are things in the magazine.

Ordering is an action applying to one thing.
FillOutGo is a truth state that varies.  FillOutGo is initially false.

Understand "order [something]" as ordering.
Understand "hamster" as hamsters.
Understand "Generator Pack" as generators.
Understand "Magic Trick" as magic tricks.
understand "trick" as tricks.
Understand "accordion" as accordions.

Instead of ordering the noun when the player is carrying the magazine:
	if the noun is generators and the generators form is in the magazine:
		Now the player carries the generators order form;
		Now the generators item is nowhere;		
		now FillOutGo is true;
		increase score by 5;
	if the noun is hamsters and the hamsters form is in the magazine:
		Now the player carries the hamsters order form;
		Now the hamsters item is nowhere;		
		now FillOutGo is true;
	if the noun is tricks and the tricks form is in the the magazine:
		now the player carries the magic tricks order form;
		Now the magic tricks item is nowhere;		
		now FillOutGo is true;
	if the noun is accordions and the accordions form is in the magazine:
		now the player carries the accordions order form;
		Now the accordions item is nowhere;		
		now FillOutGo is true;
	if FillOutGo is true:
		 say "You tear the [the noun] order card out of the magazine and carefully write your name and address.  You carefully affix a stamp to it, and now you're carrying the order form.";
		Now FillOutGo is false;
		rule succeeds;
	if FillOutGo is false:
		say "You already filled out that order form.  Did you mail it?";
		rule fails;
[Instead of ordering the noun for more than one times:
	If the player is carrying the noun, say "You already filled out the [the noun].  Do you think those things mail themselves?";
	if the player is not carrying the noun, say "Didn't your mother teach you about order forms?";]

Instead of ordering when the player is not carrying the magazine:
	if the player is carrying the noun:
		say "you already have the filled out [the noun]. Shouldn't you do something with it?";
	otherwise:
		say " you can't order something without an order form.";

Instead of ordering something which is not the generators:
	say "you can't order that.";


Part 3 - The mail pickup

MailPickupScheduled is initially false.

Every turn when the number of things in the mailbox is greater than 0 and MailPickupScheduled is false:
	the mail-person comes by in 10 minutes from now;
	Now MailPickupScheduled is true;
	the ups-person comes by in 15 minutes from now;
	the ups-truck leaves in 20 minutes from now;

At the time when the mail-person comes by:
	say "-- You hear a postal vehicle pull up to the mailbox, then zoom off. --";
	Now all of the things in mailbox are in the post office;
	Now MailPickupScheduled is false;

At the time when the ups-person comes by:
	say "-- You hear a UPS truck roar into the driveway. --";
	Now the UPS truck is in the driveway;
	
at the time when the ups-truck leaves:
	say "-- You hear a loud thump from the area of the driveway and the UPS truck drives away[if the player is inside the UPS truck] with you inside! --[otherwise]. --";
	Now the UPS truck is closed in the UPS Depot;
	if the player is inside the UPS truck:
		pause the game;
		say "[paragraph break] After a long, bumpy ride amongst the cardboard parcels, you arrive at the UPS depot.  A man about the size of a refrigerator opens the back doors, looking at you.  'A stowaway!' he yells as he politely drags you out by the arm.";
		Now the player is in the UPS Depot;
		say "He says 'The United Parcel Service has a zero-tolerance policy for unpaid self-shipping.  Sorry mate.'  He shoves you across the tarmac towards a big brown airplane.";
		Now the UPS truck is locked;
	otherwise:
		Now all of the things in the UPS truck are in the driveway;
		try looking;

Instead of going east from the UPS depot:
	say "You stumble up the ramp into the cavernous dark hold of the UPS aircraft.  A haggard stevedore assigns you sleeping quarters on the plane, really just a refrigerator box.  You are pressed into tossing packages every time the plane lands, and you live out the rest of your days,  never knowing what exotic land the vast cargo door will show you next.";
	pause the game;
	say "[paragraph break]However, something destroyed the earth a few days later, so you didn't get to see many exotic lands.";
	end the story saying "You have died.";

Part 4 - The UPS dispatch

The UPS truck is a closed openable enterable vehicle in the UPS depot.  The UPS truck is lockable.
A large wooden box, a small box, a medium box, and a flat box are closed openable containers in the UPS depot.

The description of the large wooden box is "The box is about 4ft x 4ft x 6ft in size. It has the words 'GasCo Industries Model 7 Generator Pack' stencilled on the side.  It is addressed to you."

A hamster cage is in the small box. An accordion is in the medium box.  A set of magic tricks is in the flat box.  They are closed openable containers.

Every turn when the number of things in the post office is greater than 0:
	If the generators form is in the post office:
		[say "generators on order!";]
		Now the generators form is nowhere;
		Now the wooden box is in the UPS truck;
	If the hamsters form is in the post office:
		[say "hamsters on order!";]
		Now the hamsters form is nowhere;
		Now the small box is in the UPS truck;
	If the tricks form is in the post office:
		[say "magic tricks on order!";]
		Now the tricks form is nowhere;
		Now the flat box is in the UPS truck;
	If the accordions form is in the post office:
		[say "accordions on order!";]
		Now the accordions form is nowhere;
		Now the medium box is in the UPS truck;
	
	
Book 3 - HAL-Starship

StarshipHALDocked is initially true.

Part 2 - Teletype Startup

TeletypeStatic is initially true.

Every turn when the player is in the Ham Shack:
	if (teletypeStatic is true) and (the teletype is switched on):
		repeat with item running through software run by the teletype:
			now the teletype is not running item;
		now the teletype runs static;				

After switching off the heavy UHF radio:
	now TeletypeStatic is true;
	now halnotice is "";

After switching on the heavy UHF radio:
	Say "The radio dial lights up. Static crackles.";	
	if the player is carrying the brown book:
		now TeletypeStatic is false;
		say "You have the satellite frequency book, and you're bored, so you set the radio to the frequency of Radstar-1.  The radio warbles with tones of data.";
		now the teletype runs HAL-Bootloader;
	Otherwise:
		say "you don't know any interesting frequencies to listen to, so you shut the radio back off.";
		now radio is switched off.

After switching on the teletype:
	[These lines are here to change the menu text to printed on paper, a la teletype ]
	Now screenDescriptor is "paper";
	Now the visibleDescriptor is "printed";
		[** this next line is important to start the main menut **]
	if teletypeStatic is false:
		if OSBroken is true:
			now halNotice is "[halBootloaderIntro]";
			now the teletype runs HAL-Bootloader program;
		if OSBroken is false:
			now halNotice is "[halOSIntro]";
		try examining the teletype;

Carry out examining the Teletype:	
	say "[if the teletype is switched off][description of the Teletype][paragraph break][otherwise][variable letter spacing]The machine clatters as it types out: [paragraph break][fixed letter spacing][halnotice][variable letter spacing][paragraph break]";
	rule succeeds.
	
[This is necessary because for some reason the descripton of the paper (screen), while the teletype is off, says 'screen' despite it replacing it properly with paper everywhere else.]
instead of examining screen when teletype is switched off:
	say "The paper is blank.";

chapter 1 - TTY Static

Static is privately-named software. The description of static is "[one of]
LIZKSFLI ZKGGZ
              ?#
                #(&!  ..
                        -#;LZSAS
[or]FDAIGYYDO/'*(:#?2519&$.879 !#:',#;

[or]GWO BUZGFD PO SFLKH
[or],,
.......................

[or]   !(*$204&5,#$14237':096153

[or]XW..............2222222222[at random]";


chapter 2 - HAL Bootloader

OSBroken is initially true.

halNotice is initially "";

halBootloaderIntro is initially "ILLIAC BOOTLOADER SAFE MODE. FAULT CONDITION: OPERATING SYSTEM FAILURE. ONLY RECOVERY COMMANDS AVAILABLE.";

halOSIntro is initially "
		*************************************************[line break]
		WELCOME TO HAL OS V9000 REMOTE COMMAND INTERFACE.[line break]
		OPERATIONAL SATELLITE: RDS-1.[line break]
		*************************************************";	

The teletype HAL-Bootloader program is an enumerated multiple-choice program. The options table of the Teletype HAL-Bootloader program is the Table of Bootloader Options.
	
Table of Bootloader Options
index	title	effect
--	"RUN DIAGNOSTICS"	check-system rule
--	"REBOOT PROCESSOR"	reboot-cpu rule
--	"UPLOAD NEW SYSTEM FILE"	upload rule

This is the check-system rule:
	if OSBroken is true:
		Say "[fixed letter spacing] BASIC HARDWARE CHECK: PASS[line break]
		FILE SYSTEM CONSISTENCY CHECK: FAIL[variable letter spacing]";
	Otherwise:
		say "[fixed letter spacing]MINIMAL HARDWARE TEST: PASS[line break]
		FILE SYSTEM CONSISTENCY CHECK: PASS[variable letter spacing]";
	
This is the reboot-cpu rule:
	say "[fixed letter spacing][paragraph break]***THE SYSTEM IS GOING DOWN FOR REBOOT NOW!***";
	pause the game;
	if OSBroken is false:
		now halnotice is "[halOSIntro]";	
		Now the teletype does not run the HAL-Bootloader program;
		now the teletype runs the HALsecureA program;
		Now the teletype runs the HAL-OS-REMOTE program;
	try examining a random screen that is part of the teletype;

This is the upload rule:
	Say "[fixed letter spacing]WARNING: AFTER UPLOAD, CPU MUST BE REBOOTED TO LOAD SYSTEM FILE. PLEASE BEGIN DATA UPLOAD NOW...[paragraph break]";
	say "[variable letter spacing]You hear the paper tape reader buzzing and clicking for a long while...";
	pause the game;
	if the roll is in the reader:
		say "[fixed letter spacing]UPLOAD COMPLETE. NEW SYSTEM FILE VALIDATED.[variable letter spacing][paragraph break]";
		increase score by 10;
		Now OSBroken is false;		
	otherwise:
		say "[fixed letter spacing]ERROR: UPLOAD TIMED OUT, NO DATA RECEIVED.[paragraph break][variable letter spacing]";
	try examining teletype;

	
Chapter 3 - HAL Password Security
 
The HALsecureA program is a password-lock program. The description is "[fixed letter spacing]PLEASE INPUT YOUR PASSWORD.[variable letter spacing]". The rejection of HALsecureA is "[fixed letter spacing]PASSCODE ERROR. TRY AGAIN.[variable letter spacing]".  The success of HALSecureA is "[fixed letter spacing]CONFIRMED[variable letter spacing]";

When play begins (this is the choosing a randomly selected password on startup rule):
	let the passphrases be { "marvinm", "duckdodgers", "buckrogers", "corbomite", "nomad", "dilithium", "defiant" };
	sort passphrases in random order;
	now the password of HALsecureA is entry 1 of passphrases.	
	
chapter 4 - HAL OS

The teletype HAL-OS-REMOTE program is an enumerated multiple-choice program. The options table of the Teletype HAL-OS-REMOTE program is the Table of HAL-OS-REMOTE Options.

Instead of examining the HAL-OS-REMOTE program for the first time:
	increase score by 10;
	try examining the teletype;

Table of HAL-OS-REMOTE Options
index	title	effect
--	"SYSTEM STATUS"	OS-remote-status rule
--	"SWITCH TO FAST DATA MODE"	OS-remote-high-rate rule
--	"SOLAR SYSTEM SCANNER"	OS-remote-scan rule
--	"DOCK LINK"	OS-remote-login-starship rule
--	"LOG OUT OF HAL SATELLITE"	OS-remote-logout rule

This is the OS-remote-status rule:
	say "[fixed letter spacing]
	ONBOARD SYSTEMS STATUS FOR SATELLITE RDS-1:[line break]
	-------------------------------------------[line break]
	POWER                           OK (48.2V)[line break]
	PROCESSOR                       OK[line break]
	GUIDANCE AND ATTITUDE CONTROL   OK (SUN SYNCHRONOUS)[line break]
	RADIOS                          OK (BAND: UHF)[line break]
	LOW GAIN ANTENNA                OK (SIGNAL LOCK)[line break]
	HIGH GAIN ANTENNA               FAIL[line break]
	DATA STORAGE                    OK (3.2TB FREE)[line break]
	OPERATING SYSTEM                OK (HAL V9K)[line break]
	SOFTWARE                        OK[line break]
	RADAR IMAGER/SPECTROMETER       OK (OFF)[line break]
	OPTICAL IMAGER/SPECTROMETER     OK (OFF)[line break]
	LIFE SUPPORT                    OK[line break]
	DOCKING PORT                    OK (OCCUPIED)[line break]
	CABIN DATA CONSOLE              OK (FAST)[LINE BREAK]
	[variable letter spacing]";
	
This is the OS-remote-scan rule:
	say "[fixed letter spacing]PLANETARY SYSTEM MONITOR ONLINE.[PARAGRAPH BREAK]
	RADAR SCANNING...[LINE BREAK]
	OPTICAL SCANNING...[LINE BREAK]
	COMPARING RETURNS TO KNOWN DATABASE...[PARAGRAPH BREAK]
	*** ANOMALOUS OBJECT DETECTED. ***[LINE BREAK]
	     [red letters]ORBIT ANALYSIS: POTENTIAL EARTH-CROSSING[default letters][LINE BREAK]
	     FULL ANALYSIS AVAILABLE REMOTELY IN FAST DATA MODE, OR VIA ONBOARD CABIN INTERNAL COMPUTER INTERFACE.[PARAGRAPH BREAK]";

This is the OS-remote-high-rate rule:
	Say "[fixed letter spacing]ERROR: ONBOARD HIGH GAIN ANTENNA IS NOT RESPONDING. CANNOT SWITCH TO REMOTE FAST DATA MODE.[variable letter spacing]";
	
This is the OS-remote-login-starship rule:
	say "[fixed letter spacing][paragraph break]
	* SHIP-COMM v1.2 *[paragraph break]
	QUERYING DOCKING PORT FOR CONNECTED SHIP...";
	wait for any key;
	say "[LINE BREAK] DOCKING PORT REPORTS SHIP IS [If StarshipHALDocked is false]NOT [end if]PRESENT.[paragraph BREAK]";
	if StarshipHALDocked is true:
		say "INITIALIZING INTERSHIP DATALINK:[LINE BREAK]
		TRYING 45.45 BAUD...[variable letter spacing]";
		wait for any key;
		clear only the main screen;
		Now the teletype is not running HAL-OS-REMOTE program;
		Now halNotice is "";
		Now the teletype is running STARSHIP-OS-REMOTE program;
	try examining teletype;
	
This is the OS-remote-logout rule:
	Now the teletype runs HALsecureA;
	Now the teletype runs HAL-OS-REMOTE program;
	try looking;



Chapter 5 - Starship OS Remote

[Set up remote starship variables]
StarshipLandingFreq is initially 0.
StarshipRemoteNavMode is initially "STANDBY".
StarshipAPMode is initially "STANDBY".
StarshipAutopilotEngaged is initially false.
StarshipDockedStatus is initially true;

Section 1 - Starship Remote Main Menu

The STARSHIP-OS-REMOTE program is an enumerated multiple-choice program. The options table of the STARSHIP-OS-REMOTE program is the Table of StarshipOSRemote Options. 


Carry out examining the STARSHIP-OS-REMOTE program for the first time:
	[https://en.rakko.tools/tools/68/]
	say "[fixed letter spacing]   WELCOME TO[line break]";
	say "                                   .:----:::...[line break]  ";
	say "                           :-=**+=-.[line break]";
	say "                       :=*#%*=:[line break]";
	say "                   :+#X%*=. [line break]";
	say " .+XXXX*:      .=#XX%+: [line break]";
	say "   .=%XXX#: .+#XX%+: [line break]";
	say "      =%*-=#XXX*-     [line break]";
	say "       :*XXX%+-        [line break]";
	say "     -#XXX%=-#X%=.    [line break]";
	say "   -#XXX%=  :*XXXX+.   [line break]";
	say " :#XXXX+.     :*XXXX*:     [paragraph break]";
	say "	#####      [line break]";                                       
	say "#     # #####   ##   #####   ####  #    # # ##### [line break]";
	say "#         #    #  #  #    # #      #    # # #    #[line break]";
	say " #####    #   #    # #    #  ####  ###### # #    #[line break]";
	say "      #   #   ###### #####       # #    # # #####[line break]";
	say "#     #   #   #    # #   #  #    # #    # # # [line break]";
	say " #####    #   #    # #    #  ####  #    # # #[line break]";
	say "[variable letter spacing]";
	[http://www.network-science.de/ascii/]
	
Carry out examining the STARSHIP-OS-REMOTE program for more than one time:
	Say "[fixed letter spacing]<<<STARSHIP REMOTE COMMAND LINK>>>[variable letter spacing]";


Table of StarshipOSRemote Options
index	title	effect
--	"SHIP STATUS"	Starship-remote-status rule
--	"NAVIGATION"	Starship-remote-nav rule
--	"AUTOPILOT"	Starship-remote-ap rule
--	"LOG OUT OF STARSHIP"	Starship-remote-logout rule

This is the Starship-remote-status rule:
	say "[fixed letter spacing]";
	say "[LINE BREAK]  ***STARSHIP ROCKET SYSTEMS STATUS***[LINE BREAK]";
	say "  NAV MODE:       [StarshipRemoteNavMode]";
	if StarshipRemoteNavMode is "GO TO BEACON":
		say " [StarshipLandingFreq] KHZ";
	say line break;
	say "  AP MODE:        [StarshipAPMode][LINE BREAK]";
	say "  AP ENGAGED:     [IF StarshipAutopilotEngaged is true]ENGAGED[otherwise]DISENGAGED[end if][line break]";
	say "  AP GUIDANCE:    NAV COMPUTER";
	say "[variable letter spacing]";
	
This is the Starship-remote-nav rule:
	[bring nav computer to the front]
	Now the teletype is not running STARSHIP-OS-REMOTE program;
	Now the teletype is running STARSHIP-NAV-REMOTE program;
	try examining teletype;
	
	
This is the Starship-remote-ap rule:
	Now the teletype is not running STARSHIP-OS-REMOTE program;
	Now the teletype is running STARSHIP-AUTOPILOT-REMOTE program;
	try examining teletype;
	
This is the Starship-remote-logout rule:
	say "[fixed letter spacing]LOGGING OUT OF STARSHIP...[variable letter spacing]";
	Now the teletype is not running STARSHIP-OS-REMOTE program;
	now halnotice is "[halOSIntro]";	
	Now the teletype is running HAL-OS-REMOTE program;
	try examining teletype;
	

Section 2 - Starship Remote Navigation Computer

The STARSHIP-NAV-REMOTE program is an enumerated multiple-choice program. The options table of the STARSHIP-NAV-REMOTE program is the Table of StarshipNavRemote Options.

Carry out examining the STARSHIP-NAV-REMOTE program:
	Say "[fixed letter spacing]<<<STARSHIP REMOTE COMMAND LINK>>> [line break]       NAVIGATION COMPUTER[paragraph break]
	NAV MODE: [StarshipRemoteNavMode]";
	if StarshipRemoteNavMode is "GO TO BEACON":
		say " [StarshipLandingFreq] KHZ";
	Say "[PARAGRAPH break]";
	Say "SELECT METHOD OF NAVIGATION.  GO TO:";
	Say "[LINE BREAK][variable letter spacing]";
	

Table of StarshipNavRemote Options
index	title	effect
--	"KNOWN SPACE OBJECT"	starship-nav-remote-name rule
--	"RADIO BEACON"	starship-nav-remote-go-to-beacon rule
--	"SPECIFIC ORBIT"	starship-nav-remote-orbit rule
--	"STANDBY"	starship-nav-remote-standby rule
--	"EXIT NAV COMPUTER"	starship-nav-remote-exit rule


This is the starship-nav-remote-name rule:
	say "[fixed letter spacing] SPACE OBJECT DATABASE NOT AVAILABLE[variable letter spacing]";


This is the starship-nav-remote-go-to-beacon rule:
	Now StarshipRemoteNavMode is "GO TO BEACON";
	Now the teletype is not running STARSHIP-NAV-REMOTE program;
	Now the teletype is running the STARSHIP-LAND-BEACON-REMOTE program;
	try examining the teletype;
	

This is the starship-nav-remote-orbit rule:
	say "[fixed letter spacing]ORBITAL NAVIGATION IS NOT AVAILABLE AT THIS TIME.[variable letter spacing]";
	
This is the starship-nav-remote-standby rule:
	Now StarshipRemoteNavMode is "STANDBY";
	try examining teletype;

This is the starship-nav-remote-exit rule:
	Now the teletype is not running STARSHIP-NAV-REMOTE program;
	Now the teletype is running STARSHIP-OS-REMOTE program;
	try examining teletype;
	

Section 3 - Starship Remote Nav Beacon Frequency Menu

The STARSHIP-LAND-BEACON-REMOTE program is an enumerated multiple-choice program. The options table of the STARSHIP-LAND-BEACON-REMOTE program is the Table of StarshipLandBeacon Options.

Carry out examining the STARSHIP-LAND-BEACON-REMOTE program:
		Say "[fixed letter spacing]<<<STARSHIP REMOTE COMMAND LINK>>> [line break]       NAVIGATION COMPUTER
		[line break]    BEACON FREQUENCY SELECTION[PARAGRAPH break] 
		THIS MODE WILL PROVIDE GUIDANCE TO THE [line break] SOURCE OF A CARRIER WAVE MODULATED[line break] SIGNAL.[paragraph break] 
		TRACKING FREQUENCY: [StarshipLandingFreq] kHz[paragraph BREAK]
		[variable letter spacing]";
		
Table of StarshipLandBeacon Options
index	title	effect
--	"Set to 1000 kHz"	starship-land-beacon-1000 rule
--	"Set to 1030 kHz"	starship-land-beacon-1030 rule
--	"Set to 1050 kHz"	starship-land-beacon-1050 rule
--	"Set to 1070 kHz"	starship-land-beacon-1070 rule
--	"Set to 1090 kHz"	starship-land-beacon-1090 rule


This is the starship-land-beacon-1000 rule:
	Now StarshipLandingFreq is 1000;
	Now the teletype is not running STARSHIP-LAND-BEACON-REMOTE program;
	Now the teletype is running STARSHIP-NAV-REMOTE program;
	try examining teletype;
	
This is the starship-land-beacon-1030 rule:
	Now StarshipLandingFreq is 1030;
	Now the teletype is not running STARSHIP-LAND-BEACON-REMOTE program;
	Now the teletype is running STARSHIP-NAV-REMOTE program;
	try examining teletype;
	
This is the starship-land-beacon-1050 rule:
	Now StarshipLandingFreq is 1050;
	Now the teletype is not running STARSHIP-LAND-BEACON-REMOTE program;
	Now the teletype is running STARSHIP-NAV-REMOTE program;
	try examining teletype;
	
This is the starship-land-beacon-1070 rule:
	Now StarshipLandingFreq is 1070;
	Now the teletype is not running STARSHIP-LAND-BEACON-REMOTE program;
	Now the teletype is running STARSHIP-NAV-REMOTE program;
	try examining teletype;
	
This is the starship-land-beacon-1090 rule:
	Now StarshipLandingFreq is 1090;
	Now the teletype is not running STARSHIP-LAND-BEACON-REMOTE program;
	Now the teletype is running STARSHIP-NAV-REMOTE program;
	try examining teletype;
	
This is the starship-nav-mode-exit rule:
	Now the teletype is not running STARSHIP-LAND-BEACON-REMOTE program;
	Now the teletype is running STARSHIP-NAV-REMOTE program;
	try examining teletype;
	


Section 4 - Starship Remote Autopilot Menu



The STARSHIP-AUTOPILOT-REMOTE program is an enumerated multiple-choice program. The options table of the STARSHIP-AUTOPILOT-REMOTE program is the Table of StarshipAutopilotRemote Options.

Carry out examining the STARSHIP-AUTOPILOT-REMOTE program:
	Say "[fixed letter spacing]<<<STARSHIP REMOTE COMMAND LINK>>> [line break]            AUTOPILOT[paragraph break]
			AUTOPILOT MODE: [StarshipAPMode][LINE BREAK]
			AUTOPILOT ENGAGED: [IF StarshipAutopilotEngaged is true]ENGAGED[otherwise]DISENGAGED[end if][line break]
			AUTOPILOT GUIDANCE: NAV COMPUTER";
	say "[paragraph BREAK][variable letter spacing]";

[			NAV MODE: [StarshipRemoteNavMode]";
	if StarshipRemoteNavMode is "GO TO BEACON":
		say " [StarshipLandingFreq] KHZ.";]
		
Table of StarshipAutopilotRemote Options
index	title	effect
--	"MODE SELECT: AUTO-LAUNCH"	starship-ap-mode-auto-launch rule
--	"MODE SELECT: AUTO-LAND"	starship-ap-mode-auto-land rule
--	"MODE SELECT: AUTO-MANEUVER"	starship-ap-mode-auto-maneuver rule
--	"MODE SELECT: AUTO-DOCK"	starship-ap-mode-auto-dock rule
--	"MODE SELECT: STANDBY"	starship-ap-mode-standby rule
--	"ENGAGE"	starship-ap-mode-engage rule
--	"DISENGAGE"	starship-ap-mode-disengage rule
--	"EXIT AUTOPILOT"	starship-ap-mode-exit rule

This is the starship-ap-mode-auto-launch rule:
	Say "[fixed letter spacing]AUTO-LAUNCH IS NOT AVAILABLE[variable letter spacing]";
	[Now StarshipAPMode is "AUTO-LAUNCH";]
	
This is the starship-ap-mode-auto-land rule:
	Now StarshipAPMode is "AUTO-LAND";
	Say "[fixed letter spacing]AUTO-LAND MODE:";
	if StarshipRemoteNavMode is "GO TO BEACON":
		If the AM Transmitter is switched on:
			say " GUIDANCE ACTIVE.  NAVIGATION COMPUTER REPORTS GOOD BEACON SIGNAL AT [StarshipLandingFreq] KHZ. [variable letter spacing]";
			[ask if the user wants to engage autopilot]
		otherwise:
			say "GUIDANCE INVALID.  NAVIGATION COMPUTER REPORTS NO SIGNAL. AUTO-LAND ABORTED[variable letter spacing].";
	if StarshipRemoteNavMode is "STANDBY":
		say " NO RESPONSE FROM NAVIGATION COMPUTER, AUTO-LAND ABORTED.[variable letter spacing]";
		

This is the starship-ap-mode-auto-maneuver rule:
	Say "[fixed letter spacing]AUTO-MANEUVER IS NOT AVAILABLE[variable letter spacing]";
	[Now StarshipAPMode is "AUTO-MANEUVER";]

This is the starship-ap-mode-auto-dock rule:
	say "[fixed letter spacing]SHIP IS ALREADY DOCKED.[variable letter spacing]";
	[Now StarshipAPMode is "AUTO-DOCK";]

This is the starship-ap-mode-standby rule:
	say "[fixed letter spacing]AUTOPILOT IN STANDBY MODE.[variable letter spacing]";
	Now StarshipAutopilotEngaged is false;
	Now StarshipAPMode is "STANDBY";
	
This is the starship-ap-mode-engage rule:
	[Ask user if they really want to engage autopilot]
	say "[fixed letter spacing]ARE YOU SURE YOU WANT TO ENGAGE AP? [bracket]Y/N[close bracket] [variable letter spacing]";
	[ask the user a yes/no question]
	if the player consents:
		now StarshipAutopilotEngaged is TRUE;
	otherwise:
		now StarshipAutopilotEngaged is FALSE;
	if ((StarshipAPMode is "AUTO-LAND")	 and (StarshipRemoteNavMode is "GO TO BEACON")) and ((AM Transmitter is switched on) and (StarshipLandingFreq is AM Transmitter Frequency)):
		say "[fixed letter spacing]GO FOR LANDING![paragraph break]
		**** STARSHIP AUTO-UNDOCK IN PROGRESS ****[paragraph break]";
		wait for any key;
		say "[paragraph break]**** STARSHIP REMOTE LOGIN SESSION IS TERMINATED ****[paragraph break][variable letter spacing]";
		Now StarshipHALDocked is false;
		wait for any key;
		now halnotice is "[halOSIntro]";	
		Now the teletype is not running STARSHIP-AUTOPILOT-REMOTE program;
		Now the teletype is running HAL-OS-REMOTE program;
		try looking;
		say "You sat here in a daze, contemplating what you had just done.  After a while you hear a sonic boom that shakes the house, followed by a cracking roar that is a fair emulation of a hurricane carrying an earthquake.  The house becomes silent again.";
		increase score by 50;
		Now the starship is in the west side yard;
		Now the Bottom of the Ladder is in the West side yard;	
	Otherwise:
		say "[fixed letter spacing]AUTOPILOT GUIDANCE ERROR.  PLEASE CHECK NAV AND AUTOPILOT SETUP.[variable letter spacing]";
		now StarshipAutopilotEngaged is FALSE;

This is the starship-ap-mode-disengage rule:
	if StarshipAutopilotEngaged is false:
		say "[fixed letter spacing]AUTOPILOT ALREADY DISENGAGED.[variable letter spacing]";
	otherwise:
		say "[fixed letter spacing]AUTOPILOT DISENGAGING...[variable letter spacing]";
		Now StarshipAutopilotEngaged is false;
		
This is the starship-ap-mode-exit rule:
	Now the teletype is not running STARSHIP-AUTOPILOT-REMOTE program;
	Now the teletype is running STARSHIP-OS-REMOTE program;
	try examining teletype;


Chapter 6 - Testing TTY & Starship

test tty with "put roll in reader / turn teletype on / type 3 / type 2 / type 4 / type 2 / type 2 / type 4 / type 5 / type 3 / type 2 / type 6 ";



Book 4 - Starship Fueling Puzzle


Part 1 - Backend Setup

The oxygen flow is initially 0.
The methane flow is initially 0. 

Chapter 1 - Time events

[   FIX THE TIME HERE FOR RELEASE  ]
At 10:35 PM:
	Say "
	
	[bold type]** You grow tired, and you decide to [if SleepyMoveToBed is true]go back to your bedroom[otherwise]lay down in the [location of the player][end if], and sleep till morning... **[default letters]";
	pause the game;
	Now the time of day is 8:00 AM;
	say "** Good morning ** The time is now [time of day]!";
	if SleepyMoveToBed is true, Now the player is in Your Bedroom;
	try looking;


Chapter 2 - Fuelling Parts


A liquid methane generator is in the large wooden box.   The methane generator is a device. The description of the liquid methane generator is "A metal frame containing a massive number of stainless steel tubes, valves, and electronic control systems. Printed on the side it says,

'Your  GasCo CH4 Generator will take ambient humid air and convert it into liquid methane.  It has an output coupling that is 1.5 inches in diameter.
* Features convenient Drop-to-Connect couplers.  Just drop the generator near your favorite pipe coupling. *'"

A liquid oxygen generator is in the large wooden box. The liquid oxygen generator is a device. The description of the liquid oxygen generator is "A large metal cabinet machine.  Printed on the side it says,

 'Your  GasCo O2 Generator will take ambient air and convert it into liquid oxygen.  It has an output coupling that is 2 inches in diameter.
* Features convenient Drop-to-Connect coupler.   Just drop the generator near your favorite pipe coupling. *'"


Chapter 3 - Rules to make things happen when solving

Every turn:
	if the oxygen generator is in the west side yard:
		say "The oxygen generator's autocoupler emits a connector-mismatch beep.";
	if the methane generator is in the west side yard:
		say "the methane generator's autocoupler emits a connector-mismatch beep.";
	if (the methane generator is switched on) and (the front hydrant is switched on) and (the methane generator is in the radiostation):
		Now the methane flow is 1;
	Otherwise:
		Now the methane flow is 0;
	If (the oxygen generator is switched on) and (the back yard hydrant is switched on) and (the oxygen generator is in the pump room):
		Now the oxygen flow is 1;
	Otherwise:
		Now the oxygen flow is 0;
	if the methane flow is 1:
		if the player is in the radiostation:
			Say "A whooshing gurgling sound of liquid methane rattles through the pipe in the wall.";
		if the player is in the front yard:
		 	say "A whooshing gurgling sound of liquid methane rattles through the yellow hydrant.";
		if (the player is in the west side yard) and (the end of the yellow hose is not in the ch4 fill port):
			say "** Clear cryogenic liquid methane roars out of the (now frosty) yellow hose into a gasous cloud.  OSHA would not be pleased.** ";
	If the oxygen flow is 1:
		if the player is in the pump room:
			Say "A whooshing gurgling sound of liquid oxygen rattles through the pipe in the wall.";
		if the player is in the middle back yard:
			say "A whooshing gurgling sound of liquid oxygen rattles through the green hydrant.";				
		if the player is in the west side yard and (the end of the green hose is not in the O2 fill port):
			say "** Bluish cryogenic liquid oxygen rushes out of the (now frosty) green hose into a gasous cloud.  Safety minders, if there were any here, would not be pleased.**";
	if ( oxygen flow is 1 ) and ( methane flow is 1 ):
		If (the player is in the west yard) and (the end of the yellow hose is not in the ch4 fill port) and (the end of the green hose is not in the O2 fill port):
			say "
			You've made rocket fuel in the yard!!! ";
			end the story saying "The hyper flammable gas cloud ignites as you swish your nylon track pants.  You are dead and crispy. :-o"	;
After dropping the methane generator in the radiostation:
	say "The liquid methane generator settles to the floor.  Conveniently, its 1.5 inch output coupling lines up with the 1.5 inch pipe in the wall, and they snap together, sealed perfectly.";
After dropping the methane generator in the pump room:
	say "The liquid methane generator clunks to the floor.  It's output coupling doesn't fit with the 1.5 inch pipe in the wall."

After dropping the oxygen generator in the pump room:
	say "The liquid oxygen generator settles to the floor.  Conveniently, its 2 inch output coupling lines up with the 2 inch pipe in the wall, and they snap together, sealed perfectly.";
After dropping the oxygen generator in the radiostation:
	say "The liquid oxygen generator clunks to the floor.  It's output coupling doesn't fit with the 1.5 inch pipe in the wall."	
	
Book 5 - Starship Landed



Chapter 2 - Rocket at home
	


Section 1 - Offstage Starship Pre-Landing

A Starship is in the staging area. The starship is fixed in place.  The description of the starship is "A great silvery rocket, 30m tall, it has a set of hose ports at the bottom, and next to the ports is a small display screen.".

A Starship can be fuelled or unfuelled.  The Starship is unfuelled.

[There is a Ladder above the staging area. ]
Docking Port is a room.

Instead of taking the starship, say "very funny.  You are not a crane."

The Bottom of the Ladder is an easydoor in the staging area.  The Bottom of the Ladder leads to the Docking Port. Instead of going up in the West Side Yard: try entering The Bottom of the Ladder.  "A ladder leads up the side of the starship here."

The top of the Ladder is an easydoor in the Docking Port.  The Top of the Ladder leads to the West Side Yard.  Instead of going down in the Docking Port: try entering The Top of the Ladder.  "A ladder leads down the side of the starship here."

Section 2 - Starship in Yard After landing

StarshipLanded is a scene.

[StarshipLanded begins when play begins.]

When StarshipLanded begins:
	Now the starship is in the west side yard;
	Now the Bottom of the Ladder is in the West side yard;	

Section 3 - Airlock

Interdimensional space is a room.  "You're floating in a gray nothing.  Not dead somehow, but this is a dead end.  "


The Airlock is a room. "You are in a small chamber with controls on the walls.   The outer hatch is to the east, and the inner hatch is to the west."

The shiny hatch is an easydoor in the Docking Port. The shiny hatch leads to the airlock.
Instead of going west in the Docking Port: try entering hatch.   "A shiny hatch is here, to the west."

The airlock outer hatch is an easydoor in the airlock. The airlock outer hatch is lockable and unlocked. The outer hatch leads to the Docking Port.

The main hallway is a room.  "A sparkly white corridor.  There is an airlock to the east, and a control room above."

The airlock inner hatch is an easydoor in the airlock.  The airlock inner hatch is lockable and locked.  The inner hatch leads to the main hallway.  

The airlock hall hatch is an easydoor in the main hallway. The airlock hall hatch leads to the airlock.

Instead of going east in the airlock: try entering the outer hatch.  Instead of going west in the airlock: try entering the inner hatch.
Instead of going east in the main hallway: try entering the airlock hall hatch.

The egress interlock is in the airlock.  The interlock is fixed in place. The interlock is a device.  The interlock is switched off.   The description of the interlock is "The interlock is a protection device that allows only one airlock hatch to be open at once.".

The airlock controls are in the airlock.  The airlock controls are scenery.  

Instead of examining controls: try examining interlock.  

After switching on the interlock:
	now the airlock inner hatch is unlocked;
	now airlock outer hatch is closed;
	now the airlock outer hatch is locked;
	Say "you hear a hiss, and then both hatches emit a loud KERCHUNK."
	
After switching off the interlock:
	now the airlock inner hatch is closed;
	now the inner hatch is locked;
	now the airlock outer hatch is unlocked;
	Say "you hear a hiss, and then both hatches emit a loud KERCHUNK."



Section 4 - Fuelling the rocket

A fuel display is part of the starship.  Understand "screen" as display.  The description of the fuel display is " [line break]
  Fuel Quantities: [line break]
O2 Tank Level [O2 tank level]%[line break]
CH4 tank level [CH4 tank level]%[line break]".


A set of ports is part of the starship. The description of the set of ports is "there is an O2 fill port and a CH4 fill port."  A CH4 fill port and an O2 fill port are part of the set of ports. The CH4 fill port and the O2 fill port are transparent containers. 

Understand "02" as O2 fill port.

The carrying capacity of the CH4 port is 1.
The carrying capacity of the O2 port is 1.

Instead of inserting something that is not the yellow hose end into the CH4 fill port:
	say "That doesn't fit in the the CH4 port."
Instead of inserting something that is not end of the green hose into the O2 fill port:
	say "That doesn't fit in the the O2 port."

The O2 tank level is initially 0.
The CH4 tank level is initially 0.

Every turn when the Starship is in the west side yard and starship is unfuelled:
	if  (the end of the green hose is in the O2 fill port) and (oxygen flow is 1) and (the O2 tank level is less than 100):
		say "-- you hear a faint sloshing rumble --[line break]";
		increase O2 tank level by 5;
	if  (the end of the yellow hose is in the CH4 fill port) and (methane flow is 1) and (the CH4 tank level is less than 100):
		say "-- there's a faint swishing grumble --[line break]";
		increase CH4 tank level by 10;
	if (O2 tank level is 100) and (CH4 tank level is 100):
		Now starship is fuelled;
		say "-- a pleasant voice resounds from a speaker on the rocket: STARSHIP FUELLING COMPLETE. --";
		Increase score by 15	;

Chapter 3 - Moving the ship

Section 1 -  Control Room

The Control Room is above the Main hallway.

There is an abort system is in the control room.  It is fixed in place.  It is a device.  it is switched off.  The description of the abort system is "Out of Order.  operation is not guaranteed."

After switching on the abort system:
	say "The faulty abort system just made something unpredictable happen to space and time.  There may be no fixing this.";
	Now the outer hatch leads to interdimensional space;
	Now the abort system is switched off;
	
There is a navigation computer in the control room.   It is fixed in place. It is a device.  it is switched off.  Understand "nav" as navigation computer.  The description of the navigation computer is "This Nav-O-Co computer appears to be out of order. " 
[user needs the orbit printout]

After switching on the navigation computer:
	say "The navigation computer emits a fail sound. ";
	Now the navigation computer is switched off;

There is a control display in the control room.  The display is fixed in place.  Understand "screen" as display.  The description of the control display is " [line break]
~ Starship Status Console ~[line break]
  Fuel Quantities: [line break]
Oxygen Tank Level [O2 tank level]%[line break]
Methane Tank level [CH4 tank level]%[line break]".

There is an autopilot in the control room.  It is fixed in place. It is a device.  it is switched off. Understand "auto" as autopilot. The description of the autopilot is "The shiny black autopilot looks brand new, and very auto."	


Section 2 - Autopilot

After switching on the autopilot:
	if the O2 tank level is not 100:
		say "Insufficient Oxygen. ";
	if the CH4 tank level is not 100:
		say "Insufficient methane. ";
	if (O2 tank level is 100) and (CH4 tank level is 100):
		if (the end of the green hose is in O2 port) or (the end of the yellow hose is in CH4 port):
			say "The engines roar and the rocket rises slowly up from the ground!";
			pause the game;
			decrease the score by 20;
			say "A hose, still connected to a fill port, tears the fuel manifold out of the bottom of the ship.  A large explosion consumes the rocket instantly. [paragraph break] ";
			say "[bracket]Not surprisingly, your score has just gone down by 20 points.[close bracket]";
			end the story saying "You have died.";
		otherwise:
			say "[line break] Blastoff!  You have gone to space today, and you sense that your adventure is just beginning... [paragraph break] Buy [story title] Part II in fine microcomputer shops everywhere.";
			end the story finally;
			Increase the score by 100;
	otherwise:
		say "autopilot turns off.";
		now autopilot is switched off;
			
Chapter 4 - Landed tests

test shipin with "u / u / w / turn interlock on/ w  "


Book 6 - Pavilion Initial Tests


Test UHF with "s / e / get book / w / s / e / e / e / turn radio on / w ".

test wait20 with "z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z"

test wait50 with "z / z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z / z /z /z /z "

Test radiation with " test UHF / d / test wait50 / u / w / w / n / n / z / z / z / z / "

Test gen with " z / z/ open box / get all / s / s / e / e / d / n / drop methane / turn methane on / s / w / w / drop oxygen / turn oxygen on "

Test gases with "test gen / e / e / u / w / w / n / n / n / turn hydrant on / w / se / s / turn hydrant on / n / nw "

test station with "s / s / e / e / d / n / turn equipment on / s"


test all with "test radiation / test gases "

Test orderGen  with " s / s / get magazine / read magazine / read  16 / order generators / i / n / e / n / n / e / put form in mailbox "

Book 7 - Misc General Helper functions

Section 1 - Hinting setup

[Overall setup for hinting]
Hinting is an action out of world applying to nothing. Understand "hint" and "help" as hinting.

A room has a text called localhint. The localhint of a room is usually "There are no hints available in this location."

Report hinting:
say "[localhint of the location]".


