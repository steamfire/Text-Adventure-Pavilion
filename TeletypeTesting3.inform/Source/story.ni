"TeletypeTesting3" by Dan Bowen

Include Basic Screen Effects by Emily Short.
Include ComputersTeletype by Dan Bowen
[This ComputersTeletype extension v9 is based on v8 of Computers by Emily Short.  There are only 2 things added: the variables visibleDescriptor and screenDescriptor.  The default to "visible" and "screen".  These appear when a multiple-choice menu is displayed.  In the story you change them to whatever text you like.  In this case, it's "printed" and "paper.]


Ham Shack is a room.
 
Part 1 - Teletype

[Interaction begins when player examines Teletype]

OSBroken is initially true.

The Teletype is computer in the ham shack.  The teletype is switched off.  The description is "The teletype is a green boxy thing, with a typwriter keyboard and paper coming out the top.[if the teletype is switched on]The motor hums quietly.[otherwise] It is turned off."

Understand "paper" and "readout" as a screen.

After switching on the teletype:
		[These lines are here to change the menu text to printed on paper, a la teletype]
	Now screenDescriptor is "paper";
	Now the visibleDescriptor is "printed";
		[** this next line is important to start the main menut **]
	now the teletype runs operation program;
	Try examining teletype;

Carry out examining the Teletype:
	say "[if the teletype is switched off][description of the Teletype][paragraph break][otherwise]The machine clatters as it types out: [paragraph break]CONNECTED> WELCOME, I AM HAL.";
	rule succeeds.
	

The teletype operation program is an enumerated multiple-choice program. The options table of the Teletype operation program is the Table of Bootloader Options.
	
Table of Bootloader Options
index	title	effect
--	"Run System Diagnostics"	check-system rule
--	"Reboot CPU"	reboot-cpu rule
--	"Upload new firmware"	upload rule

This is the check-system rule:
	if OSBroken is true:
		Say "OS File corruption detected";
	Otherwise:
		say "hardware ok";
	
This is the reboot-cpu rule:
	say "reboot";

This is the upload rule:
	Say "uploading new OS...";
	Now osbroken is false;
	





