;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Commands Template V.5
;by Acey
;===========================================================================


;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper2"
command = ~D, DF, F, x+y

[Command]
name = "Hyper2"
command = ~D, DF, F, x+z

[Command]
name = "Hyper2"
command = ~D, DF, F, y+z

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper1"
command = ~D, DB, B, a+b

[Command]
name = "Hyper1"
command = ~D, DB, B, a+c

[Command]
name = "Hyper1"
command = ~D, DB, B, b+c

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper3"
command = ~D, DB, B, x+y

[Command]
name = "Hyper3"
command = ~D, DB, B, x+z

[Command]
name = "Hyper3"
command = ~D, DB, B, y+z

;-------------------------------------------------------------------------
;Special2

[Command]
name = "SpecialA"
command = ~D,DB,B,x

[Command]
name = "SpecialB"
command = ~D,DB,B,y

[Command]
name = "SpecialC"
command = ~D,DB,B,z


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
;Special3

[Command]
name = "Special3A"
command = ~D,DF,F, a

[Command]
name = "Special3B"
command = ~D,DF,F, b

[Command]
name = "Special3C"
command = ~D,DF,F, c

;-------------------------------------------------------------------------
;Special4

[Command]
name = "xxxx"
command = x,x,x
time =35

[Command]
name = "yyyy"
command = y,y,y
time =35

[Command]
name = "zzzz"
command = z,z,z
time =35

;-------------------------------------------------------------------------
;Special5

[Command]
name = "BF_a"
command = D,DB,B,a;~20$B, F, a

[Command]
name = "BF_b"
command = D,DB,B,b;~20$B, F, b

[Command]
name = "BF_c"
command = D,DB,B,c;~20$B, F, c

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
;airfollow

[Command]
name = "airfollow"
command = U

[Command]
name = "airfollow"
command = UF

[Command]
name = "airfollow" ;Required (do not remove)
command = /$U
time = 1

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


;AI Guarding
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
trigger2 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
trigger3 = (anim = 21)
trigger4 = (prevstateno > 5000) && (random < 200)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132

;Crouching Chain 1
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 440) && movecontact && (random < 500)
trigger2 = (stateno = 410) && movecontact && (random > 500)
value = 420

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 410) && movecontact
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 430) && movecontact
trigger2 = (stateno = 230) && movecontact
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 400) && movecontact
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 600)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 400)
value = 200

;End Crouching Chain 1

[State -1] ; Always launch
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movecontact
value = 7500

;Air Chain 1

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 640) && movecontact && (random = [0,500])
value = 650

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 640) && movecontact && (random = [501,999])
value = 620

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 600) && movecontact
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
trigger1 = (p2bodydist x <= 25) && (p2bodydist y <= 50) && (random <= 750)
value = 600

;End Air Chain 1

;-|-AI Attempt Hyper-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && (numproj = 0) && (random = [0,300])
value = 3000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,300])
value = 3100

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

[State -1, Dash Forward Air]
type = ChangeState
value = 101
triggerall = StateType = A
triggerall = (Ctrl) && (StateNo != 101)
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
triggerall = var(59) = 0
triggerall = command = "Hyper3"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 220
trigger4 = stateno = 250


;-----------------------------

[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "Hyper2"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "Hyper1"
triggerall = power >= 1000 
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Hyper2 Air]
type = ChangeState
value = 3300
triggerall = var(59) = 0
triggerall = command = "Hyper2"
triggerall = power >= 1000
trigger1 = Statetype =A && ctrl
trigger2 = (stateno = [600,650]) && movecontact

;-----------------------------

[State -1, Hyper1 Air]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = command = "Hyper1"
triggerall = power >= 1000
trigger1 = Statetype =A && ctrl
trigger2 = (StateType =A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600
trigger3 = stateno = 610
trigger3 = stateno = 620
trigger3 = stateno = 630
trigger3 = stateno = 640
trigger3 = stateno = 650

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "SpecialX"
triggerall = NumHelper(1000) = 0
triggerall = stateno != [1000,1020]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1010
triggerall = var(59) = 0
triggerall = command = "SpecialY"
triggerall = NumHelper(1000) = 0
triggerall = stateno != [1000,1020]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1020
triggerall = var(59) = 0
triggerall = command = "SpecialZ"
triggerall = NumHelper(1000) = 0
triggerall = stateno != [1000,1020]
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1030
triggerall = var(59) = 0
triggerall = command = "SpecialX"
triggerall = NumHelper(1000) = 0
trigger1 = Statetype = A && ctrl
trigger2 = (Stateno = [600,650]) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1040
triggerall = var(59) = 0
triggerall = command = "SpecialY"
triggerall = NumHelper(1000) = 0
trigger1 = Statetype = A && ctrl
trigger2 = (Stateno = [600,650]) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1050
triggerall = var(59) = 0
triggerall = command = "SpecialZ"
triggerall = NumHelper(1000) = 0
trigger1 = Statetype = A && ctrl
trigger2 = (Stateno = [600,650]) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "SpecialA"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "SpecialB"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special2]
type = ChangeState
value = 1120
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "SpecialC"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "Special3A"
triggerall = numprojid(1200)=0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 1210
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "Special3B"
triggerall = numprojid(1200)=0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special3]
type = ChangeState
value = 1220
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "Special3C"
triggerall = numprojid(1200)=0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special4]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "xxxx"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 =  stateno = 1300 && Movecontact = 0
trigger4 =  stateno = 1310 && Movecontact = 0
trigger5 =  stateno = 1320 && Movecontact = 0
trigger6 = stateno = 200
trigger7 = stateno = 210

;-----------------------------

[State -1, Special4]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "yyyy"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 =  stateno = 1300 && Movecontact = 0
trigger4 =  stateno = 1310 && Movecontact = 0
trigger5 =  stateno = 1320 && Movecontact = 0
trigger6 = stateno = 200
trigger7 = stateno = 210

;-----------------------------

[State -1, Special4]
type = ChangeState
value = 1320
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "zzzz"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 =  stateno = 1300 && Movecontact = 0
trigger4 =  stateno = 1310 && Movecontact = 0
trigger5 =  stateno = 1320 && Movecontact = 0
trigger6 = stateno = 200
trigger7 = stateno = 210

;-----------------------------

[State -1, Special4]
type = ChangeState
value = 1330
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "xxxx"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 =  stateno = 1330 && Movecontact = 0
trigger4 =  stateno = 1340 && Movecontact = 0
trigger5 =  stateno = 1350 && Movecontact = 0
trigger6 = stateno = 600
trigger7 = stateno = 610

;-----------------------------

[State -1, Special4]
type = ChangeState
value = 1340
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "yyyy"
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 =  stateno = 1330 && Movecontact = 0
trigger4 =  stateno = 1340 && Movecontact = 0
trigger5 =  stateno = 1350 && Movecontact = 0
trigger6 = stateno = 600
trigger7 = stateno = 610

;-----------------------------

[State -1, Special4]
type = ChangeState
value = 1350
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "zzzz"
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 =  stateno = 1330 && Movecontact = 0
trigger4 =  stateno = 1340 && Movecontact = 0
trigger5 =  stateno = 1350 && Movecontact = 0
trigger6 = stateno = 600
trigger7 = stateno = 610

;-----------------------------

[State -1, Special5]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "BF_a"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special5]
type = ChangeState
value = 1410
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "BF_b"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special5]
type = ChangeState
value = 1420
triggerall = var(59) = 0
triggerall = stateno < 3000
triggerall = command = "BF_c"
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger1 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

;-----------------------------
[State -1, X]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4

;-----------------------------
[State -1, Y]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) ;&& time > 2
trigger3 = (StateNo = 630) && (Movecontact) ;&& time > 2
trigger4 = stateno = 105 && time > 4

;-----------------------------
[State -1, Z]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) ;&& time > 2
trigger3 = (StateNo = 630) && (Movecontact) ;&& time > 2
trigger4 = (StateNo = 610) && (Movecontact) ;&& time > 2
trigger5 = (StateNo = 640) && (Movecontact) ;&& time > 2
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, B]
type = ChangeState
value = 640
triggerall = var(59) = 0
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
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, X agachado]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, Y agachado]
type = ChangeState
value = 410
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3

;-----------------------------

[State -1, Z]
type = ChangeState
value = IfElse(P2BodyDist X > 28,220,221)
triggerall = var(59) = 0
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
triggerall = var(59) = 0
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
triggerall = var(59) = 0
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
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = prevstateno = 721



;-----------------------------

[State -1, A]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)

;-----------------------------

[State -1, B]
type = ChangeState
value = IfElse(P2BodyDist X > 28,240,241)
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 410) && (Movecontact)
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
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = var(59) = 0
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = var(59) = 0
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = var(59) = 0
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = var(59) = 0
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = ChangeState
value = 832
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
