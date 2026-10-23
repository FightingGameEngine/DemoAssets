;===========================================================================
;Super Marvel vs. Capcom - Eternity of Heroes - Commands Template V.5
;===========================================================================

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------
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
;FeralRage

[Command]
name = "FeralRage"
command = ~D, DF, F, a+b
time = 17

[Command]
name = "FeralRage"
command = ~D, DF, F, b+c
time = 17

[Command]
name = "FeralRage"
command = ~D, DF, F, a+c
time = 17

[Command]
name = "FeralRage"
command = ~D, DF, F, a+b+c
time = 17

;---------------------------------------------------------------------------
;FeralLunge

[Command]
name = "FeralLunge"
command = ~D, DF, F, x+y
time = 17

[Command]
name = "FeralLunge"
command = ~D, DF, F, x+z
time = 17

[Command]
name = "FeralLunge"
command = ~D, DF, F, y+z
time = 17

[Command]
name = "FeralLunge"
command = ~D, DF, F, y+z+x
time = 17
;---------------------------------------------------------------------------
;Hyper Bombardment

[Command]
name = "Bombardment"
command = ~D, DB, B, x+y
time = 17

[Command]
name = "Bombardment"
command = ~D, DB, B, x+z
time = 17

[Command]
name = "Bombardment"
command = ~D, DB, B, y+z
time = 17

[Command]
name = "Bombardment"
command = ~D, DB, B, x+y+z
time = 17

;---------------------------------------------------------------------------
;BorrowedTechnology

[Command]
name = "Technology"
command = ~D, DB, B, a+b

[Command]
name = "Technology"
command = ~D, DB, B, b+c

[Command]
name = "Technology"
command = ~D, DB, B, a+c

[Command]
name = "Technology"
command = ~D, DB, B, a+b+c

;---------------------------------------------------------------------------
;Gadget

[Command]
name = "GadgetX"
command = ~D,DF, F, x

[Command]
name = "GadgetY"
command = ~D,DF, F, y

[Command]
name = "GadgetZ"
command = ~D,DF, F, z

;-------------------------------------------------------------------------
;Feral Strike

[Command]
name = "FeralStrikeA"
command = ~D,DB,B, a

[Command]
name = "FeralStrikeB"
command = ~D,DB,B, b

[Command]
name = "FeralStrikeB"
command = ~D,DB,B, c

[Command]
name = "FeralStrikeC"
command = ~D,DF,F, a

[Command]
name = "FeralStrikeC"
command = ~D,DF,F, b

[Command]
name = "FeralStrikeC"
command = ~D,DF,F, c

;-------------------------------------------------------------------------
;Mine

[Command]
name = "MineA"
command = ~D,DB,B, x

[Command]
name = "MineB"
command = ~D,DB,B,y

[Command]
name = "MineC"
command = ~D,DB,B,z

;---------------------------------------------------------------------------
;FeralCharge

[Command]
name = "FeralChargeX"
command = ~B, F, x

[Command]
name = "FeralChargeY"
command = ~B, F, y

[Command]
name = "FeralChargeZ"
command = ~B, F, z

[Command]
name = "FeralChargeA"
command = ~B, F, a

[Command]
name = "FeralChargeB"
command = ~B, F, b

[Command]
name = "FeralChargeC"
command = ~B, F, c

;---------------------------------------------------------------------------
;HeadStomp

[Command]
name = "HeadStomp"
command = /$D,a

[Command]
name = "HeadStomp"
command = /$D,b

[Command]
name = "HeadStomp"
command = /$D,c

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



;--|-AI|-----------------------------------------------------------

[State -1];AI Guarding, Easy/Medium AI
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

[State -1];AI Guarding, Easy/Medium AI
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131

[State -1];AI Guarding, Easy/Medium AI
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132

[State -1,AI Guard];AI Guarding, Hard AI
type = ChangeState
triggerall = (var(59) != 0) && Numenemy && (stateno != [120,155])
triggerall = AILevel > 5
triggerall = Random <= (AILevel * 10)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
trigger1 = ctrl
value = 120

[State -1, AI Guard Push];AI Guard Push (Standing)
type = ChangeState
value = 6300
triggerall = Var(59)
triggerall = AILevel >= 4
triggerall = p2bodydist x =[0,40]
triggerall = StateType != A
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 100+300*(BackEdgeDist < 30)

[State -1, AI Guard Push];AI Guard Push (Crouching)
type = null;ChangeState
value = 6310
triggerall = Var(59)
triggerall = AILevel >= 4
triggerall = p2bodydist x =[0,40]
triggerall = StateType = C
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

[State -1, AI Guard Push];AI Guard Push (Air)
type = null;ChangeState
value = 6320
triggerall = Var(59)
triggerall = AILevel >= 6
triggerall = p2bodydist x =[0,40]
triggerall = StateType = A
trigger1 = StateNo = [154,155]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

[State -1];AI Recovery Roll Forward after KnockDown
type = ChangeState
value = 832
triggerall = Var(59)
triggerall = AILevel >= 3
triggerall =anim= 5120
trigger1 = p2bodydist x <= 75
trigger1 = Random < 100+500*(BackEdgeDist < 30)
trigger1 = Time >= 1

[State -1];AI Recovery Roll Backwards after KnockDown
type = ChangeState
value = 855
triggerall = Var(59)
triggerall = AILevel >= 3
triggerall =anim= 5120
trigger1 = p2bodydist x > 75
trigger1 = Random < 100+500*(BackEdgeDist < 30)
trigger1 = Time >= 1

;Standing Chain End 3 (Hyper 1)
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
trigger1 = (stateno = 240) && movecontact && random = [0,100]
value = 3000
;Standing Chain End 3 (Hyper 2)
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
trigger1 = (stateno = 240) && movecontact && random = [251,350]
value = 1600
;Standing Chain End 3 (Hyper 3)
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
trigger1 = (stateno = 240) && movecontact && random = [501,600]
value = 3200
;Standing Chain End 3 (Hyper 4)
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
trigger1 = (stateno = 240) && movecontact && random = [751,850]
value = 3300
;Standing ChainEnd 1 (Finish Combo)
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 220) && movecontact
value = 250
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 240) && movecontact
value = 220

;Start Standing Chain Combo
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 210) && movecontact
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 230) && movecontact
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 900)
value = 200
;End Standing Chain

;Start Crouching Chain
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel < 3
trigger1 = (stateno = 440) && movecontact
value = 450

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 440) && movecontact
value = 420

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 410) && movecontact
trigger2 = AILevel < 3
trigger2 = (stateno = 430) && movecontact
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 430) && movecontact
value = 410

[State -1];Alternate start for Easy AI
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel >= 4
trigger1 = (stateno = 400) && movecontact
trigger2 = p2stateno != 7600
trigger2 = (Ctrl) && (statetype = S)
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
trigger2 = AILevel < 3
value = 430

[State -1];Combo start for Med/Hard AI
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 100)
value = 400
;End Crouching Chain


[State -1] ; Always superjump on launch
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movecontact
value = 7500

;Start Air Chain
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 640) && movecontact && (random = [0,500])
value = 650

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 640) && movecontact && (random = [501,999])
value = 620

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 600) && movecontact
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 600) && movecontact
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 600
;End Air Chain

[State -1];Start air chain after medium charge attack
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = prevstateno != 600
trigger1 =  stateno = 1011 ;leap over after charge move
value = 600

[State -1];Followup jump attack with crouch hard kick
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = H) ;opponent has been hit
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25) ;close to opponent
trigger1 = Prevstateno = 50 ;falling from attack (which means the previous hit must have been an air attack)
trigger1 = (random <= 750) ;This will happen 75% of the time that the other triggers are true
value = 450

;-|-Tentativa de Super da IA-|----------------------------------------------
[State -1, Easy AI] ;Easy AI Offset
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel = 1
trigger1 = stateno >= 1000
trigger1 = stateno < 3000
trigger2 = (AILevel = 2) || (AILevel = 3)
trigger2 = stateno = [1010, 1219]
trigger3 = AILevel <= 5
trigger3 = stateno = 200 || stateno = 400
trigger3 = (random > (AILevel * 200))
value = 0
ctrl = 1

[State -1, Easy AI] ;Easy AI Offset
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = AILevel = 2
trigger1 = stateno = [1010, 1219]
value = 0
ctrl = 1

[State -1] ;Charge
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (random >=(AILevel + 500)) && (random <(AILevel*8) + 500)
triggerall = stateno < 1500
trigger1 = (p2bodydist x >= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1000

[State -1] ;Charge
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (random >=(AILevel + 180)) && (random <(AILevel*100) + 99)
trigger1 = (p2bodydist x >= 75) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1010

[State -1] ;Charge
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (random = [450,500])
trigger1 = (p2bodydist x >= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1020

[State -1] ;Projectile
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (numhelper (1212) = 0) && (numhelper (1205) = 0)&& (numhelper (1208) = 0)
triggerall = (random <= AILevel*10)
trigger1 = (p2bodydist x >= 80) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
trigger1 = power >= 300
value = 1200

[State -1] ;Projectile
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (numhelper (1212) = 0) && (numhelper (1205) = 0)&& (numhelper (1208) = 0)
triggerall = (random >=100) && (random <= AILevel*11 + 100)
trigger1 = (p2bodydist x >= 80) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
trigger1 = power >= 500
value = 1210

[State -1] ;Projectile
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (numhelper (1212) = 0) && (numhelper (1205) = 0)&& (numhelper (1208) = 0)
triggerall = (random >=100) && (random <= AILevel*11 + 200)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
trigger1 = p2statetype = A
trigger1 = power >= 500
value = 1220

[State -1] ;Mine
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (numhelper (1101) = 0) && (numhelper (1102) = 0) && (numhelper (1103) = 0)
triggerall = (random >=100) && (random <= AILevel*11 + 400)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1100

[State -1] ;Mine
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (numhelper (1101) = 0) && (numhelper (1102) = 0) && (numhelper (1103) = 0)
triggerall = (random >=100) && (random <= AILevel*11 + 400)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1110

[State -1] ;Mine
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S) && (numhelper (1101) = 0) && (numhelper (1102) = 0) && (numhelper (1103) = 0)
triggerall = (random >=100) && (random <= AILevel*11 + 400)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1120

[State -1] ;Wall Cling
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = random <= AILevel*20
triggerall = stateno < 1500
triggerall = (Ctrl) && (Statetype = S)
trigger1 = (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger1 = power >= 300
value = 1300

[State -1] ;Wall Jump
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,1000])
triggerall = (stateno < 1500) && (pos y < 200) && (prevstateno != 5120) && (p2movetype != H)
trigger1 =  (stateno = 1302)
value = 1301

;-|-Tentativa de Hyper da IA-|---------------------------------------------
[State -1];Feral Charge
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >=4
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 1500
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1500) && (random = [100,300])
value = 3200

[State -1];Borrowed Technology
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >=5
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 1500
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1500) && (random = [100,300])
value = 3000

[State -1];Feral Rage
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >=4
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 1500
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1500) && (random = [200,300])
value = 3300

[State -1];Rolling Hyper
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >=3
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 1500
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1500) && (random = [1000,300])
value = 1600


;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;-----------------------------

[State -1, Dash Forward]
type = ChangeState
value = 101
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 101)
trigger1 = var(59) = 0
trigger1 = Command = "FF"
trigger2 = var(59) != 0
trigger2 = AILevel >=6
trigger2 = random = [400,450]

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 105)
trigger2 = var(59) = 0
trigger1 = Command = "BB"
trigger2 = var(59) != 0
trigger2 = AILevel <= 3

;---------------------------------------------------------------------------
;Ground Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = enemynear, name != "Prime Sentinels"
triggerall = command = "z" && statetype = S && ctrl && stateno != 100
triggerall = (p2bodydist X < 15) && (p2movetype != H)
triggerall = (p2statetype = S) || (p2statetype = C)
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"

;-----------------------------

[State -1, Feral Rage]
type = ChangeState
value = 3300
triggerall = var(59) = 0
triggerall = command = "FeralRage"
triggerall = power >= 1000 && numexplod(3302)=0
triggerall = stateno < 3000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA, SA) && (MoveContact)

;-----------------------------

[State -1, FeralLunge]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = command = "FeralLunge"
triggerall = power >= 1000
triggerall = stateno < 3000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA, SA) && (MoveContact)

;-----------------------------

[State -1, Technology]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "Technology"
triggerall = power >= 1000 
triggerall = stateno < 3000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA, SA) && (MoveContact)

;-----------------------------

[State -1, Bombardment]
type = ChangeState
value =  1600
triggerall = (var(59) = 0) && (command = "Bombardment") && (power >= 1000) && p2life > 0
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA,SA) && MoveContact

;-----------------------------

[State -1, Gadget]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "GadgetX"
triggerall = NumHelper(1205) = 0
triggerall = NumHelper(1208) = 0
triggerall = NumHelper(1212) = 0
triggerall = NumHelper(1235) = 0
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, Gadget]
type = ChangeState
value = 1210
triggerall = var(59) = 0
triggerall = command = "GadgetY"
triggerall = NumHelper(1205) = 0
triggerall = NumHelper(1208) = 0
triggerall = NumHelper(1212) = 0
triggerall = NumHelper(1235) = 0
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, Gadget]
type = ChangeState
value = 1220
triggerall = var(59) = 0
triggerall = command = "GadgetZ"
triggerall = NumHelper(1205) = 0
triggerall = NumHelper(1208) = 0
triggerall = NumHelper(1212) = 0
triggerall = NumHelper(1235) = 0
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, Mine]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = enemynear, name != "helibonus"
triggerall = (Stateno < 1500) && CTRL
triggerall = command = "MineA"
triggerall = NumHelper(1101) = 0
triggerall = NumHelper(1102) = 0
triggerall = NumHelper(1103) = 0
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, Mine]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = enemynear, name != "helibonus"
triggerall = (Stateno < 1500) && CTRL
triggerall = command = "MineB"
triggerall = NumHelper(1101) = 0
triggerall = NumHelper(1102) = 0
triggerall = NumHelper(1103) = 0
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, Mine]
type = ChangeState
value = 1120
triggerall = var(59) = 0
triggerall = enemynear, name != "helibonus"
triggerall = (Stateno < 1500) && CTRL
triggerall = command = "MineC"
triggerall = NumHelper(1101) = 0
triggerall = NumHelper(1102) = 0
triggerall = NumHelper(1103) = 0
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, Detonate]
type = ChangeState
value = 1130
triggerall = var(59) = 0
triggerall = enemynear, name != "helibonus"
triggerall = (Stateno < 1500)
triggerall = Statetype != A && ctrl
triggerall = (command = "MineB") || (command = "MineC") || (command = "MineA")
trigger1 = NumHelper(1101) > 0
trigger2 = NumHelper(1102) > 0
trigger3 = NumHelper(1103) > 0

;-----------------------------

[State -1, FeralCharge]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "FeralChargeA"
triggerall = NumHelper(1050) = 0
triggerall = NumHelper(1060) = 0
triggerall = NumHelper(1070) = 0
triggerall = (Stateno < 1500)
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, FeralCharge]
type = ChangeState
value = 1010
triggerall = var(59) = 0
triggerall = command = "FeralChargeB"
triggerall = NumHelper(1050) = 0
triggerall = NumHelper(1060) = 0
triggerall = NumHelper(1070) = 0
triggerall = (Stateno < 1500)
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, FeralCharge]
type = ChangeState
value = 1020
triggerall = var(59) = 0
triggerall = command = "FeralChargeC"
triggerall = NumHelper(1050) = 0
triggerall = NumHelper(1060) = 0
triggerall = NumHelper(1070) = 0
triggerall = (Stateno < 1500)
triggerall = (Statetype != A)
trigger1 = ctrl
trigger2 = (HitdefAttr = SCA, NA) && MoveContact

;-----------------------------

[State -1, FeralCharge]
type = ChangeState
value = 1050
triggerall = var(59) = 0
triggerall = command = "FeralChargeX" || command = "FeralChargeY" || command = "FeralChargeZ"
triggerall = Stateno < 1500
triggerall = Statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;-----------------------------

[State -1, Feral Strike]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = enemynear, name != "helibonus"
triggerall = command = "FeralStrikeC"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;-----------------------------

[State -1, Feral Strike]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = enemynear, name != "helibonus"
triggerall = command = "FeralStrikeA" || command = "FeralStrikeB"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450])

;-----------------------------

[State -1, WallCling]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = enemynear, name != "helibonus"
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && prevstateno != 1400 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = [-10,10]) && (pos y < -80) && prevstateno != [600,650]

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = Command = "x"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 1002
trigger3 = stateno = 1011
trigger4 = stateno = 1021

;----------------------------------------------------------------------
;Jump Middle Punch
[State -1, Jump Middle Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = Command = "y"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600
trigger3 = MoveContact
trigger3 = StateNo = 630
trigger4 = MoveContact
trigger4 = StateNo = 1002
trigger5 = stateno = 1011
trigger6 = stateno = 1021

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = Command = "z"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 610
trigger3 = MoveContact
trigger3 = StateNo = 630
trigger4 = MoveContact
trigger4 = StateNo = 640
trigger5 = MoveContact
trigger5 = StateNo = 1002
trigger6 = stateno = 1011
trigger7 = stateno = 1021

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = Command = "a"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 600
trigger3 = MoveContact
trigger3 = StateNo = 1002
trigger4 = stateno = 1011
trigger5 = stateno = 1021

;----------------------------------------------------------------------
;Jump Middle Kick
[State -1, Jump Middle Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = Command = "b"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 630
trigger3 = MoveContact
trigger3 = StateNo = 610
trigger4 = MoveContact
trigger4 = StateNo = 1002
trigger5 = stateno = 1011
trigger6 = stateno = 1021

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = Command = "c"
triggerall = StateType = A
triggerall = stateno != 650
trigger1 = Ctrl
trigger2 = MoveContact
trigger2 = StateNo = 640
trigger3 = MoveContact
trigger3 = StateNo = 610
trigger4 = MoveContact
trigger5 = StateNo = 1002
trigger6 = stateno = 1011
trigger7 = stateno = 1021

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
trigger4 = (StateNo = 1000) && (Movecontact)
trigger5 = stateno = 811

;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = stateno = 811

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
trigger8 = (StateNo = 1000) && (Movecontact)
trigger9 = (StateNo = 440) && (Movecontact)

;-----------------------------

[State -1, Y]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact)

;-----------------------------

[State -1, Z]
type = ChangeState
value = 220
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
trigger8 = stateno = 1002
 
;-----------------------------

[State -1, C]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 210) && (Movecontact)
trigger4 = (StateNo = 211) && (Movecontact)
trigger5 = (StateNo = 240) && (Movecontact)
trigger6 = (StateNo = 241) && (Movecontact)

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
trigger14 = (StateNo = 1000) && (Movecontact)

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
trigger5 = (StateNo = 1000) && (Movecontact)
trigger6 = stateno = 811

;-----------------------------

[State -1, s]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = Command = "Taunt"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

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
trigger3 = stateno = 811

;-----------------------------

[State -1, B]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211)

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
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)
trigger12 = (StateNo = 1000) && (Movecontact)
trigger13 = (StateNo = 410) && (Movecontact)

;-----------------------------

[State -1, C agachado]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = Command = "c"
triggerall = Command = "holddown"
triggerall = statetype !=A
trigger1 = (Ctrl)
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
trigger14 = (StateNo = 1000) && (Movecontact)

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = var(59) = 0
triggerall = StateType != A
trigger1 = Command = "SJ" &&  ctrl
trigger2 = command = "holdup" && stateno = 420 && movehit
trigger3 = command = "holdup" && prevstateno = 1052


;---------------------------------------------------------------------------
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = var(59) = 0
triggerall = command = "guardpush" && statetype != A
triggerall = statetype != A
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]


[State -1, Guard Push crouch]
type = null;ChangeState
value = 6310
triggerall = var(59) = 0
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = null;ChangeState
value = 6320
triggerall = var(59) = 0
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = ChangeState
value = 832
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = anim = 5120
trigger1 = alive = 1

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = ChangeState
value = 855
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = anim = 5120
trigger1 = alive = 1
