;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 20

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| AvX Motions |--------------------------------------------------------

[Command]
name = "Pause"
command = s
time = 5

[Command]
name = "Taunt"
command = s;~D, DF, F, s
time = 17

[Command]
name = "Taunt"
command = s;~D, DB, B, s
time = 17

[Command]
name = "Down"
command = D
time = 5

[Command]
name = "Up"
command = U
time = 5


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10


;[Command]
;name = "3P"
;command = x+y+z
;time = 1

;[Command]
;name = "3K"
;command = a+b+c
;time = 1

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

;[Command]
;name = "recovery"
;command = a+b
;time = 1

;[Command]
;name = "recovery"
;command = b+c
;time = 1

;[Command]
;name = "recovery"
;command = a+c
;time = 1

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
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holds"
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

[Command]
name = "SuperJump"
command = D,$U
time = 10

;-| Tags moves |-------------------------------------------------------
[Command]
name = "DoubleDragon"
command = ~D, DF, F, c+z
time = 15

[Command]
name = "DoubleDragonCounter"
command = ~B, DB, D, c+z
time = 15

[Command]
name = "DoubleDragonCross"
command = ~D, DB, B, c+z
time = 15

[Command]
name = "troca"
command = z+c
time = 1

[Command]
name = "Assist"
command = y+b
time = 1


;-| Hypers |-----------------------------------------------------------

[Command]
name = "teamup"
command = ~D, DF, F, x+a

[Command]
name = "teamup"
command = ~D, DF, F, y+b

[Command]
name = "teamup"
command = ~D, DF, F, z+c

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
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c


[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z


[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c




;-| Specials |-----------------------------------------------------------

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z
;---------------------------
[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
command = ~D, DB, B, z
;-----------------------------
[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c
;----------------------------
[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "qcb_c"
command = ~D, DB, B, c
;---------------------------
[Command]
name = "antiair"
command = ~F, D, DF, x

[Command]
name = "antiair"
command = ~F, D, DF, y

[Command]
name = "antiair"
command = ~F, D, DF, z





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

[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, standGuard]
type = ChangeState
triggerall = var(59) && random <= 500
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing)
trigger1 = (P2StateType != C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 500
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)
trigger1 = StateNo = 150
;trigger2 = inguarddist
value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = var(59) && random <= 500
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = (P2StateType = C) && (P2MoveType = A)
;trigger2 = inguarddist
value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 500
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType != C) && (P2MoveType = A)
trigger1 = StateNo = 152
;trigger2 = inguarddist
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = var(59) && random <= 500
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing)
trigger1 = P2MoveType = A
;trigger2 = inguarddist
value = 132

;====================================================================
; Main Hyper - Long Range
;====================================================================

; mega beam
[State -1, megaBeam]
type = null;ChangeState
value = 3400
triggerall = power >= 3000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && p2bodydist x > 90 && random < 300

[State -1, megaBeam]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && p2bodydist x > 100 && random < 100

[State -1, megaBeam]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType != A && p2bodydist x < 60 && random < 100

[State -1, megaBeam]
type = ChangeState
value = 3200
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && p2bodydist x > 60 && p2bodydist x < 200 && random < 100


[State -1, megaBeam]
type = ChangeState
value = 3300
triggerall = power >= 1000 && var(59) && ctrl
triggerall = enemynear, anim != 5300
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType != A && p2bodydist x > 130 && random < 100


[State -1, megaBeam]
type = ChangeState
value = 1400
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType = A && p2bodydist x < 50 && random < 100
;specials

[State -1, megaBeam]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType != A && p2bodydist x > 70 && random < 100


[State -1, megaBeam]
type = ChangeState
value = 1050
triggerall = var(59) && ctrl
triggerall = StateType = A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType = A && p2bodydist x > 70 && random < 100

[State -1, megaBeam]
type = ChangeState
value = 1010
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType = C && p2bodydist x > 70 && random < 100

[State -1, megaBeam]
type = ChangeState
value = 1020
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType = A && p2bodydist x > 100 && random < 100

[State -1, megaBeam]
type = ChangeState
value = 1100
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, MoveType != A && p2bodydist x > 120 && random < 100
trigger2 = enemynear, numproj > 0 && random < 150

[State -1, megaBeam]
type = ChangeState
value = 1200
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, stateType != A && p2bodydist x > 170 && random < 100
trigger2 = enemynear, stateno = [5110, 5120]

[State -1, megaBeam]
type = ChangeState
value = 1300
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, StateType != A && p2bodydist x < 170 && random < 100







;---------------------------------------------------------------------------
; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = var(59) && RoundState = 2 && ctrl  && prevstateno != 100 && random < 200
triggerall = (statetype = S) && enemynear, p2dist X >= 75
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0
trigger3 = enemynear, anim= 5300 && random <= 400 && enemy, numproj = 0

;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Throws
;
; Standing : 800
; Air : 810
;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(59) && ctrl && random < 100
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1)

;--

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 620 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)


 [State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59) && random < 200
trigger1 = (StateNo = 420) && (MoveHit = 1) 
trigger2 = (enemynear, Vel X >= 4) && ctrl
;===========================================================================
;---------------------------------------------------------------------------
;hypers
[State -1, Hyper1]
type = ChangeState
value = 4000
triggerall = power >= 3000
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "teamup"

[State -1, Hyper1]
type = null;ChangeState
value = 3400
triggerall = power >= 3000
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "teamup"

;hypers
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_2p"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcb_2p"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Hyper3]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_2k"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Hyper4]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = enemynear, anim != 5300
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcb_2k"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;specials

[State -1, Special1]
type = ChangeState
value = 1400
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "antiair"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)


[State -1, Special1]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_y"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Special1]
type = ChangeState
value = 1050
triggerall = (StateType = A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_y"
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && (MoveContact)


[State -1, Special1]
type = ChangeState
value = 1060
triggerall = (StateType = A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_z"
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && (MoveContact)


[State -1, Special1]
type = ChangeState
value = 1070
triggerall = (StateType = A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_x"
trigger1 = ctrl
trigger2 = (HitdefAttr =A, NA) && (MoveContact)

[State -1, Special1]
type = ChangeState
value = 1010
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_x"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Special1]
type = ChangeState
value = 1020
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_z"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Special1]
type = ChangeState
value = 1100
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = ((command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c"))
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Special1]
type = ChangeState
value = 1200
triggerall = enemynear, name != "helibonus"
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = ((command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z"))
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Special1]
type = ChangeState
value = 1300
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = ((command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c"))
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;; Throw
;[State -1, Throw]
;type = ChangeState
;value = 800
;triggerall = command = "y" || command = "z"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 10
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 10
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "Taunt"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Stand Hard Punch]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall =  (p2bodydist x <= 25) && (p2bodydist y <= 10)
triggerall = enemynear, statetype != A
triggerall = ctrl = 1 && (statetype = S) && !Var(59)
trigger1 = (command = "z")&& (command = "holdfwd")
trigger2 = (command = "z")&& (command = "holdback")

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=200
trigger3 = movecontact && stateno=230;&& time > 5


;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=200 ;&& time > 5
trigger3 = movecontact && stateno=210 ;&& time > 5
trigger4 = movecontact && stateno=230 ;&& time > 5
trigger5 = movecontact && stateno=240

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=200 ;&& time > 5

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=230
trigger3 = movecontact && stateno=200 ;&& time > 5
trigger4 = movecontact && stateno=210;&& time > 5


;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=230 ;&& time > 5
trigger3 = movecontact && stateno=240 ;&& time > 5
trigger4 = movecontact && stateno=200 ;&& time > 5
trigger5 = movecontact && stateno=210

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=400
trigger3 = movecontact && stateno=430 ;&& time > 5
trigger4 = movecontact && stateno=200
trigger5 = movecontact && stateno=230 ;&& time > 5

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=400 ;&& time > 5
trigger3 = movecontact && stateno=410 ;&& time > 5
trigger4 = movecontact && stateno=430 ;&& time > 5
trigger5 = movecontact && stateno=440
trigger6 = movecontact && stateno=200 ;&& time > 5
trigger7 = movecontact && stateno=210 ;&& time > 5
trigger8 = movecontact && stateno=230 ;&& time > 5
trigger9 = movecontact && stateno=240

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=400 ;&& time > 5
trigger3 = movecontact && stateno=200 ;&& time > 5

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=430
trigger3 = movecontact && stateno=400 ;&& time > 5
trigger4 = movecontact && stateno=410;&& time > 5
trigger5 = movecontact && stateno=230
trigger6 = movecontact && stateno=200 ;&& time > 5
trigger7 = movecontact && stateno=210;&& time > 5
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=430 ;&& time > 5
trigger3 = movecontact && stateno=440 ;&& time > 5
trigger4 = movecontact && stateno=400 ;&& time > 5
trigger5 = movecontact && stateno=410
trigger6 = movecontact && stateno=200 ;&& time > 5
trigger7 = movecontact && stateno=210

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno=600 ;&& time > 5
trigger3 = movecontact && stateno=630 ;&& time > 5

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno=600 ;&& time > 5
trigger3 = movecontact && stateno=630 ;&& time > 5
trigger4 = movecontact && stateno=610 ;&& time > 5
trigger5 = movecontact && stateno=640 ;&& time > 5

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno=600 ;&& time > 5


;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno=630 ;&& time > 5
trigger3 = movecontact && stateno=610 ;&& time > 5


;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno=600 ;&& time > 5
trigger3 = movecontact && stateno=630 ;&& time > 5
trigger4 = movecontact && stateno=610 ;&& time > 5
trigger5 = movecontact && stateno=640 ;&& time > 5

;---------------------------------------------------------------------------


; Superjump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = StateType != A
trigger1 = Command = "SuperJump"
trigger1 = ctrl
trigger2 =  Command = "holdup" && stateno = 420 && movehit
;trigger3 = Command = "3K"
;trigger3 = ctrl


;------------------------------------
;AI Guard Push (Standing)
[State -1, AI Guard Push]
type = ChangeState
value = 7610
triggerall = Var(59)
triggerall = AILevel >=2
triggerall = p2bodydist x =[0,40]
triggerall = StateType = S
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;---------------------------------------------------------------------------
;Guard Push (Standing)
[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype != A
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]




