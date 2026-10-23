SHADOWCAT aka KATHERINE "Kitty" PRYDE, member of the X-men

Bio-------------------------------------------------------

A mutant, Pryde possesses a "phasing" ability that allows her 
and objects or people with which she is in contact to become intangible. 
This power also disrupts any electrical field she passes through, 
and lets her simulate levitation.
    
Created by Arkady, Hypersonic92 and B-5 @ CVG'S MARVEL FACTORY

Sprited by Hypersonic92, Arkady, and B-5

Coded by Arkady

& Voiced by JLA

	;----------------------
		MOVESET
	;----------------------
	SPECIAL MOVES----------

	DDFF+P	BEING A DRAG
	DDBB+P	DIVE UNDER
	FDDF+P	KATZKLAWZ
	DDFF+K	GHOST KICKS
	DDBB+K	PHASE COUNTER
	FDDF+K	PHASE RUN
	P+K	LOCKHEED

	HYPER MOVES------------

	DDFF+PP	 BLADE OF EXCALIBUR (only pals 1-6)
	DDBB+PP	 SCORCHED EARTH (Lockheed)
	DDFF+KK	 OGUN'S NINJA TRAINING
	DDBB+KK	 UNTOUCHABLE (float)
	DDFF+PP	 AGENT OF SHIELD (only pals 7-12)

thanks to cvg's support, resources and sitespace
for where we could freely collaborate with this work
cheers and enjoy
	

--------------------------------CVG TEMPLATE BETA 2---------------------------------------
--------------------------------- BY TEAM CVG----------------------------------------------


http://cvgunited.com/index.php

Version 1.2 What fixed and New (May 4,2011)
-Fixed Damage dampener
-fixed bugs in super jump
-disable guard crush
-fixed no ctrl when landing
-fixed launcher
-fixed no timer in flight mode
-fixed canceling out of hyper into flight mode
-fixed no cancel out of flight mode
-fixed bug in A.I Air Dash
-Made Hyper Background non transparent
-Adjusted pause times on Basic attacks to 8,8
-removed the time > 3 from the command
-reduce juggle point from 4 to 1
-increased damage on basic attack 28,1 for light, 52,1 for medium and 72,1 for Hard
-fixed power add on basic attacks 20 for light, 40 for medium, and 60 for Hard
-fixed player indicators showing up in introductions
-fixed missing State type in A.I command Standing Strong Kick
-fixing no between basic attacks and crouch attacks
-replaced hit sparks and player indicators
-made effects Lavender

What left (May 4, 2011)
-improve the A.I air combing
-fixed any issue or bug that wasn't caught for this update
-improve anything that needs to be improved

Hi, and thank you for checking out CVG United's Character Creation Template tool. This
should help you get into creation. Much work was put into this to have a non buggy,
and fun gameplay (MvC like, but not exactly) tool for new creators to use.

All you need to do is created a palette file and insert it in the main file and def 
files. Then sprite swap your sprites into the corresponding movement sprites. The template
will do the rest regarding animation for all of your basics. You may however, depending
on your sprites and/or the character you are making, need to align some things or want
to adjust some timing.

However, when it comes to specials, hypers and much of the other stuff that makes a
character fun and who they are, you will have to code those in yourself. To help you
with that, we included a number of help files. Many of you may have them already, but
do to location, might have overlooked them. Therefore, we decided to include them in the
template to help you out. Look for the *Character Creation Help Files* folder.

If you need additional help, please come to CVG United's Help section at:

http://cvgunited.com/index.php/board,9.0.html

We have a very friendly and knowledgable base that can probably answer any question you
may have.



Special Thanks to:
- ALEXZIQ, bdc, aa250 for all their hard work on this template
- Trexrell and Yin for additional support
- The Arlequin for the Hyper port concept
- Spooky77 for creating CVG United and being the webmaster
- The entire forum community at CVG United for being the best Mugen community out there
- Elecbye for creating Mugen and credit towards using some of their help files
- Capcom and SNK for creating the bulk of the sprites that are later edited into all
Mugen characters we love
- VirtualTek for creating Fighter Factory. This helps bring those sprites to life
- K.O.D for his awesome clsn tutorial (i've lost track of how many times aa250 has
recommended it)
-Anyone who wasn't mention or I forgot.




Other Tidbits of Information
===================================================================================
COLLISON BOXES RED AND BLUES BOXES
-----------------------------------------------------------------------------------
Before I begin I just wanted to say that I would avoid using the auto collision tool
that in fighting factory. If you are using Fighting Factory Ultimate than you can
skip this part. The reason why I say this because auto collision create to many 
collision boxes that are unnessary for a particular animation. This is why we included
K.O.D's great clsn tutorial and information from Elecbyte on all this.


VARIABLES
-----------------------------------------------------------------------------------
var(2) -Statedef 810 Throw Player State
var(3) Statedef -2-Damage damper 
!gethitvar(isbound) -Statedef 820 Thrown p2 Custom state
var(1) - Statedef -2 Display To Clipboard
var(50) - Statedef -2 Display to Clipboard
var(17) -Statedef -3 Explod
var(39) -statedef -3 Explod
var(37) -statedef -3 Explod
var(0)  -statedef -1 Artificial Intelligence


-----------------------------------------------------------------------------------
EXTRAS

In statedef -2.st cns you will find a code like this

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 29.0
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

basically what this code does is it reduces damage when characters combo get longer.
