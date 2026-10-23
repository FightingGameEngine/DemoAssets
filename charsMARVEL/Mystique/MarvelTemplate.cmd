; {character name}'s CMD file

;-| AI Commands |----------------------------------------------------------

;-| AI |-------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1


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
name = "DU"
command = D,$U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
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
name = "holdz";Required (do not remove)
command = /$z
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /$y
time = 1


;-| Hypers |-----------------------------------------------------------
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
name = "inverte"
command = ~F, DF, D, x

[Command]
name = "inverte"
command = ~F, DF, D, y

[Command]
name = "inverte"
command = ~F, DF, D, z

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

[Command]
name = "rasteira"
command =  ~B, F, a

[Command]
name = "rasteira"
command =  ~B, F, b

[Command]
name = "rasteira"
command =  ~B, F, c
;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
[State -1, AIActivate]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(59) = 1

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
;trigger2 = inguarddist  
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
triggerall = var(59) && random <= 555
triggerall =(StateType != A) && (enemynear, Facing != Facing) 
triggerall = (P2StateType != C) && (P2MoveType = A) 
trigger1 = StateNo = 152
;trigger2 = inguarddist  
value = 150

[State -1, airGuard]
type = ChangeState
triggerall = var(59) && random <= 555
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = P2MoveType = A 
;trigger2 = inguarddist  
value = 132

;====================================================================
; Main Hyper - Long Range
;====================================================================

; mega beam
[State -1, megaBeam]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && P2BodyDist Y = [-50,50]
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random < 200

;---------------------------------------------------------------------------

; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 80 && P2BodyDist Y = [-50,50]
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random < 200

[State -1, Hyper2]
type = ChangeState
value = 3200
triggerall = power >= 1000 && var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X < 80 && P2BodyDist Y = [-100,100]; && backedgebodydist > 100
trigger1 = enemynear, numproj = 0 &&  random < 200


; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3300
triggerall = power >= 1000 && var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X < 40 && P2BodyDist Y = [-50,50]
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random < 200

[State -1, Special1]
type = ChangeState
value = 1090
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = A
trigger1 = random < 140


;[State -1, Special1]
;type = ChangeState
;value = 1080
;triggerall = (StateType != A) && (MoveType != H) && !Var(59)
;triggerall = (ctrl = 1) && (!IsHelper)
;trigger1 =  (command = "inverte")

;---------------------------------------------------------------------------
; Special1
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

; Special1
[State -1, Special1]
type = ChangeState
value = 1020
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype != C
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

; Special1
[State -1, Special1]
type = ChangeState
value = 1030
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = C
triggerall = enemynear, movetype != A
trigger1 = random < 110

[State -1, Special1]
type = ChangeState
value = 1040
triggerall = var(59) && ctrl && (!IsHelper) && P2BodyDist Y = [-50,50]
triggerall = StateType = A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = A
trigger1 = random < 150



; Special1
[State -1, Special1]
type = ChangeState
value = 1100
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 80  && P2BodyDist X < 200 && enemynear, statetype != C
triggerall = enemynear, numproj = 0
trigger1 = random < 150

; Special1
[State -1, Special1]
type = ChangeState
value = 1198
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X < 90
triggerall = enemynear, numproj = 0 && enemynear, movetype = A
trigger1 = random < 150

[State -1, Special1]
type = ChangeState
value = 1300
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X < 140 && enemynear, statetype != A
triggerall = enemynear, movetype != A
trigger1 = random < 150
;---------------------------------------------------------------------------

;Ground Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X < 15 && enemynear, statetype = S
triggerall = enemynear, movetype != A
trigger1 = random < 150
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl


;====================================================================
; Main Standing Special
;====================================================================
; beam
[State -1, beam]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl && prevstateno != 1000
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 70 && P2BodyDist X < 170 && Random < 250
trigger1 = P2BodyDist Y = [-50,50]

;---------------------------------------------------------------------------
; Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = var(59) && RoundState = 2 && ctrl && prevstateno != 100 && random < 200
triggerall = (statetype = S) && enemynear, p2dist X >= 75
triggerall = Var(20) != 3 && NumHelper(25) = 0 && p2bodydist x > 75
trigger1 = enemynear, movetype != A && enemynear, numproj = 0 && enemynear, statetype != L
trigger2 = enemynear, statetype = L && random <= 300 && enemy, numproj = 0

;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

;---------------------------------------------------------------------------
; Standing basics
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random < 200
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

;; Standing throw
;[State -1, Throw1]
;type = ChangeState
;value = ifelse(statetype=A,850,801)
;triggerall = var(59) && RoundState = 2 && ctrl
;triggerall = statetype = S && enemynear, statetype != L && random < 200
;trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C
;
;; Air throw
;;[State -1, AirThrow1]
;;type = ChangeState
;;value = 810
;;triggerall = var(59) && RoundState = 2 && ctrl
;;triggerall = statetype = A && enemynear, statetype != L && random < 200
;;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3

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
; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "qcf_2p"
trigger1 = (ctrl = 1)
trigger2 = stateno=1102


; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "qcf_2k"
trigger1 = (ctrl = 1)
trigger2 = stateno=1102

[State -1, Hyper1]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "qcb_2p"

[State -1, Hyper1]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "qcb_2k"
trigger1 = (ctrl = 1)
trigger2 = movecontact > 0 && stateno=200
trigger3 = movecontact > 0 && stateno=210
trigger4 = movecontact > 0 && stateno=230
trigger5 = movecontact > 0 && stateno=240
trigger6 = movecontact > 0 && stateno=201
trigger7 = movecontact > 0 && stateno=250
trigger8 = movecontact > 0 && stateno=220
trigger9 = movecontact > 0 && stateno=221
trigger10 = stateno=1102




[State -1, Special1]
type = ChangeState
value = 1090
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
triggerall =  (command = "anti_y") || (command = "anti_z") || (command = "anti_x")
trigger1 = (ctrl = 1)
trigger2 = movecontact > 0 && stateno=420

;[State -1, Special1]
;type = ChangeState
;value = 1080
;triggerall = (StateType != A) && (MoveType != H) && !Var(59)
;triggerall = (ctrl = 1) && (!IsHelper)
;trigger1 =  (command = "inverte")

;---------------------------------------------------------------------------
; Special1
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall =  (command = "qcf_z")
trigger1 = (ctrl = 1)
trigger2 = movecontact > 0 && stateno=200
trigger3 = movecontact > 0 && stateno=210
trigger4 = movecontact > 0 && stateno=230
trigger5 = movecontact > 0 && stateno=240
trigger6 = movecontact > 0 && stateno=201
trigger7 = movecontact > 0 && stateno=250
trigger8 = movecontact > 0 && stateno=220
trigger9 = movecontact > 0 && stateno=221

; Special1
[State -1, Special1]
type = ChangeState
value = 1020
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall =  (!IsHelper)
triggerall =  (command = "qcf_y")
trigger1 = (ctrl = 1)
trigger2 = movecontact > 0 && stateno=200
trigger3 = movecontact > 0 && stateno=210
trigger4 = movecontact > 0 && stateno=230
trigger5 = movecontact > 0 && stateno=240
trigger6 = movecontact > 0 && stateno=201
trigger7 = movecontact > 0 && stateno=250
trigger8 = movecontact > 0 && stateno=220
trigger9 = movecontact > 0 && stateno=221

; Special1
[State -1, Special1]
type = ChangeState
value = 1030
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = (command = "qcf_x")
trigger1 = (ctrl = 1)
trigger2 = movecontact > 0 && stateno=200
trigger3 = movecontact > 0 && stateno=210
trigger4 = movecontact > 0 && stateno=230
trigger5 = movecontact > 0 && stateno=240
trigger6 = movecontact > 0 && stateno=201
trigger7 = movecontact > 0 && stateno=250
trigger8 = movecontact > 0 && stateno=220
trigger9 = movecontact > 0 && stateno=221
trigger10 = movecontact > 0 && stateno=400
trigger11 = movecontact > 0 && stateno=410
trigger12 = movecontact > 0 && stateno=430
trigger13 = movecontact > 0 && stateno=440
trigger14 = movecontact > 0 && stateno=450

[State -1, Special1]
type = ChangeState
value = 1040
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper) && (var(40) > 0)
triggerall = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = (ctrl = 1)
trigger2 = movecontact > 0 && stateno=600
trigger3 = movecontact > 0 && stateno=610
trigger4 = movecontact > 0 && stateno=630
trigger5 = movecontact > 0 && stateno=640
trigger6 = movecontact > 0 && stateno=650
trigger7 = movecontact > 0 && stateno=620

; Special1
[State -1, Special1]
type = ChangeState
value = 1100
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = (ctrl = 1)


[State -1, Special1]
type = ChangeState
value = 1110
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = movecontact > 0 && stateno=400
trigger2 = movecontact > 0 && stateno=200
trigger3 = movecontact > 0 && stateno=210
trigger4 = movecontact > 0 && stateno=230
trigger5 = movecontact > 0 && stateno=240
trigger6 = movecontact > 0 && stateno=201
trigger7 = movecontact > 0 && stateno=250
trigger8 = movecontact > 0 && stateno=220
trigger9 = movecontact > 0 && stateno=221
trigger10 = movecontact > 0 && stateno=410
trigger11 = movecontact > 0 && stateno=420
trigger12 = movecontact > 0 && stateno=430
trigger13 = movecontact > 0 && stateno=440
trigger14 = movecontact > 0 && stateno=450



; Special1
[State -1, Special1]
type = ChangeState
value = 1198
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "qcb_a") || (command = "qcb_b") || (command = "qcb_c")

[State -1, Special1]
type = ChangeState
value = 1300
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (command = "rasteira") && (!IsHelper)
trigger1 = (ctrl = 1)
trigger2 = movecontact > 0 && stateno=200
trigger3 = movecontact > 0 && stateno=210
trigger4 = movecontact > 0 && stateno=230
trigger5 = movecontact > 0 && stateno=240
trigger6 = movecontact > 0 && stateno=201
trigger7 = movecontact > 0 && stateno=250
trigger8 = movecontact > 0 && stateno=220
trigger9 = movecontact > 0 && stateno=221
;---------------------------------------------------------------------------

;Ground Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall = command = "z" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 15 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)


;Ground Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall = command = "c" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 15 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S ;|| statetype = A
triggerall = ctrl = 1
trigger1 = command = "FF"

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"

;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = stateno = 420 && movehit && command="holdup"

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"


;---------------------------------------------------------------------------
; Throws
;
; (none yet)
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
triggerall = (command = "x") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=200 ;&& time > 5
trigger3 = movecontact > 0 && stateno=230 ;&& time > 5
trigger4 = movecontact > 0 && stateno=201 ;&& time > 2

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=200 ;&& time > 5
trigger3 = movecontact > 0 && stateno=210 ;&& time > 5
trigger4 = movecontact > 0 && stateno=230 ;&& time > 5
trigger5 = movecontact > 0 && stateno=240 ;&& time > 5
trigger6 = movecontact > 0 && stateno=201 ;&& time > 2

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1
trigger2 = movecontact > 0 && stateno=200 ;&& time > 5
trigger3 = movecontact > 0 && stateno=201 ;&& time > 2

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=230 ;&& time > 5
trigger3 = movecontact > 0 && stateno=210 ;&& time > 5

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=200 ;&& time > 5
trigger3 = movecontact > 0 && stateno=210 ;&& time > 5
trigger4 = movecontact > 0 && stateno=230 ;&& time > 5
trigger5 = movecontact > 0 && stateno=240 ;&& time > 5
trigger6 = movecontact > 0 && stateno=201 ;&& time > 2

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1
trigger2 = movecontact > 0 && stateno=1300 && time > 5

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=400 ;&& time > 5
trigger3 = movecontact > 0 && stateno=430 ;&& time > 5
trigger4 = movecontact > 0 && stateno=1300 && time > 5

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=400 ;&& time > 5
trigger3 = movecontact > 0 && stateno=430 ;&& time > 5
trigger4 = movecontact > 0 && stateno=410 ;&& time > 5
trigger5 = movecontact > 0 && stateno=440 ;&& time > 5
trigger6 = movecontact > 0 && stateno=1300 && time > 5

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1
trigger2 = movecontact > 0 && stateno=400 ;&& time > 5
trigger3 = movecontact > 0 && stateno=1300 && time > 5

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=410 ;&& time > 5
trigger3 = movecontact > 0 && stateno=430 ;&& time > 5
trigger4 = movecontact > 0 && stateno=1300 && time > 5

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=400 ;&& time > 5
trigger3 = movecontact > 0 && stateno=430 ;&& time > 5
trigger4 = movecontact > 0 && stateno=410 ;&& time > 5
trigger5 = movecontact > 0 && stateno=440 ;&& time > 5
trigger6 = movecontact > 0 && stateno=1300 && time > 5

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

trigger2 = movecontact > 0 && stateno=600 && time > 5
trigger3 = movecontact > 0 && stateno=630 && time > 5

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=600 && time > 5
trigger3 = movecontact > 0 && stateno=630 && time > 5
trigger4 = movecontact > 0 && stateno=610 && time > 5
trigger5 = movecontact > 0 && stateno=640 && time > 5

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=600 && time > 5

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1
trigger2 = movecontact > 0 && stateno=630 && time > 5
trigger3 = movecontact > 0 && stateno=610 && time > 5

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

trigger2 = movecontact > 0 && stateno=600 && time > 5
trigger3 = movecontact > 0 && stateno=630 && time > 5
trigger4 = movecontact > 0 && stateno=610 && time > 5
trigger5 = movecontact > 0 && stateno=640 && time > 5
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

[State -1, Triangle Jump]
type = ChangeState
value = 7730
triggerall = enemynear, name != "helibonus"
triggerall = statetype = A
trigger1 = command = "holdfwd" && ctrl && var(59) = 0  && prevstateno !=  7730 &&  (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]

 [State -1]
type = ChangeState
value = 832
triggerall = statetype != A
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = ChangeState
value = 855
triggerall = statetype != A
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
