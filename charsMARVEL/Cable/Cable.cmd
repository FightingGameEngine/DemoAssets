
;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

;Hyper Viper
[Command]
name = "Hyper Viper"
command = ~D, F, x+y
[Command]
name = "Hyper Viper"
command = ~D, F, x+z
[Command]
name = "Hyper Viper"
command = ~D, F, z+y

;Telekinetic
[Command]
name = "Telekinetic"
command = ~D, B, a+b
[Command]
name = "Telekinetic"
command = ~D, B, a+c
[Command]
name = "Telekinetic"
command = ~D, B, c+b

;Time Flip
[Command]
name = "Time Flip"
command = ~D, F, a+b
[Command]
name = "Time Flip"
command = ~D, F, c+b
[Command]
name = "Time Flip"
command = ~D, F, a+c

;HOPE FENIX
[Command]
name = "Fenix"
command = ~D, F, c+z



;-| Special Motions |------------------------------------------------------

;Viper Beam
[Command]
name = "QCF_x"
command = ~D, F, x

;Viper Beam
[Command]
name = "QCF_y"
command = ~D, F, y

;Viper Beam
[Command]
name = "QCF_z"
command = ~D, F, z


;Crackdown
[Command]
name = "QCF_a"
command = ~D, F, a

;Crackdown
[Command]
name = "QCF_b"
command = ~D, F, b

;Crackdown
[Command]
name = "QCF_c"
command = ~D, F, c


;Scimitar
[Command]
name = "DD_x"
command = ~F,D,F, x

;Scimitar
[Command]
name = "DD_y"
command = ~F,D,F, y

;Scimitar
[Command]
name = "DD_z"
command = ~F,D,F, z

;Psi-Charge
[Command]
name = "QCB_x"
command = ~D, B, x

;Psi-Charge
[Command]
name = "QCB_y"
command = ~D,  B, y

;Psi-Charge
[Command]
name = "QCB_z"
command = ~D,  B, z

;Electrap
[Command]
name = "QCB_a"
command = ~D,  B, a

;Electrap
[Command]
name = "QCB_b"
command = ~D,  B, b

;Electrap
[Command]
name = "QCB_c"
command = ~D,  B, c

;Flight
;[Command]
;name = "DD_ab"
;command = ~D, D,a+b


;[Command]
;name = "FFx"
;command = F, F, x


;[Command]
;name = "FFy"
;command = F, F, y


;[Command]
;name = "Oiuchi"
;command = $U,a


;[Command]
;name = "Giga Crush"
;command = x+y


;[Command]
;name = "Recharge Power"
;command = y+z


[Command]
name = "Counter"
command = /B,c


[Command]
name = "Super Jump"
command = D,$U



;----|Combo Motions|---------------------------------------


;----|Throw Motions|---------------------------------------
;Throw, F/B + z
;Throw, F/B + c


;[Command]
;name = "Forward Slam"  ;while standing
;command = ~B,F,z


;Toss
;[Command]
;name = "Toss"
;command = ~B,F,y



;----|Basic Motions|---------------------------------------


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
command = z+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
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




; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;This is not a move, but it sets up var(3) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(17) = 0

[State -1, Move Cancel condition Reset]
type = VarSet
trigger1 = 1
var(51) = 0

[State -1, Move Miss Reset]
type = VarSet
trigger1 = 1
var(9) = 0

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 300
trigger3 = stateno = 400
trigger4 = stateno = 500
var(17) = 1

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = 310
trigger3 = stateno = 410
trigger4 = stateno = 510
var(17) = 2

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 220
trigger2 = stateno = [320,321]
trigger3 = stateno = [420,421]
trigger4 = stateno = 520
var(17) = 3

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 600
trigger2 = stateno = 700
var(17) = 5

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 610
trigger2 = stateno = 710
var(17) = 6

[State -1, Combo condition Check]
type = VarSet
triggerall = statetype = A
triggerall = movecontact
trigger1 = stateno = 620
trigger2 = stateno = 720
var(17) = 7

[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [200,790]
trigger2 = stateno = [8016,8018]
var(51) = 1

[State -1, Normal to Special to Hypers]
type = VarSet
trigger1 = stateno = [1450,1569]
;trigger2 = stateno = [1240,1300]
var(51) = 2

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
var(7) = floor(abs(enemynear,const(size.head.pos.y)) - p2bodydist y)


;[State -1, AI Activation]
;type = varset
;triggerall = AILevel > 1
;triggerall = (roundstate = 2) && (var(59) = 0)
;trigger1 = Random <= (ifelse(AILevel =1,40,(AILevel-2)*100))
;v = 59
;value = 1

;[State -1, AI Deactivation]
;type = varset
;triggerall = AIlevel < 8
;triggerall = var(59) = 1
;trigger1 = Random > ((AILevel-2)*100)
;trigger2 = roundstate != 2
;v = 59
;value = 0

;===========================================================================
;===========================================================================
;------|AI Moves|-----------------------------------------------------------

[State -1,AI]
type = Varset
trigger1 = !Var(56)
var(56) = 1

;------------------------------------------------------------------
[State -1,AI]
type = Varset
trigger1 = var(59) && var(56) < 1
var(59) = 0 + (random < 10)
;------------------------------------------------------------------

;-----------------------------------------------------------------------------
;max hit combo each type
[State -1]
type = varset
trigger1 = var(36) != 1 
trigger2 = var(56) != 4
var(36) = 1

;max hit combo each type
[State -1]
type = varset
trigger1 = var(56) = 4
trigger1 = var(36) != 4
var(36) = 4
;---------------------------------------------------------------------------

[State -1,AI]
type = Varset
triggerall = var(59)
triggerall = time = 1
trigger1 = p2life <= 0
trigger2 = life <= 0
var(59) = 0


;---------------------------------
[state -1,Mode Set]
type = null;VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "x" && command = "y"
var(56) = 0


[state -1,Mode Set]
type = null;VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "a" && command = "b"
var(56) = 1


[state -1,Mode Set]
type = null;VarSet
triggerall = !var(59)
trigger1 = command = "holds"
trigger1 = command = "z" && command = "c"
var(56) = 4

;---------------------------------------------------------------------------
[State -1, Taunt]
type = null;ChangeState
value = 195
triggerall = Var(59)
triggerall = ctrl
triggerall = StateType = S
triggerall = random <= 100
trigger1 = p2statetype = L


;---------------------------------------------------------------------------
[State -1, testing flight atk mode]
type = null;ChangeState
value = ifelse(Statetype = A, 1330,1333)
triggerall = Var(59) && enemynear,stateno != 7321
triggerall = !var(54)
triggerall = ctrl && enemynear,movetype != A
trigger1 = random < 1+300*(life < lifemax/2)

;---------------------------------------------------------------------------
[State -1,Flight Mode]
type = null;ChangeState
triggerall = Var(59) && !Var(54) && var(51) = 1 && !var(19) && !var(20) && !var(21)
;triggerall = Var(54) = 0
;triggerall = var(51) = 1
triggerall = movetype = A
triggerall = inguarddist
trigger1 = random < 700
value = 1330


;---------------------------------------------------------------------------
[State -1,Flight Cancel]
type = null;ChangeState
triggerall = Var(59) && Var(54) && var(51) = 1 && !var(19) && !var(20) && !var(21)
;triggerall = Var(54)
;triggerall = var(51) = 1
;triggerall = movetype = A
triggerall = inguarddist
trigger1 = ctrl
trigger1 = random < 700
value = 1331


;---------------------------------------------------------------------------
[State -1,Flight Dodge]
type = null;ChangeState
triggerall = Var(59) && Var(54); && var(51) = 1 && !var(19) && !var(20) && !var(21)
;triggerall = Var(54)
;triggerall = var(51) = 1
;triggerall = movetype = A
trigger1 = inguarddist
trigger1 = random < 700
value = 1342

;---------------------------------------------------------------------------
[State -1, Oiuchi]
type = null;ChangeState
value = 500+10*(random%3)
triggerall = Var(59)
triggerall = p2bodydist x < 100
trigger1 = p2statetype = L && statetype != A && ctrl && p2stateno != 5120

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 7720;ifelse(FrontEdgeDist < 90,7720,7720)
triggerall = numenemy > 1
triggerall = enemynear(0),life > 0 && enemynear(1),life > 0
triggerall = Var(59)
triggerall = var(57) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = random < 700
trigger1 = screenpos x = [enemynear(0),screenpos x,enemynear(1),screenpos x]
trigger2 = screenpos x = [enemynear(1),screenpos x,enemynear(0),screenpos x]

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
triggerall = numenemy < 2
triggerall = Var(59)
triggerall = BackEdgeDist > 90
triggerall = stateno != 105
triggerall = p2bodydist x < 100
triggerall = ctrl
triggerall = StateType != A
trigger1 = p2statetype = L && random < 300

;---------------------------------------------------------------------------
[State -1]
type = null;ChangeState
value = 1415
triggerall = numenemy < 2
triggerall = Var(59)
triggerall = p2bodydist X <= 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = enemynear,statetype != A
trigger1 = BackEdgeDist < 20
trigger1 = random < 500
trigger2 = p2statetype = L && random < 300
trigger2 = BackEdgeDist < 50

;---------------------------------------------------------------------------
[State -1, anti crouch spam]
type = ChangeState
value = 131
triggerall = Var(59)
triggerall = statetype != A
triggerall = p2bodydist x < 80
triggerall = random <= 900
triggerall = p2statetype = A && ctrl
trigger1 = prevstateno = 5120
trigger2 = prevstateno = 52

;---------------------------------------------------------------------------
[State -1, Reversal]
type = null;ChangeState
value = 7970
triggerall = Var(59)
triggerall = var(56) > 0
triggerall = p2movetype = A
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = enemynear, hitdefattr = SCA, NA, SA, HA, AA,AP, NT, ST,HT, NP, SP, HP
trigger1 = p2bodydist X <= 80
trigger1 = random < 100

;---------------------------------------------------------------------------
;Escape

;[State -1]
;type = ChangeState
;triggerall = var(59) && Stateno != [7800,7801]
;triggerall = p2bodydist x < 100
;triggerall = movetype != A
;triggerall = p2stateno != 0
;triggerall = StateType != A
;trigger1 = p2stateno = var(43)
;trigger2 = p2stateno = var(44)
;trigger3 = p2stateno = var(45)
;trigger4 = p2stateno = var(46)
;trigger5 = p2stateno = var(47)
;trigger6 = p2stateno = var(48)
;value = 7800 + (backedgedist > 100)

[State -1]
type = null;ChangeState
triggerall = var(59)
triggerall = p2bodydist x < 80
triggerall = movetype != A
triggerall = p2stateno != 0
triggerall = StateType = A
triggerall = p2statetype = A
trigger1 = p2stateno = var(43)
trigger2 = p2stateno = var(44)
trigger3 = p2stateno = var(45)
trigger4 = p2stateno = var(46)
trigger5 = p2stateno = var(47)
trigger6 = p2stateno = var(48)
trigger7 = p2stateno = var(49)
value = 7620


;-------------------------------------------------------------------------------
;Guarding states

;---------------------------------------------------------------------------


[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155]); && !var(54)
triggerall =!(enemynear,hitdefattr=SCA,AT)
;triggerall = statetype != A
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
triggerall = p2bodydist x =[0,40]
triggerall = StateType = S
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Guard Push (Crouching)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7615
triggerall = Var(59)
triggerall = p2bodydist x =[0,40]
triggerall = StateType = C
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Guard Push (Air)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 7620
triggerall = Var(59)
triggerall = p2bodydist x =[0,40]
triggerall = StateType = A
trigger1 = StateNo = [154,155]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

;------------------------------------
;AI Recovery Roll after KnockDown
;------------------------------------
[State -1]
type = ChangeState
value = 7800 + (backedgedist > 100)
triggerall = Var(59); && Stateno != [7800,7801]
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = p2bodydist x < 100
trigger1 = Random < 300;+500*(BackEdgeDist < 100)
trigger1 = Time >= 1

;------------------------------------
;AI Recovery Roll after KnockDown
;------------------------------------
[State -1]
type = null;ChangeState
value = 7801
triggerall = Var(59); && Stateno != [7800,7801]
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = p2bodydist x < 100
trigger1 = Random < 100+500*(BackEdgeDist > 100)
trigger1 = Time >= 1

;-----------------------------------------------------------------------------
;Basic Attacks

;---------------------------------------------------------------------------
[State -1, Follow Launcher]
type = ChangeState
value = 7720
triggerall = Var(59)
triggerall = movehit
trigger1 = stateno = 210 || stateno = 421
;trigger2 = (enemynear,HitDefAttr = SCA,HA,HP,HT)
;trigger2 = ctrl

;---------------------------------------------------------------------------
[State -1,AI run fwd]
type = null;ChangeState
value = 102
triggerall = var(59)
triggerall = stateno != 102
triggerall = statetype != A
triggerall = ctrl
triggerall = !inguarddist
trigger1 = enemynear,stateno = [21500,21504]
trigger1 = p2bodydist x > 50
;trigger1 = random <= 200
;trigger1 = (var(17) = [2,3]) && enemynear,movetype = H
;trigger1 = p2bodydist X > 50
;trigger1 = var(57) && random < 500
;trigger1 = p2bodydist x > 50


;---------------------------------------------------------------------------
;Throws


;---------------------------------------------------------------------------

[State -1, Throw]
type = ChangeState
value = 800;ifelse(random < 300,800,830)
triggerall = var(59)
triggerall = p2bodydist X <= 20
triggerall = random < 300
triggerall = statetype = S
trigger1 = p2bodydist y = [-25,25]
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger2 = enemynear,moveguarded

;---------------------------------------------------------------------------

;[State -1, Air Throw]
;type = ChangeState
;value = 920;ifelse(random < 300,920,950)
;triggerall = var(59)
;triggerall = p2bodydist X <= 20
;triggerall = p2bodydist y = [-25,25]
;triggerall = random < 300
;triggerall = P2statetype = A
;trigger1 = statetype = A && ctrl
;trigger1 = p2movetype != H
;trigger1 = pos Y < -50


;---------------------------------------------------------------------------
[State -1,AI run fwd]
type = ChangeState
value = 100
triggerall = var(59) && prevstateno != 100 ;&& random < 200
triggerall = stateno != 100
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = ctrl
trigger1 = p2movetype != A
trigger1 = p2bodydist X > 100
trigger1 = random <= 50
;trigger2 = (var(17) = [1,2]) && Movehit
;trigger2 = p2bodydist X > 50




;trigger1 = enemy, numproj = 0
;trigger1 = enemy, numhelper = 0

;---------------------------------------------------------------------------
[State -1,AI run back]
type = ChangeState
value = 105
triggerall = var(59)
triggerall = stateno != 105
triggerall = backedgedist > 70
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist X < 120
triggerall = random <= 200
;trigger2 = stateno = 512 && MoveGuarded

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
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1,AI standing light punch]
type = ChangeState
value = 200
triggerall = var(59)
triggerall = p2bodydist X = [0,80]
triggerall =  -90 <= p2bodydist y <= -90+var(7)
;triggerall =  -100 <= p2bodydist y <= 5
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 500
trigger1 = p2statetype != L && p2statetype != A
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 200

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = var(59)
triggerall = statetype != A
trigger1 = p2bodydist X = [0,45]
trigger1 = p2bodydist y = [-5,5]
trigger1 = p2statetype != A  && ctrl && random < 500
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 500
;trigger3 = p2statetype = L && statetype != A && ctrl && p2stateno != 5120




;---------------------------------------------------------------------------
[State -1, Stand Kick]
type = ChangeState
value = 300
triggerall = var(59)
triggerall = statetype != A
triggerall =  -80 <= p2bodydist y <= -60+var(7)
triggerall = p2bodydist X = [0,70]
;trigger1 = p2bodydist y = [-5,5]
trigger1 = ctrl
trigger1 = random < 300
trigger1 = p2statetype != L && p2statetype != A
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 300


;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = var(59)
triggerall = p2bodydist X = [0,40]
triggerall =  -60 <= p2bodydist y <= -50+var(7)
;triggerall = p2bodydist y = [-5,5]
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 300
trigger1 = p2statetype != L && p2statetype != A
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 400



;---------------------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59)
triggerall = p2bodydist X = [0,30]
triggerall =  -120 <= p2bodydist y <= -60+var(7)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = random < 400
trigger1 = p2movetype != A && p2statetype != L; && p2statetype != A
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 210
trigger4 = var(17) = 5 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
;[State -1, over head atk]
;type = ChangeState
;value = 590
;triggerall = var(59)
;triggerall = p2bodydist X = [4,70]
;triggerall =  -40 <= p2bodydist y <= -40+var(7)
;triggerall = statetype != A
;trigger1 = ctrl
;trigger1 = random < 100 + 100*(p2statetype = C)
;trigger1 = p2movetype != A && p2statetype != A && p2statetype != L
;trigger2 = var(17) = 1 && random < 100
;trigger3 = var(17) = 2 && var(20) = var(36)
;trigger3 = stateno != 590 && random < 200
;trigger4 = var(17) = 5 && stateno = 52 && random < 200


;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,50]
;triggerall = p2bodydist y = [-5,5]
triggerall =  -60 <= p2bodydist y <= -40+var(7)
trigger1 = p2statetype != L && p2statetype != A
trigger1 = ctrl && random < 300
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 510
trigger4 = var(17) = 5 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,100]
triggerall =  -80 <= p2bodydist y <= -70+var(7)
;triggerall = p2bodydist y = [-5,5]
trigger1 = p2movetype != A  && p2statetype != L;  && p2statetype != A
trigger1 = ctrl
trigger1 = random < 200
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 310
trigger4 = var(17) = 5 && stateno = 52 && random < 200



;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59)
triggerall = Statetype != A
triggerall = p2bodydist X = [0,70]
;triggerall =  -80 <= p2bodydist y <= -10+var(7)
triggerall = p2bodydist y = [-5,5]
trigger1 = random < 300
trigger1 = p2movetype != A && p2statetype != L && p2statetype != A
trigger1 = ctrl
trigger2 = var(17) = 1 && random < 300
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 410
trigger4 = var(17) = 5 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Stand Strong Kick 2]
type = ChangeState
value = 321
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,230]
triggerall =  -40 <= p2bodydist y <= -40 + var(7)
;triggerall =  -110 <= p2bodydist y <= -20+var(7)
trigger1 = ctrl && p2movetype != A && p2statetype != A
trigger1 = p2statetype != L && random < 250
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 321; && random < 200
;trigger5 = (stateno = 510 || stateno = [420,421]) && MoveHit && random < 300
trigger5 = var(17) = 6 && stateno = 52 && random < 200

;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,110]
triggerall =  -100 + 30*(P2bodydist X < 50) <= p2bodydist y <= -80 + var(7)
;triggerall =  -110 <= p2bodydist y <= -20+var(7)
trigger1 = ctrl && p2movetype != A && p2statetype != A
trigger1 = p2statetype != L && random < 250
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 320; && random < 200
;trigger5 = (stateno = 510 || stateno = [420,421]) && MoveHit && random < 300
trigger5 = var(17) = 6 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,320]
;triggerall = p2bodydist y = [-5,5]
triggerall =  -80 <= p2bodydist y <= -80+var(7)
trigger1 = ctrl && p2movetype != A
trigger1 = p2statetype != L && random < 200
;trigger1 = enemynear,statetype != C
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 220
trigger5 = var(17) = 6 && stateno = 52 && random < 200
;trigger5 = (stateno = 520 || Stateno = 512) && MoveHit; && random < 300



;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,100]
;triggerall =  -50 <= p2bodydist y <= -20+var(7)
triggerall = p2bodydist y = [-5,5]
trigger1 = p2statetype != L && ctrl  && random < 250  && p2statetype != A
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 520
;trigger5 = stateno = 420 && MoveHit
trigger5 = var(17) = 6 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [0,50]
triggerall =  -80 <= p2bodydist y <= -40+var(7)
;triggerall = p2bodydist y = [-5,5]
trigger1 = p2movetype != A && random < 250
trigger1 = p2statetype != L && ctrl  && p2statetype != A
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 420; && random < 300
;trigger5 = stateno = 520 && MoveHit && random < 300
trigger5 = var(17) = 6 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(59)
triggerall = statetype != A
triggerall = p2bodydist X = [110,320]
;triggerall =  -80 <= p2bodydist y <= -40+var(7)
triggerall = p2bodydist y/p2bodydist x = [-1.3,-0.8]
trigger1 = p2movetype != A && random < 250
trigger1 = p2statetype != L && ctrl;  && p2statetype != A
trigger2 = var(17) = 1 && random < 100
trigger3 = var(17) = 2 && random < 200
trigger4 = var(17) = 3 && var(21) = var(36)
trigger4 = stateno != 420; && random < 300
;trigger5 = stateno = 520 && MoveHit && random < 300
trigger5 = var(17) = 6 && stateno = 52 && random < 200



;---------------------------------------------------------------------------
;[State -1, Crouch Strong Punch 2]
;type = ChangeState
;value = 421
;triggerall = var(59)
;triggerall = statetype != A
;triggerall = p2bodydist X = [0,30]
;triggerall =  -120 <= p2bodydist y <= -60+var(7)
;;triggerall = p2bodydist y = [-5,5]
;trigger1 = p2movetype != A && random < 250
;trigger1 = p2statetype != L && ctrl  && p2statetype != A
;trigger2 = var(17) = 1 && random < 100
;trigger3 = var(17) = 2 && random < 200
;trigger4 = var(17) = 3 && var(21) = var(36)
;trigger4 = stateno != 421; && random < 300
;;trigger5 = stateno = 520 && MoveHit && random < 300
;trigger5 = var(17) = 6 && stateno = 52 && random < 200


;---------------------------------------------------------------------------
[State -1, Viper Beam]
type = ChangeState
value = 1450 + 10*(random%2)
triggerall = var(59)  && (stateno != [7720,7721])
;triggerall = statetype != A
triggerall = p2statetype != L; && enemynear,vel y >= 0
triggerall = p2bodydist X = [70,320]
;triggerall = p2bodydist Y = [-5,5]
triggerall =  -70 <= p2bodydist y <= -70+var(7)
triggerall = random < 100
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)

[State -1, Viper Beam]
type = ChangeState
value = 1450
triggerall = stateno = [1510,1530]
trigger1 = command = "QCF_x"

[State -1, Viper Beam]
type = ChangeState
value = 1460
triggerall = stateno = [1510,1530]
trigger1 = command = "QCF_y"

[State -1, Viper Beam]
type = ChangeState
value = 1470
triggerall = stateno = [1510,1530]
trigger1 = command = "QCF_z"

;---------------------------------------------------------------------------
[State -1, Crackdown]
type = ChangeState
value = 1480 + 10*(random%2)
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = [50,220]
;triggerall = (var(8) = [-120,5]) && enemynear,vel y >= 0
triggerall =  -100 <= p2bodydist y <= -10+var(7)
;triggerall = p2bodydist Y/p2bodydist X = [-1.5,-0.7]
triggerall = random < 100
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)


;---------------------------------------------------------------------------
[State -1, Scimitar]
type = ChangeState
value = 1510 + 10*(random%2)
triggerall = var(59); && (stateno != [7720,7721])
triggerall = statetype != A
triggerall = p2statetype != L; && enemynear,vel y >= 0
triggerall = p2bodydist X = [0,100]
triggerall = p2bodydist Y = [-240,-30]
;triggerall =  -240 <= p2bodydist y <= -30+var(7)
;triggerall = var(8) = [-30,30]
triggerall = random < 100
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)



;---------------------------------------------------------------------------
[State -1, ElecTrap]
type = ChangeState
value = 1540 + 10*(p2bodydist x = [80,150]) + 20*(p2bodydist x = [151,320])
triggerall = var(59) && (stateno != [7720,7721]) && !NumHelper(21540)
;triggerall = statetype != A
triggerall = p2statetype != L; && enemynear,vel y >= 0
triggerall = p2bodydist X = [30,320]
triggerall = p2bodydist Y = [-70,120]
;triggerall =  -240 <= p2bodydist y <= -30+var(7)
;triggerall = var(8) = [-30,30]
triggerall = random < 100
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)


;---------------------------------------------------------------------------
[State -1, Psi Charge]
type = ChangeState
value = 1570
triggerall = var(59)
triggerall = statetype != A
triggerall = p2statetype != L; && enemynear,vel y >= 0
triggerall = p2bodydist X = [0,30]
;triggerall = p2bodydist Y = [-70,120]
triggerall =  -80 <= p2bodydist y <= -80+var(7)
;triggerall = var(8) = [-30,30]
triggerall = random < 100
trigger1 = ctrl
trigger2 = var(17) = 3
trigger3 = var(9)

;---------------------------------------------------------------------------
[State -1, Flight]
type = null;ChangeState
value = 1330
triggerall = var(59) && !var(54)
trigger1 = p2bodydist X = [120,270]
trigger1 = p2statetype != L
trigger1 = ctrl
trigger1 = random < 100

;---------------------------------------------------------------------------
[State -1, Flight Cancel]
type = null;ChangeState
value = 1331
triggerall = var(59) && var(54)
trigger1 = p2bodydist X = [120,270]
trigger1 = statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = random < 100

;---------------------------------------------------------------------------
[State -1, Jump in]
type = ChangeState
value = ifelse(random < 500,100,631)
triggerall = stateno != 100 || stateno != 631
triggerall = var(59)
trigger1 = p2bodydist X = [120,270]
trigger1 = statetype != A && p2statetype != L
trigger1 = ctrl
trigger1 = random < 100


;---------------------------------------------------------------------------
[State -1, Warp In]
type = null;ChangeState
value = 1400+5*(random%6)
triggerall = var(59)
triggerall = random < 100
trigger1 = !inguarddist
trigger1 = p2statetype != L && p2statetype != A
trigger1 =  enemynear,movetype = A ;(enemynear,HitDefAttr = SCA,HA,HP,HT)
trigger1 = (var(9) || var(51)) || ctrl

;----|AI Hypers |---------------------------------------------------


;-------------------------------------------------------------------------

[State -1,Hyper Viper]
type = ChangeState
value = 3000
triggerall = enemynear,life > 300
triggerall = Var(59) && (stateno != [7720,7721]) && (stateno != [3000,5000])
triggerall = power >= 1000 
triggerall = p2bodydist X = [70,320]
triggerall =  -70 <= p2bodydist y <= -70+var(7)
triggerall = random < 50+100*(MoveHit > 0)
triggerall = p2statetype != L
trigger1 = ctrl
trigger2 = random < (var(17)*100)
trigger3 = var(51) && random < 100+100*(var(9) > 0)

[State -1,Hyper Viper]
type = ChangeState
value = 4000
triggerall = enemynear,life > 300
triggerall = Var(59) && (stateno != [7720,7721]) && (stateno != [3000,5000])
triggerall = power >= 1000
triggerall = p2bodydist X = [70,320]
triggerall =  -70 <= p2bodydist y <= -70+var(7)
triggerall = random < 50+100*(MoveHit > 0)
triggerall = p2statetype != L
trigger1 = ctrl
trigger2 = random < (var(17)*100)
trigger3 = var(51) && random < 100+100*(var(9) > 0)

;-------------------------------------------------------------------------

[State -1, Time Flip]
type = ChangeState
value = 3400
triggerall = enemynear,life > 300 && !NumHelper(3401)
triggerall = Var(59) && (stateno != [3000,5000]) 
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X = [70,320]
triggerall = p2bodydist y = [-70,5]
triggerall = random < 50+100*(MoveHit > 0)
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = random < (var(17)*100)
trigger3 = var(51) && random < 100+100*(var(9) > 0)




;----|AI Specials |---------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = var(59)
triggerall = p2bodydist X = [0,70]
triggerall = (var(8) = [-35,15]) && var(29) || (-80 <= p2bodydist y <= -60+var(7)) && !var(29)
trigger1 = statetype = A && ctrl
trigger1 = random < 400
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 600



;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = var(59)
triggerall = p2bodydist X = [0,50]
triggerall = (var(8) = [-35,25]) && var(29) || (-120 <= p2bodydist y <= -80+var(7)) && !var(29)
trigger1 = statetype = A && ctrl && random < 300
trigger2 = var(17) = 5 && var(19) = var(36) && random < 300
trigger2 = stateno != 700


;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59)
triggerall = p2bodydist X = [0,70]
triggerall = (var(8) = [-35,15]) && var(29) || (-130 <= p2bodydist y <= -65+var(7)) && !var(29)
trigger1 = statetype = A && ctrl && random < 300
trigger2 = var(17) = 5 && random < 200
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 610



;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = var(59)
triggerall = p2bodydist X = [0,70]
triggerall = (var(8) = [-35,25]) && var(29) || (-160 <= p2bodydist y <= -80+var(7)) && !var(29)
trigger1 = statetype = A && ctrl && random < 200
trigger2 = var(17) = 5 && random < 300
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 710




;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = var(59)
triggerall = p2bodydist X = [0,320]
triggerall = (var(8) = [-35,25]) && var(29) || (-120 <= p2bodydist y <= -100+var(7)) && !var(29)
;trigger1 =  -30 <= p2bodydist y <= -30+var(7)
trigger1 = statetype = A && ctrl && random < 100
trigger2 = var(17) = 5 && random < 200
trigger3 = var(17) = 6 && random < 300
trigger4 = var(17) = 7 && var(21) = var(36)
trigger4 = stateno != 620





;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = var(59)
triggerall = p2bodydist X = [0,70]
triggerall = (var(8) = [-35,25]) && var(29) || (-70 <= p2bodydist y <= -25+var(7)) && !var(29)
trigger1 = statetype = A && ctrl && random < 100
trigger2 = var(17) = 5 && random < 200
trigger3 = var(17) = 6 && random < 300
trigger4 = var(17) = 7 && var(21) = var(36)
trigger4 = stateno != 720



;----|AI Hypers |---------------------------------------------------

;------------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Triangle Jump]
type = null;ChangeState
value = 7730
triggerall = var(59)
triggerall = StateType = A
triggerall = MoveType != A
triggerall = Ctrl
triggerall = Vel Y > 2
triggerall = Pos Y < -50
trigger1 = random < 200
trigger1 = FrontEdgeBodyDist <= 3
trigger2 = BackEdgeBodyDist <= 3


;---------------------------------------------------------------------------
[State -1, Air Dash]
type = null;ChangeState
value = ifelse(random < 500,1343,1344)
triggerall = Var(59) && !var(54)
stateno != [7720,7721]
triggerall = StateType = A
triggerall = Ctrl
triggerall = Vel Y > 2
triggerall = Pos Y < -100
trigger1 = random < 200
trigger1 = ctrl

;---------------------------------------------------------------------------
;[State -1, Down Kick]
;type = ChangeState
;value = 8018
;triggerall = Var(59); && !var(54)
;triggerall = stateno != [7720,7721]
;triggerall = StateType = A
;triggerall = Ctrl
;triggerall = Vel Y > 2
;triggerall = Pos Y < -170
;trigger1 = random < 200
;trigger1 = ctrl


;---------------------------------------------------------------------------



;---------------------------------------------------------------------------

[State -1, Hyper Viper]
type = ChangeState
value = 3000
triggerall = !var(59)
triggerall = command = "Hyper Viper"
triggerall = power >= 1000
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------
[State -1, Telekinetic]
type = ChangeState
value = 3300
triggerall = !var(59) && numexplod(3301)=0
triggerall = command = "Telekinetic"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)


;---------------------------------------------------------------------------

[State -1, Time Flip]
type = ChangeState
value = 3400
triggerall = !var(59) && !NumHelper(3401)
triggerall = command = "Time Flip"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

;---------------------------------------------------------------------------

[State -1, Fenix]
type = ChangeState
value = 4000
triggerall = !var(59) && !NumHelper(3401)
triggerall = palno = 1 || palno = 6 || palno = 2;              && statetype = A ;|| palno = 4 || palno = 5 || palno = 6 || palno = 7 || palno = 8 || palno = 9 || palno = 10 || palno = 11 || palno = 12&& statetype = A
triggerall = command = "Fenix"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
trigger3 = stateno = [1560, 1580]; && movehit
;trigger4 = stateno = 400 && movehit






;---------------------------------------------------------------------------
[State -1, Flight]
type = null;ChangeState
value = 1330
triggerall = !var(59) && !var(54)
triggerall = command = "b"
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Flight Cancel]
type = null;ChangeState
value = 1331
triggerall = !var(59) && var(54)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Scimitar]
type = ChangeState
value = 1510
triggerall = !var(59)
triggerall = command = "DD_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Scimitar]
type = ChangeState
value = 1520
triggerall = !var(59)
triggerall = command = "DD_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Scimitar]
type = ChangeState
value = 1530
triggerall = !var(59)
triggerall = command = "DD_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Viper Beam]
type = ChangeState
value = 1450
triggerall = !var(59)
triggerall = command = "QCF_x"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Viper Beam]
type = ChangeState
value = 1460
triggerall = !var(59)
triggerall = command = "QCF_y"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Viper Beam]
type = ChangeState
value = 1470
triggerall = !var(59)
triggerall = command = "QCF_z"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1



;---------------------------------------------------------------------------
[State -1, Crackdown]
type = ChangeState
value = 1480
triggerall = !var(59)
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1



;---------------------------------------------------------------------------
[State -1, Crackdown]
type = ChangeState
value = 1490
triggerall = !var(59)
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1



;---------------------------------------------------------------------------
[State -1, Crackdown]
type = ChangeState
value = 1500
triggerall = !var(59)
triggerall = command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1






;---------------------------------------------------------------------------
[State -1, Electrap]
type = ChangeState
value = 1540
triggerall = !var(59) && !NumHelper(21540)
triggerall = command = "QCB_a"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Electrap]
type = ChangeState
value = 1550
triggerall = !var(59) && !NumHelper(21540)
triggerall = command = "QCB_b"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Electrap]
type = ChangeState
value = 1560
triggerall = !var(59) && !NumHelper(21540)
triggerall = command = "QCB_c"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Psi-Charge]
type = ChangeState
value = 1570
triggerall = !var(59)
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Psi-Charge]
type = ChangeState
value = 1570
triggerall = !var(59)
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1


;---------------------------------------------------------------------------
[State -1, Psi-Charge]
type = ChangeState
value = 1570
triggerall = !var(59)
triggerall = command = "QCB_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;===========================================================================
;Normal Attacks
;===========================================================================


;---------------------------------------------------------------------------
;Guard Push (Standing)
[State -1, Guard Push]
type = ChangeState
value = 7610
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = S
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Guard Push (Crouching)
[State -1, Guard Push]
type = ChangeState
value = 7615
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = C
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Guard Push (Air)
[State -1, Guard Push]
type = ChangeState
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
value = 110
triggerall = !var(59)
triggerall = Stateno != 110
triggerall = prevstateno != 110
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "FF"

;---------------------------------------------------------------------------

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = enemynear, name != "Prime Sentinels"
triggerall = command = "holdfwd"
triggerall = command = "z" || command = "c"
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

;[State -1, overhead atk]
;type = ChangeState
;value = 590
;triggerall = !var(59)
;triggerall = command = "y" && command = "b"
;triggerall = statetype = S
;trigger1 = ctrl
;trigger2 = var(17) = 1
;trigger3 = var(17) = 2 && var(20) = var(36)
;trigger3 = stateno != 590




;---------------------------------------------------------------------------

[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 200




;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 300
trigger3 = stateno = 200 && movehit



;---------------------------------------------------------------------------

[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 400
trigger3 = stateno = 200 && movehit

;---------------------------------------------------------------------------

[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 500
trigger3 = stateno = 200 && movehit
trigger4 = stateno = 400 && movehit



;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command != "holddown"
triggerall= command = "y"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 210




;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 310




;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 410



;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 510




;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 220


;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 321
triggerall = !var(59)
triggerall = command = "c" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 321


;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 320


;---------------------------------------------------------------------------
;[State -1, Crouch Strong Punch]
;type = ChangeState
;value = 421
;triggerall = !var(59)
;triggerall = command = "z" && command = "holdfwd"
;triggerall = statetype = C
;trigger1 = ctrl
;trigger2 = var(17) = [1,2]
;trigger3 = var(17) = 3 && var(21) = var(36)
;trigger3 = stateno != 421


;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 420 && stateno != 220




;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 520





;---------------------------------------------------------------------------
;[State -1, Air Down Kick]
;type = ChangeState
;value = 8018
;triggerall = !var(59)
;triggerall = command = "b" && command = "holddown"
;triggerall = statetype = A
;trigger1 = ctrl
;trigger2 = var(17) = [5,6]
;trigger3 = var(17) = 7 && var(21) = var(36)
;trigger3 = stateno != 8018



;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 600



;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 700
trigger3 = MoveHit
trigger3 = stateno = 600; || stateno = 421




;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 610




;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = 5
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 710



;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 620


;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 720

;---------------------------------------------------------------------------
[State -1, Triangle Jump]
type = null;ChangeState
value = 7730
triggerall = !var(59)
triggerall = StateType = A
triggerall = Ctrl
trigger1 = FrontEdgeBodyDist <= 3
trigger1 = Vel X > 0
trigger1 = command = "holdback"
trigger2 = BackEdgeBodyDist <= 3
trigger2 = Vel X < 0
trigger2 = command = "holdfwd"

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
trigger2 = stateno = 210 || stateno = 421

;---------------------------------------------------------------------------
[State -1, Counter]
type = ChangeState
value = 7970
triggerall = !var(59)
triggerall = command = "Counter"
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
[State -1, Roll recovery foward]
type = ChangeState
value = 7800
triggerall = !var(59)
triggerall = stateno = 5120
trigger1 = command = "holdfwd"
trigger1 = Time = 1

;---------------------------------------------------------------------------
[State -1, Roll recovery Backward]
type = ChangeState
value = 7801
triggerall = !var(59)
triggerall = stateno = 5120
trigger1 = command = "holdback"
trigger1 = Time = 1

;---------------------------------------------------------------------------
[State -1,Guard]
type = ChangeState
triggerall = NumHelper(8600)
triggerall = !var(59) && (stateno != [120,155]) ;&& Helper(8600),Numenemy
;triggerall = statetype != A
triggerall = p2bodydist x > 80
triggerall = enemynear,movetype = A ;inguarddist || Helper(8600),inguarddist
triggerall = command = "holdback"
trigger1 = ctrl
value = 120
