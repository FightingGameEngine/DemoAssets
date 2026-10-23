;===========================================================================
Marvel vs. Capcom - Eternity of Heroes - Commands Template
by REDHOT & Acey
;===========================================================================

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

;-|-AI-|--------------------------------------------------------------------
[Command]
name = "AI_1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "AI_2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "AI_4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "AI_5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "AI_6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "AI_7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "AI_8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "AI_9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "AI_10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "AI_11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "AI_12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "AI_13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "AI_14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "AI_15"
command = y, x, b, b, a, x, y
time = 1

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper1"
command = ~D, DF, F, x+y

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper2"
command = ~D, DB, B, a+b

[Command]
name = "Hyper2"
command = ~D, DB, B, a+c

[Command]
name = "Hyper2"
command = ~D, DB, B, b+c

;---------------------------------------------------------------------------
;Hyper3

[Command]
name = "Hyper3"
command = ~D, DB, B, x+y

[Command]
name = "Hyper3"
command = ~D, DB, B, x+z

[Command]
name = "Hyper3"
command = ~D, DB, B, y+z

;---------------------------------------------------------------------------
;Specail4 Forward

[Command]
name = "TeleportF"
command = ~F,D,DF, x

[Command]
name = "TeleportF"
command = ~F,D,DF, y

[Command]
name = "TeleportF"
command = ~F,D,DF, z

;---------------------------------------------------------------------------
;Specail4 Back

[Command]
name = "TeleportB"
command = ~B,D,DB, x

[Command]
name = "TeleportB"
command = ~B,D,DB, y

[Command]
name = "TeleportB"
command = ~B,D,DB, z

;---------------------------------------------------------------------------
;Specail1

[Command]
name = "SpecialX"
command = ~D,DF,F, x

[Command]
name = "SpecialY"
command = ~D,DF,F, y

[Command]
name = "SpecialZ"
command = ~D,DF,F, z

;-------------------------------------------------------------------------
;Special2

[Command]
name = "SpecialA"
command = ~D,DB,B, a

[Command]
name = "SpecialB"
command = ~D,DB,B,b

[Command]
name = "SpecialC"
command = ~D,DB,B,c

;-------------------------------------------------------------------------
;Special3

[Command]
name = "Special3a"
command = ~D,DF,F, a

[Command]
name = "Special3b"
command = ~D,DF,F, b

[Command]
name = "Special3c"
command = ~D,DF,F, c

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
name = "ac_sonic_f_roll_n"
command = ~B, DB, D, x

[Command]
name = "ac_sonic_f_roll_m"
command = ~B, DB, D, y

[Command]
name = "ac_sonic_f_roll_f"
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
;Artificial Intelligence
;---------------------------------------------------------------------------

[Statedef -1]
;-|-AI-|--------------------------------------------------------------------
[State -1, AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
v = 59
value = 1

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

;-|-AI Combo Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 750)
value = 235

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 600

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 640

;-|-AI Super Attempt-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [70,100])
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 1000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [170,200])
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (statetype != A)
value = 1010

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 45) && (prevstateno != 5120) && (p2statetype = A) && (statetype != A)
value = 1020

[State -1]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 30) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1100

[State -1]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 30) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1110

[State -1]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = stateno > 1200
value = 1200

[State -1]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = stateno > 1200
value = 1210

[State -1]
type = ChangeState
triggerall = (var(59) != 0)
triggerall = stateno < 3000
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = stateno > 1200
value = 1220

;-|-AI Attempt Hyper-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (power > 1000) && (numproj = 0) && (random = [0,300]) && (statetype != A)
value = 3200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,300])
value = 3000

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

[State -1, Hyper3]
type = ChangeState
value = 3400
triggerall = command = "Hyper3"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Hyper2]
type = ChangeState
value = 3200
triggerall = command = "Hyper2"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = command = "Hyper1"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 3100

;-----------------------------

[State -1, Special4Forward]
type = ChangeState
value = 1400
triggerall = command = "TeleportF"
triggerall = NumHelper(1005) = 0
triggerall = NumHelper(1006) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1000
triggerall = command = "SpecialX"
triggerall = NumHelper(1005) = 0
triggerall = NumHelper(1006) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1010
triggerall = command = "SpecialY"
triggerall = NumHelper(1005) = 0
triggerall = NumHelper(1006) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1020
triggerall = command = "SpecialZ"
triggerall = NumHelper(1005) = 0
triggerall = NumHelper(1006) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1100
triggerall = stateno < 3000
triggerall = command = "SpecialA"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1110
triggerall = stateno < 3000
triggerall = command = "SpecialB"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1120
triggerall = stateno < 3000
triggerall = command = "SpecialC"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 1200
triggerall = stateno < 3000
triggerall = command = "Special3a"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 1210
triggerall = stateno < 3000
triggerall = command = "Special3b"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 1220
triggerall = stateno < 3000
triggerall = command = "Special3c"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Overhead Throw
[State -1, Throw]
type = ChangeState
value = 3100
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
value = IfElse(P2BodyDist X > 28,210,211)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3

;-----------------------------

[State -1, Z]
type = ChangeState
value = IfElse(P2BodyDist X > 28,220,221)
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

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

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

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 6300
triggerall = Var(59) = 1
triggerall = (StateType = S) && (StateType != L)
triggerall = P2life != 0
trigger1 = StateNo = [150,153]
trigger1 = P2BodyDist X >= 71
trigger1 = Time >= 5

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
