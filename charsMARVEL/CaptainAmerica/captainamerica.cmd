;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Commands Template V.5
;by Acey
;===========================================================================

;---------------------------------------------------------------------------
;Commands

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


;---------------------------------------------------------------------------
;Hypers

[Command]
name = "Hyper01"
command = ~D, DF, F, x+y

[Command]
name = "Hyper01"
command = ~D, DF, F, y+z

[Command]
name = "Hyper01"
command = ~D, DF, F, x+z

[Command]
name = "Hyper01"
command = ~D, DF, F, x+y+z

[Command]
name = "Hyper02"
command = ~D, DB, B, a+b

[Command]
name = "Hyper02"
command = ~D, DB, B, b+c

[Command]
name = "Hyper02"
command = ~D, DB, B, a+c

[Command]
name = "Hyper02"
command = ~D, DB, B, a+b+c

[Command]
name = "Hyper03"
command = ~D, DB, B, x+y

[Command]
name = "Hyper03"
command = ~D, DB, B, y+z

[Command]
name = "Hyper03"
command = ~D, DB, B, x+z

[Command]
name = "Hyper03"
command = ~D, DB, B, x+y+z

[Command]
name = "Hyper04"
command = ~D, DF, F, a+b

[Command]
name = "Hyper04"
command = ~D, DF, F, b+c

[Command]
name = "Hyper04"
command = ~D, DF, F, a+c

[Command]
name = "Hyper04"
command = ~D, DF, F, a+b+c


;---------------------------------------------------------------------------
;Specials

[Command]
name = "DPBX"
command = ~B, D, DB, x

[Command]
name = "DPBY"
command = ~B, D, DB, y

[Command]
name = "DPBZ"
command = ~B, D, DB, z

[Command]
name = "DPX"
command = ~F, D, DF, x

[Command]
name = "DPY"
command = ~F, D, DF, y

[Command]
name = "DPZ"
command = ~F, D, DF, z

[Command]
name = "SummersaultX"
command = ~D, DB, B, x

[Command]
name = "SummersaultY"
command = ~D, DB, B, y

[Command]
name = "SummersaultZ"
command = ~D, DB, B, z

[Command]
name = "SpecialX"
command = ~D, DF, F, x

[Command]
name = "SpecialY"
command = ~D, DF, F, y

[Command]
name = "SpecialZ"
command = ~D, DF, F, z

[Command]
name = "SpecialA"
command = ~D, DB, B, a

[Command]
name = "SpecialB"
command = ~D, DB, B, b

[Command]
name = "SpecialC"
command = ~D, DB, B, c

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "Superjump"
command = ~D, U

[Command]
name = "Superjump"
command = $D, $U

[Command]
name = "Superjump"
command = D,$U


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
name = "start"
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
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

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

;---------------------------------

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

[Statedef -1]

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

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

;--|AI|-----------------------------------------------------------

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
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 100+300*(BackEdgeDist < 30)
value = 6300

[State -1, AI Guard Push (Crouching)]
type = null;ChangeState
triggerall = Var(59)
triggerall = AILevel >= 4
triggerall = p2bodydist x =[0,40]
triggerall = StateType = C
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)
value = 6310

[State -1, AI Guard Push (Air)]
type = null;ChangeState
triggerall = Var(59)
triggerall = AILevel >= 6
triggerall = p2bodydist x =[0,40]
triggerall = StateType = A
trigger1 = StateNo = [154,155]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)
value = 6320

[State -1, AI Recovery Roll Forward after KnockDown]
type = null;ChangeState
triggerall = Var(59)
triggerall = AILevel >= 3
triggerall = anim = 5120
trigger1 = p2bodydist x <= 75
trigger1 = Random < 100+500*(BackEdgeDist < 30)
trigger1 = Time >= 1
value = 932

[State -1, AI Recovery Roll Backwards after KnockDown]
type = null;ChangeState
triggerall = Var(59)
triggerall = AILevel >= 3
triggerall = anim = 5120
trigger1 = p2bodydist x > 75
trigger1 = Random < 100+500*(BackEdgeDist < 30)
trigger1 = Time >= 1
value = 955

[State -1, Standing Chain End 3 (Hyper 1)]
type = ChangeState
triggerall = stateno < 3000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
triggerall = statetype != A
triggerall = helper(1000),stateno != 23300
trigger1 = (stateno = [240,245]) && movehit && random = [0,100]
value = 3000

[State -1, Standing Chain End 3 (Hyper 2)]
type = ChangeState
triggerall = stateno < 3000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
triggerall = statetype != A
triggerall = helper(1000),stateno != 23300
triggerall = numhelper(3120) = 0 && numhelper(3110) = 0
trigger1 = (stateno = [240,245]) && movecontact && random = [101,200]
value = 3100

[State -1, Standing Chain End 3 (Hyper 2)]
type = ChangeState
triggerall = stateno < 3000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
triggerall = statetype != A
triggerall = helper(1000),stateno != 23300
triggerall = numhelper(3120) = 0 && numhelper(3110) = 0
trigger1 = (stateno = 240) && movecontact && random = [201,300]
value = 3200

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 240) && movecontact && random = [501,550]
value = 250

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 240) && movecontact && random = [551,600]
value = ifelse(var(40) = 0,220,225)

;Start Standing Chain Combo
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 210) && movecontact
value = 240

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 230) && movecontact
value = 210

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 130) && (random < 500) && (p2statetype != A)
trigger2 = (prevstateno = 1300);from summersault
value = 200
;End Standing Chain

;Start Crouching Chain
[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 410) && movecontact
trigger2 = (stateno = 240) && movecontact
trigger3 = (AILevel >= 6) && (var(13) = 1)
trigger3 = (stateno = 440) && (p2bodydist x <= 59)
value = ifelse(var(40)=0,420,425)

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 400) && movecontact
value = ifelse(var(40)=0,415,410)

[State -1, Combo start for Med/Hard AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = Ctrl && statetype != A
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 90) && (random < 500) && (p2statetype != A)
trigger2 = (prevstateno = 1300) ;from summersault
value = 400
;End Crouching Chain

[State -1,  Always superjump on launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (random <= 900)
trigger1 = (stateno = [420,425]) && movehit
value = 7500

;Start Air Chain
[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 640) && movecontact && (random = [0,500])
value = 650

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 640) && movecontact && (random = [501,999])
value = ifelse(var(40)=0,620,625)

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = [610,615]) && movecontact
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 600) && movecontact
value = ifelse(var(40)=0,615,610)

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 600
;End Air Chain

[State -1, Followup jump attack with crouch hard kick]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H) ;opponent has been hit
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25) ;close to opponent
trigger1 = Prevstateno = 50 ;falling from attack (which means the previous hit must have been an air attack)
trigger1 = (random <= 750) ;This will happen 75% of the time that the other triggers are true
value = 450

[State -1, Shield Call]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = !var(40) ;not holding shield
triggerall = var(16)=0 ;shield type
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (random >=(500)) && (random <(AILevel*8) + 500) ;[500,564]
trigger1 = stateno = 0
value = 1001

[State -1, Shield Throw X]
type = ChangeState
triggerall = fvar(29) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = var(40)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (random >=(500)) && (random <(AILevel*8) + 500) ;[500,564]
triggerall = stateno < 1000
trigger1 = (p2bodydist x >= 150) &&(prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000

[State -1, OTG]
type = ChangeState
triggerall = fvar(29) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = var(40)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype != A) && (random >=(500)) && (random <(AILevel*10) + 520) ;[500,600]
triggerall = stateno < 1000
trigger1 = p2stateno = [5110,5120]
value = 1000

[State -1, Shield Throw Y]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 6
triggerall = var(40)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (random >=(600)) && (random <(AILevel*8) + 600) ;[600,664]
triggerall = stateno < 1000
trigger1 = (p2bodydist x >= 150) &&(prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1010

[State -1, Shield Throw Z]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = var(40)
triggerall = p2stateno != 7600
triggerall = p2statetype = A
triggerall = (Ctrl) && (Statetype = S) && (random >=(500)) && (random <(AILevel*8) + 600)
triggerall = stateno < 1000
trigger1 = (p2bodydist x >= 150) &&(prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1020

[State -1, Stars&Stripes X]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (random >=(500)) && (random <(AILevel*8) + 500);[500,564]
triggerall = stateno < 1000 && prevstateno != 1600
trigger1 = (p2bodydist x <= 100) &&(prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1200

[State -1, Stars&Stripes Y]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (random >=(600)) && (random <(AILevel*8) + 600);[600,664]
triggerall = stateno < 1000 && prevstateno != 1600
trigger1 = (p2bodydist x <= 120) &&(prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1210

[State -1, Stars&Stripes Z]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (random >=(700)) && (random <(AILevel*8) + 700);[700,764]
triggerall = stateno < 1000 && prevstateno != 1600
trigger1 = (p2bodydist x <= 150) &&(prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1220

[State -1, Run]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = (Statetype != A) && (random >=(400)) && (random <(AILevel*9) + 400);[400,472]
triggerall = prevstateno != 101 && stateno != 101
trigger1 = p2dist x >= 200 && ctrl
value = 101

[State -1, Charging Star A]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = (Statetype = S) && (random >=(500)) && (random <(AILevel*8) + 500);[500,564]
triggerall = stateno < 1000 && (prevstateno != [1400,1420])
trigger1 =  ctrl && (prevstateno != 5120) && (statetype != A)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1400

[State -1, Charging Star B]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = (Statetype = S) && (random >=(600)) && (random <(AILevel*8) + 600);[600,764]
triggerall = stateno < 1000 &&  (prevstateno != [1400,1420])
trigger1 = ctrl && (prevstateno != 5120) && (statetype != A)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1410

[State -1, Charging Star C]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = var(15) < 1
triggerall = stateno < 1000 && (prevstateno != [1400,1420])
triggerall = (Statetype = S) && (random >=(700)) && (random <(AILevel*8) + 700);[700,764]
trigger1 = ctrl && (prevstateno != 5120) && (statetype != A)
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
value = 1420

[State -1, Air Shiled Throw X]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 2
triggerall = stateno < 1500
triggerall = var(40)
triggerall = (Ctrl) && (Statetype = A) && (numprojid (1310) = 0)
triggerall = (random <= AILevel*10)
trigger1 = (p2bodydist x >= 80) && (prevstateno != 5120) && (p2statetype = S) && (numproj = 0)
trigger1 = power >= 300
value = 1100

[State -1, Air Shiled Throw Y]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = var(40)
triggerall = (Ctrl) && (Statetype = A) && (numprojid (1310) = 0)
triggerall = (random >=100) && (random <= AILevel*11 + 100)
trigger1 = (p2bodydist x >= 80) && (prevstateno != 5120) && (numproj = 0)
trigger1 = p2statetype = A && (p2dist y > 0)
trigger1 = power >= 500
value = 1110

[State -1, Air Shiled Throw Z]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = var(40)
triggerall = (Ctrl) && (Statetype = A) && (numprojid (1310) = 0)
triggerall = (random >=100) && (random <= AILevel*11 + 200)
trigger1 = (prevstateno != 5120) && (numproj = 0)
trigger1 = p2statetype = A && (p2dist y < 0)
trigger1 = power >= 500
value = 1120

[State -1, Final Justice]
type = ChangeState
triggerall = stateno < 3000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >=4
triggerall = p2stateno != 7600
triggerall = statetype != A
triggerall = helper(1000),stateno != 23300
triggerall = stateno < 1500
triggerall = power >= 2000
trigger1 = (Ctrl) && (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0)
trigger1 = random = [100,199]
trigger2 = (HitdefAttr = SC, NA) && (Movehit) && (random = [100,199])
trigger3 =  (stateno = 1400) && (Movehit)
value = 3000

[State -1, Hyper Stars n Stripes]
type = ChangeState
triggerall = stateno < 3000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >=4
triggerall = p2stateno != 7600
triggerall = statetype != A
triggerall = helper(1000),stateno != 23300
triggerall = stateno < 1500
triggerall = numhelper(3120) = 0 && numhelper(3110) = 0
triggerall = power >= 1500
trigger1 = (Ctrl) && (prevstateno != 5120) && (numproj = 0)
trigger1 = random = [200,299]
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && (random = [200,299])
value = 3100

[State -1, Hyper Charging Star]
type = ChangeState
triggerall = stateno < 3000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >=4
triggerall = p2stateno != 7600
triggerall = statetype != A
triggerall = helper(1000),stateno != 23300
triggerall = stateno < 1500
triggerall = prevstateno != 50 ;Stop performing on landing from air combo
triggerall = power >= 1500
trigger1 = (Ctrl) && (prevstateno != 5120) && (numproj = 0)
trigger1 = random = [300,399]
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && (random = [300,399])
value = 3200

[State -1, Hyper Shield Slash]
type = ChangeState
triggerall = stateno < 3000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >=4
triggerall = p2stateno != 7600
triggerall = statetype != A
triggerall = helper(1000),stateno != 23300
triggerall = stateno < 1500
triggerall = power >= 1500
triggerall = prevstateno != 50 ;Stop performing on landing from air combo
trigger1 = (Ctrl) && (prevstateno != 5120) && (numproj = 0)
trigger1 = random = [400,499]
value = 3300

;-------------------------------------------------------------------
;Player Commands
;-------------------------------------------------------------------


;-----------------------------

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType != A
triggerall = Ctrl && (StateNo != 100)
triggerall = stateno != [5000,5300]
trigger1 = Command = "FF"

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType != A
triggerall = Ctrl && (StateNo != 100)
triggerall = stateno != [5000,5300]
trigger1 = Command = "BB"

;---------------------------------------------------------------------------
;Final Justice

[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = stateno != [3000,4999]
triggerall = !var(59)
triggerall = command = "Hyper01"
triggerall = power >= 1000
triggerall = helper(1000),stateno != 23300
triggerall = statetype != A
trigger1 =  ctrl
trigger2 = (HitdefAttr = SCA, NA,SA) && MoveContact
trigger3 = (stateno = [1400,1420]) && MoveContact
trigger4 = (stateno = [1000,1120]) && time >= 15
pausetime = 9999

;---------------------------------------------------------------------------
;Hyper - Stars N' Stripes

[State -1, Hyper2]
type = ChangeState
value = 3100
triggerall = stateno != [3000,4999]
triggerall = !var(59)
triggerall = command = "Hyper03"
triggerall = power >= 1000
triggerall = helper(1000),stateno != 23300
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA,SA) && MoveContact
trigger3 = (stateno = [1400,1420]) && MoveContact
trigger4 = (stateno = [1000,1120]) && time >= 15

;---------------------------------------------------------------------------
;Hyper - Charging Star

[State -1, Hyper3]
type = ChangeState
value = 3200
triggerall = stateno != [3000,4999]
triggerall = !var(59)
triggerall = command = "Hyper02"
triggerall = power >= 1000
triggerall = helper(1000),stateno != 23300
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA,SA) && MoveContact
trigger3 = (stateno = [1400,1420]) && MoveContact
trigger4 = (stateno = [1000,1120]) && time >= 15

;---------------------------------------------------------------------------
;Hyper - Shield Slash

[State -1, Hyper3]
type = ChangeState
value = 3300
triggerall = stateno != [3000,4999]
triggerall = var(16) = 1
triggerall = var(40) = 1
triggerall = !var(59)
triggerall = command = "Hyper04"
triggerall = power >= 1000
triggerall = helper(1000),stateno != 23300
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA,SA) && MoveContact
trigger3 = (stateno = [1400,1420]) && MoveContact

;---------------------------------------------------------------------------

[State -1, Shield Block]
type = null;ChangeState
value = 1500
triggerall = !var(59)
triggerall = (command = "DPBX") || (command = "DPBY") || (command = "DPBZ")
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Summersault X]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = command = "SummersaultX"
triggerall = stateno != 1300
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Summersault Y]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = command = "SummersaultY"
triggerall = stateno != 1300
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Summersault Z]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = command = "SummersaultZ"
triggerall = stateno != 1300
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Stars N' Stripes X]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = command = "DPX"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Stars N' Stripes Y]
type = ChangeState
value = 1210
triggerall = !var(59)
triggerall = command = "DPY"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Stars N' Stripes Z]
type = ChangeState
value = 1220
triggerall = !var(59)
triggerall = command = "DPZ"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, SpecialX]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "SpecialX"
triggerall = Var(40) = 1
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, SpecialY]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "SpecialY"
triggerall = Var(40) = 1
triggerall = Var(40) != 12
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, SpecialZ]
type = ChangeState
value = 1020
triggerall = !var(59)
triggerall = command = "SpecialZ"
triggerall = Var(40) = 1
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Special Call]
type = ChangeState
value = 1001
triggerall = !var(59)
triggerall = var(16) = 0
triggerall = command = "SpecialX" || command = "SpecialY" || command = "SpecialZ"
triggerall = Var(40) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Air SpecialX]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = command = "SpecialX"
triggerall = Var(40) = 1
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = A, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Air SpecialY]
type = ChangeState
value = 1110
triggerall = !var(59)
triggerall = command = "SpecialY"
triggerall = Var(40) = 1
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = A, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Air SpecialZ]
type = ChangeState
value = 1120
triggerall = !var(59)
triggerall = command = "SpecialZ"
triggerall = Var(40) = 1
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = A, NA) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Charging Star A]
type = ChangeState
value = 1400
triggerall = !var(59)
triggerall = command = "SpecialA"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = (stateno = [210,450]) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Charging Star B]
type = ChangeState
value = 1410
triggerall = !var(59)
triggerall = command = "SpecialB"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = (stateno = [210,450]) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Charging Star C]
type = ChangeState
value = 1420
triggerall = !var(59)
triggerall = command = "SpecialC"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = (stateno = [210,450]) && (MoveContact)

;---------------------------------------------------------------------------

[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = !var(59)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Throw P]
type = ChangeState
value = 800
triggerall = (command = "z") ;|| (command = "y")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = (P2StateType = S) || (P2StateType = C)
triggerall = P2MoveType != H
trigger1 = Command = "holdfwd"
trigger1 = P2BodyDist X < 10
;trigger2 = Command = "holdback"
;trigger2 = P2BodyDist X < 15

;---------------------------------------------------------------------------

[State -1, Throw K]
type = ChangeState
value = 820
triggerall = (command = "z"); || (command = "b")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = (P2StateType = S) || (P2StateType = C)
triggerall = P2MoveType != H
trigger1 = Command = "holdback"
trigger1 = P2BodyDist X < 15
;trigger2 = Command = "holdforward"
;trigger2 = P2BodyDist X < 10

;---------------------------------------------------------------------------

[State -1, Air Throw P]
type = ChangeState
value = 850
triggerall = (command = "z") || (command = "y")
triggerall = statetype = A
triggerall = ctrl
triggerall = (P2StateType = A) && (P2MoveType != H)
trigger1 = Command = "holdfwd"
trigger1 = (P2BodyDist X < 20) && (P2BodyDist Y = [-40,30])
trigger2 = Command = "holdback"
trigger2 = (P2BodyDist X < 25) && (P2BodyDist Y = [-40,30])

;---------------------------------------------------------------------------

[State -1, X]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno != 200
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 100
trigger3 = stateno = 105

;---------------------------------------------------------------------------

[State -1, Y]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 100
trigger7 = stateno = 105

;---------------------------------------------------------------------------

[State -1, Z]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = Var(40) != 1
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 415 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact
trigger12 = stateno = 100
trigger13 = stateno = 105

[State -1, Z]
type = ChangeState
value = 225
triggerall = !var(59)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = Var(40) = 1
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 415 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact
trigger12 = stateno = 100
trigger13 = stateno = 105

;---------------------------------------------------------------------------

[State -1, A]
type = ChangeState
value = 230
triggerall = !var(59)
triggerall = command = "a"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 100
trigger3 = stateno = 105
trigger4 = stateno = 200 && movecontact

;---------------------------------------------------------------------------

[State -1, B]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 100
trigger7 = stateno = 105


;---------------------------------------------------------------------------

[State -1, C]
type = ChangeState
value = 250
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 245 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 415 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10 = stateno = 100
trigger11 = stateno = 105

;---------------------------------------------------------------------------

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = command = "Taunt"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, X]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = (StateType = c) && (Ctrl)

;---------------------------------------------------------------------------

[State -1, Y]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = Var(40) = 1
trigger1 = (StateType = c) && (Ctrl)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------

[State -1, Z]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = Var(40) != 1
trigger1 = (StateType = c) && (Ctrl)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 415 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact

;---------------------------------------------------------------------------

[State -1, Z]
type = ChangeState
value = 425
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = Var(40) = 1
trigger1 = (StateType = c) && (Ctrl)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 415 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact

;---------------------------------------------------------------------------

[State -1, Y]
type = ChangeState
value = 415
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = Var(40) != 1
trigger1 = (StateType = c) && (Ctrl)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------

[State -1, A]
type = ChangeState
value = 430
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = (StateType = c) && (Ctrl)
trigger2 = stateno = 400 && movecontact

;---------------------------------------------------------------------------

[State -1, B]
type = ChangeState
value = 440
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = (StateType = c) && (Ctrl)
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------

[State -1, C]
type = ChangeState
value = 450
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = (StateType = c) && (Ctrl)
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 415 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact

;---------------------------------------------------------------------------

[State -1, C]
type = ChangeState
value = 655
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 615 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 650 && movecontact

;---------------------------------------------------------------------------

[State -1, X]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
trigger1 = (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------

[State -1, Y]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = Var(40) = 1
trigger1 = (StateType = A) && (Ctrl)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 655

;---------------------------------------------------------------------------

[State -1, Z]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = Var(40) != 1
trigger1 = (StateType = A) && (Ctrl)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;---------------------------------------------------------------------------

[State -1, Y]
type = ChangeState
value = 615
triggerall = !var(59)
triggerall = command = "y"
triggerall = Var(40) != 1
trigger1 = (StateType = A) && (Ctrl)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------

[State -1, Y]
type = ChangeState
value = 625
triggerall = !var(59)
triggerall = command = "z"
triggerall = Var(40) = 1
trigger1 = (StateType = A) && (Ctrl)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;---------------------------------------------------------------------------

[State -1, A]
type = ChangeState
value = 630
triggerall = !var(59)
triggerall = command = "a"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------

[State -1, B]
type = ChangeState
value = 640
triggerall = !var(59)
triggerall = command = "b"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 630 && movecontact

;---------------------------------------------------------------------------

[State -1, C]
type = ChangeState
value = 650
triggerall = !var(59)
triggerall = command = "c"
trigger1 = (StateType = A) && (Ctrl)
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 615 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "Superjump"
trigger1 = (StateType != A) && (Ctrl)

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = !var(59)
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit ;&& time > 14
trigger2 = stateno = 425 && movehit ;&& time > 14

;---------------------------------------------------------------------------

[State -1, AirFollow]
type = ChangeState
value = 40
triggerall = !var(59)
triggerall = command = "airfollow"
triggerall = movehit = 1
trigger1 = (stateno = 420) && (P2StateType = A)
trigger2 = (stateno = 821) && (P2StateType = A)

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = null;ChangeState
value = 932
triggerall = var(16) = 0
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
triggerall = anim = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = null;ChangeState
value = 955
triggerall = var(16) = 0
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
triggerall = anim = 5120
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

[State -1, Guard Push crouch]
type = null;ChangeState
value = 6310
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = null;ChangeState
value = 6320
triggerall = !var(59)
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

