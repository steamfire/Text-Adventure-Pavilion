"TeletypeTesting4" by Dan Bowen
[Adding Starship to the Hal Satellite]

[******to do********
Fix the UHF and Teletype being turned on truth table logic.  THIS SHOULD PRODUCE NO TTY OUTPUT WHEN UHF IS OFF.  ONLY PUT STATIC OUTPUT WHEN UHF IS ON, TTY IS ON, AND USER ISN"T HOLDING THE FREQ BOOK.
]


Include Basic Screen Effects by Emily Short.
Include ComputersTeletype by Dan Bowen
[This ComputersTeletype extension v9 is based on v8 of Computers by Emily Short.  There are only 2 things added: the variables visibleDescriptor and screenDescriptor.  The default to "visible" and "screen".  These appear when a multiple-choice menu is displayed.  In the story you change them to whatever text you like.  In this case, it's "printed" and "paper.]
[v10 by dan adds fixed spacing font for printing the choices of the menu inside the extension]
 


Ham Shack is a room.
There is a roll of paper tape in the ham shack.
UHF Radio is in the ham shack.  UHF radio is a device.  UHF radio is switched on.
 
Part 1 - Teletype

[Interaction begins when player examines Teletype ]

OSBroken is initially true.


The Teletype is computer in the ham shack.  The teletype is switched off.  The description is "The teletype is a green boxy thing, with a typwriter keyboard, paper coming out the top, and a paper tape reader on the side.[if the teletype is switched on]The motor hums quietly.[otherwise] It is turned off."


Understand "paper", "message", "text" and "readout" as a screen.
Understand "tty" as teletype.


The paper tape reader is an extension port.  It is part of the teletype.  the description of the paper tape reader is "The punched paper tape reader is a bulging box hanging off the left side of the main teletype. It is used to transmit large amounts pre-recorded data through the teletype."

The roll of paper tape is a data storage device.

halNotice is initially "";

halBootloaderIntro is initially "ILLIAC BOOTLOADER SAFE MODE. FAULT CONDITION: OPERATING SYSTEM FAILURE. ONLY RECOVERY COMMANDS AVAILABLE.";

halOSIntro is initially "
		*************************************************[line break]
		WELCOME TO HAL OS V9000 REMOTE COMMAND INTERFACE.[line break]
		OPERATIONAL SATELLITE: RDS-1.[line break]
		*************************************************";	


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

chapter 1 - Static

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
	HIGH GAIN ANTENNA             FAIL[line break]
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
	     FULL ANALYSIS AVAILABLE IN FAST DATA MODE.[PARAGRAPH BREAK]";

This is the OS-remote-high-rate rule:
	Say "[fixed letter spacing]ERROR: HIGH GAIN ANTENNA IS NOT RESPONDING. CANNOT SWITCH TO REMOTE FAST DATA MODE.[variable letter spacing]";
	
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


chapter 4 - Starship OS Remote

section 1 - Main starship remote menu

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
	say "starship status here"
	
This is the Starship-remote-nav rule:
	Say "starship nav here";
	[bring nav computer to the front]
	Now the teletype is not running STARSHIP-OS-REMOTE program;
	Now the teletype is running STARSHIP-NAV-REMOTE program;
	try examining teletype;
	
	
This is the Starship-remote-ap rule:
	Say "starship autopilot here"
	
This is the Starship-remote-logout rule:
	say "[fixed letter spacing]LOGGING OUT OF STARSHIP...[variable letter spacing]";
	Now the teletype is not running STARSHIP-OS-REMOTE program;
	now halnotice is "[halOSIntro]";	
	Now the teletype is running HAL-OS-REMOTE program;
	try examining teletype;
	

section 2 - Navigation Computer

The STARSHIP-NAV-REMOTE program is an enumerated multiple-choice program. The options table of the STARSHIP-NAV-REMOTE program is the Table of StarshipNavRemote Options.

Carry out examining the STARSHIP-NAV-REMOTE program:
	Say "[fixed letter spacing]<<<STARSHIP REMOTE COMMAND LINK>>> NAVIGATION MODES[variable letter spacing]";

Table of StarshipNavRemote Options
index	title	effect
--	"SPACE OBJECT RENDEZVOUS"	starship-nav-remote-name rule
--	"SPACE BEACON RENDEZVOUS"	starship-nav-remote-space-beacon rule
--	"LAND AT PLANETARY COORDINATES"	starship-nav-remote-coords rule
--	"LAND AT PLANETARY RADIO TRANSMITTER"	starship-nav-remote-landing-beacon rule
--	"SET DESIRED ORBIT PARAMETERS"	starship-nav-remote-orbit rule
--	"EXIT NAV COMPUTER"	starship-nav-remote-exit rule


This is the starship-nav-remote-name rule:
	say "Set object name to rendezvous with";

This is the starship-nav-remote-space-beacon rule:
	say "Set space beacon frequency to rendezvous with";

This is the starship-nav-remote-coords rule:
	say "set planetary landing coordinates";

This is the starship-nav-remote-landing-beacon rule:
	say "set planetary landing beacon frequency (AM band)";

This is the starship-nav-remote-orbit rule:
	say "set next orbit parameters";

This is the starship-nav-remote-exit rule:
	Now the teletype is not running STARSHIP-NAV-REMOTE program;
	Now the teletype is running STARSHIP-OS-REMOTE program;
	try examining teletype;
	
	



test tty with "put roll in reader / turn teletype on / type 3 / type 2 / type 4 / x tty ";





