"Rogers Rd" by Dan Bowen,  Version 1.4beta

Include Exit Lister by Gavin Lambert.
Include Basic Screen Effects by Emily Short.
Include Easy Doors by Hanon Ondricek.
Include ComputersTeletype by Dan Bowen.


Use scoring and the serial comma. 
The maximum score is 60.

[Note HAL-Vogons will probably clash with the HAL-Starship section, so please rework it when possible. It's turned off by Vogons = 0]


[The "when play begins" rules are checked only at the start of a story, not when a saved session is restored from disc. What happens is that these rules are followed, then the story's banner is printed, then the initial room description is printed up, and then the player is asked for a first command.]

Table 1 - Rankings
Score	Rank
0	"Boring person"
10	"Curious person"
20	"Interesting person"
40	"Smart person"
60	"Rocket scientist, Dead."


When play begins:	
[Now the right hand status line is "Score: [score] in [turn count] turns";]
Now the left hand status line is "[the player's surroundings] / Score: [score]";
Now the right hand status line is "Time: [time of day]";
Say "You are in a house in the countryside.  You are into electronics, and it is [time of day]. VOGONS is: [vogons]";

The vogons is initially 0.
The daydebug is initially 0.
satPassword is initially "riker".
playerFirstName is initially "Jane Doe".

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
	if vogons is 1:
		say "--- You notice a faint sound in the far distance, as if a ray gun were charging up. ----"


At 11:00 PM: 
	if vogons is 1:
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
			say "[black letters]You are hardly aware as you are zapped into oblivion by the vogons Pest Control Beam. 
			end the story finally saying 
			
			You have died.";
			say default letters;
			end the story finally.
		
Book 1 - Initial House/Yard exploration

Part 1 - Places Setup

Chapter 1 - Outdoors 

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

The front door is north of the foyer and south of the Front porch. The front door is a door.

The back door is south of the back hallway and north of the back porch. The back door is a door.

The side yard shack door is east of the ham shack and west of the side yard.  The side yard door is a door.

Chapter 2 - In the house

Section 1 - Upstairs

Danny's Bedroom is a room.  There is a dot matrix printout in danny's bedroom. The description of the printout is "This appears to be a list of satellite orbits,  showing the times that a satellite RDS-1 passes over this location.  Tonight's date is in the list."

The End of the Hallway is south of Danny's Bedroom and west of Mid Hallway.

Michael's Bedroom is north of Mid Hallway. "[if Day is happening]The sun streams cheerily through the window."
An air filter is in Michael's Bedroom.
The description of the air filter is "The filter whooshes quietly, blowing clean air into your eyes.  This is uncomfortable, so you stop peeking into it."

Dad's Bedroom is south of The End of the Hallway.

A waterbed is in Dad's Bedroom. "in the middle of the room is a pink waterbed." It is an enterable vehicle.  The description of the waterbed is "It is a sloshy thing." Instead of going from Dad's bedroom by the waterbed, say "you'll have to get out of the bed before you go anywhere." 
Understand "bed", "water bed" and "waterbed" as the waterbed.
Understand "get out of bed" as exiting.

There is an answering machine in Dad's bedroom. The description of the answering machine is "A fine product from the Tel-O-Matic corporation.  The features were once written on the worn woodgrain finish, but you can only make out every few letters.  Now it looks like  'With Garble-Tone erase-yo-calls'.  There is a worn out button on the machine."

A button is a kind of thing. The play button is a part of the answering machine. The play button is a button.  The description is "A rubbery thing, tiredly awaiting its fate.".

After pushing the play button:
	say "Hey [playerFirstName], it's Wendell.  I finally hacked into that old asteroid scanner satellite!  The password was so simple- '[satPassword]'.  It took me like a week of trying though. I was definitely disappointed that it didn't offer me any nuclear-themed games to play hahaha.  The behavior was a little glitchy once I got in, hopefully it doesn't crap out before you get to play with it.  later.";



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

There is a roll of paper tape in the garage. The description of the tape is "A large roll of inch-wide paper, about 10 inches in diameter.  Hundreds of rows of holes are punched along it in a seemingly random pattern in a grid 6 holes wide.";

Section 3 - Downstairs

Cellar stairs are below the back hallway and above the cellar.  Cellar stairs is a door. Cellar stairs is open.   "[if audio equipment is switched on][bold type][red letters][Fixed letter spacing]ON AIR[variable letter spacing][roman type][default letters]"

The Radiostation is north of the cellar. "The size of a closet, there is about 2x4 feet of space to move around next to the table."  
There is a suite of audio equipment in the Radiostation. The audio equipment is a device. The audio equipment is switched off. The description of the audio equipment is "[if audio equipment is switched on]The various boxes have glowing dials and humming motors[otherwise]There are various boxes that have dark dials and do not hum[end if]."
Understand "radio equipment" as the audio equipment.  

The AM Transmitter is a device in the Radiostation.  AM Transmitter is switched off.
The AM Transmitter Frequency is initially 1070.

After switching on the audio equipment:
	Say "The equipment starts humming and tape reels starts turning...";	

After switching on the AM Transmitter:
	Say "A glass vacuum tube begins to glow slightly.";
	
 
 There is a 1.5 inch pipe in the radiostation.  The 1.5 inch pipe is fixed in place.  The description of the 1.5 inch pipe is "A 1.5 inch pipe is sticking out of the wall.  You notice that it ends in a Tee coupling.  One branch of the Tee is open and available to connect.  The other branch returns into the wall, with a tag stating, 'To Front Yard Hydrant ^ '";

[Understand "tee", "coupler" and "coupling" as pipe.]

The Furnace room is west of the cellar. 

The pump room is west of the furnace room.  "A small room about the size of a closet."  

There is a 2 inch pipe in the pump room.  The 2 inch pipe is fixed in place.  The description of the 2 inch pipe is " A 2 inch pipe is sticking out of the wall.  You notice that it ends in a Tee.  One branch of the Tee is open and available to connect.  The other branch returns into the wall, with a tag stating, 'To Back Yard Hydrant ^'  ";





Chapter 3 - Regions

[Upstairs is a region.   The garage, The ham shack, The back hallway, The New room east, The New room west, the kitchen, The dining room, The living room, The Foyer, The Hall bathroom, Dad's bathroom,  Dad's room, Michael's Bedroom, The Hallway, and Danny's Bedroom are in the upstairs.]

Downstairs is a region. The cellar, furnace room, pump room and the radiostation are in the downstairs.

Outdoors is a region.  The front porch, Front yard, driveway, side yard, back porch, middle back yard, West side yard, and back yard hill are in the outdoors.

The sky is a backdrop. the sky is in the outdoors. Instead of doing something to the sky, say "[if Night is happening]There is a bright satellite passing overhead.[otherwise]The sky is pretty blue." 


Part 2 - Doing Ham Radio Stuff

A heavy UHF radio is in the ham shack. The UHF radio is a device. The radio is switched off.   the radio is fixed in place.
The description of the UHF radio is "The radio is about the size and shape of a VCR.  It says 'UHF Satellite decoder radio'  It is connected to the teletype."

The Teletype is computer in the ham shack.  The teletype is switched off.  The description is "The teletype is a green boxy thing, with a typwriter keyboard, paper coming out the top, and a paper tape reader on the side.[if the teletype is switched on]A motor deep inside hums quietly.[otherwise] It is turned off."

Understand "paper", "message", "text" and "readout" as a screen.
Understand "tty" as teletype.

The paper tape reader is an extension port.  It is part of the teletype.  the description of the paper tape reader is "The punched paper tape reader is a bulging box hanging off the left side of the main teletype. It is used to transmit large amounts pre-recorded data through the teletype."

The roll of paper tape is a data storage device.

Chapter 1 - HAL Vogons

[Note this will probably clash with the HAL-Starship section, so please rework it when possible.]

After switching on the heavy UHF radio:
	Say "The radio dial lights up. Static crackles.";	
	if the player is carrying the brown book:
		increase score by 10;
		say "You have the satellite frequency book, and you're bored, so you set the radio to the frequency of Radstar-1.  The radio warbles with tones of data.";
		if vogons is 1:
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
	
Book 2 - HAL-Starship


Part 2 - Teletype Startup

After switching on the teletype:
	if UHF is switched on:
		[These lines are here to change the menu text to printed on paper, a la teletype ]
		Now screenDescriptor is "paper";
		Now the visibleDescriptor is "printed";
			[** this next line is important to start the main menut **]
		if OSBroken is true:
			now halNotice is "[halBootloaderIntro]";
			now the teletype runs HAL-Bootloader program;
		if OSBroken is false:
			now halNotice is "[halOSIntro]";
	if UHF is switched off:
		now the teletype runs Static;
	Try examining teletype;	

Carry out examining the Teletype:	
	say "[if the teletype is switched off][description of the Teletype][paragraph break][otherwise][variable letter spacing]The machine clatters as it types out: [paragraph break][fixed letter spacing][halnotice][variable letter spacing][paragraph break]";
	rule succeeds.

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
		Now the teletype runs the HAL-OS-REMOTE program;
	try examining teletype;
		

This is the upload rule:
	Say "[fixed letter spacing]WARNING: AFTER UPLOAD, CPU MUST BE REBOOTED TO LOAD SYSTEM FILE. PLEASE BEGIN DATA UPLOAD NOW...[paragraph break]";
	say "[variable letter spacing]You hear the paper tape reader buzzing and clicking for a long while...";
	pause the game;
	if the roll is in the reader:
		say "[fixed letter spacing]UPLOAD COMPLETE. NEW SYSTEM FILE VALIDATED.[variable letter spacing][paragraph break]";
		Now OSBroken is false;		
	otherwise:
		say "[fixed letter spacing]ERROR: UPLOAD TIMED OUT, NO DATA RECEIVED.[paragraph break][variable letter spacing]";
	try examining teletype;
	

chapter 3 - HAL OS

The teletype HAL-OS-REMOTE program is an enumerated multiple-choice program. The options table of the Teletype HAL-OS-REMOTE program is the Table of HAL-OS-REMOTE Options.

Table of HAL-OS-REMOTE Options
index	title	effect
--	"SYSTEM STATUS"	OS-remote-status rule
--	"SWITCH TO FAST DATA MODE"	OS-remote-high-rate rule
--	"SOLAR SYSTEM SCANNER"	OS-remote-scan rule
--	"DOCK LINK"	OS-remote-login-starship rule

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
	DOCKING PORT                    OK (UNOCCUPIED)[line break]
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
	say "[LINE BREAK] DOCKING PORT REPORTS SHIP IS PRESENT.[paragraph BREAK]
	INITIALIZING INTERSHIP DATALINK:[LINE BREAK]
	TRYING 45.45 BAUD...[variable letter spacing]";
	wait for any key;
	clear only the main screen;
	Now the teletype is not running HAL-OS-REMOTE program;
	Now halNotice is "";
	Now the teletype is running STARSHIP-OS-REMOTE program;
	try examining teletype;


Chapter 4 - Starship OS Remote

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
	say "[fixed letter spacing]   WELCOME TO [line break]";
	say "                                   .:----:::...   [line break]  ";
	say "                           :-=**+=-.       [line break]";
	say "                       :=*#%*=:        [line break]";
	say "                   :+#X%*=.            [line break]";
	say " .+XXXX*:      .=#XX%+:             [line break]";
	say "   .=%XXX#: .+#XX%+:             [line break]";
	say "      =%*-=#XXX*-                [line break]";
	say "       :*XXX%+-                      [line break]";
	say "     -#XXX%=-#X%=.                   [line break]";
	say "   -#XXX%=  :*XXXX+.                [line break]";
	say " :#XXXX+.     :*XXXX*:                  [paragraph break]";
	say "	#####      [line break]";                                       
	say "#     # #####   ##   #####   ####  #    # # #####  [line break]";
	say "#         #    #  #  #    # #      #    # # #    # [line break]";
	say " #####    #   #    # #    #  ####  ###### # #    # [line break]";
	say "      #   #   ###### #####       # #    # # #####  [line break]";
	say "#     #   #   #    # #   #  #    # #    # # #      [line break]";
	say " #####    #   #    # #    #  ####  #    # # #      [line break]";
	say "[variable letter spacing]";
	[http://www.network-science.de/ascii/]
	
Carry out examining the STARSHIP-OS-REMOTE program for more than one time:
	Say "[fixed letter spacing]<<<STARSHIP REMOTE COMMAND LINK>>>[variable letter spacing]";


Table of StarshipOSRemote Options
index	title	effect
--	"SHIP STATUS"	Starship-remote-status rule
--	"NAVIGATION"	Starship-remote-nav rule
--	"AUTOPILOT"	Starship-remote-ap rule
--	"LOG OUT"	Starship-remote-logout rule

This is the Starship-remote-status rule:
	say "[fixed letter spacing]";
	say "[LINE BREAK]  ***STARSHIP ROCKET SYSTEMS STATUS***[LINE BREAK]";
	say "  NAV MODE:       [StarshipRemoteNavMode]";
	if StarshipRemoteNavMode is "GO TO BEACON":
		say " [StarshipLandingFreq] KHZ[LINE BREAK]";
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
		wait for any key;
		now halnotice is "[halOSIntro]";	
		Now the teletype is not running STARSHIP-AUTOPILOT-REMOTE program;
		Now the teletype is running HAL-OS-REMOTE program;
		try looking;
		say "You sat here in a daze, contemplating what you had just done.  After a while you hear a sonic boom that shakes the house, followed by a cracking roar that is a fair emulation of a hurricane carrying an earthquake.  The house becomes silent again.";
		Now the starship is in the west side yard;
		Now the Bottom of the Ladder is in the West side yard;	
	Otherwise:
		say "AUTOPILOT GUIDANCE ERROR.  PLEASE CHECK NAV AND AUTOPILOT SETUP.";
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


Chapter 5 - Testing TTY & Starship

test tty with "put roll in reader / turn teletype on / type 3 / type 2 / type 4 / type 2 / type 2 / type 4 / type 5 / type 3 / type 2 / type 6 ";



Book 3 - Starship Fueling Puzzle


Part 1 - Backend Setup

The oxygen flow is initially 0.
The methane flow is initially 0. 

Chapter 1 - Time events

[   FIX THE TIME HERE FOR RELEASE  ]
At 10:35 PM:
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

Chapter 2 - Fueling Parts

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


Chapter 3 - Rules to make things happen when solving

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
	
Book 4 - Starship Landed



Chapter 2 - Rocket at home
	


Section 1 - Offstage Starship Pre-Landing

A Starship is in the staging area. The starship is fixed in place.  The description of the starship is "A great silvery rocket, 30m tall, it has a set of hose ports at the bottom, and next to the ports is a small display screen.".

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



Section 4 - Fueling the rocket

A fuel display is part of the starship.  Understand "screen" as display.  The description of the fuel display is " [line break]
  Fuel Quantities: [line break]
O2 Tank Level [O2 tank level]%[line break]
CH4 tank level [CH4 tank level]%[line break]".


A set of ports is part of the starship. The description of the set of ports is "there is an 02 fill port and a CH4 fill port."  A CH4 fill port is part of the set of ports. The CH4 fill port is a container.  A O2 fill port is part of the set of ports.  The O2 fill port is a container. 

The carrying capacity of the CH4 port is 1.
The carrying capacity of the O2 port is 1.


Instead of inserting an end of the green hose into a CH4 fill port:
	say "The hose end doesn't fit in this port."
Instead of inserting an end of the yellow hose into a O2 fill port:
	say "The hose end doesn't fit in this port."

The O2 tank level is initially 0.
The CH4 tank level is initially 0. 

Every turn:
	if the end of the green hose is in the O2 fill port:
		if oxygen flow is 1:
		 	if O2 tank level is less than 100:
				say "fuelling O2[line break]";
				increase O2 tank level by 5;
			otherwise if the player is in the west side yard:
				now oxygen flow is 0;
				say "You hear a loud clunk back toward the house, and the green hose pops out of the port onto the ground, having shut off automatically.";
				move green hose to west side yard;
	if the end of the yellow hose is in the CH4 fill port:
		if methane flow is 1:
		 	if CH4 tank level is less than 100:
				say "fueling CH4[line break]";
				increase CH4 tank level by 10;
			otherwise if the player is in the west side yard:
				now methane flow is 0;
				say "You hear a faint thunk from the back yard, and the yellow hose pops out of the port onto the ground, having shut off automatically.";
				move the yellow hose to west side yard.

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
		if (green hose is in O2 port) or (yellow hose is in ch4 port):
			say "The engines roar, the rocket rises away from the ground.  A hose, still connected to a fill port, tears the fuel manifold out of the bottom of the ship.  A large explosion consumes the rocket instantly. ";
			end the story saying "You have died.";
		otherwise:
			say "[line break] Blastoff!  You have gone to space today.  Good jeorb.";
			end the story;
	otherwise:
		say "autopilot turns off.";
		now autopilot is switched off;
			
Chapter 4 - Landed tests

test shipin with "u / u / w / turn interlock on/ w  "


Book 5 - Pavilion Initial Tests


Test UHF with "s / e / get book / w / s / e / e / e / turn radio on / w ".

test wait20 with "z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z"

test wait50 with "z / z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z /z / z /z /z /z "

Test radiation with " test UHF / d / test wait50 / u / w / w / n / n / z / z / z / z / "

Test gen with " z / z/ open box / get all / s / s / e / e / d / n / drop methane / turn methane on / s / w / w / drop oxygen / turn oxygen on "

Test gases with "test gen / e / e / u / w / w / n / n / n / turn hydrant on / w / se / s / turn hydrant on / n / nw "

test station with "s / s / e / e / d / n / turn equipment on / s"


test all with "test radiation / test gases "



Book 6 - Misc General Helper functions

Section 1 - Hinting setup

[Overall setup for hinting]
Hinting is an action out of world applying to nothing. Understand "hint" and "help" as hinting.

A room has a text called localhint. The localhint of a room is usually "There are no hints available in this location."

Report hinting:
say "[localhint of the location]".



