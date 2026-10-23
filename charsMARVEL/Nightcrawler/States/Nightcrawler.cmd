; {character name}'s CMD file

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
name = "recovery";Required (do not remove)
command = y+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
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


;-| Hypers |-----------------------------------------------------------
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
name = "charge_B_F_K"
command = ~30$B, F, a
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, b
time = 10

[Command] ;Charge back, then forward + kick (a/b/c)
name = "charge_B_F_K"
command = ~30$B, F, c
time = 10

;--| Dir+Hit |---------------------------------------------------------------

[Command]
name = "FWD_y"
command = /$F,y
time = 1

[Command]
name = "FWD_z"
command = /$F,z
time = 1

[Command]
name = "FWD_b"
command = /$F,b
time = 1

[Command]
name = "FWD_c"
command = /$F,c
time = 1

;---------------------------------------------------------------------------
; 2. State entry
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

;====================================================================
;GUARD/BLOCK CODE
;====================================================================

[State -1, standGuard_AI]
type = ChangeState
triggerall = var(59) && random <= 444
triggerall =(StateType != A) && (Ctrl)&& (enemynear, Facing != Facing) 
trigger1 = (P2StateType != C) && (P2MoveType = A)
;trigger2 = inguarddist  
value = 130

;[State -1, airGuardHitBack]
;type = ChangeState
;triggerall = var(59) && random <= 444
;triggerall =(StateType != A) && (enemynear, Facing != Facing)
;triggerall = (P2StateType = C) && (P2MoveType = A)
;trigger1 = StateNo = 150
;;trigger2 = inguarddist
;;value = 152

[State -1, crouchGuard_AI]
type = ChangeState
triggerall = var(59) && random <= 444
triggerall = (StateType != A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = (P2StateType = C) && (P2MoveType = A)  
;trigger2 = inguarddist  
value = 131

;[State -1, standGuardHitBack]
;type = ChangeState
;triggerall = var(59) && random <= 444
;triggerall =(StateType != A) && (enemynear, Facing != Facing)
;triggerall = (P2StateType != C) && (P2MoveType = A)
;trigger1 = StateNo = 152
;trigger2 = inguarddist
;;value = 150

[State -1, airGuard_AI]
type = ChangeState
triggerall = var(59) && random <= 444
triggerall = (StateType = A) && (Ctrl) && (enemynear, Facing != Facing) 
trigger1 = P2MoveType = A 
trigger2 = inguarddist
value = 132

;====================================================================
; Hypers
;====================================================================

;Excalibur Hyper
[State -1, Excalibur_AI]
type = ChangeState
value = 3500
triggerall = power = 3000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A &&  random = 400

;---------------------------------------------------------------------------
;Hyper1 - Buccaneer
[State -1, Hyper1_AI]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random = 400

;---------------------------------------------------------------------------
;Hyper2 - Teleport Hyper
[State -1, Hyper2_AI]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random = 400

;---------------------------------------------------------------------------
;Hyper3 - Now You See Me...
[State -1, Hyper3_AI]
type = ChangeState
value = 3200
triggerall = power >= 1000 && var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random = 400

;---------------------------------------------------------------------------
;Hyper4 - X2 Syndrome
;[State -1, Hyper4_AI]
;type = ChangeState
;value = 3300
;triggerall = power >= 1000 && var(59) && ctrl
;triggerall = StateType != A && MoveType != H && RoundState = 2
;trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
;trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && random = 400

;====================================================================
;SPECIALS AHEAD
;====================================================================

[State -1, Bamf1_AI]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Bamf2_AI]
type = ChangeState
value = 1001
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Bamf3_AI]
type = ChangeState
value = 1002
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Bamf4_AI]
type = ChangeState
value = 1003
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Bamf5_AI]
type = ChangeState
value = 1004
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Bamf6_AI]
type = ChangeState
value = 1005
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Air_Bamf1_AI]
type = ChangeState
value = 1006
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Air_Bamf2_AI]
type = ChangeState
value = 1007
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Air_Bamf3_AI]
type = ChangeState
value = 1008
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Air_Bamf4_AI]
type = ChangeState
value = 1009
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Air_Bamf5_AI]
type = ChangeState
value = 1011
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, Air_Bamf6_AI]
type = ChangeState
value = 1012
triggerall = var(59) && ctrl
triggerall = prevstateno != [1000,1005]
triggerall = StateNo != [1000,1005]
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, TelportAttack1_AI]
type = ChangeState
value = 1100
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, TelportAttack1_AI]
type = ChangeState
value = 1100
triggerall = var(59) && ctrl
triggerall = StateType = A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, TelportAttack2_AI]
type = ChangeState
value = 1110
triggerall = var(59) && ctrl
triggerall = MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, SwordAttack1_AI]
type = ChangeState
value = 1210
triggerall = var(59) && ctrl
triggerall = StateType != A && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, SwordAttack2_AI]
type = ChangeState
value = 1210
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

[State -1, SwordAttack3_AI]
type = ChangeState
value = 1220
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, anim = 5300 && p2bodydist X > 120 && random = [200,600]
trigger2 = enemynear, numproj = 0 && enemynear, movetype != A && (random = 300 || random = 400)

;====================================================================
; Some Basics
;====================================================================

;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher_AI]
type = ChangeState
value = 420
triggerall = var(59) && ctrl && random< 200
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, statetype != A) ;&& Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1)

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump_AI]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1)
trigger2 = (enemynear, Vel X >= 4) && ctrl

;---------------------------------------------------------------------------
; Fwd Dash
[State -1, FwdDash_AI]
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
; 
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch_AI]
type = ChangeState
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch_AI]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch_AI]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick_AI]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick_AI]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick_AI]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------

;Teleport Throw
[State -1, Teleport Throw_AI]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = statetype = S && enemynear, statetype != L && random < 200
trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C

;Tail Throw
[State -1, Tail Throw_AI]
type = ChangeState
value = 850
triggerall = enemynear, name != "Prime Sentinels"
triggerall = var(59) && RoundState = 2 && ctrl
triggerall = statetype = S && enemynear, statetype != L && random < 200
trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch_AI]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch_AI]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch_AI]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick_AI]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick_AI]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick_AI]
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
[State -1, Air Light Punch_AI]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch_AI]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 630) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch_AI]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 640 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick_AI]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick_AI]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 610) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick_AI]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 620 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, Air_combo_AI]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, Air_combo2_AI]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)


;======================================================================
;User Input Attacks

;---------------------------------------------------------------------------
; Excalibur Hyper
[State -1, Excalibur]
type = ChangeState
value = 3500
triggerall = power = 3000 && !Var(59)
triggerall = StateType != A && MoveType != H
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "chain"

;---------------------------------------------------------------------------
; Hyper1 - Buccaneer Hyper
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_2k"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;---------------------------------------------------------------------------
; Hyper2 - Teleport Hyper
[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = command = "qcf_2p"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;---------------------------------------------------------------------------
; Hyper3 - Now You See Me...
[State -1, Hyper3]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = command = "qcb_2p"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

; Hyper4 - X2 Syndrome
;[State -1, Hyper4]
;type = ChangeState
;value = 3300
;triggerall = power >= 1000
;triggerall = (StateType != A) && (MoveType != H) && !Var(59)
;triggerall = !IsHelper
;triggerall = command = "qcb_2k"
;trigger1 = ctrl
;trigger2 = (HitdefAttr = SC, NA) && MoveContact

;---------------------------------------------------------------------------
;Bamf1
[State -1, Bamf1]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 40000
triggerall = (command = "qcb_x")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Bamf2
[State -1, Bamf2]
type = ChangeState
value = 1001
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcb_y")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Bamf3
[State -1, Bamf3]
type = ChangeState
value = 1002
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 40000
triggerall = (command = "qcb_z")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Bamf4
[State -1, Bamf4]
type = ChangeState
value = 1003
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcb_a")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Bamf5
[State -1, Bamf5]
type = ChangeState
value = 1004
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 40000
triggerall = (command = "qcb_b")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Bamf6
[State -1, Bamf6]
type = ChangeState
value = 1005
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcb_c")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Air_Bamf1
[State -1, Air_Bamf1]
type = ChangeState
value = 1006
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcb_x")
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && MoveContact

;Air_Bamf2
[State -1, Air_Bamf2]
type = ChangeState
value = 1007
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcb_y")
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && MoveContact

;Air_Bamf3
[State -1, Air_Bamf3]
type = ChangeState
value = 1008
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcb_z")
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && MoveContact

;Air_Bamf4
[State -1, Air_Bamf4]
type = ChangeState
value = 1009
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcb_a") || command = "BB"
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && MoveContact

;Air_Bamf5
[State -1, Air_Bamf5]
type = ChangeState
value = 1011
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcb_b")
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && MoveContact

;Air_Bamf6
[State -1, Air_Bamf6]
type = ChangeState
value = 1012
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcb_c") || command = "FF"
trigger1 = ctrl
trigger2 = (HitdefAttr = A, NA) && MoveContact

;Teleport Attack 1
[State -1, Teleport Attack1]
type = ChangeState
value = 1100
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Teleport Attack - in Air
[State -1, Teleport Attack - Air]
type = ChangeState
value = 1100
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Sword Attack1
[State -1, Sword Attack1]
type = ChangeState
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcf_a")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Sword Attack2
[State -1, Sword Attack2]
type = ChangeState
value = 1210
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcf_b")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Sword Attack3
[State -1, Sword Attack3]
type = ChangeState
value = 1220
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcf_c")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;Sword Attack from Air
[State -1, Sword Attack - Air]
type = ChangeState
value = 1210
triggerall = (StateType = A) && (MoveType != H) && !Var(59)
triggerall = !IsHelper
triggerall = stateno < 1000 || stateno > 4000
triggerall = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && MoveContact

;---------------------------------------------------------------------------
;Standing Push Block (AKA advancing guard)
;[State -1, SPushBlock]
;type = ChangeState
;value = 750
;triggerall = command = "pushblock" && StateType = S && !Var(59)
;trigger1 = StateNo = 130
;trigger2 = StateNo = [150, 151]

;---------------------------------------------------------------------------
; Crouching Push Block
;[State -1, CPushBlock]
;type = ChangeState
;value = 752
;triggerall = command = "pushblock" && StateType = C && !Var(59)
;trigger1 = StateNo = 131
;trigger2 = StateNo = [152, 153]

;---------------------------------------------------------------------------
; Air Push Block
;[State -1, APushBlock]
;type = ChangeState
;value = 754
;triggerall = command = "pushblock" && StateType = A && !Var(59)
;trigger1 = StateNo = 132
;trigger2 = StateNo = [154, 155]

;---------------------------------------------------------------------------
; WallJump
[State -1, Triangle Jump]
type = ChangeState
value = 7730
triggerall = enemynear, name != "helibonus"
triggerall = stateno != 1340 && stateno != 1350
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && prevstateno !=  7730 &&  (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]

[State -1, teto]
type = ChangeState
value = 50
triggerall = stateno = 7730
trigger1 =  command = "holdup" && ctrl && var(59) = 0 &&  (ScreenPos Y <= 80) &&  (ScreenPos Y >= 75);&& (pos y < -80); && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (ScreenPos Y <= 80) &&  (ScreenPos Y >= 75); && prevstateno != [600,650]

;---------------------------------------------------------------------------

;Recover Rolls
[State -1, Roll Forward]
type = ChangeState
value = 4800
trigger1 = command = "holdfwd" && var(59) = 0 && (stateno = 5120) && life
trigger2 = var(59) = 1 && (P2BodyDist X = [0, 20]) && random >= 990 && (stateno = 5120) && life

[State -1, Roll Back]
type = ChangeState
value = 4801
trigger1 = command = "holdback" && var(59) = 0 && (stateno = 5120) && life
trigger2 = var(59) = 1 && (P2BodyDist X = [0, 20]) && random >= 990 && (stateno = 5120) && life

;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "FF"
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
;trigger2 = (command = "3K") && (Ctrl)
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
;---------------------------------------------------------------------------
[State -1, Teleport Throw]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
trigger1 = (command = "FWD_z") && (ctrl) && (P2BodyDist X = [0, 10]) && (Statetype = S) && p2statetype != L
trigger2 = (var(59) = 1) && (ctrl) && var(25) != 1118 && var(26) = 0 &&(P2BodyDist X = [0, 10]) && random >= 900 && (Statetype = S) && p2statetype != L
;---------------------------------------------------------------------------
 [State -1, Tail Throw]
type = ChangeState
value = 850
triggerall = enemynear, name != "Prime Sentinels"
trigger1 = (command = "FWD_c") && (ctrl) && (P2BodyDist X = [0, 10]) && (Statetype = S) && p2statetype != L
trigger2 = (var(59) = 1) && (ctrl) && var(25) != 1118 && var(26) = 0 &&(P2BodyDist X = [0, 10]) && random >= 900 && (Statetype = S) && p2statetype != L
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

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 230)) && movecontact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240)) && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2= ((stateno = 230) || (stateno = 210)) && movecontact

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240)) && movecontact

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1
trigger2 = (stateno = 200)

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 400)||(stateno = 430)) && movecontact
trigger3 = ((stateno = 200) || (stateno = 230)) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440)) && movecontact
trigger3 = ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240)) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combo)
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 430) || (stateno = 410)) && movecontact
trigger3 = ((stateno = 230) || (stateno = 210)) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 430) || (stateno = 440) || (stateno = 410)) && movecontact
trigger3 = ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240)) && movecontact

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
trigger2 = ((stateno = 600) || (stateno = 630)) && movecontact

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640)) && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 600) && movecontact

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630)) && movecontact

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && movecontact
