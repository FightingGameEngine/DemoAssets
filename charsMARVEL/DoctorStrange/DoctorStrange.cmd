;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Commands Template
;===========================================================================

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Hyper1

[Command]
name = "Hyper1"
command = ~D,DF,F,x+y
time = 20

[Command]
name = "Hyper1"
command = ~D,DF,F,x+z
time = 20

[Command]
name = "Hyper1"
command = ~D,DF,F,y+z
time = 20

;---------------------------------------------------------------------------
;Hyper2

[Command]
name = "Hyper2"
command = ~D,DB,B,x+y
time = 20

[Command]
name = "Hyper2"
command = ~D,DB,B,y+z
time = 20

[Command]
name = "Hyper2"
command = ~D,DB,B,x+z
time = 20

; spell commands
[Command]
name = "Cinnibus"
command = ~a,a,a
time = 30

[Command]
name = "Ikthalon"
command = ~b,b,b
time = 30

[Command]
name = "Morpheus"
command = ~c,c,c
time = 30

[Command]
name = "Watoomb"
command = ~x,x,x
time = 30

[Command]
name = "Oshur"
command = ~y,y,y
time = 30

[Command]
name = "Cyndriarr"
command = ~z,z,z
time = 30

;---------------------------------------------------------------------------
;Hyper3

[Command]
name = "Hyper3"
command =  ~D,DF,F,a+b
time = 20
[Command]
name = "Hyper3"
command =  ~D,DF,F,a+c
time = 20
[Command]
name = "Hyper3"
command =  ~D,DF,F,b+c
time = 20

;---------------------------------------------------------------------------
;Hyper4

[Command]
name = "Hyper4"
command = ~D,DB,B,a+b
time = 20
[Command]
name = "Hyper4"
command = ~D,DB,B,a+c
time = 20
[Command]
name = "Hyper4"
command = ~D,DB,B,b+c
time = 20

;===============================================================================
[Command]
name = "Cyttorak"
command = ~x,x,x,x,x
time = 40

[Command]
name = "Hoggoth"
command = ~y,y,y,y,y
time = 40

[Command]
name = "Seraphim"
command = ~z,z,z,z,z
time = 40

[Command]
name =  "Astral"
command = ~a,a,a,a,a
time = 40

[Command]
name = "Valtorr"
command = ~b,b,b,b,b
time = 40

[Command]
name =  "Ikonn"
command = ~c,c,c,c,c
time = 40

;-------------------------------------------------------------------------
;Specials
;-------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
[Command]
name =  "Flames"
command = ~F,D,DF,x

[Command]
name =  "Daggers"
command = ~F,D,DF,y

[Command]
name =  "Bolts"
command = ~F,D,DF,z

[Command]
name = "TelePortA"
command = ~B,D,DB,a

[Command]
name = "TelePortB"
command = ~B,D,DB,b

[Command]
name = "TelePortC"
command = ~B,D,DB,c

;-------------------------------------------------------------------------

[Command]
name = "Mystic SwordA"
command = ~F,D,DF,a
time = 20

[Command]
name = "Mystic SwordB"
command = ~F,D,DF,b
time = 20

[Command]
name = "Mystic SwordC"
command = ~F,D,DF,c
time = 20
;-------------------------------------------------------------------------

[Command]
name =  "MoonBeam"
command = ~D,DF,F,x
time = 20

[Command]
name = "MoonBeam"
command = ~D,DF,F,y
time = 20

[Command]
name = "MoonBeam"
command = ~D,DF,F,z
time = 20

;Eye Of Agamotto
[Command]
name = "EyeOfAgamottoX"
command = ~D,DB,B,x
time = 20

[Command]
name = "EyeOfAgamottoY"
command = ~D,DB,B,y
time = 20

[Command]
name = "EyeOfAgamottoZ"
command = ~D,DB,B,z
time = 20

[Command]
name = "IllusionA"
command = ~D,DF,F,a
time = 10
[Command]
name = "IllusionA"
command = ~D,DF,F,b
time = 10
[Command]
name = "IllusionA"
command = ~D,DF,F,c
time = 10

[Command]
name = "IllusionB"
command = ~D,DB,B,a
time = 10
[Command]
name = "IllusionB"
command = ~D,DB,B,b
time = 10
[Command]
name = "IllusionB"
command = ~D,DB,B,c
time = 10



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
time = 20

[Command]
name = "SJ"
command = D,$U
time = 20

;-|-AI-|--------------------------------------------------------------------

[Statedef -1]

[State -1, AI Activation]
type = varset
triggerall = AILevel > 1
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= (ifelse(AILevel =1,40,(AILevel-4)*100))
v = 59
value = 1

;[State -1, AI Deactivation]
;type = varset
;triggerall = AIlevel < 8
;triggerall = var(59) = 1
;trigger1 = Random > ((AILevel-4)*100)
;trigger2 = roundstate != 2
;v = 59
;value = 0

;--|-AI Defense-|-----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 999)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 999)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 999)
value = 132

;-|-AI Combo Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 220

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 250

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 7) && (random <= 950)
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 950)
trigger1 = prevstateno != 450
trigger1 = stateno != 450
value = 450

[State -1] ;Superjump from launcher
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 420) && (movehit = 1); && (random <= 950)
value = 7000

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
value = 620

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 640

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 650

[State -1];Followup jump attack with crouch hard kick
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H) ;opponent has been hit
trigger1 = (p2bodydist X <= 25) ;close to opponent
trigger1 = Prevstateno = 950 ;falling from attack (which means the previous hit must have been an air attack)
trigger1 = (random <= 250) ;This will happen 75% of the time that the other triggers are true
value = 450

;-|-AI Special Attempt-|----------------------------------------------

[State -1, Mystic Sword]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,350]) && (AILevel > 1)
trigger1 = (p2bodydist x < 30) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y <-30 && p2bodydist y <70
value = 1100

[State -1, Eye Of Agamotto]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
triggerall = NumProjID(1301) = 0
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(1321) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,150]) && (AILevel > 1)
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1200

[State -1, Eye Of Agamotto]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
triggerall = NumProjID(1301) = 0
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(1321) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,150]) && (AILevel > 1)
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1210

[State -1, Eye Of Agamotto]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
triggerall = NumProjID(1301) = 0
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(1321) = 0
triggerall = (Ctrl) && (Statetype != A) && (random = [0,150]) && (AILevel > 1)
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1220

[State -1, Moon Beam]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,350]) && (AILevel > 1)
trigger1 = (p2bodydist x < 30) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y <-30 && p2bodydist y <70
value = 1000

[State -1, Moon Beam]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,350]) && (AILevel > 1)
trigger1 = (p2bodydist x < 30) && (prevstateno != 5120) && (statetype = A)
trigger1 = p2bodydist y <-30 && p2bodydist y <70
value = 1040


[State -1, Flames of the Faultine]
type = Changestate
triggerall = (roundstate = 2) && (var(59) != 0) && (AILevel > 1)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,750])
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
triggerall = NumProjID(1301) = 0
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(1321) = 0
trigger1 = (p2bodydist x > 80) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-80 && p2bodydist y <70
value = 1300

[State -1, Daggers of Denark]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (AILevel > 1)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,550])
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
triggerall = NumProjID(1301) = 0
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(1321) = 0
trigger1 = (p2bodydist x > 80) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-80 && p2bodydist y <70
value = 1310

[State -1, Bolts of Balthakk]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (AILevel > 1)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,750])
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
triggerall = NumProjID(1301) = 0
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(1321) = 0
trigger1 = (p2bodydist x > 80) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-80 && p2bodydist y <70
value = 1320

[State -1, Illusion]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (AILevel > 1)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,750])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1400

[State -1, Illusion]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (AILevel > 1)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,750])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1403

[State -1, TelePort]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (AILevel > 1)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,750])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1500

[State -1, TelePort]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (AILevel > 1)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,350])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1510

[State -1, TelePort]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (AILevel > 1)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,350])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1520

[State -1]; Dash After Light
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [300,400])
triggerall = stateno != 100
triggerall = prevstateno != 100
triggerall = numprojid (1000) = 1
trigger1 = (p2bodydist x >= 130) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 100

[State -1];Throw
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x < 10) && (prevstateno != 5120) && (p2movetype != H)
value = 800

;-|-AI Hyper Attempt-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Ctrl && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 3000 ;Add to avoid chaining hypes
triggerall = !numexplod(3304)
trigger1 = (p2bodydist x <= 60) &&(prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [0,300])
trigger1 = P2stateno < 3000 && P2statetype = S
value = 3000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Ctrl && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 3000 ;Add to avoid chaining hypes
triggerall = numproj = 0
triggerall = numexplod(4068)!=1
triggerall = !numexplod(3301)
triggerall = !numexplod(3304)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [0,900])
trigger1 = P2stateno < 3000 && P2statetype = S
value = 3099

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Ctrl && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 3000 ;Add to avoid chaining hypes
triggerall = stateno != [10,12]
triggerall = numproj = 0
triggerall = !numexplod(3304)
trigger1 = (p2bodydist x >= 30) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [900,900])
trigger1 = P2stateno < 3000 && P2statetype = S
value = 3200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (AILevel > 1)
triggerall = Ctrl && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 3000 ;Add to avoid chaining hypes
triggerall = stateno != [10,12]
triggerall = numproj = 0
triggerall = Var(25) !=1
triggerall = !numexplod(3304)
trigger1 = (p2bodydist x >= 30) && (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (random = [900,900])
trigger1 = P2stateno < 3000 && P2statetype = S
value = 3300

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
trigger2 =  (StateNo = 220) && (Movecontact)

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"
;-----------------------------

[State -1, Hyper4]
type = ChangeState
value = 3300
triggerall = var(50) = 0
triggerall = !var(59)
triggerall = command = "Hyper4"
triggerall = power >= 1000
triggerall = Var(25) !=1
triggerall = Var(10) !=1
triggerall = !numexplod(3304)
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Hyper3]
type = ChangeState
value = 3200
triggerall = var(50) = 0
triggerall = command = "Hyper3"
triggerall = power >= 1000
triggerall = !numexplod(3304)
triggerall = stateno != [3000,3999]
trigger1 = Statetype != A && ctrl

;-----------------------------

[State -1, Hyper2]
type = ChangeState
value = 3099
triggerall = var(50) = 0
triggerall = command = "Hyper2"
triggerall = power >= 1000 
triggerall = stateno != [3000,3999]
triggerall = numexplod(4068)!=1
triggerall = !numexplod(3301)
triggerall = !numexplod(3304)
;triggerall = NumHelper(3100) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (HitdefAttr = SAC, NA) && (MoveContact)

;-----------------------------

[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = var(50) = 0
triggerall = command = "Hyper1"
triggerall = power >= 1000 
triggerall = stateno != [3000,3999]
triggerall = !numexplod(3304)
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------
[State -1, TelePort]
type = ChangeState
triggerall = command = "TelePortA"
trigger1 = statetype = S
trigger1 = ctrl
value = 1500

[State -1, TelePort]
type = ChangeState
triggerall = command = "TelePortB"
trigger1 = statetype = S
trigger1 = ctrl
value = 1510

[State -1, TelePort]
type = ChangeState
triggerall = command = "TelePortC"
trigger1 = statetype = S
trigger1 = ctrl
value = 1520

[State -1, Flames of the Faultine]
type = ChangeState
triggerall = command = "Flames"
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
triggerall = NumProjID(1301) = 0
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(1321) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1300

[State -1,Daggers of Denark]
type = ChangeState
triggerall = command = "Daggers"
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
triggerall = NumProjID(1301) = 0
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(1321) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1310

[State -1,Bolts of Balthakk]
type = ChangeState
triggerall = command = "Bolts"
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
triggerall = NumProjID(1301) = 0
triggerall = NumProjID(1311) = 0
triggerall = NumProjID(1321) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1320

[State -1, Special1]
type = ChangeState
value = 1200
triggerall = var(50) = 0
triggerall = command = "EyeOfAgamottoX"
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1210
triggerall = var(50) = 0
triggerall = command = "EyeOfAgamottoY"
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1, Special1]
type = ChangeState
value = 1220
triggerall = var(50) = 0
triggerall = command = "EyeOfAgamottoZ"
triggerall = NumProjID(1200) = 0
triggerall = NumProjID(1210) = 0
triggerall = NumProjID(1220) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------

[State -1,Green Beam]
type = ChangeState
triggerall = command = "MoonBeam"
triggerall = NumProjID(1000) = 0
triggerall = NumProjID(1010) = 0
triggerall = NumProjID(1020) = 0
triggerall = NumHelper(1030) = 0
triggerall = NumHelper(1040) = 0
triggerall = NumHelper(1050) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1000

[State -1,Green Beam]
type = ChangeState
triggerall = command = "MoonBeam"
triggerall = NumProjID(1000) = 0
triggerall = NumProjID(1010) = 0
triggerall = NumProjID(1020) = 0
triggerall = NumHelper(1030) = 0
triggerall = NumHelper(1040) = 0
triggerall = NumHelper(1050) = 0
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1040

[State -1, Special1]
type = ChangeState
triggerall = command = "Mystic SwordA"
triggerall = NumProjID(1000) = 0
triggerall = NumProjID(1010) = 0
triggerall = NumProjID(1020) = 0
triggerall = NumHelper(1030) = 0
triggerall = NumHelper(1040) = 0
triggerall = NumHelper(1050) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1100

[State -1, Special1]
type = ChangeState
triggerall = command = "Mystic SwordB"
triggerall = NumProjID(1000) = 0
triggerall = NumProjID(1010) = 0
triggerall = NumProjID(1020) = 0
triggerall = NumHelper(1030) = 0
triggerall = NumHelper(1040) = 0
triggerall = NumHelper(1050) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1110

[State -1, Special1]
type = ChangeState
triggerall = command = "Mystic SwordC"
triggerall = NumProjID(1000) = 0
triggerall = NumProjID(1010) = 0
triggerall = NumProjID(1020) = 0
triggerall = NumHelper(1030) = 0
triggerall = NumHelper(1040) = 0
triggerall = NumHelper(1050) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1120


[State -1, Illusion Forwards]
type = ChangeState
triggerall = command = "IllusionA"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1400

[State -1, Illusion Backwards]
type = ChangeState
triggerall = command = "IllusionB"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1403


[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(50) = 0
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
value = 200
triggerall = var(50) = 0
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------

[State -1, Y]
type = ChangeState
value = 210
triggerall = var(50) = 0
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3

;-----------------------------

[State -1, Z]
type = ChangeState
value = 220
triggerall = var(50) = 0
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3
trigger4 = (StateNo = 210) && (Movecontact) && time > 3
trigger6 = (StateNo = 240) && (Movecontact) && time > 3

;-----------------------------

[State -1, A]
type = ChangeState
value = 230
triggerall = var(50) = 0
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)

;-----------------------------

[State -1, B]
type = ChangeState
value = 240
triggerall = var(50) = 0
triggerall = var(50) = 0
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210)

;-----------------------------

[State -1, C]
type = ChangeState
value = 250
triggerall = var(50) = 0
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 220) && (Movecontact)

;-----------------------------
[State -1, X agachado]
type = ChangeState
value = 400
triggerall = var(50) = 0
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------

[State -1, Y agachado]
type = ChangeState
value = 410
triggerall = var(50) = 0
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)

;-----------------------------

[State -1, Z agachado]
type = ChangeState
value = 420
triggerall = var(50) = 0
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------

[State -1, A agachado]
type = ChangeState
value = 430
triggerall = var(50) = 0
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (Stateno = 230) && (Movecontact)
trigger4 = (Stateno = 400) && (Movecontact)

;-----------------------------

[State -1, B agachado]
type = ChangeState
value = 440
triggerall = var(50) = 0
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 210) && (Movecontact)
trigger3 = (StateNo = 410) && (Movecontact)
trigger4 = (StateNo = 430) && (Movecontact)

;-----------------------------

[State -1, C agachado]
type = ChangeState
value = 450
triggerall = var(50) = 0
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger8 = (StateNo = 250) && (Movecontact)
trigger10 = (StateNo = 420) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

;-----------------------------
[State -1, X]
type = ChangeState
value = 600
triggerall = var(50) = 0
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4

;-----------------------------
[State -1, Y]
type = ChangeState
value = 610
triggerall = var(50) = 0
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = stateno = 105 && time > 4

;-----------------------------
[State -1, Z]
type = ChangeState
value = 620
triggerall = var(50) = 0
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = (StateNo = 610) && (Movecontact) && time > 2
trigger5 = (StateNo = 640) && (Movecontact) && time > 2
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, A]
type = ChangeState
value = 630
triggerall = var(50) = 0
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, B]
type = ChangeState
value = 640
triggerall = var(50) = 0
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
triggerall = var(50) = 0
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = (StateNo = 640) && (Movecontact)
trigger7 = stateno = 105 && time > 4

;-----------------------------
;-----------------------------
[State -1, X]
type = ChangeState
value = 2010
triggerall = var(50) = 0
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4

;-----------------------------
[State -1, Y]
type = ChangeState
value = 2011
triggerall = var(50) = 0
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = stateno = 105 && time > 4

;-----------------------------
[State -1, Z]
type = ChangeState
value = 2012
triggerall = var(50) = 0
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = (StateNo = 610) && (Movecontact) && time > 2
trigger5 = (StateNo = 640) && (Movecontact) && time > 2
trigger6 = stateno = 105 && time > 4

;-----------------------------
[State -1, A]
type = ChangeState
value = 2013
triggerall = var(50) = 0
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4

;-----------------------------
[State -1, B]
type = ChangeState
value = 2014
triggerall = var(50) = 0
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
value = 2015
triggerall = var(50) = 0
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = (StateNo = 640) && (Movecontact)
trigger7 = stateno = 105 && time > 4

;----------------------------------------

[State -1, s]
type = ChangeState
value = 195
triggerall = var(50) = 0
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = var(50) = 0
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = var(50) = 0
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit && time >= 10
trigger3 = (stateno = [1200,1220]) && movehit

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = var(50) = 0
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = var(50) = 0
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = var(50) = 0
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
trigger1 = random <= 15
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = ChangeState
value = 832
triggerall = var(50) = 0
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
triggerall = var(50) = 0
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1
