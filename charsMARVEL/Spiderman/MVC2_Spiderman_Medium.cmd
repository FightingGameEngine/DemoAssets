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

;Maximum Spider
[Command]
name = "Maximum Spider"
command = ~D, DF, F, x+y

[Command]
name = "Maximum Spider"
command = ~D, DF, F, z+y

[Command]
name = "Maximum Spider"
command = ~D, DF, F, z+x



;Ultimate Web Throw
[Command]
name = "Crawler Assault"
command = ~D, DB, B, x+y

;Ultimate Web Throw
[Command]
name = "Crawler Assault"
command = ~D, DB, B, z+y

;Ultimate Web Throw
[Command]
name = "Crawler Assault"
command = ~D, DB, B, z+x

;Crawler Assault
[Command]
name = "boxe"
command = ~D, DF, F, a+b

;Crawler Assault
[Command]
name = "boxe"
command = ~D, DF, F, c+b

[Command]
name = "boxe"
command = ~D, DF, F, c+a

;spider sense
[Command]
name = "sense"
command = ~D, DB, B, a+b

;spider sense
[Command]
name = "sense"
command = ~D, DB, B, b+c

;spider sense
[Command]
name = "sense"
command = ~D, DB, B, a+c



[Command]
name = "refill"
command = ~D, DF, F, b+y


[Command]
name = "refill"
command = ~D, DF, F, c+z


[Command]
name = "refill"
command = ~D, DF, F, a+x

;-| Special Motions |------------------------------------------------------
;Spider Sting

[Command]
name = "esquiva"
command =  a+x

[Command]
name = "esquiva"
command =  c+z

[Command]
name = "esquiva"
command =  b+y


[Command]
name = "rasteira"
command =  ~B, F, a

[Command]
name = "rasteira"
command =  ~B, F, b

[Command]
name = "rasteira"
command =  ~B, F, c


[Command]
name = "socoteia"
command =  ~B, F, x

[Command]
name = "socoteia"
command =  ~B, F, y

[Command]
name = "socoteia"
command =  ~B, F, z

[Command]
name = "sho_a"
command = ~F, D, DF, x

;Spider Sting
[Command]
name = "sho_b"
command = ~F, D, DF, y

;Spider Sting
[Command]
name = "sho_c"
command = ~F, D, DF, z


;Web Ball
[Command]
name = "web"
command = ~D, DF, F, x

;Web Ball
[Command]
name = "web"
command = ~D, DF, F, y

;Web Ball
[Command]
name = "web"
command = ~D, DF, F, z





;Web Kick
[Command]
name = "kikao1"
command = ~D, DF, F, a

;Web Kick
[Command]
name = "kikao2"
command = ~D, DF, F, b

;Web Kick
[Command]
name = "kikao3"
command = ~D, DF, F, c




;Web Swing
[Command]
name = "QCB_a"
command = ~D, DB, B, a

;Web Swing
[Command]
name = "QCB_b"
command = ~D, DB, B, b

;Web Swing
[Command]
name = "QCB_c"
command = ~D, DB, B, c


;Web Throw
[Command]
name = "QCB_x"
command = ~F, DF, D, DB, B, x

;Web Throw
[Command]
name = "QCB_y"
command = ~F, DF, D, DB, B, y

;Web Throw
[Command]
name = "QCB_z"
command = ~F, DF, D, DB, B, z

;Web Throw
[Command]
name = "QCB_x"
command = ~F, D, B, x

;Web Throw
[Command]
name = "QCB_y"
command = ~F, D, B, y

;Web Throw
[Command]
name = "QCB_z"
command = ~F, D, B, z

;Web Throw
[Command]
name = "QCB_x"
command = ~F, D, B+x

;Web Throw
[Command]
name = "QCB_y"
command = ~F, D, B+y

;Web Throw
[Command]
name = "QCB_z"
command = ~F, D, B+z

;Web Guard
[Command]
name = "counter"
command = ~D, DB, B, x

;Web Guard
[Command]
name = "counter"
command = ~D, DB, B, y

;Web Guard
[Command]
name = "counter"
command = ~D, DB, B, z

[Command]
name = "Counter"
command = /B,c


[Command]
name = "Super Jump"
command = D,$U


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

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
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

[Statedef -1]
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

[State -1]
type = VarSet
trigger1 = 1;var(59)
var(8) = floor(P2Dist Y - (abs(EnemyNear, const(size.mid.pos.y)) - abs(const(size.mid.pos.y))))

[State -1]
type = VarSet
trigger1 = 1;var(59)
var(7) = abs(enemynear,const(size.head.pos.y))


;-------------------------------------------------------------------------------
;Guarding states

[State -1,AI Guard]
type = ChangeState
triggerall = var(59) && Numenemy && (stateno != [120,155]); && !var(54)
triggerall =!(enemynear,hitdefattr=SCA,AT)
;triggerall = statetype != A
triggerall = inguarddist && random < 500
trigger1 = ctrl
value = 120

[State -1, Stand Parry]
type = hitoverride
triggerall = var(56) > 1   && random < 500
triggerall = var(59) && roundstate = 2 && statetype = S
trigger1 = 1
attr = SAC, NA, SA, HA, NP, HP, SP, AA, AT, AP, NT,ST,HT
stateno = ifelse(random < 500,130, 7970)
slot = 0
time = ifelse((stateno=[150,153]),6,8)

[State -1, Crouch Parry]
type = hitoverride
triggerall = var(56) > 1  && random < 500
triggerall = var(59) && roundstate = 2 && statetype = C
trigger1 = 1
attr = C,NA, SA, HA, NP, HP, SP, AA, AT, AP,NT,ST,HT
stateno = ifelse(random < 500,131, 7970)
slot = 0
time = ifelse((stateno=[150,153]),6,8)

[State -1, Air Parry]
type = hitoverride
triggerall = var(56) > 1 && random < 500
triggerall = var(59) && roundstate = 2 && (statetype = A || Pos Y < 0)
trigger1 = 1
attr = SA,NA, SA, HA, NP, HP, SP, AA, AT, AP
stateno = 132
;forceair = 1
slot = 0
time = ifelse((stateno=[154,155]),6,8)

;---------------------------------------------------------------------------
;AI Guard Push (Standing)
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
;AI Recovery Roll after KnockDown
;------------------------------------
;[State -1]
;type = ChangeState
;value = 7800 + (backedgedist > 100)
;triggerall = Var(59) && MoveType != H && RoundState = 2
;triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
;trigger1 = p2bodydist x < 100
;trigger1 = Random < 300;+500*(BackEdgeDist < 100)
;trigger1 = Time >= 1

[State -1, Ground Dodge]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 300 && ctrl
trigger1 = enemynear,numproj = 1

;-----------------------------------------------------------------------------
;AI Hyper Attacks - Acey

[State -1, Alt Maximum Spider]
type = ChangeState
value = 3010
triggerall = var(59) && BackEdgeDist >= 0
triggerall = power >= 1000
triggerall = random < 50  && p2bodydist X > 70 && MoveType != H && RoundState = 2
triggerall = var(28)=1
trigger1 = ctrl
trigger2 = var(51)

[State -1, Alt Ultimate Web Throw]
type = ChangeState
value = 3040
triggerall = var(59) && BackEdgeDist  >= 0
triggerall = power >= 1000
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 50 && p2bodydist X > 70
triggerall = var(28)=1
trigger1 = ctrl
trigger2 = enemynear, stateno = [5110,5120]
trigger2 = var(39) = 0

[State -1, Alt Ultimate Web Throw]
type = ChangeState
value = 3039
triggerall = var(59) && BackEdgeDist  >= 0
triggerall = power >= 1000
triggerall = statetype = A  && MoveType != H && RoundState = 2
triggerall = random < 50  && p2bodydist X > 70
triggerall = var(28)=1
trigger1 = ctrl
trigger2 = var(51)
trigger3 = enemynear, stateno = [5110,5120]
trigger3 = var(39) = 0

[State -1, Alt Crawler Assault]
type = ChangeState
value = 3400
triggerall = var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000  &&  (var(22) = 1 || var(40) < 10)
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 50 && p2bodydist X < 70
triggerall = var(28)=1
trigger1 = ctrl
trigger2 = var(51)

;-----------------------------------------------------------------------------
;AI Hyper Attacks - ZVitor

[State -1, Maximum Spider]
type = ChangeState
value = 3010
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000 && (var(40) < 5 ||  var(22) = 1)
triggerall = random < 50  && p2bodydist X > 70 && MoveType != H && RoundState = 2
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51)

[State -1, one for J.J.]
type = ChangeState
value = 3500
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000 && var(40) >= 5 &&  var(22) = 0
triggerall = statetype != A  && MoveType != H && RoundState = 2
triggerall = random < 150 && p2bodydist X < 70 && enemynear, movetype != A
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51)

[State -1, Refill Webbing]
type = ChangeState
value = 3200
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = var(22)=0  && var(40) <=10; && var(42)=0
triggerall = power >= 1000 && MoveType != H && RoundState = 2
triggerall = statetype != A
triggerall = random < 500 && p2bodydist X > 70
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51)

[State -1, Ultimate Web Throw]
type = ChangeState
value = 3040
triggerall = var(59) && BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000  &&  var(22) = 0 && var(40) >= 10
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 50 && p2bodydist X > 70
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51)

[State -1, Ultimate Web Throw]
type = ChangeState
value = 3039
triggerall = var(59) && BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000  &&  var(22) = 0 && var(40) >= 10
triggerall = statetype = A  && MoveType != H && RoundState = 2
triggerall = random < 50  && p2bodydist X > 70
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51)

[State -1, Crawler Assault]
type = ChangeState
value = 3400
triggerall = var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000  &&  (var(22) = 1 || var(40) < 10)
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 50 && p2bodydist X < 70
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51)

[State -1, Boxing]
type = ChangeState
value = 3900
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = power >= 1000 && var(40) >= 5 &&  var(22) = 0
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 60  && p2bodydist X > 70
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51)

[State -1, Spider Sense]
type = ChangeState
value = 3100
triggerall = var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall =  var(22)=0 && MoveType != H && RoundState = 2
triggerall = power >= 1000
triggerall = statetype != A
triggerall = random < 40
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51)

;-----------------------------------------------------------------------------
;AI Special Attacks

[State -1, Spider Sting]
type = ChangeState
value = 1500
triggerall = var(59)  && enemynear, movetype = A
triggerall = statetype != A && MoveType != H && RoundState = 2
triggerall = random < 300 && p2bodydist X < 40
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, AvX Web Swing]
type = ChangeState
value = 2110;1530
triggerall = var(59) && var(40) > 2 && MoveType != H && RoundState = 2
triggerall = random < 100 && p2bodydist X > 100
trigger1 = var(28)=0 && var(40) > 2 && ctrl
trigger2 = var(28)=0 && var(40) > 2 && var(51) = 1
trigger3 = var(28)=0 && var(40) > 2 && stateno = 50
trigger4 = var(28)=1 && ctrl
trigger5 = var(28)=1 && var(51) = 1
trigger6 = var(28)=1 && stateno = 50

[State -1, Web Ball]
type = ChangeState
value = 1000
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = var(40) > 0
triggerall = random < 100 && p2bodydist X > 100
triggerall = statetype != A
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Ball]
type = ChangeState
value = 1010
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = var(40) > 0
triggerall = random < 50 && p2bodydist X > 100
triggerall = statetype = A
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, AvX Web Ball]
type = ChangeState
value = 2100
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 100 && p2bodydist X > 100
triggerall = statetype != A
triggerall = var(28)=1
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, AvX Web Ball]
type = ChangeState
value = 2106
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 50 && p2bodydist X > 100
triggerall = statetype = A
triggerall = var(28)=1
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, AvX Web Kick]
type = ChangeState
value = 1100
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 100 && p2bodydist X > 170
triggerall = var(40) > 5
triggerall = statetype != A
triggerall = var(28) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Air Web Throw]
type =  null;ChangeState
value = 1200
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X > 50 && p2bodydist X < 70
triggerall = statetype = A && pos y < -55 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50
trigger4 = stateno = 511

[State -1, Air Web Throw]
type = null;ChangeState
value = 1201
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X < 20
triggerall = statetype = A && pos y < -55 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50
trigger4 = stateno = 511

[State -1, Air Web Throw]
type = null;ChangeState
value = 1202
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X > 100 && enemynear, movetype = A
triggerall = statetype = A && pos y < -55 && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50
trigger4 = stateno = 511

[State -1, AvX Web Throw]
type = ChangeState
value = 2111;1540
triggerall = var(59) && !NumHelper(21540)
triggerall = random < 50 && p2bodydist X > 100 && enemynear, movetype != A
triggerall = statetype != A &&  var(22) = 0 && MoveType != H && RoundState = 2
trigger1 = var(28)=0 && var(40) > 2 && ctrl
trigger2 = var(28)=0 && var(40) > 2 && var(51) = 1
trigger3 = var(28)=1 && ctrl
trigger4 = var(28)=1 && var(51) = 1

[State -1, AvX Web Throw]
type = ChangeState
value = 2117;1550
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X > 70 && p2bodydist X < 150 && enemynear, movetype = A
triggerall = statetype != A  &&  var(22) = 0 && MoveType != H && RoundState = 2
trigger1 = var(28)=0 && var(40) > 2 && ctrl
trigger2 = var(28)=0 && var(40) > 2 && var(51) = 1
trigger3 = var(28)=1 && ctrl
trigger4 = var(28)=1 && var(51) = 1

[State -1, AvX Web Throw]
type = ChangeState
value = 2119;1560
triggerall = var(59) && !NumHelper(21540) && var(40) > 2
triggerall = random < 50 && p2bodydist X < 400 && enemynear, movetype = A
triggerall = statetype != A  &&  var(22) = 0 && MoveType != H && RoundState = 2
trigger1 = var(28)=0 && var(40) > 2 && ctrl
trigger2 = var(28)=0 && var(40) > 2 && var(51) = 1
trigger3 = var(28)=1 && ctrl
trigger4 = var(28)=1 && var(51) = 1

[State -1, Spider Kick]
type = ChangeState
value = 1600
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 50 && p2bodydist X > 100 && enemynear, movetype != A
triggerall = statetype != A
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Punch];Not a hyper attack
type = ChangeState
value = 1700
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 100 && p2bodydist X > 150 ;&& enemynear, movetype != A
triggerall = var(40) >= 4
triggerall = statetype != A
triggerall = var(28)=0
trigger1 = ctrl
trigger2 = var(51)

[State -1, Web Shield]
type = ChangeState
value = 1900
triggerall = var(59) && var(40) > 4
triggerall = random < 100 && p2bodydist X < 150 && enemynear, statetype = A
triggerall = statetype != A  && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
;Movement

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = Stateno != 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = BackEdgeDist >= 50 && random < 50

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = Stateno != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = random < 50

[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall = var(59) &&  var(22) = 0
triggerall = random < 50 && MoveType != H && RoundState = 2
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S

[State -1,Ground Toss]
type = ChangeState
value = 830
triggerall = enemynear, name != "Prime Sentinels"
triggerall = var(59) &&  var(22) = 0
triggerall = random < 50 && MoveType != H && RoundState = 2
triggerall = P2BodyDist X <= 20
triggerall = ctrl
trigger1 = statetype = S

[State -1,Air Throw]
type = ChangeState
value = 920
triggerall = enemynear, name != "Prime Sentinels"
triggerall = var(59) && MoveType != H && RoundState = 2
triggerall = random < 50
triggerall = P2BodyDist X <= 20
triggerall = P2BodyDist y >= -20 && P2BodyDist y <= 20
triggerall = ctrl
trigger1 = statetype = A
trigger1 = pos Y < -50

;---------------------------------------------------------------------------
[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 200

;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 300

;---------------------------------------------------------------------------
[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 400

;---------------------------------------------------------------------------
[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1 && var(19) = var(36)
trigger2 = stateno != 500

;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 210

;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 310

;---------------------------------------------------------------------------

[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 410

;---------------------------------------------------------------------------

[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 510

;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 220

;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
trigger1 = statetype = S && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 320

;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 420

;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
trigger1 = statetype = C && MoveType != H && RoundState = 2
trigger1 = ctrl
trigger2 = var(17) = [1,2]
trigger3 = var(17) = 3 && var(21) = var(36)
trigger3 = stateno != 520

;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 600
trigger3 = stateno = 511 || stateno = 50
trigger4 = (StateNo = 1210) && (Movecontact) && time > 2

;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = var(59) && P2BodyDist X <= 10 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = 5 && var(19) = var(36)
trigger2 = stateno != 700
trigger3 = stateno = 511 || stateno = 50
trigger4 = (StateNo = 1210) && (Movecontact) && time > 2

;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = 5
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 610
trigger4 = stateno = 511 || stateno = 50
trigger5 = (StateNo = 1210) && (Movecontact) && time > 2

;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = var(59) && P2BodyDist X <= 20 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = 5
trigger3 = var(17) = 6 && var(20) = var(36)
trigger3 = stateno != 710
trigger4 = stateno = 511 || stateno = 50
trigger5 = (StateNo = 1210) && (Movecontact) && time > 2

;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
triggerall = statetype = A && MoveType != H && RoundState = 2
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 620
trigger4 = stateno = 511 || stateno = 50
trigger5 = (StateNo = 1210) && (Movecontact) && time > 2

;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = var(59) && P2BodyDist X <= 50 && random < 100
triggerall = stateno != 7730 && MoveType != H && RoundState = 2
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(17) = [5,6]
trigger3 = var(17) = 7 && var(21) = var(36)
trigger3 = stateno != 720
trigger4 = stateno = 511 || stateno = 50
trigger5 = (StateNo = 1210) && (Movecontact) && time > 2

;-----------------------------------------------------------------------------
;Player Combo
;---------------------------------------------------------------------------

[State -1, Maximum Spider]
type = ChangeState
value = 3010
triggerall = var(28) = 0
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "Maximum Spider"
triggerall = power >= 1000 && (var(40) < 5 ||  var(22) = 1)
trigger1 = ctrl
trigger2 = var(51)
trigger3 = (HitdefAttr = SCA, NA,SA,SP,ST) && (MoveContact)
trigger4 = stateno = [1340,1360]

[State -1, Crawler Assault]
type = ChangeState
value = 3400
triggerall = var(28) = 0
triggerall = !var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "boxe"
triggerall = power >= 1000 && (var(40) < 5 ||  var(22) = 1)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
trigger3 = (HitdefAttr = SC, NA,SA,SP,ST) && (MoveContact)

[State -1, One for J.J.]
type = ChangeState
value = 3500
triggerall = var(28) = 0
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "Maximum Spider"
triggerall = power >= 1000 && var(40) >= 5 &&  var(22) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
trigger3 = (HitdefAttr = SCA, NA,SA,SP,ST) && (MoveContact)

[State -1, Spider Sense]
type = ChangeState
value = 3100
triggerall = var(28) = 0
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "sense" && var(22)=0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
trigger3 = (HitdefAttr = SCA, NA,SA,SP,ST) && (MoveContact)

[State -1, Web Refil]
type = ChangeState
value = 3200
triggerall = var(28) = 0
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "refill" && var(22)=0  && var(40)!=100; && var(42)=0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
trigger3 = (HitdefAttr = SCA, NA,SA,SP,ST) && (MoveContact)

[State -1, Spider Boxing]
type = ChangeState
value = 3900
triggerall = var(28) = 0
triggerall = !var(59) && BackEdgeDist >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "boxe"
triggerall = power >= 1000 && var(40) >= 5 &&  var(22) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
trigger3 = (HitdefAttr = SCA, NA,SA,SP,ST) && (MoveContact)

[State -1, Ultimate Web Throw]
type = ChangeState
value = 3040
triggerall = !var(59) && BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "Crawler Assault"
triggerall = power >= 1000  &&  var(22) = 0 && var(40) >= 10
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
trigger3 = (HitdefAttr = SCA, NA,SA,SP,ST) && (MoveContact)

[State -1, Air Ultimate Web Throw]
type = ChangeState
value = 3039
triggerall = !var(59) && BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "Crawler Assault"
triggerall = power >= 1000  &&  var(22) = 0 && var(40) >= 10
triggerall = statetype = A
trigger1 = ctrl
trigger2 = statetype = A

[State -1, Crawler Assault]
type = ChangeState
value = 3400
triggerall = var(28) = 1
triggerall = !var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "boxe"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)
trigger3 = (HitdefAttr = SC, NA,SA,SP,ST) && (MoveContact)

[State -1, AvX Maximum Spider]
type = ChangeState
value = 3010
triggerall = var(28) = 1
triggerall = !var(59) ;&& BackEdgeDist >= 0; && !NumHelper(23040) && !NumHelper(21540)
triggerall = command = "Maximum Spider"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = statetype = A

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Spider Sting]
type = ChangeState
value = 1480
triggerall = !var(59)
triggerall = command = "sho_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, Spider Sting]
type = ChangeState
value = 1490
triggerall = !var(59)
triggerall = command = "sho_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, Spider Sting]
type = ChangeState
value = 1500
triggerall = !var(59)
triggerall = command = "sho_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = (HitdefAttr = SCA, NA) && (MoveContact)


;---------------------------------------------------------------------------
[State -1, AvX Web Ball]
type = ChangeState
value = 2100
triggerall = !var(59)
triggerall = var(28) = 1
triggerall = var(40) > 0
triggerall = numhelper(2101) = 0
triggerall = command = "web"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = [200,599]) && (Movecontact); && time > 3

[State -1, AvX Air Web Ball]
type = ChangeState
value = 2106
triggerall = !var(59)
triggerall = var(28) = 1
triggerall = var(40) > 0
triggerall = numhelper(2101) = 0
triggerall = command = "web"
triggerall = statetype = A
trigger1 = ctrl
trigger2= (StateNo = [600,799]) && (Movecontact); && time > 3

[State -1, AvX Web Swing]
type = ChangeState
value = 2110
triggerall = !var(59) && var(40) > 2
triggerall = var(28) = 1
triggerall = var(52) < 3
triggerall = command = "QCB_a"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50
trigger4 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, AvX Web Swing]
type = ChangeState
value = 2060
triggerall = !var(59) && var(40) > 2
triggerall = var(28) = 1
triggerall = var(52) < 3
triggerall = command = "QCB_b"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50
trigger4 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, AvX Web Swing]
type = ChangeState
value = 2061
triggerall = !var(59) && var(40) > 2
triggerall = var(28) = 1
triggerall = var(52) < 3
triggerall = command = "QCB_c"
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50
trigger4 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, AvX Web Throw]
type = ChangeState
value = 2111
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = var(35) < 3
;triggerall = var(28) = 1
triggerall = command = "QCB_x"
triggerall = statetype != A &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, AvX Web Throw]
type = ChangeState
value = 2117
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = var(35) < 3
;triggerall = var(28) = 1
triggerall = command = "QCB_y"
triggerall = statetype != A  &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, AvX Web Throw]
type = ChangeState
value = 2119
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = var(35) < 3
;triggerall = var(28) = 1
triggerall = command = "QCB_z"
triggerall = statetype != A  &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = (HitdefAttr = SCA, NA) && (MoveContact)


;---------------------------------------------------------------------------
[State -1, Sense Dodge]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = !var(59)
triggerall = command = "esquiva"
trigger1 = ctrl
trigger2 = stateno = 130
trigger3 = stateno = 131

[State -1, Air Sense Dodge]
type = ChangeState
value = 901
triggerall = !var(59)
triggerall = statetype = A
triggerall = command = "esquiva"
trigger1 = ctrl
trigger2 = stateno = 132

;---------------------------------------------------------------------------
[State -1, Web Swing]
type = ChangeState
value = 1510
triggerall = !var(59) && var(40) > 2
triggerall = var(28) = 0
triggerall = var(52) < 3
triggerall = command = "QCB_a"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50 ;|| stateno = 511
trigger4 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, Web Swing]
type = ChangeState
value = 1520
triggerall = !var(59) && var(40) > 2
triggerall = var(28) = 0
triggerall = var(52) < 3
triggerall = command = "QCB_b"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50 ;|| stateno = 511
trigger4 = (HitdefAttr = SCA, NA) && (MoveContact)

[State -1, Web Swing]
type = ChangeState
value = 1530
triggerall = !var(59) && var(40) > 2
triggerall = var(28) = 0
triggerall = var(52) < 3
triggerall = command = "QCB_c"
;triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1
trigger3 = stateno = 50 ;|| stateno = 511
trigger4 = (HitdefAttr = SCA, NA) && (MoveContact)

;fail states
[State -1, Web Swing]
type = ChangeState
value = 178
triggerall = !var(59) && var(40) <= 2
triggerall = var(28) = 0
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;Air fail states
[State -1, Web Swing]
type = ChangeState
value = 179
triggerall = !var(59) && var(40) <= 2
triggerall = var(28) = 0
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Web Ball]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = var(28) = 0
triggerall = var(40) > 0
triggerall = command = "web"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Ball]
type = ChangeState
value = 1001
triggerall = !var(59)
triggerall = var(28) = 0
triggerall = var(40) > 0
triggerall = command = "web"
triggerall = statetype != A
trigger1 = (StateNo = 200) && (Movecontact); && time > 3
trigger2 = (StateNo = 210) && (Movecontact); && time > 3
trigger3 = (StateNo = 220) && (Movecontact); && time > 3
trigger4 = (StateNo = 300) && (Movecontact); && time > 3
trigger5 = (StateNo = 310) && (Movecontact); && time > 3
trigger6 = (StateNo = 320) && (Movecontact); && time > 3

[State -1, Web Ball]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = var(28) = 0
triggerall = var(40) > 0
triggerall = command = "web"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = 1

;fail
[State -1, Web Ball]
type = ChangeState
value = 178
triggerall = !var(59)
triggerall = var(40) <= 0
triggerall = var(28) = 0
triggerall = command = "web"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;fail
[State -1, Web Ball]
type = ChangeState
value = 179
triggerall = !var(59)
triggerall = var(40) <= 0
triggerall = var(28) = 0
triggerall = command = "web"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Web Kick]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = var(40) > 5
triggerall = command = "kikao1" || command = "kikao2" || command = "kikao3"
triggerall = statetype != A
triggerall = var(28) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;fail
[State -1, Web Kick]
type = ChangeState
value = 178
triggerall = !var(59)
triggerall = var(28) = 0
triggerall = var(40) <= 5
triggerall = command = "kikao1" || command = "kikao2" || command = "kikao3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1,Air Web Throw]
type = null;ChangeState
value = 1200
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = command = "kikao2"
triggerall = var(28) = 0
triggerall = statetype = A && pos y < -55
trigger1 = ctrl
trigger2 = (StateNo = 610); && (Movecontact) && time > 2
trigger3 = (StateNo = 710); && (Movecontact) && time > 2
trigger4 = var(51) = 1
trigger5 = stateno = 50
trigger6 = stateno = 511
trigger7 = (StateNo = 720); && (Movecontact) && time > 2
trigger8 = (StateNo = 620); && (Movecontact) && time > 2
trigger9 = (StateNo = 8018); && (Movecontact) && time > 2

[State -1, Air Web Throw]
type = null;ChangeState
value = 1201
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = command = "kikao3"
triggerall = var(28) = 0
triggerall = statetype = A && pos y < -55
trigger1 = ctrl
trigger2 = (StateNo = 610); && (Movecontact) && time > 2
trigger3 = (StateNo = 710) ;&& (Movecontact) && time > 2
trigger4 = var(51) = 1
trigger5 = stateno = 50
trigger6 = stateno = 511
trigger7 = (StateNo = 720); && (Movecontact) && time > 2
trigger8 = (StateNo = 620) ;&& (Movecontact) && time > 2
trigger9 = (StateNo = 8018); && (Movecontact) && time > 2

[State -1, Air Web Throw]
type = null;ChangeState
value = 1202
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = command = "kikao1"
triggerall = var(28) = 0
triggerall = statetype = A && pos y < -55
trigger1 = ctrl
trigger2 = (StateNo = 610); && (Movecontact) && time > 2
trigger3 = (StateNo = 710); && (Movecontact) && time > 2
trigger4 = var(51) = 1
trigger5 = stateno = 50
trigger6 = stateno = 511
trigger7 = (StateNo = 720); && (Movecontact) && time > 2
trigger8 = (StateNo = 620) ;&& (Movecontact) && time > 2
trigger9 = (StateNo = 8018);&& (Movecontact) && time > 2

;fail
[State -1, Web Throw]
type = ChangeState
value = 178
triggerall = !var(59) && !NumHelper(21540) && var(40) <= 2
triggerall = var(28) = 0
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
triggerall = statetype != A &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;Air fail
[State -1, Web Throw]
type = null;ChangeState
value = 179
triggerall = !var(59) && !NumHelper(21540) && var(40) <= 2
triggerall = var(28) = 0
triggerall = command = "kikao1" || command = "kikao2" || command = "kikao3"
triggerall = statetype = A && pos y < -55
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Throw]
type = null;ChangeState
value = 1540
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = var(28) = 0
triggerall = command = "QCB_x"
triggerall = statetype != A &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Throw]
type = null;ChangeState
value = 1550
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = var(28) = 0
triggerall = command = "QCB_y"
triggerall = statetype != A  &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

[State -1, Web Throw]
type = null;ChangeState
value = 1560
triggerall = !var(59) && !NumHelper(21540) && var(40) > 2
triggerall = var(28) = 0
triggerall = command = "QCB_z"
triggerall = statetype != A  &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Web Shield]
type = ChangeState
value = 1900
triggerall = !var(59) && !NumHelper(21540) && var(40) > 4
triggerall = var(28) = 0
triggerall = command = "counter"
triggerall = statetype != A  ;&&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;fail
[State -1, Web Shield]
type = ChangeState
value = 178
triggerall = !var(59) && !NumHelper(21540) && var(40) <= 4
triggerall = var(28) = 0
triggerall = command = "counter"
triggerall = statetype != A &&  var(22) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Spider Kick]
type = ChangeState
value = 1600
triggerall = !var(59)
triggerall = command = "rasteira"
triggerall = statetype != A
triggerall = var(28) = 0
trigger1 = ctrl
trigger2 = var(51) = 1

;---------------------------------------------------------------------------
[State -1, Web Punch]
type = ChangeState
value = 1700
triggerall = !var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = var(28) = 0
triggerall = command = "socoteia"
triggerall = var(40) >= 4
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

;fail
[State -1, Web Punch]
type = ChangeState
value = 178
triggerall = !var(59)&& BackEdgeDist  >= 0 && !NumHelper(23040) && !NumHelper(21540)
triggerall = var(28) = 0
triggerall = command = "socoteia"
triggerall = var(40) < 4
triggerall = statetype != A
trigger1 = ctrl
trigger2 = var(51)

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
;Guard Push (Air)
[State -1, Guard Push]
type = null;ChangeState
value = 7620
triggerall = !var(59)
triggerall = command = "recovery"
triggerall = statetype = A
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Forward]
type = ChangeState
value = 1340
triggerall = !var(59) && var(40) > 1
triggerall = command = "FF"
triggerall = stateno != 1340 && stateno != 1350 && stateno != 1360
trigger1 = ctrl && statetype = A
trigger2 = stateno = 511
trigger3 = stateno = 50

;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Forward]
type = ChangeState
value = 1350
triggerall = !var(59) && var(40) > 1
triggerall = command = "BB"
triggerall = stateno != 1350 && stateno != 1360
trigger1 = ctrl && statetype = A
trigger2 = stateno = 511
trigger3 = stateno = 50

;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Forward]
type = ChangeState
value = 1360
triggerall = !var(59) && var(40) > 1
triggerall = command = "UU"
triggerall = stateno != 1350 && stateno != 1360
triggerall = var(28) = 0
trigger1 = ctrl && statetype = A
trigger2 = stateno = 511
trigger3 = stateno = 50

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

;---------------------------------------------------------------------------
[State -1,Ground Throw]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall = !var(59) &&  var(22) = 0
triggerall = command = "holdfwd"
triggerall = command = "z" ;&& command = "y"
triggerall = P2BodyDist X <= 20  && p2bodydist y <= 10
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
[State -1,Ground Toss]
type = ChangeState
value = 830
triggerall = enemynear, name != "Prime Sentinels"
triggerall = !var(59) &&  var(22) = 0
triggerall = command = "holdback"
triggerall = command = "z"; && command = "b"
triggerall = P2BodyDist X <= 30  && p2bodydist y <= 10
triggerall = ctrl
trigger1 = statetype = S

;---------------------------------------------------------------------------
[State -1,Air Throw]
type = ChangeState
value = 920
triggerall = enemynear, name != "Prime Sentinels"
triggerall = !var(59)
triggerall = command = "holdfwd"
triggerall = command = "z" ; && command = "y"
triggerall = P2BodyDist X <= 20  && p2bodydist y <= 10
triggerall = ctrl
trigger1 = statetype = A
trigger1 = pos Y < -50

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !Var(59)
triggerall = command = "Taunt"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, overhead atk]
type = ChangeState
value = 590
triggerall = !var(59)
triggerall = command = "y" && command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(17) = 1
trigger3 = var(17) = 2 && var(20) = var(36)
trigger3 = stateno != 590

;---------------------------------------------------------------------------
[State -1, Standing Punch]
type = ChangeState
value = 200
triggerall = !var(59)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1,  Stand Kick]
type = ChangeState
value = 300
triggerall = !var(59)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact); && time > 3

;---------------------------------------------------------------------------
[State -1, Crouch Punch]
type = ChangeState
value = 400
triggerall = !var(59)
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 1600) && (Movecontact)

;---------------------------------------------------------------------------
[State -1, Crouch Kick]
type = ChangeState
value = 500
triggerall = !var(59)
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact); && time > 3
trigger3 = (StateNo = 1600) && (Movecontact)

;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = !var(59)
triggerall = command != "holddown"
triggerall= command = "y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact) ;&& time > 3
trigger3 = (StateNo = 310) && (Movecontact) ;&& time > 3
trigger4 = (StateNo = 300) && (Movecontact) ;&& time > 3
trigger5 = (StateNo = 510) && (Movecontact)

;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 310
triggerall = !var(59)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact); && time > 3
trigger3 = (StateNo = 300) && (Movecontact); && time > 3
trigger4 = (StateNo = 1600) && (Movecontact)

;---------------------------------------------------------------------------
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !var(59)
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact); && time > 3
trigger3 = (StateNo = 500) && (Movecontact); && time > 3
trigger5 = (StateNo = 1600) && (Movecontact)

;---------------------------------------------------------------------------
[State -1, Crouch Medium Kick]
type = ChangeState
value = 510
triggerall = !var(59)
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact); && time > 3
trigger3 = (StateNo = 500) && (Movecontact); && time > 3
trigger4 = (StateNo = 410) && (Movecontact); && time > 3
trigger5 = (StateNo = 1600) && (Movecontact)

;---------------------------------------------------------------------------
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = !var(59)
triggerall = command != "holddown"
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact) ;&& time > 3
trigger3 = (StateNo = 300) && (Movecontact) ;&& time > 3
trigger4 = (StateNo = 210) && (Movecontact) ;&& time > 3
trigger5 = (StateNo = 310) && (Movecontact) ;&& time > 3

;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 320
triggerall = !var(59)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200) && (Movecontact); && time > 3
trigger3 = (StateNo = 300) && (Movecontact); && time > 3
trigger4 = (StateNo = 210) && (Movecontact); && time > 3
trigger5 = (StateNo = 310) && (Movecontact); && time > 3

;---------------------------------------------------------------------------
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = !var(59)
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact); && time > 3
trigger3 = (StateNo = 500) && (Movecontact); && time > 3
trigger4 = (StateNo = 410) && (Movecontact); && time > 3
trigger5 = (StateNo = 510) && (Movecontact); && time > 3

;---------------------------------------------------------------------------
;[State -1, Crouch Strong Kick 2]
;type = ChangeState
;value = 521
;triggerall = !var(59)
;triggerall = command = "c" && command = "holdfwd"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = var(17) = [1,2]
;trigger3 = var(17) = 3 && var(21) = var(36)
;trigger3 = stateno != 521

;---------------------------------------------------------------------------

[State -1, Crouch Strong Kick]
type = ChangeState
value = 520
triggerall = !var(59)
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 400) && (Movecontact); && time > 3
trigger3 = (StateNo = 500) && (Movecontact); && time > 3
trigger4 = (StateNo = 410) && (Movecontact); && time > 3
trigger5 = (StateNo = 510) && (Movecontact); && time > 3

;---------------------------------------------------------------------------
[State -1, Air Down Kick]
type = ChangeState
value = 8018
triggerall = !var(59)
triggerall = command = "c" && command = "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 600) && (Movecontact); && time > 3
trigger3 = (StateNo = 610) && (Movecontact); && time > 3
trigger4 = (StateNo = 620) && (Movecontact); && time > 3
trigger5 = (StateNo = 700) && (Movecontact); && time > 3
trigger6 = (StateNo = 710) && (Movecontact); && time > 3
trigger7 = (StateNo = 720) && (Movecontact); && time > 3

;---------------------------------------------------------------------------
[State -1, Air Punch]
type = ChangeState
value = 600
triggerall = !var(59)
triggerall = command = "x"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 700) && (Movecontact); && time > 3
trigger3 = stateno = 511 || stateno = 50
trigger4 = (StateNo = 1210) && (Movecontact); && time > 2
trigger5 = (stateno = [2060,2110]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Kick]
type = ChangeState
value = 700
triggerall = !var(59)
triggerall = command = "a"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 600) && (Movecontact); && time > 3
trigger3 = stateno = 511 || stateno = 50
trigger4 = (StateNo = 1210) && (Movecontact); && time > 2
trigger5 = (stateno = [2060,2110]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 1210) && (Movecontact); && time > 2
trigger3 = (StateNo = 1211) && (Movecontact); && time > 2
trigger4 = (StateNo = 1212) && (Movecontact); && time > 2
trigger5 = (StateNo = 600) && (Movecontact) ;&& time > 3
trigger6 = (StateNo = 700) && (Movecontact) ;&& time > 3
trigger7 = (StateNo = 710) && (Movecontact) ;&& time > 3
trigger8 = stateno = 511 || stateno = 50
trigger9 = (stateno = [2060,2110]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Medium Kick]
type = ChangeState
value = 710
triggerall = !var(59)
triggerall = command = "b"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 1210) && (Movecontact); && time > 2
trigger3 = (StateNo = 1211) && (Movecontact); && time > 2
trigger4 = (StateNo = 1212) && (Movecontact); && time > 2
trigger5 = (StateNo = 600) && (Movecontact) ;&& time > 3
trigger6 = (StateNo = 700) && (Movecontact) ;&& time > 3
trigger7 = (StateNo = 610) && (Movecontact); && time > 3
trigger8 = stateno = 511 || stateno = 50
trigger9 = (stateno = [2060,2110]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 620
triggerall = !var(59)
triggerall = command = "z"
triggerall = statetype = A
triggerall = stateno != 7730
trigger1 = ctrl
trigger2 = (StateNo = 1210) && (Movecontact); && time > 2
trigger3 = (StateNo = 1211) && (Movecontact); && time > 2
trigger4 = (StateNo = 1212) && (Movecontact); && time > 2
trigger5 = (StateNo = 600) && (Movecontact); && time > 3
trigger6 = (StateNo = 610) && (Movecontact); && time > 3
trigger7 = (StateNo = 710) && (Movecontact); && time > 3
trigger8 = (StateNo = 700) && (Movecontact); && time > 3
trigger9 = stateno = 511 || stateno = 50
trigger10 = (stateno = [2060,2110]) && movecontact

;---------------------------------------------------------------------------
[State -1, Air Strong Punch]
type = ChangeState
value = 511
;triggerall = !var(59)
triggerall = var(28) = 0 ;ZVitor style
triggerall = statetype = A
triggerall = Movecontact
trigger1 = stateno = 720

;---------------------------------------------------------------------------
[State -1, Air Strong Kick]
type = ChangeState
value = 720
triggerall = !var(59)
triggerall = command = "c"
triggerall = stateno != 7730
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 1210) && (Movecontact); && time > 2
trigger3 = (StateNo = 1211) && (Movecontact); && time > 2
trigger4 = (StateNo = 1212) && (Movecontact); && time > 2
trigger5 = (StateNo = 700) && (Movecontact); && time > 3
trigger6 = (StateNo = 710) && (Movecontact); && time > 3
trigger7 = (StateNo = 610) && (Movecontact); && time > 3
trigger8 = (StateNo = 600) && (Movecontact); && time > 3
trigger9 = stateno = 511 || stateno = 50
trigger10 = (stateno = [2060,2110]) && movecontact

;---------------------------------------------------------------------------
[State -1, Triangle Jump]
type = ChangeState
value = 7730
triggerall = stateno != 1340 && stateno != 1350
triggerall = movetype != H
trigger1 = command = "holdfwd" && ctrl && var(59) = 0 && prevstateno !=  7740 && prevstateno !=  7730 &&  (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (backedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]
trigger3 = var(28) = 1 && command = "holdback" && ctrl && var(59) = 0 && prevstateno !=  7740 && prevstateno !=  7730 &&  (frontedgebodydist = 0) && (pos y < -80); && prevstateno != [600,650]

[State -1, teto]
type = ChangeState
value = 7740
triggerall = stateno = 7730
trigger1 =  command = "holdup" && ctrl && var(59) = 0 && prevstateno !=  7740 &&  (ScreenPos Y <= 80) &&  (ScreenPos Y >= 75);&& (pos y < -80); && prevstateno != [600,650]
trigger2 = var(59) = 1 && ctrl && random >= 900 && vel y > 0 && (ScreenPos Y <= 80) &&  (ScreenPos Y >= 75); && prevstateno != [600,650]

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
trigger2 = stateno = 210 || NumTarget(320) || stateno = 521

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
type = null;ChangeState
value = 7800
triggerall = !var(59)
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
trigger1 = command = "holdfwd"
trigger1 = Time = 1

;---------------------------------------------------------------------------
[State -1, Roll recovery Backward]
type = null;ChangeState
value = 7801
triggerall = !var(59)
triggerall = stateno = 5100 || stateno = 5110 || stateno = 5120
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
