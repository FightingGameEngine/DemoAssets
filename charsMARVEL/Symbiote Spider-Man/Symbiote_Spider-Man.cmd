; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;

;-| AI Commands (Beginning)|---------------------------------------------------

[Command]
name = "cpu1"
command = U, D, F
time = 0

[Command]
name = "cpu2"
command = U, B, F
time = 0

[Command]
name = "cpu3"
command = U, D, D
time = 0

[Command]
name = "cpu4"
command = F, B, U
time = 0

[Command]
name = "cpu5"
command = U, F, U, B
time = 0

[Command]
name = "cpu6"
command = U, D, B
time = 0

[Command]
name = "cpu7"
command = F, F, B
time = 1

[Command]
name = "cpu8"
command = U, D, U
time = 0

[Command]
name = "cpu9"
command = F, B, B
time = 0

[Command]
name = "cpu10"
command = F, F, B, B
time = 0

[Command]
name = "cpu11"
command = U, U, F
time = 0

[Command]
name = "cpu12"
command = U, B, B
time = 0

[Command]
name = "cpu13"
command = U, B, F, F
time = 0

[Command]
name = "cpu14"
command = U, F, B, U
time = 0

[Command]
name = "cpu15"
command = U, B, F, U
time = 0

[Command]
name = "cpu16"
command = U, B, B, B
time = 0

[Command]
name = "cpu17"
command = U, D, B, F
time = 0

[Command]
name = "cpu18"
command = U, D, B, D
time = 0

[Command]
name = "cpu19"
command = U, D, F, U
time = 0

[Command]
name = "cpu20"
command = U, D, U, B
time = 0

[Command]
name = "cpu21"
command = U, D, F, F
time = 0

[Command]
name = "cpu22"
command = F, F, F, F
time = 0

[Command]
name = "cpu23"
command = U, U, U, D
time = 0

[Command]
name = "cpu24"
command = B, B, B
time = 0

[Command]
name = "cpu25"
command = D, D, D, D
time = 0

[Command]
name = "cpu26"
command = D, D, D
time = 0

[Command]
name = "cpu27"
command = F, F, F
time = 0

[Command]
name = "cpu28"
command = U, U, U
time = 0

[Command]
name = "cpu29"
command = U, U, B, B
time = 0

[Command]
name = "cpu30"
command = D, D, F, F
time = 0

;-|AI Commands (Ending) |-----------------------------------------

;-|Human Commands (Beginning)|-----------------------------------------------

;-| Supers |------------------------------------------------------------------

[Command]
name = "meteo"
command = ~D, DF, F, z+c
time = 40

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y


[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "Unused"
command = ~D, DF, F, a+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "Snake Super"
command = ~D, DB, B, c+z

;spider sense
[Command]
name = "sense"
command = ~D, DB, B, y+z

;spider sense
[Command]
name = "sense"
command = ~D, DB, B, x+y

;-| Specials |-----------------------------------------------------------

[Command]
name = "hcb_x"
command = ~F, D, B, x

[Command]
name = "hcb_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "hcb_y"
command = ~F, D, B, y

[Command]
name = "hcb_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "hcb_z"
command = ~F, D, B, z

[Command]
name = "hcb_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "anti_x"
command = ~F, D, F, x

[Command]
name = "anti_y"
command = ~F, D, F, y

[Command]
name = "anti_z"
command = ~F, D, F, z

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "airserpent"
command = ~D, DB, B, b

[Command]
name = "qcb_b"
command = ~D, DB, B, b+a

[Command]
name = "qcb_c"
command = ~D, DB, B, c

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z

[Command]
name = "crouching_symbiote_tentacles"
command = /D+x+y

[Command]
name = "standing_symbiote_bite"
command = /B+x+y



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

;-| Super Jump |-----------------------------------------------------------
[Command]
name = "DU"
command = $D,$U
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 10

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 10

[Command]
name = "down_b"
command = /$D,b
time = 10

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 10

[Command]
name = "b"
command = b
time = 10

[Command]
name = "c"
command = c
time = 10

[Command]
name = "x"
command = x
time = 10

[Command]
name = "y"
command = y
time = 10

[Command]
name = "z"
command = z
time = 10

[Command]
name = "start"
command = s
time = 10

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 10

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 10

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 10

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 10

;-|Humand Commands (Ending)|------------------------------------

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.

[Statedef -1]

;-|Artificial Intelligence Patch By Empawk|-------------------------------------

;AI Activation
[State -1, AI Activation]
type = VarSet
triggerall = var(59) != 1
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
v = 59
value = 1

;-|Standing AI (Beginning)|-------------------------------

;AI Standing Guard
[state -1, AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = p2bodydist X <= 250
trigger1 = random <= 500
value = 130

;AI Crouching Guard
[state -1, AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = p2bodydist X <= 500
trigger1 = random <= 300
value = 131

;AI Air Guard
[state -1, AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = p2bodydist X <= 500
trigger1 = random <= 300
value = 132

;AI Standing Light Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 10
trigger1 = P2StateType = S
trigger1 = random <= 350
trigger1 = ctrl
trigger2 = prevstateno = 100
trigger2 = statetype != A
trigger2 = statetype != C
trigger2 = P2BodyDist X <= 10
trigger2 = P2StateType = S
trigger2 = random <= 350
trigger2 = ctrl
value = 200

;AI If Standing Light Punch Is Blocked, Attempt Crouching Symbiote Tendrils
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 200 && moveguarded
trigger1 = random < 300
value = 292

;AI If Standing Light Punch Is Blocked, Standing Light Symbiote Cyclone
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 200 && moveguarded
trigger1 = random < 300
value = 295

;AI If Standing Light Punch Is Blocked, Crouching Symbiote Serpents
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 200 && moveguarded
trigger1 = random < 300
value = 290

;AI Chain Standing Light Punch To Standing Medium Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 200 && movehit
value = 210

;AI Chain Standing Medium Punch To Standing Heavy Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 210 && movecontact
value = 220

;AI Chain Standing Heavy Punch To Hammer Throw 01
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 220 && movecontact
value = 4050

;AI Chain Standing Hammer Throw 01 To Symbiote Serpents
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 4050 && movecontact
value = 290

;AI If Enemy Blocks Standing Light Web Throw Attempt Hammer Throw 01
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 1500 && moveguarded
value = 4050

;AI Standing Light Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 15
trigger1 = P2StateType = S
trigger1 = random >= 350
trigger1 = ctrl
value = 230

;AI Chain Standing Light Kick To Standing Medium Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 230 && anim = 230 && movecontact
trigger2 = (stateno = 230 && anim = 231 && movecontact && animelem = 14)
value = 240

;AI Chain Standing Medium Kick To Standing Heavy Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 240 && movecontact
value = 250

;AI Chain Standing Heavy Kick To Light Spider Sting
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 250 && movecontact && random < 300
value = 1400

;AI Chain Standing Heavy Kick To Medium Spider Sting
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 250 && movecontact && random < 300
value = 1410

;AI Chain Standing Heavy Kick To Heavy Spider Sting
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 250 && movecontact && random < 300
value = 1420

;AI Chain Spider Sting Finish To Light, Medium, & Heavy Spider Sting
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = (stateno = 1400 || stateno = 1410 || stateno = 1420) && movecontact
trigger1 = (animelem = 7) && (anim = 1400) && (anim != 300)
trigger1 = p2bodydist x <= 50 && p2bodydist y <= -5
trigger1 = random < 300
value = 1425

;AI Crouching Symbiote Tentacles
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 70
trigger1 = P2StateType = S
trigger1 = random >= 350
trigger1 = ctrl
value = 292

;AI Standing Light Web Shot
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = (P2StateType = S || P2MoveType = I)
trigger1 = P2StateType != C
trigger1 = P2StateType != A
trigger1 = P2StateNo = 0
trigger1 = StateType != A
trigger1 = random >= 500
trigger1 = ctrl
trigger2 = stateno = 292 && movehit && moveguarded
trigger2 = animelem = 11 || animelem = 12
trigger2 = P2BodyDist X >= 100
trigger2 = P2BodyDist Y < 5
trigger2 = random >= 200
trigger3 = stateno = 3000 && animtime = 0
trigger3 = random >= 500
trigger4 = stateno = 292 && animtime = 0
trigger5 = stateno = 0
trigger5 != movecontact
value = 1000

;AI Standing Light Web Throw
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = (p2movetype = I) && (p2statetype != A) && (p2stateno = 200 || p2stateno = 230)
trigger1 = (P2BodyDist X <= 200) && (ctrl) && (random <= 100)
trigger2 = (p2statetype = S) && (p2statetype != A) && (p2stateno = 200 || p2stateno = 230)
trigger2 = (P2BodyDist X <= 200) && (ctrl) && (random <= 100)
value = 1500

;AI Standing Medium Web Throw
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = P2StateType != C && P2StateType != S && P2StateType = A
trigger1 = P2BodyDist X > 50 && P2BodyDist X < 90 && P2BodyDist Y <= -10
trigger1 = StateType != A
trigger1 = ctrl && random < 100
value = 1510

;AI Standing Heavy Web Throw
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = P2StateType != C && P2StateType != S && P2StateType = A
trigger1 = P2BodyDist X = 0 && P2BodyDist Y <= -10
trigger1 = StateType != A
trigger1 = ctrl && random < 100
value = 1520

;AI Standing Symbiote Cyclone
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype = S && P2MoveType = I
trigger1 = StateType != A
trigger1 = (P2StateType = S || P2StateType = C)
trigger1 = (P2BodyDist X >= 200) && (P2BodyDist Y = 0) && (ctrl)
trigger1 = random <= 100
trigger2 =(P2StateNo = 0 || P2StateNo = 195) && (P2StateType = S || P2StateType = C)
trigger2 = (P2BodyDist X <= 200) && (random <= 100) && (ctrl)
trigger2 = statetype != A
value = 294

;AI Ultimate Web Throw
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 200
trigger1 = P2StateType = S
trigger1 = random <= 100
trigger1 = ctrl
value = 4000

;AI Standing Symbiote Bite
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 40
trigger1 = P2StateType = S
trigger1 = random >= 350
trigger1 = ctrl
value = 291

;AI Chain Standing Symbiote Bite To Crouching Symbiote Serpents
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 291 && movecontact
trigger1 = animelem = 8
value = 290

;AI Chain Medium Spider Sting To Air Heavy Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = (stateno = 1410 && anim = 1400 && animelem = 7 && movecontact) && anim != 300
trigger1 = random < 300
value = 620

;AI Chain Heavy Spider Sting To Air Heavy Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = (stateno = 1420 && anim = 1400 && animelem = 7 && movecontact) && anim != 300
trigger1 = random < 300
value = 620

;AI Chain Crawler Assault To Maximum Spider
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = power >= 1000
trigger1 = stateno = 3000 && movecontact
trigger1 = animelem = 26
trigger1 = random >= 500
value = 2000

;AI Crawler Assault
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1= power >= 1000
trigger1 = statetype != A
trigger1 = P2BodyDist X >= 40 && P2BodyDist X <= 100
trigger1 = P2BodyDist Y >= -1
trigger1 = P2StateType != L
trigger1 = P2MoveType = I
trigger1 = ctrl
trigger1 = random >= 500
value = 3000

;-|Standing AI (Ending)|---------------------------------

;-|Crouching Close Distance Combo #1 (Beginning)|------------------------------

;AI Crouching Light Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 10
trigger1 = P2StateType = C
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = P2BodyDist X <= 10
trigger2 = P2MoveType = I
trigger2 = ctrl
value = 400

;AI Chain Crouching Light Punch To Crouching Medium Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 400 && movecontact
value = 410

;AI Chain Crouching Medium Punch To Crouching Heavy Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 410 && movecontact
value = 420

;AI Chain Crouching Heavy Punch To Crouching Light Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 420 && movecontact
value = 430

;AI Chain Crouching Light Kick To Crouching Medium Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 430 && anim = 430 && movecontact
trigger2 = (stateno = 430 && anim = 431 && movecontact) && (animelem = 8 || animelem = 9 || animelem = 10)
value = 440

;AI Chain Crouching Medium Kick To Crouching Heavy Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 440 && movecontact
value = 450

;AI If Enemy Blocks Or Gets Hit By Crouching Heavy Kick Then Attempt Standing Spider Toss 01
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 450 && moveguarded
trigger1 = P2BodyDist X <= 5 && P2BodyDist Y <= 5
trigger2 = stateno = 450 && movecontact
trigger2 = P2BodyDist X <= 5 && P2BodyDist Y <= 5
trigger3 = prevstateno = 450
trigger3 = P2BodyDist X <= 5 && P2BodyDist Y <= 5
value = 900

;-|Standing Close Distance Combo #1 (Ending)|-----------------------------------

;-|Air Close Distance Combo #1 (Beginning)|------------------------------------

;AI Air Light Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = P2BodyDist X <= 10
trigger1 = ctrl
value = 600

;AI Chain Air Light Punch To Air Medium Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 600 && movecontact
value = 610

;AI Chain Air Medium Punch To Air Heavy Punch
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 610 && movecontact
value = 620

;AI Chain Air Heavy Punch To Air Light Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 620 && movecontact
value = 630

;AI Chain Air Light Kick To Air Medium Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 630 && movecontact
value = 640

;AI Chain Air Medium Kick To Air Heavy Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 640 && movecontact
value = 650

;AI Chain Air Heavy Kick To Air Spider Toss 2
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = stateno = 650 && movecontact
value = 950

;AI Air Light Dive Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype = A && (statetype != S || statetype != C)
trigger1 = p2bodydist x >= 100 && p2bodydist y >= 10 
trigger1 = (random <= 100) && (ctrl)
value = 670

;AI Air Medium Dive Kick
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype = A && (statetype != S || statetype != C)
trigger1 = p2bodydist x = -5
trigger1 = (random <= 100) && (ctrl)
value = 672

;AI Air Symbiote Cyclone
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = statetype = A && (statetype != S || statetype != C)
trigger1 = P2BodyDist X >= 100 && P2BodyDist Y >= 10
trigger1 = (random <= 100) && (ctrl)
trigger2 =(stateno = 1400 || stateno = 1410 || stateno = 1420) && anim = 300 && animelem = 7 && movecontact
value = 296

;AI Chain Web Swings To Air Symbiote Cyclone
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = (statetype != S || statetype != C)
trigger1 = statetype = A
trigger1 = (prevstateno = 1305 && animtime = 0 && P2BodyDist X >= 100)
trigger1 = ctrl
value = 297

;AI Chain Web Swings To Air Spider Toss 2
[state -1, AI]
type = changestate
triggerall = var(59) = 1
trigger1 = (statetype != S || statetype != C)
trigger1 = statetype = A
trigger1 = (prevstateno = 1305 && animtime = 0 && P2BodyDist X <= 100)
trigger1 = ctrl
value = 950

;-|Air Close Distance Combo #1 (Ending)|---------------------------------------

;-|AI Statedefs (Ending)|------------------------------------------------------

;-|Human StateDefs (Beginning)|------------------------------------------------

;--{Super Attacks}-------------------------
[State -1, Symbiote Snakes]
type = ChangeState
value =  4002
trigger1 = (command = "Snake Super") && (ctrl) && (power >= 1000) && (var(59) = 0) && p2life > 0 && (Statetype = S)
trigger2 = (var(59) = 1) && (ctrl) && (power >= 1000) && (P2BodyDist X > 40) && random >= 900 && var(24) = 0  && p2life > 0 && (Statetype = S)

[State -1, Symbiote Frenzy]
type = ChangeState
value = 776
triggerall = (var(0)<=0)
triggerall = command = "Snake Super"
triggerall = power >= 1000
trigger1 = Statetype = A & ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
;
[State -1, Spider Sense]
type = ChangeState
value = 666
triggerall = !var(59)
triggerall = command = "sense"
triggerall = power >= 1000
trigger1 = var(16) = 0
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA,SA) && (MoveContact)

[State -1, Maximum Spider]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = command = "qcf_2k"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit
trigger14= stateno = 600
trigger14= MoveHit
trigger15= stateno = 610
trigger15= MoveHit
trigger16= stateno = 620
trigger16= MoveHit
trigger17= stateno = 630
trigger17= MoveHit
trigger18= stateno = 640
trigger18= MoveHit
trigger19= stateno = 650
trigger19= MoveHit

; Crawler Assault
[State -1, Crawler Assault]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "qcf_2p"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Ultimate Web Throw]
type = ChangeState
value = 4000
triggerall = command = "qcb_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

;--{Special Attacks}-------------------------
[State -1, Standing Light Web Throw]
type = ChangeState
value = 1500
triggerall = command = "qcb_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Standing Medium Web Throw]
type = ChangeState
value = 1510
triggerall = command = "qcb_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Standing Heavy Web Throw]
type = ChangeState
value = 1520
triggerall = command = "qcb_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Light Spider Sting]
type = ChangeState
value = 1400
triggerall = command = "anti_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Medium Spider Sting]
type = ChangeState
value = 1410
triggerall = command = "anti_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Heavy Spider Sting]
type = ChangeState
value = 1420
triggerall = command = "anti_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Standing Light Web Shot]
type = ChangeState
value = 1000
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Standing Medium Web Shot]
type = ChangeState
value = 1010
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Standing Heavy Web Shot]
type = ChangeState
value = 1020
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

[State -1, Air Light Web Shot]
type = ChangeState
value = 1100
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveHit
trigger3 = stateno = 610
trigger3 = MoveHit
trigger4 = stateno = 620
trigger4 = MoveHit
trigger5 = stateno = 630
trigger5 = MoveHit
trigger6 = stateno = 640
trigger6 = MoveHit
trigger7 = stateno = 650
trigger7 = MoveHit

[State -1, Air Medium Web Shot]
type = ChangeState
value = 1110
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveHit
trigger3 = stateno = 610
trigger3 = MoveHit
trigger4 = stateno = 620
trigger4 = MoveHit
trigger5 = stateno = 630
trigger5 = MoveHit
trigger6 = stateno = 640
trigger6 = MoveHit
trigger7 = stateno = 650
trigger7 = MoveHit

[State -1, Air Heavy Web Shot]
type = ChangeState
value = 1120
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveHit
trigger3 = stateno = 610
trigger3 = MoveHit
trigger4 = stateno = 620
trigger4 = MoveHit
trigger5 = stateno = 630
trigger5 = MoveHit
trigger6 = stateno = 640
trigger6 = MoveHit
trigger7 = stateno = 650
trigger7 = MoveHit

; Hammer 1
[State -1, Hammer 1]
type = ChangeState
value = 4050
triggerall = command = "qcf_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

; Hammer 2
[State -1, Hammer 2]
type = ChangeState
value = 4052
triggerall = command = "qcf_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

; Hammer 3
[State -1, Hammer 3]
type = ChangeState
value = 4051
triggerall = command = "qcf_c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit

;Standing Symbiote Bite
[State -1, Crouching Symbiote Tentacles]
type = ChangeState
value = 292
triggerall = command != "holdup"
trigger1 = command = "holddown" && command = "x" && command = "y"
trigger1 = statetype != A
trigger1 = statetype = C
trigger1 = ctrl

;Standing Symbiote Bite
[State -1, Standing Symbiote Bite]
type = ChangeState
value = 291
triggerall = command != "holddown"
trigger1 = command = "holdback" && command = "x" && command = "y"
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;Standing Light Symbiote Cyclone
[State -1, Standing Light Symbiote Cyclone]
type = ChangeState
value = 294
triggerall = command != "holddown"
trigger1 = command = "holdfwd" && command = "x" && command = "y"
trigger1 = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;Standing Symbiote Serpents
[State -1, Standing Symbiote Serpents]
type = ChangeState
value = 290
triggerall = command != "holddown"
trigger1 = command = "x" && command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;Symbiote Uppercut
;[State -1, Symbiote Uppercut]
;type = ChangeState
;value = 300
;triggerall = command != "holddown"
;trigger1 = command = "qcb_y"
;trigger1 = statetype != A
;trigger1 = statetype = S
;trigger1 = ctrl

;Standing Rapid Punches
;[State -1, Standing Rapid Punches]
;type = ChangeState
;value = 270
;triggerall = command != "holddown"
;trigger1 = command = "qcb_x"
;trigger1 = statetype != A
;trigger1 = statetype = S
;trigger1 = ctrl

;Standing Rapid Kicks
;[State -1, Standing Rapid Kicks]
;type = ChangeState
;value = 280
;triggerall = command != "holddown"
;trigger1 = command = "holdfwd" && command = "a"
;trigger1 = statetype != A
;trigger1 = statetype = S
;trigger1 = ctrl

;Wall Cling (back)
[State -1, Wall Cling (Back)]
type = ChangeState
value = 1200
triggerall = command = "holdfwd"
triggerall = stateno != 102
trigger1 = Pos Y < -50
trigger1 = Pos Y > -300
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = BackEdgeDist < 2
trigger1 = Stateno != 1201
trigger1 = Stateno != 1202
trigger1 = Stateno != 1210

;Wall Cling (front)
[State -1, Wall Cling (Front)]
type = ChangeState
value = 1210
triggerall = command = "holdback"
triggerall = stateno != 102
trigger1 = Pos Y < -50
trigger1 = Pos Y > -300
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = FrontEdgeDist < 2
trigger1 = Stateno != 1200
trigger1 = Stateno != 1201
trigger1 = Stateno != 1202

; Wall Climb
[State -1, Wall Climb]
type = ChangeState
value = 1221
triggerall = command = "qcb_c"
triggerall = StateType != A
triggerall = MoveType != H
trigger1 = ctrl = 1

;Light Web Swing
[State -1, Light Web Swing]
type = ChangeState
value = 1300
triggerall = command = "qcb_a"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 250
trigger7 = MoveHit
trigger8 = stateno = 400
trigger8 = MoveHit
trigger9 = stateno = 410
trigger9 = MoveHit
trigger10= stateno = 420
trigger10= MoveHit
trigger11= stateno = 430
trigger11= MoveHit
trigger12= stateno = 440
trigger12= MoveHit
trigger13= stateno = 450
trigger13= MoveHit
trigger14= stateno = 600
trigger14= MoveHit
trigger15= stateno = 610
trigger15= MoveHit
trigger16= stateno = 620
trigger16= MoveHit
trigger17= stateno = 630
trigger17= MoveHit
trigger18= stateno = 640
trigger18= MoveHit
trigger19= stateno = 650
trigger19= MoveHit

;Air Symbiote Cyclone
[State -1, Air Symbiote Cyclone]
type = ChangeState
value = 296
triggerall = command != "holddown"
trigger1 = command = "qcb_c"
trigger1 = statetype = A
trigger1 = statetype != S | statetype != C
trigger1 = ctrl

;Air Symbiote Serpents
[State -1, Air Symbiote Serpents]
type = ChangeState
value = 1233
triggerall = command = "airserpent"
trigger1 = statetype = A  && !Var(0)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610  || stateno = 621 || stateno = 622
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640  || stateno = 650

;--{Throw Attacks}-------------------------
[State -1, Spider Toss 1]
type = ChangeState
value = 900
triggerall = command != "holddown"
triggerall = statetype = S && p2statetype = S
triggerall = p2bodydist x <= 10
triggerall = ctrl
trigger1 = command = "holdback" && command = "z"
trigger2 = command = "holdback" && command = "c"

[State -1, Spider Toss 2]
type = ChangeState
value = 910
triggerall = command != "holddown"
triggerall = statetype = S && p2statetype = S
triggerall = p2bodydist x <= 10
triggerall = ctrl
trigger1 = command = "holdfwd" && command = "z"
trigger2 = command = "holdfwd" && command = "c"

[State -1, Air Spider Toss 2]
type = ChangeState
value = 950
triggerall = pos y <= -30
triggerall = statetype = A && p2statetype = A
triggerall = p2bodydist x <= 10 && p2bodydist y = [-20,20]
triggerall = command = "holdback" && command = "z"
trigger1 = ctrl
trigger2 = stateno = 1300 && MoveHit
trigger3 = stateno = 1310 && MoveHit
trigger4 = stateno = 1320 && MoveHit

[State -1, Air Spider Toss 2]
type = ChangeState
value = 950
triggerall = pos y <= -30
triggerall = statetype = A && p2statetype = A
triggerall = p2bodydist x <= 10 && p2bodydist y = [-20,20]
triggerall = command = "holdback" && command = "c"
trigger1 = ctrl
trigger2 = stateno = 1300 && MoveHit
trigger3 = stateno = 1310 && MoveHit
trigger4 = stateno = 1320 && MoveHit

;This is supposed to be a throw, but I can't find this stateno in the .cns
[State -1, ???]
type = ChangeState
value = 960
triggerall = pos y <= -30
triggerall = statetype = A && p2statetype = A
triggerall = p2bodydist x <= 10 && p2bodydist y = [-20,20]
triggerall = command = "holdfwd" && command = "c"
trigger1 = ctrl
trigger2 = stateno = 1300 && MoveHit
trigger3 = stateno = 1310 && MoveHit
trigger4 = stateno = 1320 && MoveHit

;--{Normal Attacks}-------------------------
[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerall = command != "holddown"
trigger1 = command = "x"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 230
trigger3 = MoveHit

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 230
trigger4 = MoveHit
trigger5 = stateno = 240
trigger5 = MoveHit

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit

[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 230
trigger4 = MoveHit

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveHit
trigger3 = stateno = 210
trigger3 = MoveHit
trigger4 = stateno = 220
trigger4 = MoveHit
trigger5 = stateno = 230
trigger5 = MoveHit
trigger6 = stateno = 240
trigger6 = MoveHit
trigger7 = stateno = 410
trigger7 = MoveHit
trigger8 = stateno = 440
trigger8 = MoveHit

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
trigger1 = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveHit
trigger3 = stateno = 430
trigger3 = MoveHit

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveHit
trigger3 = stateno = 410
trigger3 = MoveHit
trigger4 = stateno = 430
trigger4 = MoveHit
trigger5 = stateno = 440
trigger5 = MoveHit

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveHit

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveHit
trigger3 = stateno = 410
trigger3 = MoveHit
trigger4 = stateno = 430
trigger4 = MoveHit

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveHit
trigger3 = stateno = 410
trigger3 = MoveHit
trigger4 = stateno = 420
trigger4 = MoveHit
trigger5 = stateno = 430
trigger5 = MoveHit
trigger6 = stateno = 440
trigger6 = MoveHit

;Air Dive Kick 1
[State -1, Air Dive Kick 1]
type = ChangeState
triggerall = (command = "a" || command = "c")
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
value = 670

;Air Dive Kick 2
[State -1, Air Dive Kick 2]
type = ChangeState
triggerall = (command = "b")
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
value = 672

[State -1, Air Light Punch]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveHit
trigger3 = stateno = 630
trigger3 = MoveHit

[State -1, Air Heavy Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveHit
trigger3 = stateno = 610
trigger3 = MoveHit
trigger4 = stateno = 630
trigger4 = MoveHit
trigger5 = stateno = 640
trigger5 = MoveHit

[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveHit

[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveHit
trigger3 = stateno = 610
trigger3 = MoveHit
trigger4 = stateno = 630
trigger4 = MoveHit

[State -1, Air Heavy Kick]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveHit
trigger3 = stateno = 610
trigger3 = MoveHit
trigger4 = stateno = 620
trigger4 = MoveHit
trigger5 = stateno = 630
trigger5 = MoveHit
trigger6 = stateno = 640
trigger6 = MoveHit

;Taunt 1
[State -1, Taunt 1]
type = ChangeState
value = 195
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
triggerall = stateno != 195
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================

;Recovery Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 4800
trigger1 = command = "holdfwd" && (stateno = 5120) && life
trigger2 = var(59) = 1 && (P2BodyDist X = [0, 20]) && random >= 990 && (stateno = 5120) && life

;Recovery Roll Backward
[State -1, Roll Backward]
type = ChangeState
value = 4801
trigger1 = command = "holdback" && (stateno = 5120) && life
trigger2 = var(59) = 1 && (P2BodyDist X = [0, 20]) && random >= 990 && (stateno = 5120) && life

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Forward]
type = ChangeState
value = 100
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Backward]
type = ChangeState
value = 105
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = stateno != 100
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl

;-|Human Statedefs (End of Human Statedefs)|---------------------------
