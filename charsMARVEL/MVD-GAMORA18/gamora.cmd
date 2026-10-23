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

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
[command]
name = "9500"
command = D,F,c
time = 15

y = y
[command]
name = "6000"
command = D,B,b
time = 15

z = z
[command]
name = "224"
command = D,B,c
time = 15

a = a
[command]
name = "8999"
command = D,B,a
time = 15

b = b
[command]
name = "2020"
command = D,B,z
time = 15

c = c
[command]
name = "3000"
command = D,B,y
time = 15

s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "206"
command = B,z
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "205"
command = B,x
time = 15

command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "3500"
command = D,F,x
time = 15

command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "SJ"
command = $D, $U

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

;====================<CPU>===========================

[Command]
name = "CPU0"
command = ~D, DB, B, c
time = 0

[Command]
name = "CPU1"
command = ~D, DF, F, x
time = 0

[Command]
name = "CPU2"
command = ~D, DF, F, y
time = 0

[Command]
name = "CPU3"
command = ~D, DF, F, z
time = 0

[Command]
name = "CPU4"
command = ~D, DF, F, a
time = 0

[Command]
name = "CPU5"
command = ~D, DB, B, a
time = 0

[Command]
name = "CPU6"
command = ~D, DB, B, b
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,a,a,s
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,a,a,a,a,s
time = 0

[Command]
name = "CPU9"
command = U,D,B,F,b,b,s
time = 0

[Command]
name = "CPU10"
command = D,B,F,B,F,b,b,s
time = 0

[Command]
name = "CPU11"
command = U,D,D,B,F,b,b,s
time = 0

[Command]
name = "CPU12"
command = U,U,D,F,B,F,b,s
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,x,x,s
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,x,s
time = 0

[Command]
name = "CPU15"
command = D,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU16"
command = D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,x,x,s
time = 0

[Command]
name = "CPU18"
command = U,U,D,B,F,B,F,x,s
time = 0

[Command]
name = "CPU19"
command = U,U,B,F,B,F,y,y,s
time = 0

[Command]
name = "CPU20"
command = U,U,D,B,F,B,F,y,y,s
time = 0


;---------------------------------------------------------------------------


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

;Major Laser
[State -1, 9500]
type = ChangeState
value = 9500
triggerall = command = "9500"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 8999
trigger4 = time >= 25
trigger5 = stateno = 2020
trigger5 = time >= 33
trigger6 = stateno = 3000
trigger6 = movecontact
trigger7 = stateno = 3500
trigger7 = time <= 29

;Knife Combo
[State -1, 6000]
type = ChangeState
value = 6000
triggerall = command = "6000"
trigger1 = (statetype = s) && ctrl
 trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 9500
trigger3 = movecontact
trigger4 = stateno = 8999
trigger4 = time >= 25
trigger5 = stateno = 2020
trigger5 = time >= 33
trigger6 = stateno = 3000
trigger6 = movecontact
trigger7 = stateno = 3500
trigger7 = time <= 29

;Shots
[State -1, 224]
type = ChangeState
value = 224
triggerall = command = "224"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 8999
trigger4 = time >= 25
trigger5 = stateno = 2020
trigger5 = time >= 33
trigger6 = stateno = 3000
trigger6 = movecontact
trigger7 = stateno = 3500
trigger7 = time <= 29

;Rocket Racoon
[State -1, 8999]
type = ChangeState
value = 8999
triggerall = command = "8999"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 9500
trigger4 = time >= 25
trigger5 = stateno = 2020
trigger5 = time >= 33
trigger6 = stateno = 3000
trigger6 = movecontact
trigger7 = stateno = 3500
trigger7 = time <= 29

;2020
[State -1, 2020]
type = ChangeState
value = 2020
triggerall = command = "2020"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 8999
trigger4 = time >= 25
trigger5 = stateno = 9500
trigger5 = time >= 33
trigger6 = stateno = 3000
trigger6 = movecontact
trigger7 = stateno = 3500
trigger7 = time <= 29

;3000
[State -1, 3000]
type = ChangeState
value = 3000
triggerall = command = "3000"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 8999
trigger4 = time >= 25
trigger5 = stateno = 2020
trigger5 = time >= 33
trigger6 = stateno = 9500
trigger6 = movecontact
trigger7 = stateno = 3500
trigger7 = time <= 29

;206
[State -1, 206]
type = ChangeState
value = 206
triggerall = command = "206"
trigger1 = (statetype = s) && ctrl


;205
[State -1, 205]
type = ChangeState
value = 205
triggerall = command = "205"
trigger1 = (statetype = s) && ctrl


;3500
[State -1, 3500]
type = ChangeState
value = 3500
triggerall = command = "3500"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = [200,436]
trigger2 = movecontact
trigger3 = stateno = 6000
trigger3 = movecontact
trigger4 = stateno = 8999
trigger4 = time >= 25
trigger5 = stateno = 2020
trigger5 = time >= 33
trigger6 = stateno = 3000
trigger6 = movecontact
trigger7 = stateno = 9500
trigger7 = time <= 29

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;-----------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 210) && (movecontact = 1)
trigger4 = (stateno = 220) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 230) && (movecontact = 1)
trigger4 = (stateno = 240) && (movecontact = 1)
trigger5 = (stateno = 250) && (movecontact = 1)
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (movecontact = 1)
trigger3 = (stateno = 240) && (movecontact = 1)
trigger4 = (stateno = 250) && (movecontact = 1)
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (movecontact = 1)
trigger3 = (stateno = 240) && (movecontact = 1)
trigger4 = (stateno = 250) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 430) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 430) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
 trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 430) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (movecontact = 1)
trigger3 = (stateno = 410) && (movecontact = 1)
trigger4 = (stateno = 430) && (movecontact = 1)
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 630) && (movecontact = 1)
trigger5 = (stateno = 640) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 630) && (movecontact = 1)
trigger5 = (stateno = 640) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 630) && (movecontact = 1)
trigger5 = (stateno = 640) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 630) && (movecontact = 1)
trigger5 = (stateno = 640) && (movecontact = 1)
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
 trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = (stateno = 610) && (movecontact = 1)
trigger4 = (stateno = 630) && (movecontact = 1)
trigger5 = (stateno = 640) && (movecontact = 1)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = statetype = S
triggerall = ctrl
trigger1 = prevstateno = 1056
trigger1 = enemy,backedgebodydist<=20
trigger1 = p2movetype = H
trigger1 = p2stateno != [120,170]
trigger1 = p2stateno = [5030,5100]
trigger2 = p2stateno != [5100,5150]
trigger2 = p2dist X<50
trigger2 = p2statetype = S
trigger2 = random>900
trigger3 = prevstateno = [810,811]
trigger3 = p2bodydist X = [0,15]
trigger3 = enemy,backedgebodydist<=20
trigger4 = p2stateno = 821
trigger4 = p2bodydist X = [0,20]

[State -1, AI Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59)
triggerall = statetype = S
trigger1 = stateno = 200
trigger1 = p2stateno = [5030,5100]
trigger1 = enemy,backedgebodydist<=20
trigger1 = time > 5
trigger1 = movehit
trigger2 = p2stateno != [5100,5150]
trigger2 = p2stateno != 1028
trigger2 = p2dist X<60
trigger2 = ctrl
trigger2 = random>980

[State -1, AI Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59)
triggerall = statetype = S
trigger1 = (stateno = 230) && time > 6
trigger1 = movehit
trigger1 = p2dist X = [0,65]

[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X<=55
trigger1 = p2statetype = S
trigger1 = p2stateno = [200,250]
trigger1 = p2movetype = A

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)
trigger1 = stateno = 600
trigger1 = statetime >= 7
trigger1 = movecontact
trigger1 = p2dist X-(vel X*7)<=40
trigger1 = prevstateno != 600
trigger2 = stateno != 600
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist X<=30
trigger2 = p2statetype = A
trigger2 = p2dist Y = [-60,10]

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59)
trigger1 = stateno = 600
trigger1 = statetime >= 7
trigger1 = movecontact
trigger1 = (prevstateno = 600) || (p2dist X-(vel X*7)>40)

[State -1, AI Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59)
triggerall = p2dist Y>20
triggerall = p2dist X = [0,40]
triggerall = statetype = A
trigger1 = p2statetype = S
trigger1 = vel Y>0
trigger1 = ctrl
trigger2 = vel Y>0
trigger2 = ctrl

[State -1, AI Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59)
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2statetype = C
trigger1 = vel Y>0
trigger1 = pos Y>-60
trigger1 = p2dist X<80
trigger2 = stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = !win
triggerall = p2stateno != [1025,1028]
triggerall = statetype = S
trigger1 = stateno != 102
trigger1 = var(20)
trigger1 = ctrl
trigger1 = p2dist X>160

[State -1, Ice Spikes]
type = ChangeState
value = 9500
triggerall = var(59)
triggerall = var(14) = 0
triggerall = statetype = S
triggerall = power < 100
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special1]
type = ChangeState
value = 6000
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 600
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special2]
type = ChangeState
value = 8999
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 700
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special3]
type = ChangeState
value = 3000
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 990
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special4]
type = ChangeState
value = 2020
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 990
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special5]
type = ChangeState
value = 3000
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 990
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Special6]
type = ChangeState
value = 3500
triggerall = var(59)
triggerall = statetype = S
triggerall = power < 990
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



[State -1, AI Hyper 2]
type = ChangeState
value = 3000
triggerall = var(59)
triggerall = statetype = S
triggerall = power >= 1100
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, AI Hyper 1]
type = ChangeState
value = 3500
triggerall = var(59)
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
triggerall = stateno != 100
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;--------------------------------------------------------
[State -1, VarSet]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
var(59) = 1
;--------------------------------------------------------

