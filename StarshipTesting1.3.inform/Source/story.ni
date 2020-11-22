"Starship Testing" by Dan Bowen, Version 1.3

Include Exit Lister by Gavin Lambert.
Include Basic Screen Effects by Emily Short.
Include Easy Doors by Hanon Ondricek.



Book 1 - Starship Landing

Part 1 - Variables duplicated in main program Setup

West side yard is a room.  "the ground here is blackened."

Player is holding a printout.

The oxygen flow is initially 1.
The methane flow is initially 1. 

The end of the green hose is in the west yard.  
The end of the yellow hose is in the west yard.
	

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

StarshipLanded begins when play begins.

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