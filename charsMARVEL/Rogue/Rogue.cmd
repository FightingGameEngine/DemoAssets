[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
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


;-| Super Motions |--------------------------------------------------------

;Goodnight Sugah
[Command]
name = "Goodnight Sugah"
command = ~D, DB, B, x+y
[Command]
name = "Goodnight Sugah"
command = ~D, DB, B, x+z
[Command]
name = "Goodnight Sugah"
command = ~D, DB, B, z+y


;Hyper Repeating Punch
[Command]
name = "Hyper Repeating Punch"
command = ~D, DF, F, x+y
[Command]
name = "Hyper Repeating Punch"
command = ~D, DF, F, x+z
[Command]
name = "Hyper Repeating Punch"
command = ~D, DF, F, z+y

;Random
[Command]
name = "HyperSteal"
command = ~D, DF, F, a+b

[Command]
name = "HyperSteal"
command = ~D, DF, F, b+c

[Command]
name = "HyperSteal"
command = ~D, DF, F, c+a

[Command]
name = "Random"
command = ~D, DB, B, a+b

[Command]
name = "Random"
command = ~D, DB, B, b+c

[Command]
name = "Random"
command = ~D, DB, B, a+c

[Command]
name = "AllPower_L"
command = ~U,U,D,D,B,F,B,F,b,a
time = 300

[Command]
name = "AllPower_R"
command = ~U,U,D,D,F,B,F,B,b,a
time = 300


;-| Special Motions |------------------------------------------------------

;Rising Repeating Punch Light
[Command]
name = "FDF_x"
command = ~F, D, DF, x
time = 20

;Rising Repeating Punch Medium
[Command]
name = "FDF_y"
command = ~F, D, DF, y
time = 20

;Rising Repeating Punch Hard
[Command]
name = "FDF_z"
command = ~F, D, DF, z
time = 20

;Repeating Punch Near
[Command]
name = "QCF_x"
command = ~D, DF, F, x

;Repeating Punch Mid
[Command]
name = "QCF_y"
command = ~D, DF, F, y

;Repeating Punch Far
[Command]
name = "QCF_z"
command = ~D, DF, F, z

;Power Dive Punch Light
[Command]
name = "QCB_x"
command = ~D, DB, B, x

;Power Dive Punch Medium
[Command]
name = "QCB_y"
command = ~D, DB, B, y

;Power Dive Punch Hard
[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "BF_x"
command = ~B,F, x
time = 20

[Command]
name = "BF_y"
command = ~B,F, y
time = 20

[Command]
name = "BF_z"
command = ~B,F, z
time = 20

[Command]
name = "FDF_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "FDF_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "FDF_c"
command = ~F, D, DF, c
time = 20

;Stolen Powers
[Command]
name = "QCF_a"
command = ~D, DF, F, a

;Stolen Powers
[Command]
name = "QCF_b"
command = ~D, DF, F,b

;Stolen Powers
[Command]
name = "QCF_c"
command = ~D, DF, F, c

;Power Drain
[Command]
name = "QCB_a"
command = ~D, DB, B, a

;Power Drain
[Command]
name = "QCB_b"
command = ~D, DB, B, b

;Power Drain
[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "BF_a"
command = ~B,F, a
time = 20

[Command]
name = "BF_b"
command = ~B,F, b
time = 20

[Command]
name = "BF_c"
command = ~B,F, c
time = 20


;Flight
[Command]
name = "DD_a"
command = ~D, D, a

;Flight
[Command]
name = "DD_a"
command = ~D, D, b

;Flight
[Command]
name = "DD_a"
command = ~D, D, c


[Command]
name = "Counter"
command = /B,c


[Command]
name = "Super Jump"
command = D,$U

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z+y
time = 1

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

;---|Hold Buttons|------------------------

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

[Command]
name = "holds"
command = /s
time = 1

;---|Relase Buttons|------------------------

[Command]
name = "Release_a"
command = ~a
time = 1

[Command]
name = "Release_b"
command = ~b
time = 1

[Command]
name = "Release_c"
command = ~c
time = 1


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;-------------------
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

;-------------------
; Get modified Enemy Y dist
[State -1]
type = VarSet
trigger1 = 1;var(59)
var(8) = floor(P2Dist Y - (abs(EnemyNear, const(size.mid.pos.y)) - abs(const(size.mid.pos.y))))

;-------------------
; Get modified Enemy Y dist
[State -1]
type = null;VarSet
trigger1 = 1;var(59)
var(8) = floor(P2BodyDist Y - (abs(EnemyNear, const(size.head.pos.y)) - abs(const(size.head.pos.y))))

;-------------------
[State -1]
type = VarSet
trigger1 = 1;var(59)
var(7) = abs(enemynear,const(size.head.pos.y))

;---------------------------------------------------------------------------
[State -1, AI Super Jump]
type = null;ChangeState
value = 7720
triggerall = numenemy > 1
triggerall = enemynear(0),life > 0 && enemynear(1),life > 0
triggerall = Var(59)
triggerall = statetype != A
triggerall = random < 300
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
triggerall = numenemy < 2
triggerall = Var(59)
triggerall = AILevel >= 6
triggerall = BackEdgeDist > 90
triggerall = stateno != 105
triggerall = p2bodydist x < 100
triggerall = ctrl
triggerall = StateType != A
trigger1 = p2statetype = L && random < 300

;---------------------------------------------------------------------------
[State -1, anti crouch spam]
type = ChangeState
value = 131
triggerall = Var(59)
triggerall = AILevel >= 3
triggerall = statetype != A
triggerall = p2bodydist x < 80
triggerall = random <= 900
triggerall = p2statetype = A && ctrl
trigger1 = prevstateno = 5120
trigger2 = prevstateno = 52


;---------------------------------------------------------------------------
;Recovery Roll

[State -1]
type = null;ChangeState
triggerall = var(59)
triggerall = (Random < AILevel * 50)
triggerall = p2bodydist x < 100
triggerall = movetype != A
triggerall = p2stateno != 0
triggerall = StateType != A
trigger1 = p2stateno = var(43)
trigger2 = p2stateno = var(44)
trigger3 = p2stateno = var(45)
trigger4 = p2stateno = var(46)
trigger5 = p2stateno = var(47)
trigger6 = p2stateno = var(48)
trigger7 = p2stateno = var(49)
value = 7800


;-------------------------------------------------------------------------------
;Guarding states

;---------------------------------------------------------------------------


[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155])
triggerall = AILevel >= 3
triggerall = Random <= (AILevel * 1)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
trigger1 = ctrl
value = 120


;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7610
triggerall = Var(59)
triggerall = AILevel >=2
triggerall = p2bodydist x =[0,40]
triggerall = StateType != A
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)


;------------------------------------
;AI Guard Push (Crouching)
;------------------------------------
[State -1, AI Guard Push]
type = null;ChangeState
value = 7615
triggerall = Var(59)
triggerall = AILevel >= 4
triggerall = p2bodydist x =[0,40]
triggerall = StateType = C
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Guard Push (Air)
;------------------------------------
[State -1, AI Guard Push]
type = null;ChangeState
value = 7620
triggerall = Var(59)
triggerall = AILevel >= 6
triggerall = p2bodydist x =[0,40]
triggerall = StateType = A
trigger1 = StateNo = [154,155]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Recovery Roll after KnockDown
;------------------------------------
[State -1]
type = null;ChangeState
value = 7800
triggerall = Var(59)
triggerall = AILevel >= 3
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = p2bodydist x < 100
trigger1 = Random < 100+500*(BackEdgeDist < 30)
trigger1 = Time >= 1

;------------------------------------
;AI Recovery Roll after KnockDown
;------------------------------------
[State -1]
type = null;ChangeState
value = 7801
triggerall = Var(59)
triggerall = AILevel >= 3
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = p2bodydist x < 100
trigger1 = Random < 100+500*(BackEdgeDist > 100)
trigger1 = Time >= 1

;---------------------------------------------------------------------------
;Throws

;---------------------------------------------------------------------------

[State -1, Throw]
type = ChangeState
value = 800;ifelse(random < 300,800,830)
triggerall = var(59)
triggerall = (AILevel >= 3) && (random <= (AILevel * 10))
triggerall = p2bodydist X <= 20
triggerall = random < 300
triggerall = statetype = S
trigger1 = p2bodydist y = [-25,25]
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger2 = enemynear,moveguarded

;---------------------------------------------------------------------------

[State -1, Air Throw]
type = ChangeState
value = 830
triggerall = var(59)
triggerall = (AILevel >= 3) && (random <= (AILevel * 20))
triggerall = p2bodydist X <= 20
triggerall = p2bodydist y = [-25,25]
triggerall = prevstateno < 3000
trigger1 = statetype = A && ctrl
trigger1 = p2movetype != H
trigger1 = pos Y < -50


;---------------------------------------------------------------------------
[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59)
triggerall = random <= (AILevel * 10)
triggerall = stateno != 100
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl
trigger1 = p2movetype != A
trigger1 = p2bodydist X > 150

;---------------------------------------------------------------------------
[State -1,AI run back]
type = ChangeState
value = 105
triggerall = var(59)
triggerall = stateno != 105
triggerall = backedgedist > 70
triggerall = statetype != A
trigger1 = statetype = S && ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X < 120
triggerall = random <= 200

;---------------------------------------------------------------------------
[State -1,AI run fwd stop]
type = ChangeState
value = 0
triggerall = var(59)
triggerall = stateno = 100
trigger1 = p2movetype = A
trigger1 = p2bodydist X <= 105

;-----------------------------------------------------------------------------
;AI Combo
;---------------------------------------------------------------------------

[State -1, Standing Chain End 3 (Hyper 1)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
trigger1 = (stateno = 310) && movecontact && random = [0,34]
value = 3000

[State -1, Standing Chain End 3 (Hyper 2)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
triggerall = numhelper(40001) = 0 && numhelper(40001) = 0
trigger1 = (stateno = 310) && movecontact && random = [35,67]
value = 3040

[State -1, Standing Chain End 3 (Hyper 2)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = power > 1200
triggerall = numhelper(40001) = 0 && numhelper(40001) = 0
triggerall = var(40)>0
trigger1 = (stateno = 310) && movecontact && random = [68,100]
value = 37094 + Var(40)

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 220) && movecontact && random = [501,550]
value = 320

[State -1, Standing Chain End 1 (Finish Combo)]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 310) && movecontact && random = [551,600]
value = 220

;Start Standing Chain Combo
[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = [210,211]) && movecontact
value = 310

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
trigger1 = (stateno = 300) && movecontact
value = 210

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
trigger1 = (stateno = 200) && movecontact
value = 300

[State -1, Standing Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random > 900)
trigger2 = (anim = 1601)&&(var(14)<2) ;Off of Shadow Thrust Extender
trigger3 = (stateno = [1700,1720]) && (movecontact)&&(var(15)<2) ;Off of Shadow Kick Extender
value = 200
;End Standing Chain

;Start Crouching Chain
[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel < 3
trigger1 = (stateno = 510) && movecontact
value = 520

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = stateno!= 420 && prevstateno!= 420
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 510) && movecontact
trigger2 = (stateno = 310) && (var(15)>0 || var(14) >0) && movecontact
trigger3 = (AILevel >= 6) && (var(13) = 1)
trigger3 = (stateno = 510) && (p2bodydist x <= 59)
trigger4 = (p2stateno = [5130,5132]) && (p2dist x < 60) && random < 300;OTG
value = 420

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 410) && movecontact
trigger2 = AILevel < 3
trigger2 = (stateno = 500) && movecontact
trigger3 = (AILevel >= 6) && (var(13) = 1) && (stateno != 510)
trigger3 = p2stateno = 5110 && (p2bodydist x <= 85)
value = 510

[State -1, Crouching Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype !=A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 500) && movecontact
value = 410

[State -1, Alternate start for Easy AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype!= A)
trigger1 = AILevel >= 4
trigger1 = (stateno = 400) && movecontact
trigger2 = p2stateno != 7600
trigger2 = Ctrl
trigger2 = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger2 = (p2bodydist x <= 40) && (random < 50)
trigger2 = AILevel < 3
value = 500

[State -1, Combo start for Med/Hard AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = p2stateno != 7600
triggerall = (Ctrl) && (statetype = S)
triggerall = (p2stateno != [120,155]) && (p2stateno != [5100,5150])
trigger1 = (p2bodydist x <= 40) && (random < 300)
trigger2 = (anim = 1601)&&(var(14)<2) ;Off of Shadow Thrust Extender
trigger3 = (stateno = [1700,1720]) && (movecontact)&&(var(15)<2) ;Off of Shadow Kick Extender
value = 400
;End Crouching Chain

[State -1,  Always superjump on launch]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 3
triggerall = (random <= 900)
trigger1 = (stateno = 420) && movehit
value = 7500

;OTG  (while Rogue is in the Air)
[State -1, Dive Kick]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2stateno = [5110,5120]
trigger1 = var(38)=0
value = 721

;OTG (while Rogue is not the Air)
[State -1, Power Dive Punch]
type = ChangeState
triggerall = var(59)
triggerall = var(24)=0
triggerall = AILevel >= 4
triggerall = statetype != A
triggerall = p2bodydist X >= 70
trigger1 = p2stateno = [5110,5120]
value = 1540+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])

;Start Air Chain
[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 710) && movecontact && (random = [0,500])
value = 720

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 710) && movecontact && (random = [501,999])
value = 620

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
trigger1 = (stateno = 610) && movecontact
value = 710

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
value = 700

[State -1, Air Chain Combo]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (statetype = A)
triggerall = prevstateno != 600
trigger1 = (p2bodydist x <= 25) && (random <= 150)
trigger2 = (p2bodydist x <= 25) && (random <= 750) && (stateno = [7000,7100])
value = 600
;End Air Chain

[State -1, Start air chain after medium charge attack]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel >= 4
triggerall = prevstateno != 600
trigger1 =  (stateno = [1750,1770]) && movecontact ;Air Shadow Thrust
value = 600

[State -1, Followup jump attack with crouch hard kick]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && (statetype != A)
triggerall = (Ctrl) && (p2movetype = H) ;opponent has been hit
triggerall = AILevel >= 4
trigger1 = (p2bodydist X <= 25) ;close to opponent
trigger1 = Prevstateno = 50 ;falling from attack (which means the previous hit must have been an air attack)
trigger1 = (random <= 750) ;This will happen 75% of the time that the other triggers are true
value = 520


;---------------------------------------------------------------------------
[State -1, Stolen Power] ;Ground
type = ChangeState
value = 17094 + Var(40)
triggerall = numhelper(171211)=0
triggerall = numhelper(371211)=0
triggerall = numproj = 0
triggerall = var(59)
triggerall = AILevel >= 4
triggerall = statetype = S
triggerall = p2bodydist Y = [-40,5]
triggerall = Var(40) >= 14
triggerall = random = [100,200]
triggerall = prevstateno != [17204,17300]
trigger1 = ctrl
;trigger2 = var(51)


;---------------------------------------------------------------------------
[State -1, Power Drain]
type = ChangeState
value = 1480+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])
triggerall = var(59)
triggerall = AIlevel >= 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X > 70
triggerall = p2bodydist Y = [-40,5]
;triggerall =  -75 <= p2bodydist y <= -75+var(7)
triggerall = random < 200-50*(prevstateno = [1480,1510])
trigger1 = ctrl
trigger2 = var(9)

;---------------------------------------------------------------------------
[State -1, Repeating Punch]
type = ChangeState
value = 1450+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])
triggerall = var(59)
triggerall = AIlevel >= 4
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X > 70
triggerall = p2bodydist Y = [-40,5]
;triggerall =  -75 <= p2bodydist y <= -75+var(7)
triggerall = random < 200-50*(prevstateno = [1450,1470])
trigger1 = ctrl
trigger2 = var(9)


;---------------------------------------------------------------------------
[State -1, Rising Repeating Punch]
type = ChangeState
value = 1510+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])
triggerall = var(59)
triggerall = AIlevel >= 6
triggerall = statetype != A && enemynear,statetype != A
triggerall = p2statetype != L && enemynear,movetype = H
triggerall = p2bodydist X = [0,50]
;triggerall = p2bodydist Y = [-5,5]
triggerall =  -60 <= p2bodydist y <= -60+var(7)
triggerall = random < 200-50*(prevstateno = [1510,1530])
trigger1 = ctrl
trigger2 = var(9)


;---------------------------------------------------------------------------
[State -1, Rising Repeating Punch]
type = ChangeState
value = 1510+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])
triggerall = var(59)
triggerall = AIlevel >= 6
triggerall = statetype != A && enemynear,statetype = A
;triggerall = p2statetype != L
triggerall = p2bodydist X >= 70
triggerall = p2bodydist Y = [-340,-70]
triggerall = p2bodydist Y/p2bodydist X = [-1.3,-0.7]
;triggerall =  -60 <= p2bodydist y <= -60+var(7)
triggerall = random < 200-50*(prevstateno = [1510,1530])
trigger1 = ctrl
trigger2 = var(9)


;---------------------------------------------------------------------------
[State -1, Power Dive Punch]
type = ChangeState
value = 1540+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])
triggerall = var(59)
triggerall = AILevel >= 4
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X >= 70
triggerall = p2bodydist Y = [-40,5]
;triggerall = p2bodydist Y/p2bodydist X = [0.8,1.3]
;triggerall =  -60 <= p2bodydist y <= -60+var(7)
triggerall = random < 200-50*(prevstateno = [1450,1470])
trigger1 = ctrl
trigger2 = var(9)

;---------------------------------------------------------------------------
[State -1, Jump in]
type = ChangeState
value = ifelse(random < 500,100,631)
triggerall = stateno != 100 || stateno != 631
triggerall = var(59)
triggerall = AIlevel >= 7
trigger1 = p2bodydist X = [120,270]
trigger1 = statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = random < 100

;---|Easy AI Specials|----------------------------------------------
;---------------------------------------------------------------------------
[State -1, Repeating Punch]
type = ChangeState
value = 1450+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])
triggerall = var(59)
triggerall = AIlevel >= 4
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X > 70
triggerall = p2bodydist Y = [-40,5]
;triggerall =  -75 <= p2bodydist y <= -75+var(7)
triggerall = random < 200-50*(prevstateno = [1450,1470])
trigger1 = ctrl
trigger2 = var(9)


;---------------------------------------------------------------------------
[State -1, Rising Repeating Punch]
type = ChangeState
value = 1510+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])
triggerall = var(59)
triggerall = AIlevel >= 2
triggerall = statetype != A && enemynear,statetype != A
triggerall = p2statetype != L && enemynear,movetype = H
triggerall = p2bodydist X = [0,50]
;triggerall = p2bodydist Y = [-5,5]
triggerall =  -60 <= p2bodydist y <= -60+var(7)
triggerall = random < 50-40*(prevstateno = [1510,1530])
trigger1 = ctrl
trigger2 = var(9)


;---------------------------------------------------------------------------
[State -1, Rising Repeating Punch]
type = ChangeState
value = 1510+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])
triggerall = var(59)
triggerall = AIlevel >= 2
triggerall = statetype != A && enemynear,statetype = A
;triggerall = p2statetype != L
triggerall = p2bodydist X >= 70
triggerall = p2bodydist Y = [-340,-70]
triggerall = p2bodydist Y/p2bodydist X = [-1.3,-0.7]
;triggerall =  -60 <= p2bodydist y <= -60+var(7)
triggerall = random < 50-40*(prevstateno = [1510,1530])
trigger1 = ctrl
trigger2 = var(9)


;---------------------------------------------------------------------------
[State -1, Power Dive Punch]
type = ChangeState
value = 1540+10*(p2bodydist x = [100,170]) + 20*(p2bodydist x = [171,270])
triggerall = var(59)
triggerall = AIlevel >= 3
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X >= 70
triggerall = p2bodydist Y = [-40,5]
;triggerall = p2bodydist Y/p2bodydist X = [0.8,1.3]
;triggerall =  -60 <= p2bodydist y <= -60+var(7)
triggerall = random < 50-40*(prevstateno = [1450,1470])
trigger1 = ctrl
trigger2 = var(9)



;----|AI Hypers |---------------------------------------------------


;-------------------------------------------------------------------------

[State -1,Goodnight Sugah]
type = ChangeState
value = 3000
triggerall = enemynear,life > 300
triggerall = Var(59) && (stateno != [7720,7721]) && (stateno != [3000,3500])
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X > 70
triggerall = p2bodydist y = [-5,5]
triggerall = random < 300
triggerall = p2statetype != L
trigger1 = ctrl && (AILevel >= 7)
trigger2 = var(51) && random < 100+100*(var(9) > 0) && (AILevel >= 7)
trigger3 = power >= 2750
trigger3 = random < AILevel * 20
trigger4 = stateno != 3000
trigger4 = (p2stateno = [5130,5132]) && (p2dist x < 60) && (random = [500,599]);OTG

;-------------------------------------------------------------------------

[State -1, Hyper Repeating Punch]
type = ChangeState
value = 3040
triggerall = enemynear,life > 300
triggerall = Var(59) && (stateno != [7720,7721]) && (stateno != [3000,3500])
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X > 70
triggerall =  p2bodydist y = [-5,5]
triggerall = random < 300; + 100*(enemynear,movetype, = H)
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl && (AILevel >= 6)
trigger2 = var(51) && random < 100+100*(var(9) > 0) && (AILevel >= 6)
trigger3 = power >= 2750
trigger3 = random < AILevel * 20
trigger4 = stateno != 3040
trigger4 = (p2stateno = [5130,5132]) && (p2dist x < 60) && (random = [600,699]);OTG

[State -1, Stolen Hyper]
type = ChangeState
value = 37094 + Var(40)
triggerall = power >= 1000
triggerall = numhelper(171211)=0
triggerall = numhelper(371211)=0
triggerall = numproj = 0
triggerall = var(59)
triggerall = statetype = S
triggerall = p2bodydist y = [-5,5]
triggerall = random < 400
triggerall = Var(40) >= 10
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl && (AILevel >= 6)
trigger2 = power >= 2750
trigger2 = random < AILevel * 20
trigger3 = stateno != 3000
trigger3 = (p2stateno = [5130,5132]) && (p2dist x < 60) && (random = [700,799]);OTG


[State -1, Random]
type = ChangeState
value = 3900
triggerall = var(59)
triggerall = random < 50
triggerall = power >= 2000
triggerall = statetype != A
triggerall = p2statetype != L && p2stateno != 5120
triggerall = Var(40) < 10
trigger1 = ctrl && (AILevel >= 7)
trigger2 = var(51) && (AILevel >= 7)

;---------------------------------------------------------------------------
[State -1, Down Kick]
type = null;ChangeState
value = 8018
triggerall = Var(59)
triggerall = AIlevel >= 7
triggerall = stateno != [7720,7721]
triggerall = StateType = A
triggerall = Ctrl
triggerall = Vel Y > 2
triggerall = Pos Y < -170
trigger1 = random < 200
trigger1 = ctrl


;---|Player Controls|-------------------------------------------------------

;---------------------------------------------------------------------------

[State -1, Random Hyper]
type = ChangeState
value = ifelse((var(37)=1),37125,3900)
triggerall = !var(59)
triggerall = command = "Random"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP,SA,SP) && movecontact



;---------------------------------------------------------------------------

[State -1, Goodnight Sugah]
type = ChangeState
value = ifelse((var(37)=1),37104,3000)
triggerall = !var(59)
triggerall = command = "Goodnight Sugah"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP,SA,SP) && movecontact


;---------------------------------------------------------------------------

[State -1, Hyper Repeating Punch]
type = ChangeState
value = 3040
triggerall = !var(59)
triggerall = command = "Hyper Repeating Punch"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP,SA,SP) && movecontact


[State -1, Stolen Power] ;Ground or Air
type = ChangeState
value = 37094 + Var(40)
triggerall = power >= 1000
triggerall = numhelper(171211)=0
triggerall = numhelper(371211)=0
triggerall = numproj = 0
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = statetype = S
triggerall = command = "HyperSteal"
triggerall = Var(40) >= 10
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP,SA,SP) && movecontact

[State -1, Stolen Power] ;Ground or Air
type = ChangeState
value = 37126
triggerall = power >= 1000
triggerall = numhelper(171211)=0
triggerall = numhelper(371211)=0
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "HyperSteal"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP,SA,SP) && movecontact



;---------------------------------------------------------------------------
[State -1, Rising Repeating Punch Light]
type = ChangeState
value = 1510
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "FDF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact


;---------------------------------------------------------------------------
[State -1, Rising Repeating Punch Medium]
type = ChangeState
value = 1520
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "FDF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact


;---------------------------------------------------------------------------
[State -1, Rising Repeating Punch Hard]
type = ChangeState
value = 1530
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "FDF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Power Dive Punch Light]
type = ChangeState
value = 1540
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=420 && time > 5


;---------------------------------------------------------------------------
[State -1, Power Dive Punch Medium]
type = ChangeState
value = 1550
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=420 && time > 5


;---------------------------------------------------------------------------
[State -1, Power Dive Punch Hard]
type = ChangeState
value = 1560
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "QCB_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=420 && time > 5

;---------------------------------------------------------------------------
[State -1, Flight]
type = ChangeState
value = 1330
triggerall = !var(59) && !var(54)
triggerall = var(37) = 1
triggerall = command = "DD_a"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Flight Cancel]
type = ChangeState
value = 1331
triggerall = !var(59) && var(54)
triggerall = var(37) = 1
triggerall = command = "DD_a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Repeating Punch Near]
type = ChangeState
value = 1450
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "QCF_x"
triggerall = stateno != [1450,1470]
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=420 && time > 5


;---------------------------------------------------------------------------
[State -1, Repeating Punch Medium]
type = ChangeState
value = 1460
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "QCF_y"
triggerall = stateno != [1450,1470]
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=420 && time > 5


;---------------------------------------------------------------------------
[State -1, Repeating Punch Far]
type = ChangeState
value = 1470
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "QCF_z"
triggerall = stateno != [1450,1470]
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=420 && time > 5

;---------------------------------------------------------------------------
;==============================Stolen Powers================================
;---------------------------------------------------------------------------

[State -1, Power Drain]
type = ChangeState
value = 1480
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "QCB_a"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Power Drain]
type = ChangeState
value = 1490
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Power Drain]
type = ChangeState
value = 1500
triggerall = !var(59)
triggerall = var(37) = 0
triggerall = command = "QCB_c"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Mega Buster Shoot]
type = ChangeState
value = 2002
triggerall = !var(59)
triggerall = Var(40) = 12 || Var(40) = 49
triggerall = command != "holddown"
triggerall = ctrl
trigger1 = var(41) > 1 && command = "Release_a"
trigger2 = var(41) > 1 && command = "Release_b"
trigger3 = var(41) > 1 && command = "Release_c"

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Ground
type = ChangeState
value = 17094 + Var(40)
triggerall = numhelper(171211)=0
triggerall = numhelper(371211)=0
triggerall = numhelper(1101)=0
triggerall = numproj = 0
triggerall = !var(59)
triggerall = statetype = S
triggerall = command = "QCF_a" || command = "QCF_b" || command = "QCF_c"
triggerall = Var(40) >= 10
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=220 && time > 5

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Air
type = ChangeState
value = 17094 + Var(40)
triggerall = numhelper(171211)=0
triggerall = numhelper(371211)=0
triggerall = numproj = 0
triggerall = !var(59)
triggerall = statetype = A
triggerall = command = "QCF_a" || command = "QCF_b" || command = "QCF_c"
triggerall = (Var(40)= [17,19])||(var(40)=60)||(var(40)=63)||(var(40)=66)
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=220 && time > 5

;---------------------------------------------------------------------------
[State -1, Rising Repeating Punch Hard]
type = ChangeState
value = 1530
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = command = "FDF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
;trigger3 = movecontact > 0 && stateno=320 && time > 5
;trigger4 = movecontact > 0 && stateno=420 && time > 5

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Ken
type = ChangeState
value = 17107
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "FDF_y"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Bastion
type = ChangeState
value = 17130
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "FDF_z"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Repeating Punch Far]
type = ChangeState
value = 1470
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = command = "QCF_x"
triggerall = stateno != [1450,1470]
trigger1 = ctrl
trigger2 = var(51)
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=420 && time > 5

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Bass
type = ChangeState
value = 17105
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCF_y"
trigger1 = ctrl
trigger2 = var(51)
trigger3 = movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Ryu
type = ChangeState
value = 17104
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCF_z"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Power Dive Punch Hard]
type = ChangeState
value = 1560
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact
trigger3 = movecontact > 0 && stateno=320 && time > 5
trigger4 = movecontact > 0 && stateno=420 && time > 5

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Juggernaut
type = ChangeState
value = 17121
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCB_y"
trigger1 = ctrl
trigger2 = var(51)
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Magneto
type = ChangeState
value = 17109
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCB_z"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Gambit
type = ChangeState
value = 17114
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "BF_x"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Colossus
type = ChangeState
value = 17120
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "BF_y"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Quicksilver
type = ChangeState
value = 17127
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "BF_z"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Wolverine
type = ChangeState
value = 17117
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "FDF_a"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Emma
type = ChangeState
value = 17108
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "FDF_b"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Psylocke
type = ChangeState
value = 17111
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "FDF_c"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Iceman
type = ChangeState
value = 17112
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCF_a"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Cyclops
type = ChangeState
value = 17110
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCF_b"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Storm
type = ChangeState
value = 17113
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCF_c"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Nightcrawler
type = ChangeState
value = 17126
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCB_a"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Omega Red
type = ChangeState
value = 17115
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCB_c"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Bishop
type = ChangeState
value = 17118
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;StrongGuy
type = ChangeState
value = 17123
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "BF_a"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Beast
type = ChangeState
value = 17124
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "BF_b"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact

;---------------------------------------------------------------------------
[State -1, Stolen Powers] ;Cable
type = ChangeState
value = 17122
triggerall = !var(59)
triggerall = var(37) = 1
triggerall = statetype = S
triggerall = command = "BF_c"
trigger1 = ctrl
trigger2 = (hitdefattr = SCA, NA,NP) && movecontact


;======Guard Push======================

;---------------------------------------------------------------------------
;Guard Push (Standing)
[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype != A
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]


;---------------------------------------------------------------------------
;Guard Push (Crouching)
[State -1, Guard Push]
type = null;ChangeState
value = 7615
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = C
trigger1 = stateno = [150,153]



;---------------------------------------------------------------------------
;Air Dash
;[State -1, Air Dash Forward Up]
;type = ChangeState
;value = 1341
;triggerall = !var(59)
;triggerall = statetype = A
;triggerall = ctrl
;trigger1 = command = "holdfwd" && command = "holdup"
;trigger1 = command = "x" && command = "y"
;
;
;;---------------------------------------------------------------------------
;;Air Dash
;[State -1, Air Dash Back Up]
;type = ChangeState
;value = 1346
;triggerall = !var(59)
;triggerall = statetype = A
;triggerall = ctrl
;trigger1 = command = "holdback" && command = "holdup"
;trigger1 = command = "x" && command = "y"
;
;
;;---------------------------------------------------------------------------
;;Air Dash
;[State -1, Air Dash Back Down]
;type = ChangeState
;value = 1347
;t;riggerall = !var(59)
;t;riggerall = statetype = A
;triggerall = ctrl
;trigger1 = command = "holdback" && command = "holddown"
;trigger1 = command = "x" && command = "y"

;---------------------------------------------------------------------------
;Air Dash
;[State -1, Air Dash Forward Down]
;type = ChangeState
;value = 1343
;triggerall = !var(59)
;triggerall = statetype = A
;triggerall = ctrl
;trigger1 = command = "holdfwd" && command = "holddown"
;trigger1 = command = "x" && command = "y"

;---------------------------------------------------------------------------
;Air Dash
;[State -1, Air Dash Up]
;type = ChangeState
;value = 1342
;triggerall = !var(59)
;triggerall = statetype = A
;triggerall = ctrl
;trigger1 = command = "holdup"
;trigger1 = command = "x" && command = "y"
;

;---------------------------------------------------------------------------
;Air Dash
;[State -1, Air Dash Down]
;type = ChangeState
;value = 1344
;triggerall = !var(59)
;triggerall = statetype = A
;triggerall = ctrl
;trigger1 = command = "holddown"
;trigger1 = command = "x" && command = "y"


;---------------------------------------------------------------------------
;Air Dash
;[State -1, Air Dash Back]
;type = ChangeState
;value = 1345
;triggerall = !var(59)
;triggerall = statetype = A
;triggerall = ctrl
;;trigger1 = command = "BB"
;trigger1 = command = "holdback"
;trigger1 = command = "x" && command = "y"
;;---------------------------------------------------------------------------
;;Air Dash
;[State -1, Air Dash Forward]
;type = ChangeState
;value = 1340
;triggerall = !var(59)
;triggerall = statetype = A
;triggerall = ctrl
;;trigger1 = command = "FF"
;trigger1 = command = "x" && command = "y"
;
;
;
;
;---------------------------------------------------------------------------
;Guard Push (Air)
[State -1, Guard Push]
type = null;ChangeState
value = 7620
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = Stateno != 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"

;---------------------------------------------------------------------------


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = Stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"

[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = !var(59)
triggerall = Stateno != 101
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "FF"

;---------------------------------------------------------------------------

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall = !var(59)
triggerall = command = "holdfwd"||command = "holdback"
triggerall = command = "z"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------

[State -1,Ground Toss]
type = null;ChangeState
value = 830
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S


;---------------------------------------------------------------------------

[State -1,Air Throw]
type = ChangeState
value = 920
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, statetype = A
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "z"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = A
trigger1 = pos Y < -50

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59) && AILevel = 0
triggerall = command = "Taunt"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Taunt w/jack]
type = ChangeState
value = 5905
triggerall = !Var(59) && AILevel = 0
triggerall = command = "AllPower_L"
trigger1 = teamside = 1 && facing = 1
trigger2 = teamside = 2 && facing = -1

;---------------------------------------------------------------------------
[State -1, Taunt w/o jacket]
type = ChangeState
value = 5905
triggerall = !Var(59) && AILevel = 0
triggerall = command = "AllPower_R"
trigger1 = teamside = 1 && facing = -1
trigger2 = teamside = 2 && facing = 1

;---------------------------------------------------------------------------
[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command != "holddown"
triggerall= command = "y"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 300

;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,215]
trigger3 = stateno = [300,315]

;---------------------------------------------------------------------------
[State -1, Stand Kick]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200

;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,215]
trigger3 = stateno = 300

;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,215]
trigger3 = stateno = [300,315]

;---------------------------------------------------------------------------
[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 300
trigger4 = stateno = 400
trigger5 = stateno = 500

;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,215]
trigger3 = stateno = [300,315]
trigger4 = stateno = [400,415]
trigger5 = stateno = [500,515]

;---------------------------------------------------------------------------
[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = !var(59)
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 400

;---------------------------------------------------------------------------
[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = !var(59)
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,215]
trigger3 = stateno = 300
trigger4 = stateno = [400,415]
trigger5 = stateno = 500

;---------------------------------------------------------------------------
[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,215]
trigger3 = stateno = [300,315]
trigger4 = stateno = [400,415]
trigger5 = stateno = [500,515]

;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 700

;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,615]
trigger3 = stateno = [700,715]

;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600

;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,615]
trigger3 = stateno = 700

;---------------------------------------------------------------------------
[State -1, Air Strong Kick 2]
type = ChangeState
value = 721
triggerall = !var(59)
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,615]
trigger3 = stateno = [700,715]

;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,615]
trigger3 = stateno = [700,715]

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7710
triggerall = !var(59)
triggerall = statetype != A
trigger1 = command = "Super Jump"
trigger1 = ctrl
trigger2 = command = "Super Jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = stateno = 320 ;&& time = 10
trigger3 = command = "Super Jump" || command = "holdup"
trigger3 = MoveHit
trigger3 = stateno = 420 ;&& time  = 10

;---------------------------------------------------------------------------
[State -1, Roll recovery foward]
type = null;ChangeState
value = 7800
triggerall = !var(59)
triggerall = stateno = 5120
trigger1 = command = "holdfwd"
trigger1 = Time = 1

;---------------------------------------------------------------------------
[State -1, Roll recovery Backward]
type = null;ChangeState
value = 7801
triggerall = !var(59)
triggerall = stateno = 5120
trigger1 = command = "holdback"
trigger1 = Time = 1
