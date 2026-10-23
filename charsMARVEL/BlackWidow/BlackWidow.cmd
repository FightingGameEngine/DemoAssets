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

[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1


;-| Hypers |-----------------------------------------------------------


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


;[Command]
;name = "Shield"
;command = ~D, DB, B, s

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
name = "fdf_x"
command = ~F, D, DF, x

[Command]
name = "fdf_y"
command = ~F, D, DF, y

[Command]
name = "fdf_z"
command = ~F, D, DF, z

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


[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
trigger3 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
trigger4 = (anim = 21)
trigger5 = (prevstateno > 5000) && (random < 200)
value = 130

[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131

[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132

[State -1, AI Guarding, Hard AI]
type = ChangeState
triggerall = (var(59) != 0) && Numenemy && (stateno != [120,155])
triggerall = AILevel > 5
triggerall = Random <= (AILevel * 10)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
trigger1 = ctrl
value = 120

[State -1, AI Guard Push (Standing)]
type = ChangeState
triggerall = Var(59)
triggerall = AILevel >= 4
triggerall = p2bodydist x =[0,40]
triggerall = StateType != A
triggerall = enemynear, HitDefAttr = SC,NA,NT,NP,SA,ST,SP
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 100+300*(BackEdgeDist < 30)
value = 6300

;====================================================================
; Hypers
;====================================================================

[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1200 && var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && P2BodyDist Y = [-50,50]
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random < 200

[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = power >= 1200 && var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 80 && P2BodyDist Y = [-50,50]
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random < 200

[State -1, Hyper3]
type = ChangeState
value = 3200
triggerall = power >= 1200 && var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X < 80 && P2BodyDist Y = [-100,100]; && backedgebodydist > 100
trigger1 = enemynear, numproj = 0 &&  random < 200

;[State -1, Hyper4]
;type = ChangeState
;value = 3300
;triggerall = power >= 1000 && var(59) && ctrl && (!IsHelper)
;triggerall = StateType != A && MoveType != H && RoundState = 2
;triggerall = P2BodyDist X < 80 && P2BodyDist Y = [-100,100]
;trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random < 200


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

 ;Special1
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

[State -1, Special1]
type = ChangeState
value = 1090
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = A
trigger1 = random < 140

;---------------------------------------------------------------------------
[State -1, Stun Grenade]
type = ChangeState
value = 1100 + 10*(p2bodydist x = [80,150]) + 20*(p2bodydist x = [151,320])
triggerall = var(59) && (stateno != [7720,7721]) && !NumHelper(21100)
triggerall = p2statetype != L
triggerall = p2bodydist X = [30,320]
triggerall = p2bodydist Y = [-70,120]
triggerall = random < 100
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)



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

;---------------------------------------------------------------------------
; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = Var(59) <= 0 && command = "qcf_2p" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]);Cancel ground moves



; Hyper2
[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = Var(59) <= 0 && command = "qcf_2k" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]);Cancel ground moves





; Hyper3
[State -1, Hyper3]
type = ChangeState
value = 3200
triggerall = Var(59) <= 0 && command = "qcb_2p" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]);Cancel ground moves




; Hyper4
;[State -1, Hyper4]
;type = ChangeState
;value = 3300
;triggerall = Var(59) <= 0 && command = "Shield" && power >= 1000 && statetype !=A
;trigger1 = ctrl
;trigger2 = (stateno = [200,250]) || (stateno = [400,450]);Cancel ground moves




;---------------------------------------------------------------------------
[State -1, Special1]
type = Changestate
value = 1000
triggerall = var(37) = 0 ;Counter
triggerall = var(59)<=0 && statetype!=A && command="fdf_x"
triggerall = p2stateno != 7990
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves

[State -1, Special1]
type = Changestate
value = 1001
triggerall = var(38) = 0 ;Counter
triggerall = var(59)<=0 && statetype!=A && command="fdf_y"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves

[State -1, Special1]
type = Changestate
value = 1002
triggerall = var(39) = 0 ;Counter
triggerall = var(59)<=0 && statetype!=A && command="fdf_z"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves

; Special1
[State -1, Special1]
type = ChangeState
value = 1020
triggerall = var(59)<=0 && statetype!=A && command="qcf_y"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves


;Special1
[State -1, Special1]
type = ChangeState
value = 1090
triggerall = var(59)<=0 && statetype!=A && command="qcf_z"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves



; Special1
[State -1, Special1]
type = ChangeState
value = 1030
triggerall = var(59)<=0 && statetype!=A && command="qcf_x"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves



[State -1, Special1]
type = ChangeState
value = 1060
triggerall =(var(40) > 0)
triggerall = Var(59) <= 0 && statetype =A && command = "qcf_z"
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) 



[State -1, Special1]
type = ChangeState
value = 1050
triggerall =(var(40) > 0)
triggerall = Var(59) <= 0 && statetype =A && command = "qcf_x"
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) 



[State -1, Special1]
type = ChangeState
value = 1040
triggerall =(var(40) > 0)
triggerall = Var(59) <= 0 && statetype =A && command = "qcf_y"
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) 


[State -1, Special1]
type = ChangeState
value = 1100
triggerall = !NumHelper(21100)
triggerall = var(59)<=0 && statetype!=A && command="qcb_x"
trigger1 = ctrl
trigger2 = var(51) = 1


; Special1
[State -1, Special1]
type = ChangeState
value = 1101
triggerall = !var(59) && !NumHelper(21100)
triggerall = command = "qcb_x"
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Special1]
type = ChangeState
value = 1110
triggerall = !var(59) && !NumHelper(21100)
triggerall = command = "qcb_y"
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Special1]
type = ChangeState
value = 1120
triggerall = !var(59) && !NumHelper(21100)
triggerall = command = "qcb_z"
trigger1 = ctrl
trigger2 = var(51) = 1

; Special1
[State -1, Special1]
type = ChangeState
value = 1200
triggerall = var(59)<=0 && statetype!=A && command="qcb_a"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves



[State -1, Special1]
type = ChangeState
value = 1210
triggerall = var(59)<=0 && statetype!=A && command="qcb_b"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves


[State -1, Special1]
type = ChangeState
value = 1220
triggerall = var(59)<=0 && statetype!=A && command="qcb_c"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves


[State -1, Special1]
type = ChangeState
value = 1300
triggerall = var(59)<=0 && statetype!=A && command="qcf_a"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves


[State -1, Special1]
type = ChangeState
value = 1310
triggerall = var(59)<=0 && statetype!=A && command="qcf_b"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves


[State -1, Special1]
type = ChangeState
value = 1320
triggerall = var(59)<=0 && statetype!=A && command="qcf_c"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves


;---------------------------------------------------------------------------
[State -1,Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = P2BodyDist X <= 20
triggerall = ctrl
triggerall = statetype = S
triggerall = command = "z"
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
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
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "x" 
trigger1 = statetype = S && ctrl






;---------------------------------------------------------------------------
; Stand Medium Punch

[State -1, Stand medium Punch]
type = ChangeState
value = 210
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "y" 
trigger1 = ctrl && statetype = S
trigger2=(stateno=200||stateno=230)&& movecontact
trigger3=(stateno=201)&& movecontact





;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "z" 
trigger1 = statetype = S && ctrl
trigger2=(stateno=200||stateno=210||stateno=230||stateno=240)&& movecontact
trigger3=(stateno=201)&& movecontact


;---------------------------------------------------------------------------

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "a" 
trigger1 = statetype = S && ctrl
trigger2= (stateno=[200,201]) && movecontact




;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Standing medium Kick]
type = ChangeState
value = 240
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "b" 
trigger1 = ctrl && statetype = S
trigger2=(stateno=200||stateno=210||stateno=230)&& movecontact
trigger3=(stateno=201)&& movecontact



;---------------------------------------------------------------------------
; Stand Hard Kick

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = Var(59) <= 0
triggerall = command != "holddown" && command = "c"
trigger1 = statetype = S && ctrl
trigger2=(stateno=200||stateno=210||stateno=230||stateno=240)&& movecontact
trigger3=(stateno=201)&& movecontact




;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "x"
trigger1 = statetype = C && ctrl




;---------------------------------------------------------------------------
; Crouch Medium Punch

[State -1, Crouching medium Punch]
type = ChangeState
value = 410
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "y"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=230)&& movecontact
trigger3=(stateno=400||stateno=430)&& movecontact
trigger4=(stateno=201)&& movecontact



;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "z" 
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=210||stateno=230||stateno=240)&& movecontact
trigger3=(stateno=400||stateno=410||stateno=430||stateno=440)&& movecontact
trigger4=(stateno=201)&& movecontact
;---------------------------------------------------------------------------
; Crouch Light Kick

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "a"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200)&& movecontact
trigger3=(stateno=400)&& movecontact
trigger4=(stateno=201)&& movecontact


;---------------------------------------------------------------------------
; Crouch Medium Kick

[State -1, Crouching medium Kick]
type = ChangeState
value = 440
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "b"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=210||stateno=230)&& movecontact
trigger3=(stateno=400||stateno=410||stateno=430)&& movecontact
trigger4=(stateno=201)&& movecontact
;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = Var(59) <= 0
triggerall = command = "holddown" && command = "c"
trigger1 = statetype = C && ctrl
trigger2=(stateno=200||stateno=210||stateno=230||stateno=240)&& movecontact
trigger3=(stateno=400||stateno=410||stateno=430||stateno=440)&& movecontact
trigger4=(stateno=201)&& movecontact
;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Jump medium Punch]
type = ChangeState
value = 610
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "y"
trigger1 = ctrl
trigger2=(stateno=600||stateno=630)&& movecontact


;---------------------------------------------------------------------------
; Air Hard Punch

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "z"
trigger1 = ctrl
trigger2=(stateno=600||stateno=610||stateno=630||stateno=640)&& movecontact




;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "a"
trigger1 = ctrl
trigger2 = (stateno = 600)&& movecontact

;---------------------------------------------------------------------------
; Air Medium Kick

[State -1, Jump medium Kick]
type = ChangeState
value = 640
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "b"
trigger1 = ctrl
trigger2=(stateno=600||stateno=610||stateno=630)&& movecontact


;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = Var(59) <= 0
triggerall = statetype = A && command = "c"
trigger1 = ctrl
trigger2=(stateno=600||stateno=610||stateno=620||stateno=630||stateno=640)&& movecontact




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
triggerall = command = "holdfwd"
triggerall = alive = 1
trigger1 = anim = 5120

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = ChangeState
value = 855
triggerall = statetype != A
triggerall = command = "holdback"
triggerall = alive = 1
trigger1 = anim = 5120

;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Forward]
type = ChangeState
value = 880
triggerall = command = "FF"
triggerall = !var(27)
trigger1 = ctrl && statetype = A
;trigger2 = stateno = 881
;trigger3 = stateno = 948

;---------------------------------------------------------------------------

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = !var(59)
triggerall = command = "guardpush" && statetype != A
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SC,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]
