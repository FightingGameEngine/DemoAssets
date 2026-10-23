[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 20
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


[Command]
name = "armor"   ;e grap
command = ~D, DF, F, a+b
time = 15

[Command]
name = "armor"
command = ~D, DF, F, c+b
time = 15

[Command]
name = "armor"
command = ~D, DF, F, c+a
time = 15


[Command]
name = "DoubleDragon"
command = ~D, DF, F, c+z
time = 15

[Command]
name = "DoubleDragonCounter"
command = ~B, DB, D, c+z
time = 15

[Command]
name = "DoubleDragonCross"
command = ~D, DB, B, c+z
time = 15

[Command]
name = "Erotic Discharge"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "Erotic Discharge"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "Erotic Discharge"
command = ~D, DB, B, z+x
time = 20

[Command]
name = "Psychoblast"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "Psychoblast"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "Psychoblast"
command = ~D, DF, F, z+x
time = 20

[Command]
name = "Transformation"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "Transformation"
command = ~D, DB, B, b+c
time = 20

[Command]
name = "Transformation"
command = ~D, DB, B, a+c
time = 20

;--------------------------------
;Counter 1 & Recovery Roll (BACK)
[Command]
name = "Counter1"
command = ~B, DB, D, z
time = 15

[Command]
name = "Counter1"
command = ~B, DB, D, y
time = 15

[Command]
name = "Counter1"
command = ~B, DB, D, x
time = 15

;Counter 2 & Recovery Roll (Foward)
[Command]
name = "Counter2"
command = ~B, DB, D, c
time = 15

[Command]
name = "Counter2"
command = ~B, DB, D, b
time = 15

[Command]
name = "Counter2"
command = ~B, DB, D, a
time = 15

;-| Special Motions |------------------------------------------------------
[Command]
name = "Blast_x"
command = ~D, DF, F, x

[Command]
name = "Blast_y"
command = ~D, DF, F, y

[Command]
name = "Blast_z"
command = ~D, DF, F, z

[Command]
name = "Low Blast_a"
command = ~D, DF, F, a

[Command]
name = "Low Blast_b"
command = ~D, DF, F, b

[Command]
name = "Low Blast_c"
command = ~D, DF, F, c

[Command]
name = "Spear_x"
command = ~B, F, x

[Command]
name = "Spear_y"
command = ~B, F, y

[Command]
name = "Spear_z"
command = ~B, F, z

[Command]
name = "Astral Projection_a"
command = ~D, DB, B, a

[Command]
name = "Astral Projection_b"
command = ~D, DB, B, b

[Command]
name = "Astral Projection_c"
command = ~D, DB, B, c

[Command]
name = "Smash_Floor_x"
command = ~D, DB, B, x

[Command]
name = "Smash_Floor_y"
command = ~D, DB, B, y

[Command]
name = "Smash_Floor_z"
command = ~D, DB, B, z

[Command]
name = "Astral Projection2"
command = ~D, DB, B, x

[Command]
name = "Astral Projection2"
command = ~D, DB, B, y

[Command]
name = "Astral Projection2"
command = ~D, DB, B, z


; -| CPU Commands |------

[Command]
name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "CPU2"
command = D, U, U, D, D, U
time = 1

[Command] 
name = "CPU3"
command = U, D, D, U, U, D
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| MvC S-Jump |------------
[Command]
name = "DU"
command = D, U
time = 15

[Command]
name = "DUF"
command = D, UF
time = 15

[Command]
name = "DUB"
command = D, UB
time = 15

[Command]
name = "ChargedDU"
command = ~10$D, $U

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

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

;-| PartnerChange |-----------------------------------------------
[Command]
name = "troca"
command = z+c
time = 1

[Command] 
name = "Assist"
command = y+b
time = 1

;-| ADVGUARD |------------
[Command] 
name = "AdvGuard"
command = y+z
time = 10

[Command] 
name = "AdvGuard"
command = x+y
time = 10

[Command] 
name = "AdvGuard"
command = x+z
time = 10

;-| Dir + Button |------------
[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
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

[Command]
name = "hold-start"
command = /s
time = 1

[Command]
name = "release-start"
command = ~s
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

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(20) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 20
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(20) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 20
value = 0

;--------------------------------
;AI AIR Combo
[State -1];	fracos aéreos
type = ChangeState
value = 600 + 30 * (P2bodyDist x < 42 || var(3) > 1)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = (!movecontact && ctrl)
trigger1 = statetype = A && var(3) < 3
trigger1 = P2BodyDist X <= vel x * 3 + 46
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno= 8850 || (stateno= 8800 && p2movetype=H)
ignorehitpause=1

[State -1];	médios aéreos
type = ChangeState
value = 610 + 30 * (var(3) >= 7 || P2bodyDist x < 45)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 12 && roundstate = 2
triggerall = (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= vel x * 3 + 63
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = 600 || stateno = 630
trigger2 = var(3) >= 3
ignorehitpause=1

[State -1];	Fortes aéreos
type = ChangeState
value = 620 + 30 * (P2bodyDist x < 39)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 16 && roundstate = 2
triggerall = stateno != 620 && stateno < 650 && (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= 76 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = var(3) >= 12 && stateno = [600,640]
ignorehitpause=1

;AI Ground Combo 1
[State -1];	fracos em pé
type = ChangeState
value = 200 + 30 * (P2StateType != A || var(3) > 1)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = roundstate = 2 && var(20) = 1 && time > 7
triggerall = random > life && time % 4 && ctrl
triggerall = const(size.mid.pos.y) > p2bodydist y + enemynear,const(size.head.pos.y)
trigger1 = StateType != A && P2Movetype != A
trigger1 = P2StateType != C && p2bodydist Y > -20
trigger1 = P2BodyDist X <= 59
ignorehitpause=1

[State -1];	fracos abaixados
type = ChangeState
value = 430 - 30 * (P2StateType = A || var(3) > 1)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = var(20) = 1 && P2BodyDist X <= 51
triggerall = random > life && time % 4 && ctrl
triggerall = roundstate = 2 && stateno = 100
trigger1 = P2Movetype != A && P2StateType != A
trigger2 = P2Movetype = A && P2StateType = S
trigger2 = P2life < life
ignorehitpause=1

[State -1];	médios abaixados
type = ChangeState
value = 440 - (P2Movetype != A || var(3) >= 7) * 30
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = roundstate = 2 && var(20) = 1
triggerall = stateno = 400 || stateno = 430 || stateno = 200 || stateno = 230
trigger1 = movecontact || ctrl
trigger1 = random > life && time % 4 && P2BodyDist X <= 75
trigger2 = P2Dist Y <= -125
trigger3 = stateno = 430 && movehit
ignorehitpause=1

[State -1];	médios em pé
type = ChangeState
value = 240 - 30 * (p2statetype != C || var(3) >= 7 || P2BodyDist X >= 58)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype != C && roundstate = 2
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 71
triggerall = const(size.mid.pos.y) > p2bodydist y + enemynear,const(size.head.pos.y)
trigger1 = stateno = 100
trigger2 = stateno = 400 || stateno = 430
trigger3 = stateno = 200 || stateno = 230
ignorehitpause=1

[State -1];	gancho abaixado
type = ChangeState
value = 420 + (enemynear,statetype=A || P2BodyDist X >= 41) * 30
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = roundstate = 2 && StateType != A
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 93
trigger1 = stateno != 420 && var(3) >= 12 && stateno = [400,440]
trigger2 = stateno != 220 && var(3) >= 12 && stateno = [200,240]
ignorehitpause=1

[State -1];	fortes em pé
type = ChangeState
value = 220 + 30 * (P2BodyDist X < 56 && P2Dist y != 0)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact || ctrl
triggerall = P2StateType != C && StateType != A
triggerall = P2BodyDist X <= 159
triggerall = const(size.mid.pos.y) > p2bodydist y + enemynear,const(size.head.pos.y)
trigger1 = stateno != 420 && var(3) >= 12 && stateno = [400,440]
trigger2 = stateno != 220 && var(3) >= 12 && stateno = [200,240]
ignorehitpause=1

;--------------------------------
;S-Jump UP/FWD
[State -1];Aerial Rave Follow-Jump
type = ChangeState
value = 8800
trigger1 = (Command = "holdup" || command = "3K") && movehit
trigger1 = stateno = 420
trigger2 = statetype != A && ctrl
trigger2 = command = "DU" || command = "DUF"

[State -1]; a.i.
type = ChangeState
value = 8800
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = roundstate = 2 && StateType != A; && P2MoveType!=A
triggerall = var(20) = 1 && random > life && time % 4
trigger1 = ctrl && p2bodydist Y < 1.66 * (const(size.head.pos.y))
trigger2 = ctrl && p2StateNo >= 5000 && (enemynear, vel y < -5)
trigger3 = stateno = 420 && movehit
trigger4 = ctrl && P2BodyDist X > 120 && stateno = [150,151]
trigger4 = (var(6) != 0) || p2stateno = [3000,4000]

;S-Jump BWD
[State -1]
type = ChangeState
value = 8900
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "DUB"

;-------------------------------
;Normal Jump
[State -1]
type = ChangeState
value = 40
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = var(20) = 1 && random > life && time % 5 && statetype!=A && ctrl
trigger1 = (stateno=100 ||stateno=20||Command = "holdfwd")
trigger1 = VAR(6) != 0
trigger1 = p2bodydist X > 220
trigger2 = p2bodydist x < 28 && p2bodydist y < 0 && vel y >=0
;---------------------------------------------------------------

;--------------------------------
;--------------------------------


;--------------------------------

; Counter: Ground / anti-Air
;[State -1]
;type = ChangeState
;value = 8300 + 10 * (command="Counter2")
;triggerall = power>=1000
;triggerall = statetype != A && var(38) != 3
;trigger1 = var(20) = 0 && (command="Counter1" || command="Counter2")
;triggerall = stateno = [150,152]
;trigger2 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
;trigger2 = var(20) = 1 && P2life > (life*1.5) && time % 4
;ignorehitpause=1

;--------------------------------

;--------------------------------
; AUTO AI

[State -1, Activate AI] 
type = VarSet 
triggerall = var(20) != 1 
trigger1 = IsHomeTeam = 1 && matchno > 1
trigger2 = command = "CPU1" || command = "CPU2" || command = "CPU3"
var(20) = 1
ignorehitpause=1

[State -1, Level AI] 
type = helper 
triggerall = var(20) != 0 && var(11)=0
trigger1 = IsHomeTeam = 1 && matchno > 1
ignorehitpause=1
ID=6
stateno=6
name = "Level AI"

; Reset Air combo

[State -1, reset] 
type = VarSet 
trigger1 = var(3) != 0 && statetype != A
trigger1 = stateNo != [5000,5125]
trigger1 = stateNo != [200,670]
var(3) = 0

;===========================================================================
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = statetype != A && ctrl && anim!=100 && numexplod(8450)=0
triggerall = roundstate = 2 && numexplod(101)=0
trigger1 = command = "FF"
trigger2 = (P2Movetype = H || var(6)=0) && P2BodyDist X = [70,170]
trigger2 = pos y =0 && var(20) = 1 && random > life && time % 4
trigger2 = stateno != 100 && (enemynear, alive = 1)
trigger2 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
trigger3 = var(20) = 1 && p2life > life && p2StateNo = [5100,5110]
trigger3 = stateno != 100 && (enemynear, alive = 1)
trigger3 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
; -- correr após state 1000
trigger4 = anim=1000 && var(6)=0 && animtime = 0 
trigger4 = var(20) = 1 && random > life && time % 4
trigger4 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)

;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
triggerall = statetype != A && numexplod(8450)=0
triggerall = roundstate = 2 && numexplod(101)=0
triggerall = ctrl
triggerall = var(21) = 0
trigger2 = stateno = 150 && P2Movetype = A && P2life > life
trigger2 = pos y =0 && var(20) = 1
trigger2 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)

;RunBack
[State -1]
type = ChangeState
value = 106
trigger1 = command = "BB"
triggerall = statetype != A && numexplod(8450)=0
triggerall = roundstate = 2 && numexplod(101)=0
triggerall = ctrl
triggerall = var(21) = 1
trigger2 = stateno = 150 && P2Movetype = A && P2life > life
trigger2 = pos y =0 && var(20) = 1
trigger2 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)

;===========================================================================
; SUPERS
;---------------------------------------------------------------------------
;Erotic Discharge
[State -1, Erotic Discharge]
type = ChangeState
value = 3300
triggerall = command = "Erotic Discharge" || (var(20)=1 && random < 40 && p2bodydist x > 100)
triggerall = power >= 1000
triggerall = Var(21) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA,SA) && (MoveContact)

------------------------------------------------------
;Psycho blast
[State -1, Psychoblast]
type = ChangeState
value = 3000
triggerall = command = "Psychoblast" || (var(20)=1 && random < 80 && p2bodydist x > 100)
triggerall = power >= 1000
triggerall = Var(21) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA,SA) && (MoveContact)
trigger3 = enemynear, stateno = [5110,5120]

;armor
[State -1, Psychoblast]
type = ChangeState
value = 3600
triggerall = command = "armor"  || (var(20)=1 && random < 150 && p2bodydist x > 160)
triggerall = power >= 1000
triggerall = Var(21) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA,SA) && (MoveContact)


;clark move
[State -1, Erotic Discharge]
type = ChangeState
value = 3700
triggerall = command = "armor" || (var(20)=1 && random < 200 && p2bodydist x < 80)
triggerall = power >= 1000
triggerall = Var(21) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA,SA) && (MoveContact)
------------------------------------------------------

;Transformation
; var(21)=0 - Psycho
; var(21)=1 - Diamond
[State -1, Transformation]
type = ChangeState
value = 3500
triggerall = command = "Transformation" || (var(20)=1 && random < 120 && var(21)=0 && p2bodydist x > 200)  || (var(20)=1 && random < 100 && var(21)=1 && p2bodydist x > 200)
triggerall = power >= 1000
triggerall = statetype != A && stateno < 800
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA,SA) && (MoveContact)

;---------------------------------------------------------------------------
; Astral Projection
[State -1, Astral Projection]
type = ChangeState
value = 2005 + 5 * (command = "Astral Projection_b") + 10 * (command = "Astral Projection_c")
triggerall = (command = "Astral Projection_a" ^^ command = "Astral Projection_b" ^^ command = "Astral Projection_c")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = statetype != A && stateno < 800
triggerall = roundstate = 2 && numhelper(2001)=0
triggerall = var(20)=0 || var(20)=1 && (!IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1))
triggerall = Var(21) = 0
trigger1 = ctrl || (movecontact || stateno = [200,499])
trigger2 = var(20) = 1
trigger2 = P2StateType = A && random > life && stateno < 1000
trigger2 = enemynear, vel y < 2 && P2BodyDist x<130 + vel x * 3
trigger2 = p2bodydist y < const(size.mid.pos.y)
ignorehitpause=1
trigger2 = (StateType != A) && (HitdefAttr = SC, NA,SA) && (MoveContact)

;---------------------------------------------------------------------------
; Psy Blast
[State -1, Psy Blast]
type = ChangeState
value = 1010
triggerall = (command = "Blast_x" ^^ command = "Blast_y" ^^ command = "Blast_z")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = roundstate = 2 && numprojID(1000)=0 && numexplod(1102)=0 && numprojID(1102)=0
triggerall = var(20)=0 || var(20)=1 && (!IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1))
triggerall = Var(21) = 0 && stateno < 800
triggerall = statetype != A
trigger1 = ctrl || (movecontact || stateno = [200,699])
trigger2 = (var(6) > 0 || enemynear, numproj!=0) && random > life && ctrl
ignorehitpause=1
trigger3 = (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Psy Blast
[State -1, Psy Blast Jump]
type = ChangeState
value = 1010
triggerall = (command = "Blast_x" ^^ command = "Blast_y" ^^ command = "Blast_z")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = roundstate = 2 && numprojID(1002)=0 && numexplod(1102)=0 && numprojID(1102)=0
triggerall = var(20)=0 || var(20)=1 && (!IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1))
triggerall = Var(21) = 0 && stateno < 800
triggerall = statetype = A
trigger1 = ctrl || (movecontact || stateno = [200,699])
trigger2 = (var(6) > 0 || enemynear, numproj!=0) && random > life && ctrl
ignorehitpause=1
trigger3 = (HitdefAttr = A, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Low Psy Blast
[State -1, Low Psy Blast]
type = ChangeState
value = 1035 + 5 * (command = "Low Blast_b") + 10 * (command = "Low Blast_c")
triggerall = (command = "Low Blast_a" ^^ command = "Low Blast_b" ^^ command = "Low Blast_c")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = roundstate = 2 && statetype != A && numprojID(1001)=0
triggerall = var(20)=0 || var(20)=1 && (!IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1))
triggerall = Var(21) = 0 && stateno < 800
trigger1 = ctrl || (movecontact || stateno = [200,499])
trigger2 = (var(6) > 0 || enemynear, numproj!=0) && random > life && ctrl
ignorehitpause=1
trigger3 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Psy Spear
[State -1, Spear]
type = ChangeState
value = 1505 + 5 * (command = "Spear_y") + 10 * (command = "Spear_z")
triggerall = (command = "Spear_x" ^^ command = "Spear_y" ^^ command = "Spear_z")||(var(20)=1 && (gametime%25)=0 && (random > life))
triggerall = Var(21) = 0 && stateno < 800;statetype != A &&
triggerall = roundstate = 2 && numprojID(1002)=0 && numexplod(1102)=0 && numprojID(1102)=0
trigger1 = ctrl || (movecontact || stateno = [200,499])
trigger2 = (var(6) > 0 || enemynear, numproj!=0) && random > life && ctrl
ignorehitpause=1
trigger3 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Diamond Slam
[State -1, DiamondSlam]
type = ChangeState
value = 1105 + 5 * (command = "Blast_y") + 10 * (command = "Blast_z")
triggerall = (command = "Blast_x" ^^ command = "Blast_y" ^^ command = "Blast_z")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = roundstate = 2 && statetype != A
triggerall = var(20)=0 || var(20)=1 && (!IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1))
triggerall = Var(21) = 1 && stateno < 800
trigger1 = ctrl || (movecontact || stateno = [200,499])
trigger2 = (var(6) > 0 || enemynear, numproj!=0) && random > life && ctrl
ignorehitpause=1
trigger3 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Diamond Scratch
[State -1, Scratch]
type = ChangeState
value = 1205 + 5 * (command = "Astral Projection_b") + 10 * (command = "Astral Projection_c")
triggerall = (command = "Astral Projection_a" ^^ command = "Astral Projection_b" ^^ command = "Astral Projection_c")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = roundstate = 2 && statetype != A
triggerall = var(20)=0 || var(20)=1 && (!IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1))
triggerall = Var(21) = 1 && stateno < 800
trigger1 = ctrl || (movecontact || stateno = [200,499])
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Diamond Above you
[State -1, Above you]
type = ChangeState
value = 1605 + 5 * (command = "Low Blast_b") + 10 * (command = "Low Blast_c")
triggerall = (command = "Low Blast_a" ^^ command = "Low Blast_b" ^^ command = "Low Blast_c")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = roundstate = 2 && statetype != A
triggerall = var(20)=0 || var(20)=1 && (!IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1))
triggerall = Var(21) = 1 && stateno < 800
trigger1 = ctrl || (movecontact || stateno = [200,499])
trigger2 = (var(6) > 0 || enemynear, numproj!=0) && random > life && ctrl
ignorehitpause=1
trigger3 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;---------------------------------------------------------------------------
; Diamond Smash The Dance Floor
[State -1, Smash The Dance Floor]
type = ChangeState
value = 1905 + 5 * (command = "Smash_Floor_y") + 10 * (command = "Smash_Floor_z")
triggerall = (command = "Smash_Floor_x" ^^ command = "Smash_Floor_y" ^^ command = "Smash_Floor_z")||(var(20)=1 && (gametime%20)=0 && (random > life))
triggerall = roundstate = 2 && statetype != A
triggerall = var(20)=0 || var(20)=1 && (!IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1))
triggerall = Var(21) = 1 && stateno < 800
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = enemynear, stateno = [5110,5120]

; Astral Projection 2
[State -1, Astral Projection]
type = ChangeState
value = 2500
triggerall = command = "Astral Projection2" || (var(20)=1 && random < 10 && p2bodydist x < 100)
triggerall = statetype != A
trigger1 = ctrl
triggerall = Var(21) = 0
;--------------------------------
;Stand_Throw
;--------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = enemynear, name != "Prime Sentinels"
triggerall = stateno != 100 && p2bodydist X <= 10 && ctrl
triggerall = statetype != A
trigger1 = (command = "fwd_z"); && var(21)=1 && statetype!=A
trigger2 = (command = "back_z") ;&& var(21)=1 && statetype!=A
trigger3 = var(20)=1 && random < (p2life - life) && vel x = 0
trigger3 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)

;===========================================================================
;--------------------------------
; Ground basics
[State -1, Y]
type = ChangeState
value = 201
triggerall = Command = "x"
triggerall = Command != "holddown"
triggerall = StateNo = 200
trigger1 = (StateType = S) && (Ctrl)
trigger2 = movecontact
trigger3 = time > 7
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=[200,201]
trigger3 = movecontact && stateno=230;&& time > 5


;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=[200,201] ;&& time > 5
trigger3 = movecontact && stateno=210 ;&& time > 5
trigger4 = movecontact && stateno=230 ;&& time > 5
trigger5 = movecontact && stateno=240

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=[200,201] ;&& time > 5

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=230
trigger3 = movecontact && stateno=[200,201] ;&& time > 5
trigger4 = movecontact && stateno=210;&& time > 5


;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno=230 ;&& time > 5
trigger3 = movecontact && stateno=240 ;&& time > 5
trigger4 = movecontact && stateno=[200,201] ;&& time > 5
trigger5 = movecontact && stateno=210

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=400
trigger3 = movecontact && stateno=430 ;&& time > 5
trigger4 = movecontact && stateno=[200,201]
trigger5 = movecontact && stateno=230 ;&& time > 5

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=400 ;&& time > 5
trigger3 = movecontact && stateno=410 ;&& time > 5
trigger4 = movecontact && stateno=430 ;&& time > 5
trigger5 = movecontact && stateno=440
trigger6 = movecontact && stateno=[200,201] ;&& time > 5
trigger7 = movecontact && stateno=210 ;&& time > 5
trigger8 = movecontact && stateno=230 ;&& time > 5
trigger9 = movecontact && stateno=240

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=400 ;&& time > 5
trigger3 = movecontact && stateno=[200,201] ;&& time > 5

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=430
trigger3 = movecontact && stateno=400 ;&& time > 5
trigger4 = movecontact && stateno=410;&& time > 5
trigger5 = movecontact && stateno=230
trigger6 = movecontact && stateno=[200,201] ;&& time > 5
trigger7 = movecontact && stateno=210;&& time > 5
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno=430 ;&& time > 5
trigger3 = movecontact && stateno=440 ;&& time > 5
trigger4 = movecontact && stateno=400 ;&& time > 5
trigger5 = movecontact && stateno=410
trigger6 = movecontact && stateno=[200,201] ;&& time > 5
trigger7 = movecontact && stateno=210
;--------------------------------
; Air basics
;--------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A && var(3) < 3
trigger1 = ctrl
trigger2 = stateno = 8800 && var(20)=1 && P2MoveType=H
trigger2 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
trigger3 = (stateno = 630) && movecontact
ignorehitpause=1

;--------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A  && var(3) < 3
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = stateno = 8800 && var(20)=1 && P2MoveType=H
trigger3 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
ignorehitpause=1

;--------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A && var(3) < 12
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = 630
ignorehitpause=1

;--------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A && var(3) < 12
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = movecontact && stateno = [630,640]
ignorehitpause=1

;--------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && var(3) < 16
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]
ignorehitpause=1

;--------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]
ignorehitpause=1

;---------------------------------------------------------------------------
[State -1, Interrogation mode]
type = varadd
triggerall = (time%4) = 0
trigger1 = stateno = 810 || stateno = 1660
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = command = "x" || command = "y" || command = "z"
trigger2 = stateno = 850 || stateno = 1660
v=4
value = 6

;--------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "Taunt"
triggerall = statetype != A && ctrl
trigger1 = var(20) != 1
trigger2 = random < life && var(20)=1
trigger2 = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))<random)


; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(20) = 1 && Statetype != A
triggerall = P2statetype != C && Statetype = S
triggerall = P2Movetype = A && Pos Y != [-1,-999]
triggerall = ctrl && facing != (enemynear, facing)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
trigger1 = random > (enemynear, movecontact)*500
value = 130 ;Default standing guard state


; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1 && StateType != A
triggerall = P2statetype = C && P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
trigger1 = stateno = 150
trigger1 = 1
value = 152


; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1 && StateType != A
triggerall = P2statetype = C && P2Movetype = A
triggerall = ctrl && Pos Y != [-1,-999]
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
triggerall = facing != (enemynear, facing)
trigger1 = random > (enemynear, movecontact)*500
value = 131


; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1 && Statetype != A
triggerall = P2statetype != C && P2Movetype = A
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
trigger1 = random > life
trigger1 = stateno = 152
value = 150


; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1 && Statetype = A
triggerall = P2Movetype = A && ctrl
triggerall = facing != (enemynear, facing)
triggerall = !IsHomeTeam || (IsHomeTeam && (matchno*var(11))>random && matchno>1)
trigger1 = random > life
value = 132

[State -1, Activate AI] ; teste
type = null;VarSet 
trigger1 = var(21) != 1 
var(21) = 1

;------------------------------------
;AI Guard Push (Standing)
[State -1, AI Guard Push]
type = ChangeState
value = 7610
triggerall = Var(59)
triggerall = AILevel >=2
triggerall = p2bodydist x =[0,40]
triggerall = StateType = S
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = stateno = [150,153]
trigger1 = Time >= 5
trigger1 = random < 500+300*(BackEdgeDist < 30)

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

