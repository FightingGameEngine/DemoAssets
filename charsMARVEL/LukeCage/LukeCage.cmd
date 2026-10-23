; {character name}'s CMD file

;---------------------------------------------------------------------------
; -[ Button Remapping ]-
;---------------------------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;---------------------------------------------------------------------------
; -[ Default Values ]-
;---------------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1



;-| AvX Motions |--------------------------------------------------------

[Command]
name = "Pause"
command = s
time = 5

[Command]
name = "Taunt"
command = ~D, DF, F, s
time = 17

[Command]
name = "Taunt"
command = ~D, DB, B, s
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
; One button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold button
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; Hold dir
;---------------------------------------------------------------------------
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
name = "holdstart"
command = /s
time = 1

[Command]
name = "SJ"
command = $D, $U

;---------------------------------------------------------------------------
; -[ Hypers ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Command]
name = "SuperSpinCycle"
command = ~D, DF, F,  a+b
time = 40

[Command]
name = "SuperSpinCycle"
command = ~D, DF, F,  b+c
time = 40

[Command]
name = "SuperSpinCycle"
command = ~D, DF, F,  c+a
time = 40

;---------------------------------------------------------------------------
; Hyper 2
;---------------------------------------------------------------------------
[Command]
name = "Combo"
command = ~D, DF, F, x+y
time = 40

[Command]
name = "Combo"
command = ~D, DF, F, y+z
time = 40

[Command]
name = "Combo"
command = ~D, DF, F, z+x
time = 40

;---------------------------------------------------------------------------
; Hyper 3
;---------------------------------------------------------------------------
[Command]
name = "SweetXmas"
command = ~D, DB, B, x+y
time = 40

[Command]
name = "SweetXmas"
command = ~D, DB, B, y+z
time = 40

[Command]
name = "SweetXmas"
command = ~D, DB, B, z+x
time = 40


;---------------------------------------------------------------------------
; Bulletproof
;---------------------------------------------------------------------------
[Command]
name = "Bulletproof"
command = ~D, DB, B, a+b
time = 30

[Command]
name = "Bulletproof"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "Bulletproof"
command = ~D, DB, B, c+a
time = 30

;---------------------------------------------------------------------------
; -[ Specials ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
[Command]
name = "MachineGunUpperX"
command = ~D,DF,F, x
time = 20

[Command]
name = "MachineGunUpperY"
command = ~D,DF,F, y
time = 20

[Command]
name = "MachineGunUpperZ"
command = ~D,DF,F, z
time = 20

[Command]
name = "TheChainGang"
command = ~D,DB,B, x
time = 20

[Command]
name = "TheChainGang"
command = ~D,DB,B, y
time = 20

[Command]
name = "TheChainGang"
command = ~D,DB,B, z
time = 20

[Command]
name = "RoundhouseBlues_a"
command = ~D,DB,B, a
time = 20

[Command]
name = "RoundhouseBlues_b"
command = ~D,DB,B, b
time = 20

[Command]
name = "RoundhouseBlues_c"
command = ~D,DB,B, c
time = 20

[Command]
name = "SpinCycleA"
command = ~D,DF,F, a
time = 20

[Command]
name = "SpinCycleB"
command = ~D,DF,F, b
time = 20

[Command]
name = "SpinCycleC"
command = ~D,DF,F, c
time = 20



;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c

;---------------------------------------------------------------------------
; -[ Movements/Attacks ]-
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Double_Tap
;---------------------------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
; 2/3 button combination
;---------------------------------------------------------------------------
[Command]
name = "dodge"        ;Alternative button command
command = a+y
time = 1


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



;---------------------------------------------------------------------------
; Dir + button
;---------------------------------------------------------------------------
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


;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
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



;---------------------------------------------------------------------------
; -[ Artificial Intelligence ]-
;---------------------------------------------------------------------------
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
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]
trigger1 = Time >= 5
trigger1 = random < 100+300*(BackEdgeDist < 30)
value = 6300

[State -1, Hyper Larriot)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1500
triggerall = statetype != A
trigger1 = ctrl && random = [101,150]
trigger2 = p2stateno = 5130
value = 3000

[State -1, Sweet Christmas)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = power > 1500
trigger1 = ctrl && random = [251,300]
value = 3100

[State -1, Hyper Punch)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = power > 1500
triggerall = statetype != A
trigger1 = ctrl && random = [201,250]
value = 3200

[State -1, Bullet Proof]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1500
triggerall = statetype != A
trigger1 = ctrl && random = [151,200]
value = 3300

 ;Start Standing Chain Combo (LMH)
[State -1, Standing Chain End 2 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 240) && backedgedist >50 && movecontact && random = [501,550]
value = 250

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 200) && movecontact
value = 230

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 210) && movecontact
value = 240

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 130)&& (random >= 250) && (random < 500) && (p2statetype != A)
value = 220

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 200) && movecontact
value = 210

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 130) && (random < 250) && (p2statetype != A)
value = 200
;End Standing Chain

;Start Crouching Chain
[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
triggerall = stateno != 420
trigger1 = AILevel >= 4
trigger1 = (stateno = 410) && movecontact
trigger2 = (stateno = 240) && movecontact
trigger4 = (p2stateno = [5130,5135]) && p2dist x <= 50
;trigger5 = p2movetype = H &&  p2statetype = A && (enemynear, vel y > 0) && stateno = 40
;trigger5 = p2dist y > - 70
value = 420

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 400) && movecontact
value = 410

[State -1, Combo start for Med/Hard AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = Ctrl && statetype != A
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 500) && (p2statetype != A)
value = 400
;End Crouching Chain

[State -1,  Always superjump on launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movehit
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
value = 620

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 610) && movecontact
value = 640

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 600) && movecontact
value = 610

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

[State -1, Run]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = p2stateno != 7600
triggerall = (Statetype != A) && (random >=(400)) && (random <(AILevel*9) + 400);[400,472]
triggerall = prevstateno != 101 && stateno != 101
triggerall = ctrl
trigger1 = p2dist x >= 200
value = 102

[State -1,Rapid Punch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (Ctrl) && (Statetype = S) && (random >=(500)) && (random <(AILevel*8) + 500) ;[500,564]
triggerall = stateno < 1000
triggerall = p2stateno != [5110,5120]
trigger1 = (p2bodydist x >= 150)
value = 1002

[State -1, Command Grab]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (Statetype = S) && (random >=(500)) && (random <(AILevel*8) + 500);[500,564]
triggerall = stateno < 1000
triggerall = enemynear, movetype != H
triggerall = p2dist x < 80
trigger1 =  ctrl
value = 1300

[State -1, Wall Bounce Kick]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (Statetype != A) && (random >=(600)) && (random <(AILevel*8) + 600);[600,664]
triggerall = stateno < 1000
triggerall = var(28)=0
trigger1 =  ctrl
trigger2 = stateno = 250 && movecontact
value = 1102

[State -1, OTG Kick]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (Statetype != A)
triggerall = stateno < 1000
triggerall = var(29)=0
trigger1 = p2stateno = [5110,5120]
value = 1100














;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  \

;---------------------------------------------------------------------------
; Hypers
;---------------------------------------------------------------------------
[State -1, Super Spin Cycle]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "SuperSpinCycle"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA,SA) && (MoveContact)

[State -1, Sweet Xmas]
type = ChangeState
value = 3100
triggerall = !var(59)
triggerall = command = "SweetXmas"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA,SA) && (MoveContact)

[State -1, Combo]
type = ChangeState
value = 3200
triggerall = !var(59)
triggerall = command = "Combo"
triggerall = power >= 1000
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA,SA) && (MoveContact)

[State -1, Bulletproof]
type = ChangeState
value = 3300
triggerall = !var(59)
triggerall = command = "Bulletproof"
triggerall = power >= 1000
trigger1 = var(16) = 0
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA,SA) && (MoveContact)
;---------------------------------------------------------------------------
; Specials
;---------------------------------------------------------------------------
[State -1, MachineGunUpper]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "MachineGunUpperX"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, MachineGunUpper]
type = ChangeState
value = 1001
triggerall = !var(59)
triggerall = command = "MachineGunUpperY"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, MachineGunUpper]
type = ChangeState
value = 1002
triggerall = !var(59)
triggerall = command = "MachineGunUpperZ"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Roundhouse Blues]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = command = "RoundhouseBlues_a"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Roundhouse Blues]
type = ChangeState
value = 1101
triggerall = !var(59)
triggerall = command = "RoundhouseBlues_b"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Roundhouse Blues]
type = ChangeState
value = 1102
triggerall = !var(59)
triggerall = command = "RoundhouseBlues_c"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Spin Cycle]
type = ChangeState
value = 1200
triggerall = !var(59)
triggerall = command = "SpinCycleA"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Spin Cycle]
type = ChangeState
value = 1201
triggerall = !var(59)
triggerall = command = "SpinCycleB"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Spin Cycle]
type = ChangeState
value = 1202
triggerall = !var(59)
triggerall = command = "SpinCycleC"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, The Chain Gang]
type = ChangeState
value = 1300
triggerall = !var(59)
triggerall = command = "TheChainGang"
triggerall = NumprojID(1001) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Attacks/Movements
;---------------------------------------------------------------------------

[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Dash FWD]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "FF"

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = (roundstate = 2)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "BB"

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(59)
triggerall = Command = "Taunt"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

[state -1, super_jump]
type = changestate
triggerall = !var(59)
triggerall = statetype = S || statetype = C
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 420
value = 700

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Var(59) != 1
triggerall = command = "x" && command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium]
type = ChangeState
value = 210
triggerall = Var(59) != 1
triggerall = command = "y" && command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
;trigger3 = stateno = 230 && movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Var(59) != 1
triggerall = command = "z" && command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
;trigger3 = (stateno = [230,240]) && movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
;trigger2 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = Var(59) != 1
triggerall = command = "b" && command != "holdfwd" && command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
;trigger3 = (stateno = [200,210]) && movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = Var(59) != 1
triggerall = command = "c" && command != "holdback"
trigger1 = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [230,240]) && movecontact
;trigger3 = (stateno = [200,210]) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = Var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
;trigger4 = stateno = 230 && movecontact
;trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = Var(59) != 1
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
;trigger4 = (stateno = [230,240]) && movecontact
;trigger5 = (stateno = [430,440]) && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = Var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
;trigger2 = stateno = 200 && movecontact
;trigger3 = stateno = 400 && movecontact


;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = Var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 430 && movecontact
;trigger4 = (stateno = [200,210]) && movecontact
;trigger5 = (stateno = [400,410]) && movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = Var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [230,240]) && movecontact
trigger3 = (stateno = [430,440]) && movecontact
;trigger4 = (stateno = [200,210]) && movecontact
;trigger5 = (stateno = [400,410]) && movecontact


;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = Var(59) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = Var(59) != 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = Var(59) != 1
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = Var(59) != 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = Var(59) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = Var(59) != 1
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact


;Roll Forward
[State -1, Roll Forward]
type = null;ChangeState
value = 8300
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = null;ChangeState
value = 8305
triggerall = !var(59)
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

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
