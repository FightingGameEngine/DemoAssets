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
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

[Command]
name = "DU"
command = D, U
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

[Command]
name = "recovery roll"
command = a+b
time = 1

[Command]
name = "recovery roll"
command = b+c
time = 1

[Command]
name = "recovery roll"
command = a+c
time = 1

[Command]
name = "pushblock"
command = x+y
time = 5

[Command]
name = "pushblock"
command = x+z
time = 5

[Command]
name = "pushblock"
command = y+z
time = 5

[Command] ;Charge back, then forward + kick (a/b/c)
name = "smart"
command = a+x
time = 5

[Command] ;Charge back, then forward + kick (a/b/c)
name = "smart"
command = b+y
time = 5


[Command] ;Charge back, then forward + kick (a/b/c)
name = "smart"
command = c+z
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold";Required (do not remove)
command = /$x
time = 1

[Command]
name = "hold";Required (do not remove)
command = /$y
time = 1


[Command]
name = "hold";Required (do not remove)
command = /$z
time = 1



;-| Hypers |-----------------------------------------------------------
[Command]
name = "akuma"
command = x,x,x
time = 50

[Command]
name = "akuma"
command = y,y,y
time = 50

[Command]
name = "akuma"
command = z,z,z
time = 50

[Command] ; Amalgam (Quarter circle forward + hard punch & hard kick)
name = "Amalgam"
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
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, a+x

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, b+y

[Command] ; QCB + punch & kick of equal strength
name = "chain"
command = ~D, DB, B, c+z


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
name = "qcb_b"
command = ~D, DB, B, b

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

[Command] ;Charge back, then forward + kick (a/b/c)
name = "B_F_x"
command = ~5$B, F, x
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "B_F_y"
command = ~5$B, F, y
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "B_F_z"
command = ~5$B, F, z
time = 10




;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, AI Activation]
type = varset
triggerall = AILevel > 1
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= (ifelse(AILevel =1,40,(AILevel-2)*100))
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 8
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, AI Dampiner]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Random > AILevel*100
triggerall = animtime = 0
triggerall = movetype != H
triggerall = ctrl
trigger1 = statetype = S && (stateno != [120,150]) && (stateno != 40)
trigger1 = stateno != [10,12]
value = 0
ctrl = 1

;======================================================================
;===========================================================================
;======================================================================
; A.I Commands
;-----------------------------------------------------------------------

;====================================================================
;GUARD/BLOCK CODE
;====================================================================

[State -1, standGuard]
type = ChangeState
triggerall = var(59) && random <= 555
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing) 
trigger1 = (P2StateType != C) && (P2MoveType = A)
value = 130

[State -1, airGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 555
triggerall =(StateType != A) && (enemynear, Facing != Facing)
triggerall = (P2StateType = C) && (P2MoveType = A)  
trigger1 = StateNo = 150
;trigger2 = inguarddist  
value = 152

[State -1, crouchGuard]
type = ChangeState
triggerall = var(59) && random <= 555
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = (P2StateType = C) && (P2MoveType = A)  
;trigger2 = inguarddist  
value = 131

[State -1, standGuardHitBack]
type = ChangeState
triggerall = var(59) && random <= 666
triggerall =(StateType != A) && (enemynear, Facing != Facing) 
triggerall = (P2StateType != C) && (P2MoveType = A) 
trigger1 = StateNo = 152
;trigger2 = inguarddist  
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = var(59) && random <= 666
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = P2MoveType = A 
;trigger2 = inguarddist  
value = 132

;====================================================================
; Main Hyper - Long Range
;====================================================================


; Hyper1

[State -1, megaBeam]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X >= 170
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear,numproj = 0 && enemynear,Statetype != A && random <= 100

[State -1, megaBeam]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X <= 70
triggerall = StateType != A && MoveType != H && RoundState = 2 && enemynear,movetype != A
trigger1 = enemynear,numproj = 0 && enemynear,Statetype != C && random <= 100

[State -1, megaBeam]
type = ChangeState
value = 3150
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X <= 80
triggerall = StateType = A && MoveType != H && RoundState = 2 && enemynear,movetype != A
trigger1 = enemynear,numproj = 0 && enemynear,Statetype = A && random <= 150

[State -1, megaBeam]
type = ChangeState
value = 3200
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X <= 150
triggerall = StateType != A && MoveType != H && RoundState = 2 && enemynear,movetype != A
triggerall = var(29) = 0
trigger1 = enemynear,numproj = 0 && enemynear,Statetype = A && random <= 100

[State -1, megaBeam]
type = ChangeState
value = 3300
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X >= 150
triggerall = StateType != A && MoveType != H && RoundState = 2 && enemynear,movetype != A
trigger1 = enemynear,numproj = 0 && enemynear,Statetype = A && random <= 50


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------


;====================================================================
; Main Standing Special
;====================================================================
; beam
[State -1, beam]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl && prevstateno != 1000 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 120 &&  Random < 60 ; && enemynear,statetype !=C

[State -1, beam]
type = ChangeState
value = 1200
triggerall = var(59) && ctrl && prevstateno != 1200 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 100 &&  Random < 60  && enemynear,statetype =A

[State -1, beam]
type = ChangeState
value = 1050
triggerall = var(59) && ctrl && prevstateno != 1050 &&  numproj = 0
triggerall = StateType = A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 120 &&  Random < 60  && enemynear,statetype =A

[State -1, beam]
type = ChangeState
value = 1100
triggerall = var(59) && ctrl && prevstateno != 1100 &&  numproj = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 130 &&  Random < 60  && enemynear,statetype =A


[State -1, beam]
type = ChangeState
value = 1300
triggerall = var(59) && ctrl && prevstateno != 1300 &&  numproj = 0 && numhelper(1310) = 0
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 180 &&  Random < 60  && enemynear,statetype !=A

[State -1, beam]
type = ChangeState
value = 1400
triggerall = var(59) && ctrl && prevstateno != 1400 &&  numproj = 0 && prevstateno != 1450
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 100 &&  Random < 60  && enemynear,statetype !=A

[State -1, beam]
type = ChangeState
value = 1450
triggerall = var(59) && ctrl && prevstateno != 1450 &&  numproj = 0 && prevstateno != 1400
triggerall = StateType = A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 100 && P2BodyDist X < 200 &&  Random < 60  && enemynear,statetype =A

;---------------------------------------------------------------------------
; Fwd Dash
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl


[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = var(59) && RoundState = 2 && ctrl && stateno != 100 && prevstateno != 100
triggerall = (statetype = S) && enemynear, p2dist X >= 75
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0



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

;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(59) && ctrl && random < 200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, statetype != A)

[State -1, Crouch launcher]
type = ChangeState
value = 230
triggerall = var(59) && ctrl && random < 200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, statetype != A)

[State -1, Crouch launcher]
type = ChangeState
value = 240
triggerall = var(59) && ctrl && random < 500
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = stateno=230 && movecontact>0

[State -1, Crouch launcher]
type = ChangeState
value = 250
triggerall = var(59) && ctrl && random < 500
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = stateno=240 && movecontact>0
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

;; Standing throw
;[State -1, Throw1]
;type = ChangeState
;value = ifelse(statetype=A,850,801)
;triggerall = var(59) && RoundState = 2 && ctrl
;triggerall = statetype = S && enemynear, statetype != L && random < 200
;trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C
;
;; Air throw
;[State -1, AirThrow1]
;type = ChangeState
;value = 800
;triggerall = var(59) && RoundState = 2 && ctrl
;triggerall = statetype = A && enemynear, statetype != L && random < 200
;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3

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
Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = [111, 119]
trigger7 = stateno = 610 || stateno = 611 || stateno = 612
trigger7 = movecontact

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


;======================================================================
;User Input Attacks

;----------------------------------------------------------------------
; Amalgam Hyper
;[State -1, Amalgam]
;type = ChangeState
;value = 4000
;triggerall = power = 3000 && !Var(59)
;triggerall = StateType != A && MoveType != H
;triggerall = (ctrl = 1) && (!IsHelper)
;trigger1 = command = "Amalgam"

;---------------------------------------------------------------------------
;


; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = command = "qcf_2p" && (!IsHelper)
trigger1 = (ctrl = 1)
trigger2 = (StateNo = 250) && (movecontact >= 1)
trigger3 = (anim = 1002) && time > 2
trigger4 = (anim = 1022) && time > 2
trigger5 = (anim = 1032) && time > 2
trigger6 = (stateno = 1005) && time > 18
trigger7 = (stateno = 1025) && time > 21
trigger8 = (stateno = 1035) && time > 16
trigger9 = (hitdefattr = SC, NA,SA,SP) && movecontact

[State -1, Special1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall =  command = "qcf_2k"
trigger1 = (ctrl = 1)
trigger2 = (StateNo = 250) && (movecontact >= 1)
trigger3 = (anim = 1002) && time > 2
trigger4 = (anim = 1022) && time > 2
trigger5 = (anim = 1032) && time > 2
trigger6 = (stateno = 1005) && time > 18
trigger7 = (stateno = 1025) && time > 21
trigger8 = (stateno = 1035) && time > 16
trigger9 = (hitdefattr = SC, NA,SA,SP) && movecontact

[State -1, Special1]
type = ChangeState
value = 3150
triggerall = power >= 1000
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall =  command = "qcf_2k"
trigger1 = (ctrl = 1)
trigger2 = (StateNo = 250) && (movecontact >= 1)
trigger3 = (anim = 1002) && time > 2
trigger4 = (anim = 1022) && time > 2
trigger5 = (anim = 1032) && time > 2
trigger6 = (stateno = 1005) && time > 18
trigger7 = (stateno = 1025) && time > 21
trigger8 = (stateno = 1035) && time > 16
trigger9 = (hitdefattr = A, NA,SA,SP) && movecontact


[State -1, Special1]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall =  command = "qcb_2p"
triggerall = var(29) = 0
trigger1 = (ctrl = 1)
trigger2 = (StateNo = 250) && (movecontact >= 1)
trigger3 = (anim = 1002) && time > 2
trigger4 = (anim = 1022) && time > 2
trigger5 = (anim = 1032) && time > 2
trigger6 = (stateno = 1005) && time > 18
trigger7 = (stateno = 1025) && time > 21
trigger8 = (stateno = 1035) && time > 16
trigger9 = (hitdefattr = SC, NA,SA,SP) && movecontact

[State -1, Special1]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = (MoveType != H) && !Var(59) ;(StateType != A) &&
triggerall = (!IsHelper)
triggerall =  command = "qcb_2k"
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SC, NA,SA,SP) && movecontact


;---------------------------------------------------------------------------
[State -1, Special1]
type = ChangeState
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall =  (!IsHelper) && numhelper(1210) = 0
triggerall =  (command = "anti_x") || (command = "anti_y") || (command = "anti_z")
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SC, NA) && movecontact

; Special1
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper) ;&& numproj = 0
triggerall = (command = "qcf_z") || (command = "qcf_y") ||  (command = "qcf_x")
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SC, NA) && movecontact

[State -1, Special1]
type = ChangeState
value = 1050
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper) ;&& numproj = 0
triggerall = (command = "qcf_z") || (command = "qcf_y") ||  (command = "qcf_x")
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SCA, NA) && movecontact

; Special1
[State -1, Special1]
type = ChangeState
value = 1100
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall =  (!IsHelper) && numhelper(1110) = 0
triggerall =  (command = "qcf_a") || (command = "qcf_b") ||  (command = "qcf_c")
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SC, NA) && movecontact
trigger3 = (anim = 1002) && time > 2
trigger4 = (anim = 1022) && time > 2
trigger5 = (anim = 1032) && time > 2



[State -1, Special1]
type = ChangeState
value = 1300
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall =  (!IsHelper) && numhelper(1310) = 0
triggerall =  (command = "qcb_x") || (command = "qcb_y") ||  (command = "qcb_z")
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SC, NA) && movecontact
trigger3 = (anim = 1002) && time > 2
trigger4 = (anim = 1022) && time > 2
trigger5 = (anim = 1032) && time > 2

[State -1, Special1]
type = ChangeState
value = 1400
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall =  (!IsHelper) ;&& numhelper(1110) = 0
triggerall =  (command = "B_F_x") || (command = "B_F_y") ||  (command = "B_F_z")
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = SC, NA) && movecontact
trigger3 = (anim = 1002) && time > 2
trigger4 = (anim = 1022) && time > 2
trigger5 = (anim = 1032) && time > 2

[State -1, Special1]
type = ChangeState
value = 1450
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall =  (!IsHelper) ;&& numhelper(1110) = 0
triggerall =  (command = "B_F_x") || (command = "B_F_y") ||  (command = "B_F_z")
trigger1 = (ctrl = 1)
trigger2 = (hitdefattr = A, NA) && movecontact

;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = prevstateno != 100
triggerall = stateno != 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"
;trigger2 = command = "3P"

[State -1, FwdDash]
type = ChangeState
value = 110
triggerall = prevstateno != 110
triggerall = stateno != 110
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = A
triggerall = command = "FF"
trigger1 = ctrl = 1
trigger2 = (stateno = [600,690])&& movecontact
;trigger2 = command = "3P"


;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
;trigger2 = command = "holdback"
;trigger2 = command = "3P"

;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = stateno = 420 && movehit && command="holdup"
;trigger3 = (command = "3K") && (Ctrl)

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "Taunt"


;---------------------------------------------------------------------------
; Throws
;
[State -1, Stand Hard Punch]
type = ChangeState
value = 800
triggerall =  (p2bodydist x <= 25) && (p2bodydist y <= 10)
triggerall = ctrl = 1 && (statetype = S) && !Var(59)
trigger1 = (command = "holdfwd")&&(command = "z")
trigger2 = (command = "holdback")&&(command = "z")


;---------------------------------------------------------------------------

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
triggerall = (command = "x") && (command != "holddown") && (statetype != A)&& !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 200) && (movecontact >= 1)
trigger3 = (StateNo = 230) && (movecontact >= 1)
trigger4 = (StateNo = 3100) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger4 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)
trigger5 = (StateNo = 250) && (movecontact >= 1)


;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = (StateNo = 200) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 230) && (movecontact >= 1)
trigger3 = (StateNo = 210) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 230) || (stateno = 240)) && (movecontact >= 1)
trigger3 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 400)) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 430)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = [200,210]) || (stateno = [400,410])) && (movecontact >= 1)
trigger3 = ((stateno = [230,240]) || (stateno = [430,440])) && (movecontact >= 1)
trigger4 = (stateno = 450) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = ((stateno = 200) || (stateno = 400)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = [200,210]) || (stateno = [400,410])) && (movecontact >= 1)
trigger3 = ((stateno = 230) || (stateno = 430)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (command = "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = [200,210]) || (stateno = [400,410])) && (movecontact >= 1)
trigger3 = ((stateno = [230,240]) || (stateno = [430,440])) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 630)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = command != "holddown"
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact >= 1)

[State -1, Air Hard Kick]
type = null;ChangeState
value = 660
triggerall = command = "holddown"
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640) || (stateno = 650)) && (movecontact >= 1)

[State -1]
type = null;ChangeState
value = 832
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = null;ChangeState
value = 855
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = !var(59)
triggerall = command = "guardpush" && statetype != A
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]


