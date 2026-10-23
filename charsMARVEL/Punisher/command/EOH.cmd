;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Animations Template V.8
;by Acey, FX ripped by Kong, Based on MvC2 Guile by RedHot, updated by Scar
;===========================================================================

;---------------------------------------------------------------------------
;Commands
;Knife Hyper

[Command]
name = "KnifeHyper"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "KnifeHyper"
command = ~D, DF, F, a+c
time = 30

[Command]
name = "KnifeHyper"
command = ~D, DF, F, b+c
time = 30


;---------------------------------------------------------------------------
;Call Missles

[Command]
name = "MissleHyper"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "MissleHyper"
command = ~D, DF, F, x+z
time = 30

[Command]
name = "MissleHyper"
command = ~D, DF, F, y+z
time = 30


;---------------------------------------------------------------------------
;Symbiote Hyper

[Command]
name = "Hyper3"
command = ~D, DB, B, a+b

[Command]
name = "Hyper3"
command = ~D, DB, B, a+c

[Command]
name = "Hyper3"
command = ~D, DB, B, b+c

;---------------------------------------------------------------------------
;Bazooka

[Command]
name = "Bazooka"
command = ~D, DB, B, x+y
time = 30

[Command]
name = "Bazooka"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "Bazooka"
command = ~D, DB, B, z+x
time = 30

;---------------------------------------------------------------------------
;Special Attacks

[command]
name = "Shot Upper"
command = ~F,D,DF,x
time = 25

[command]
name = "Shot Upper"
command = ~F,D,DF,y
time = 25

[command]
name = "Shot Upper"
command = ~F,D,DF,z
time = 25

[command]
name = "DashinUpperA"
command = ~D,DF,F,a

[command]
name = "DashinUpperB"
command = ~D,DF,F,b

[command]
name = "DashinUpperC"
command = ~D,DF,F,c

[command]
name = "Shotgun"
command = ~B,F,c

[Command]
name = "Prox"
command = ~D,DB,B, a

[Command]
name = "Prox"
command = ~D,DB,B, b

[Command]
name = "Prox"
command = ~D,DB,B, c

[command]
name = "KnifeThrow"
command = ~D,DB,B,y

[command]
name = "G36c"
command = ~D,DB,B,z

[command]
name = "AK"
command = ~D,DF,F,x

[Command]
name = "Granade"
command = ~D,DB,B,x

[command]
name = "M4"
command = ~D,DF,F,y

[command]
name = "HayUzi"
command = ~D,DF,F,z


;-------------------------------------------------------------------------
;Counter

[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c

[Command]
name = "236Z"
command = z+y+x

;---------------------------------------------------------------------------
; Roll

[Command]
name = "roll_n"
command = ~B, D, DB, x

[Command]
name = "roll_m"
command = ~B, D, DB,  y

[Command]
name = "roll_f"
command = ~B, D, DB, z

;---------------------------------------------------------------------------
; Forward Recovery Roll or Alpha Counter1

[Command]
name = "ac_f_roll_n"
command = ~B, DB, D, x

[Command]
name = "ac_f_roll_m"
command = ~B, DB, D, y

[Command]
name = "ac_f_roll_f"
command = ~B, DB, D, z

;---------------------------------------------------------------------------
; Backward Recovery Roll or Alpha Counter2

[Command]
name = "ac_sweep_b_roll_n"
command = ~B, DB, D, a

[Command]
name = "ac_sweep_b_roll_m"
command = ~B, DB, D, b

[Command]
name = "ac_sweep_b_roll_f"
command = ~B, DB, D, c

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "Super_Jump"
command = ~D, U

;---------------------------------------------------------------------------------------------
;Double_Tap
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
;2/3 button combination
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

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
name = "throw_p"
command = x+y
time = 5

[Command]
name = "throw_p"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+z
time = 5

[Command]
name = "throw_k"
command = a+b
time = 5

[Command]
name = "throw_k"
command = b+c
time = 5

[Command]
name = "throw_k"
command = a+c
time = 5

;---------------------------------------------------------------------------------------------
;Dir + button
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
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
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;---------------------------------------------------------------------------------------------
;One button
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

;---------------------------------------------------------------------------------------------
;Hold button
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
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------------------------
;Hold dir
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
name = "SJ"
command = $D, $U

;---------------------------------------------------------------------------
[Statedef -1]

;-----------------------------
[State -1, KnifeHyper]
type = ChangeState
value = 3000
triggerall = !(var(51))
triggerall = command = "KnifeHyper"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;trigger3 = stateno = 3100
;-----------------------------
[State -1, Bazooka Hyper]
type = ChangeState
value = 3100
triggerall = !(var(51))
triggerall = command = "Bazooka"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;-----------------------------
Symbiote Punisher Hyper
[State -1, Symbiote Pun Hyper]
type = ChangeState
value = 3200
;triggerall = !(var(51))
;triggerall = var(51) = 0
triggerall = command = "Hyper3"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;-----------------------------
;Missle Strike Hyper
[State -1, Missle Strike Hyper]
type = ChangeState
value = 3300
triggerall = !(var(51))
triggerall = command = "MissleHyper"
triggerall = power >= 1000
;triggerall = P2BodyDist x > 190
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;-----------------------------
;Grenade
[State -1, Grenade]
type = ChangeState
value = 3500
triggerall = !(var(51))
triggerall = Statetype != A
triggerall = command = "Granade"
;triggerall = power >= 1000
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------
;DashinUpperA
[State -1, DashinUpperA]
type = ChangeState
value = 75
triggerall = Statetype != A
triggerall = command = "DashinUpperA"
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;DashinUpperB
[State -1, DashinUpperA]
type = ChangeState
value = 76
triggerall = Statetype != A
triggerall = command = "DashinUpperB"
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;DashinUpperc
[State -1, DashinUpper]
type = ChangeState
value = 78
triggerall = Statetype != A
triggerall = command = "DashinUpperC"
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Shotgun
[State -1, Shotgun]
type = ChangeState
value = 80
triggerall = Statetype != A
triggerall = command = "Shotgun"
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Shot Upper
[State -1, Shot Upper]
type = ChangeState
value = 82
triggerall = Statetype != A
triggerall = command = "Shot Upper"
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;G36c
[State -1, G36c]
type = ChangeState
value = 81
triggerall = Statetype != A
triggerall = command = "G36c"
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;AK
[State -1, AK]
type = ChangeState
value = 83
triggerall = Statetype != A
triggerall = command = "AK"
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;M4
[State -1, AK]
type = ChangeState
value = 88
triggerall = Statetype != A
triggerall = command = "M4"
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------


;===========================================================================
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

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;-----------------------------
[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

;-----------------------------
[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

;-----------------------------
;Symbiote Rage! Hyper
;[State -1, Symbiote Rage! Hyper]
;type = ChangeState
;value = 3600
;triggerall = (var(51))
;triggerall = command = "Hyper4";"symgrab"
;trigger1 = (statetype = s) && ctrl


;-----------------------------
;Symbiote Punisher Change Back
;[State -1, Symbiote Pun Change Back]
;type = ChangeState
;value = 3400
;triggerall = var(51) = 10000
;triggerall = command = "Hyper3"
;triggerall = power >= 1000
;trigger1 = Statetype != A && ctrl
;trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------
;M4
[State -1, M4]
type = ChangeState
value = 88
triggerall = !(var(51))
triggerall = command = "M4"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 610
trigger2 = movecontact

;-----------------------------
;Prox
[State -1, Prox]
type = ChangeState
value = 60
triggerall = !(var(51))
triggerall = command = "Prox"
triggerall = numprojid (60) < 1
trigger1 = (statetype = s) && ctrl
;-----------------------------
;Flashbang
;[State -1, Flashbang]
;type = ChangeState
;value = 74
;triggerall = !(var(51))
;triggerall = command =  "FlashBang"
;triggerall = numprojid (60) < 1
;trigger1 = (statetype = s) && ctrl
;-----------------------------
;HayUzi
[State -1, HayUzi ]
type = ChangeState
value = 37
triggerall = !(var(51))
triggerall = command = "HayUzi"
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

;KnifeThrow
[State -1, KnifeThrow]
type = ChangeState
value = 86
triggerall = !(var(51))
triggerall = command = "KnifeThrow"
triggerall = NumProjID(100) = 0
trigger1 = (statetype = s) && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------
[State -1]
type = ChangeState
value = 7500
triggerall = Power < 3000 && (command = "pc1")
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Overhead Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

;-----------------------------
[State -1, X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4

;-----------------------------
[State -1, Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = stateno = 105 && time > 4

;-----------------------------
[State -1, Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = (StateNo = 610) && (Movecontact) && time > 2
trigger5 = (StateNo = 640) && (Movecontact) && time > 2
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, B]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, C]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = (StateNo = 640) && (Movecontact)
trigger7 = stateno = 105 && time > 4

;-----------------------------
[State -1, A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, X agachado]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, Y agachado]
type = ChangeState
value = 410
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)

;-----------------------------

[State -1, Y]
type = ChangeState
value = 210
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3

;-----------------------------

[State -1, Z]
type = ChangeState
value = 220
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3
trigger4 = (StateNo = 210) && (Movecontact) && time > 3
trigger5 = (StateNo = 211) && (Movecontact) && time > 3
trigger6 = (StateNo = 240) && (Movecontact) && time > 3
trigger7 = (StateNo = 241) && (Movecontact) && time > 3
 
;-----------------------------

[State -1, C]
type = ChangeState
value = IfElse(P2BodyDist X > 28,250,251)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 241) && (Movecontact)
trigger8 = (StateNo = 221) && (Movecontact)
trigger9 = (StateNo = 220) && (Movecontact)

;-----------------------------

[State -1, Z agachado]
type = ChangeState
value = 420
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------

[State -1, A agachado]
type = ChangeState
value = 430
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (Stateno = 230) && (Movecontact)
trigger4 = (Stateno = 400) && (Movecontact)

;-----------------------------

[State -1, s]
type = ChangeState
value = 195
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, A]
type = ChangeState
value = 230
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)

;-----------------------------

[State -1, B]
type = ChangeState
value = IfElse(P2BodyDist X > 28,240,241)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)

;-----------------------------

[State -1, B agachado]
type = ChangeState
value = 440
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)

;-----------------------------

[State -1, C agachado]
type = ChangeState
value = 450
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 250) && (Movecontact)
trigger9 = (StateNo = 251) && (Movecontact)
trigger10 = (StateNo = 420) && (Movecontact)
trigger11 = (StateNo = 421) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = stateno = 78
trigger2 = movecontact

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 440
trigger1 = movehit >= 1
trigger2 = stateno = 78
trigger2 = movecontact

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;make sure this line is under the [statedef -1] state controller or else it wont work.
;[statedef-1]


;----------------------------- Recovery Roll -------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Near Foward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_n"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 1

[State -1]
type = ChangeState
value = 831
triggerall = Var(59) != 2
triggerall = Var(30) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Medium Foward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_m"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 2

[State -1]
type = ChangeState
value = 832
triggerall = Var(59) != 2
triggerall = Var(30) = 2
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Far Foward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_f"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 3

[State -1]
type = ChangeState
value = 840
triggerall = Var(59) != 2
triggerall = Var(30) = 3
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Near Backward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_n"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 4

[State -1]
type = ChangeState
value = 850
triggerall = Var(59) != 2
triggerall = Var(30) = 4
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Medium Backward Recovery Roll
[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_m"
triggerall = alive = 1
trigger1 = stateno = 5080
v = 30
value = 5

[State -1]
type = ChangeState
value = 855
triggerall = Var(59) != 2
triggerall = Var(30) = 5
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Far Backward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_f"
triggerall = alive = 1
trigger1 = stateno = 5080 
v = 30
value = 6

[State -1]
type = ChangeState
value = 860
triggerall = Var(59) != 2
triggerall = Var(30) = 6
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = ChangeState
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
type = ChangeState
value = 855
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
