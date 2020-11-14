"TeletypeTesting3" by Dan Bowen

Include Basic Screen Effects by Emily Short.
Include ComputersTeletype by Dan Bowen
[This ComputersTeletype extension v9 is based on v8 of Computers by Emily Short.  There are only 2 things added: the variables visibleDescriptor and screenDescriptor.  The default to "visible" and "screen".  These appear when a multiple-choice menu is displayed.  In the story you change them to whatever text you like.  In this case, it's "printed" and "paper.]
[v10 by dan adds fixed spacing font for printing the choices of the menu inside the extension]
 


Ham Shack is a room.
There is a roll of paper tape in the ham shack.
 
Part 1 - Teletype

[Interaction begins when player examines Teletype ]

OSBroken is initially true.

The Teletype is computer in the ham shack.  The teletype is switched off.  The description is "The teletype is a green boxy thing, with a typwriter keyboard and paper coming out the top.[if the teletype is switched on]The motor hums quietly.[otherwise] It is turned off."

Understand "paper", "message", "text" and "readout" as a screen.
Understand "tty" as teletype.

The paper tape reader is an extension port.  It is part of the teletype.  

The roll of paper tape is a data storage device.


After switching on the teletype:
		[These lines are here to change the menu text to printed on paper, a la teletype ]
	Now screenDescriptor is "paper";
	Now the visibleDescriptor is "printed";
		[** this next line is important to start the main menut **]
	now the teletype runs operation program;
	Try examining teletype;

halNotice is initially "SPACECRAFT IS IN BOOTLOADER SAFE MODE. FAULT CONDITION: OPERATING SYSTEM FAILURE. ONLY RECOVERY COMMANDS AVAILABLE.";

Carry out examining the Teletype:
	say "[if the teletype is switched off][description of the Teletype][paragraph break][otherwise][variable letter spacing]The machine clatters as it types out: [paragraph break][fixed letter spacing][halnotice][variable letter spacing][paragraph break]";
	rule succeeds.
	

The teletype operation program is an enumerated multiple-choice program. The options table of the Teletype operation program is the Table of Bootloader Options.
	
Table of Bootloader Options
index	title	effect
--	"RUN DIAGNOSTICS"	check-system rule
--	"REBOOT PROCESSOR"	reboot-cpu rule
--	"UPLOAD NEW SYSTEM FILE"	upload rule

This is the check-system rule:
	if OSBroken is true:
		Say "OS File corruption detected";
	Otherwise:
		say "hardware ok";
	
This is the reboot-cpu rule:
	say "[fixed letter spacing][paragraph break]***THE SYSTEM IS GOING DOWN FOR REBOOT NOW!***";
	pause the game;
	now halnotice is "
	*************************************************[line break]
	WELCOME TO HAL OS V9000 REMOTE COMMAND INTERFACE.[line break]
	OPERATIONAL SATELLITE: RDS-1.[line break]
	*************************************************";	
	say "Dan: here is where you would set the next program to start";
	[try examining teletype;]

This is the upload rule:
	Say "[fixed letter spacing]WARNING: AFTER UPLOAD, CPU MUST BE REBOOTED TO LOAD SYSTEM FILE. PLEASE BEGIN DATA UPLOAD NOW...[paragraph break]";
	say "[variable letter spacing]You hear the paper tape reader buzzing and clicking for a long while...[fixed letter spacing]";
	pause the game;
	if the roll is in the reader:
		say "[fixed letter spacing]UPLOAD COMPLETE. NEW SYSTEM FILE VALIDATED.[variable letter spacing][paragraph break]";
		Now OSBroken is false;
	otherwise:
		say "[fixed letter spacing]ERROR: NO DATA RECEIVED.[paragraph break][variable letter spacing]";
	try examining teletype;
	

	
test tty with "put roll in reader / turn teletype on / type 3 / type 2 ";





