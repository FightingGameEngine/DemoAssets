[Remap] 
x = x
y = y
z = z
a = a
b = b
c = c
s = s
 
[Defaults] 
command.time = 15
command.buffer.time = 3
 
; スーパーコンボ 
	 
[Command] 
name = "4c646_PP"
command = ~30$B, $F, $B, $F, x+y
time = 25
[Command]
name = "4c646_PP"
command = ~30$B, $F, $B, $F, y+z
time = 25
[Command]
name = "4c646_PP"
command = ~30$B, $F, $B, $F, x+z
time = 25
 
[Command] 
name = "41236_KK"
command = ~B, $D, F, a+b
time = 25
[Command]
name = "41236_KK"
command = ~B, $D, F, a+c
time = 25
[Command]
name = "41236_KK"
command = ~B, $D, F, b+c
time = 25
 
[Command] 
name = "236_PP"
command = ~D, DF, F, x+y
[Command]
name = "236_PP"
command = ~D, DF, F, x+z
[Command]
name = "236_PP"
command = ~D, DF, F, y+z
 
[Command] 
name = "214_PP"
command = ~D, DB, B, x+y
[Command]
name = "214_PP"
command = ~D, DB, B, x+z
[Command]
name = "214_PP"
command = ~D, DB, B, y+z
 
[Command] 
name = "214_KK"
command = ~D, DB, B, a+b
[Command]
name = "214_KK"
command = ~D, DB, B, a+c
[Command]
name = "214_KK"
command = ~D, DB, B, b+c
 
[Command] 
name = "236_KK"
command = ~D, DF, F, a+b
[Command]
name = "236_KK"
command = ~D, DF, F, a+c
[Command]
name = "236_KK"
command = ~D, DF, F, b+c
 
[Command] 
name = "tap_P"
command = x, x, x
time = 30
buffer.time = 20

[Command]
name = "tap_P"
command = y, y, y
time = 30
buffer.time = 20

[Command]
name = "tap_P"
command = z, z, z
time = 30
buffer.time = 20
  
; 必殺技 


[Command] 
name = "236_x"
command = ~D, DF, F, x

[Command]
name = "236_y"
command = ~D, DF, F, y

[Command]
name = "236_z"
command = ~D, DF, F, z
 
[Command] 
name = "236_a"
command = ~D, DF, F, a

[Command]
name = "236_b"
command = ~D, DF, F, b

[Command]
name = "236_c"
command = ~D, DF, F, c

[Command] 
name = "214_x"
command = ~D, DB, B, x

[Command]
name = "214_y"
command = ~D, DB, B, y

[Command]
name = "214_z"
command = ~D, DB, B, z

[Command] 
name = "623_x"
command = ~F, D, DF, x

[Command]
name = "623_y"
command = ~F, D, DF, y

[Command]
name = "623_z"
command = ~F, D, DF, z
 
[Command] 
name = "214_a"
command = ~D, DB, B, a

[Command]
name = "214_b"
command = ~D, DB, B, b

[Command]
name = "214_c"
command = ~D, DB, B, c
 
[Command] 
name = "63214_x"
command = ~F, $D, B, x
time = 20

[Command]
name = "63214_y"
command = ~F, $D, B, y
time = 20

[Command]
name = "63214_z"
command = ~F, $D, B, z
time = 20


	 
[Command] 
name = "4c6_x"
command = ~30$B, $F, x

[Command]
name = "4c6_y"
command = ~30$B, $F, y

[Command]
name = "4c6_z"
command = ~30$B, $F, z
 
[Command] 
name = "2c8_a"
command = ~30$D, $U, a

[Command]
name = "2c8_b"
command = ~30$D, $U, b

[Command]
name = "2c8_c"
command = ~30$D, $U, c
 
[Command] 
name = "896_a"
command = ~U, F, a

[Command]
name = "896_b"
command = ~U, F, b

[Command]
name = "896_c"
command = ~U, F, c
  
;Required (do not remove) 
	
[Command] 
name = "highjump"
command = $D
time = 1
buffer.time = 8

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = y+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "a"
command = a
time = 1
buffer.time = 1

[Command]
name = "b"
command = b
time = 1
buffer.time = 1

[Command]
name = "c"
command = c
time = 1
buffer.time = 1

[Command]
name = "x"
command = x
time = 1
buffer.time = 1

[Command]
name = "y"
command = y
time = 1
buffer.time = 1

[Command]
name = "z"
command = z
time = 1
buffer.time = 1

[Command]
name = "start"
command = s
time = 1
buffer.time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1
buffer.time = 1

[Command]
name = "holdback"
command = /$B
time = 1
buffer.time = 1

[Command]
name = "holdup"
command = /$U
time = 1
buffer.time = 1

[Command]
name = "holddown"
command = /$D
time = 1
buffer.time = 1

[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1

[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1

[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1

[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1

[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1

[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1

[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

[Command]
name = "dash"
command = x+y
time = 1
buffer.time = 1
[Command]
name = "dash"
command = x+z
time = 1
buffer.time = 1
[Command]
name = "dash"
command = y+z
time = 1
buffer.time = 1
  
[Statedef -1] 
 
; ファイナルジャスティス 
[State -1]
type = Null;ChangeState
value = 3030
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "4c646_PP"
triggerall = power >= 3000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 3,> 0) || (stateno = 235 && animelem = 3,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0
trigger16 = ((stateno = [1000,1099]) && (projhit = 1)) || (ProjHitTime(6025) != -1 && ProjHitTime(6025) < 15) || (ProjHitTime(6125) != -1 && ProjHitTime(6125) < 15)
trigger17 = (stateno = [1200,1299]) && movecontact

; ソニックブレイク 
[State -1]
type = ChangeState
value = 3100
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_PP"
triggerall = power >= 1000
triggerall = pos y < -15
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && animelem = 2,> 0
trigger3 = stateno = 610 && animelem = 2,> 0
trigger4 = stateno = 620 && animelem = 3,> 0
trigger5 = stateno = 630 && animelem = 2,> 0
trigger6 = stateno = 640 && animelem = 3,> 0
trigger7 = stateno = 650 && animelem = 7,> 0
 	
; ソニックブレイク 
[State -1]
type = ChangeState
value = 3000
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_PP"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 3,> 0) || (stateno = 235 && animelem = 3,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0
trigger16 = stateno < 3000
trigger16 = ((stateno = [1000,1099]) && (projhit = 1)) || (ProjHitTime(6025) != -1 && ProjHitTime(6025) < 15) || (ProjHitTime(6125) != -1 && ProjHitTime(6125) < 15)
trigger17 = (stateno = [1200,1299]) && movecontact

; ソニックブレイク 
[State -1]
type = ChangeState
value = 3000
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = NumEnemy
trigger1 = P2StateNo = 5300425 || EnemyNear, StateNo = 5300425 || EnemyNear, Anim = 5300
trigger1 = P2MoveType = H || EnemyNear, MoveType = H
trigger1 = Random <= 900

; ソニックブレイク 
[State -1]
type = ChangeState
value = 3000
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = NumEnemy
trigger1 = Enemy, Life <= Ceil(Enemy, LifeMax/4)
trigger1 = Enemy, Power > Power
trigger1 = Random <= 888

[State -1]
type = Null;ChangeState
value = 3001
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "tap_P"
trigger1 = stateno = 3000 && animelem = 11,= 6

[State -1]
type = Null;ChangeState
value = 3002
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "tap_P"
trigger1 = stateno = 3001 && animelem = 9
 
; サマーソルトストライク 
[State -1]
type = ChangeState
value = 3010
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "214_PP"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 3,> 0) || (stateno = 235 && animelem = 3,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0
trigger16 = stateno < 3000
trigger16 = ((stateno = [1000,1099]) && (projhit = 1)) || (ProjHitTime(6025) != -1 && ProjHitTime(6025) < 15) || (ProjHitTime(6125) != -1 && ProjHitTime(6125) < 15)
trigger17 = (stateno = [1200,1299]) && movecontact

; サマーソルトストライク 
[State -1]
type = ChangeState
value = 3010
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = power >= 1500
triggerall = !numprojid(6125)
trigger1 = Ctrl
trigger1 = P2BodyDist X > 140.0
trigger1 = BackEdgeDist <= 40.0
trigger1 = Random <= 177
trigger2 = StateNo = 1029 && Time = 0
trigger2 = Random <= 177
trigger3 = (StateNo = [1030,1050]) && Time = 0
trigger3 = Random <= 177

; サマーソルトストライク 
[State -1]
type = ChangeState
value = 3010
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = power >= 1000
triggerall = !numprojid(6125)
trigger1 = Ctrl
trigger1 = P2BodyDist X > 120.0
trigger1 = BackEdgeDist <= 60.0
trigger1 = NumEnemy
trigger1 = Enemy, Life <= Ceil(Enemy, LifeMax/4)
trigger1 = Random <= 877
trigger2 = StateNo = 1029 && Time = 0
trigger2 = NumEnemy
trigger2 = Enemy, Life <= Ceil(Enemy, LifeMax/4)
trigger2 = Random <= 877
trigger3 = (StateNo = [1030,1050]) && Time = 0
trigger3 = NumEnemy
trigger3 = Enemy, Life <= Ceil(Enemy, LifeMax/4)
trigger3 = Random <= 877

; クロスファイアーブリッツ 
[State -1]
type = ChangeState
value = 3030
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "214_KK"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 3,> 0) || (stateno = 235 && animelem = 3,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0
trigger16 = stateno < 3000
trigger16 = (((stateno = [1000,1099]) && (projhit = 1)) || (ProjHitTime(6025) != -1 && ProjHitTime(6025) < 15) || (ProjHitTime(6125) != -1 && ProjHitTime(6125) < 15)) || (ProjHitTime(6025) != -1 && ProjHitTime(6025) < 15) || (ProjHitTime(6125) != -1 && ProjHitTime(6125) < 15)
trigger17 = (stateno = [1200,1299]) && movecontact

; クロスファイアーブリッツ 
[State -1]
type = ChangeState
value = 3030
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger1 = Life <= Ceil(LifeMax/3) 
trigger1 = Random <= 538
 
; クロスファイアーブリッツ 
[State -1]
type = ChangeState
value = 3020
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_KK"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 3,> 0) || (stateno = 235 && animelem = 3,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0
trigger16 = stateno < 3000
trigger16 = (((stateno = [1000,1099]) && (projhit = 1)) || (ProjHitTime(6025) != -1 && ProjHitTime(6025) < 15) || (ProjHitTime(6125) != -1 && ProjHitTime(6125) < 15)) || (ProjHitTime(6025) != -1 && ProjHitTime(6025) < 15) || (ProjHitTime(6125) != -1 && ProjHitTime(6125) < 15)
trigger17 = (stateno = [1200,1299]) && movecontact

; クロスファイアーブリッツ 
[State -1]
type = ChangeState
value = 3020
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger1 = NumEnemy
trigger1 = Life < EnemyNear, Life
trigger1 = EnemyNear, StateNo = [200,1999]
trigger1 = P2BodyDist X < 166.0
trigger1 = Random <= 55

; 昇竜拳 弱 
[State -1]
type = ChangeState
value = 1100
triggerall = roundstate = 2 && !AILevel
triggerall = command = "623_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; 昇竜拳 弱 / 中
[State -1]
type = ChangeState
value = IfElse(Enemy, StateType = A || P2StateType = A, 1110, 1100)
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [1100,1199]
triggerall = prevstateno != [1100,1199]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = NumEnemy
trigger1 = ctrl
trigger1 = P2BodyDist X > 20 && P2BodyDist X <= 60.0
trigger1 = P2StateNo = [200,999]
trigger1 = Random <= 96
trigger2 = ctrl
trigger2 = P2BodyDist X > 20 && P2BodyDist X <= 60.0
trigger2 = P2StateNo = [1000,1999]
trigger2 = Random <= 86

; 昇竜拳 中 
[State -1]
type = ChangeState
value = 1118 ;IfElse(PrevStateNo = 10 || PrevStateNo = 11 || PrevStateNo = 12 || PrevStateNo = 100, 1110, 1118)
triggerall = roundstate = 2 && !AILevel
triggerall = command = "623_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; 昇竜拳 強 
[State -1]
type = ChangeState
value = 1128 ;IfElse(PrevStateNo = 10 || PrevStateNo = 11 || PrevStateNo = 12 || PrevStateNo = 100, 1120, 1128)
triggerall = roundstate = 2 && !AILevel
triggerall = command = "623_z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; 紫電 弱 
[State -1]
type = ChangeState
value = 1200
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "214_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; 紫電 弱 
[State -1]
type = ChangeState
value = 1200
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [1200,1299]
triggerall = prevstateno != [1200,1299]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = ctrl
trigger1 = P2BodyDist X > 30.0 && P2BodyDist X < 143.0 
trigger1 = P2StateNo = [1000,1999]
trigger1 = Random <= 295

; 紫電 中 
[State -1]
type = ChangeState
value = 1210
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "214_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; 紫電 強 
[State -1]
type = ChangeState
value = 1220
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "214_z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; 紫電 強 
[State -1]
type = ChangeState
value = 1220
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [1200,1299]
triggerall = prevstateno != [1200,1299]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = Ctrl
trigger1 = !(P2BodyDist X > 30.0 && P2BodyDist X < 130.0 ) ;P2BodyDist X > 70.0 && P2BodyDist X < 210.0
trigger1 = NumEnemy
trigger1 = Life > EnemyNear, Life || Power < EnemyNear, Power
trigger1 = EnemyNear, Time > 27
trigger1 = Random <= 70
 
; ソニックブーム 弱 
[State -1]
type = ChangeState
value = 1000
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_x" ;"4c6_x"
triggerall = !numprojid(6025)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; ソニックブーム 弱 
[State -1]
type = ChangeState
value = 1000
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [1000,1099]
triggerall = prevstateno != [1000,1099]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = !numprojid(6025)
triggerall = ctrl ;numenemy
;trigger1 = enemynear, pos y > -70.0
trigger1 = p2bodydist x > 36 && p2bodydist x <= 80 && p2movetype != H
trigger1 = p2statetype != A
trigger1 = p2stateno != [40,44]
trigger1 = Random <= 85

; ソニックブーム 中
[State -1]
type = ChangeState
value = 1010
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_y" ;"4c6_y"
triggerall = !numprojid(6025)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; ソニックブーム 中
[State -1]
type = ChangeState
value = 1010
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [1000,1099]
triggerall = prevstateno != [1000,1099]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = !numprojid(6025)
trigger1 = ctrl
trigger1 = p2stateno = 105
trigger1 = Random <= 225

; ソニックブーム 強
[State -1]
type = ChangeState
value = 1020
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_z" ;"4c6_z"
triggerall = !numprojid(6025)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; サマーソルトキック 弱 
[State -1]
type = ChangeState
value = ifelse(var(34) = 0, 1029, 1030)
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_a" ;"2c8_a"
triggerall = !numprojid(6125)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; サマーソルトキック 中
[State -1]
type = ChangeState
value = ifelse(var(34) = 0, 1029, 1040)
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_b" ;"2c8_b"
triggerall = !numprojid(6125)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; サマーソルトキック 強
[State -1]
type = ChangeState
value = ifelse(var(34) = 0, 1029, 1050)
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_c" ;"2c8_c"
triggerall = !numprojid(6125)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && animelem = 2,> 0
trigger3 = stateno = 210 && animelem = 3,> 0
trigger4 = stateno = 220 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 2,> 0) || (stateno = 235 && animelem = 2,> 0)
trigger6 = stateno = 240 && animelem = 3,> 0
trigger7 = stateno = 250 && animelem = 4,> 0
trigger8 = stateno = 400 && animelem = 3,> 0
trigger9 = stateno = 410 && animelem = 3,> 0
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && animelem = 2,> 0
trigger12 = stateno = 440 && animelem = 3,> 0
trigger13 = stateno = 450 && animelem = 3,> 0
trigger14 = 1 = 0 && stateno = 300 && animelem = 3,> 0
trigger15 = 1 = 0 && stateno = 320 && animelem = 3,> 0

; サマーソルトキック
[State -1]
type = ChangeState
value = 1029
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H && var(6) < 2
triggerall = stateno != [1020,1029]
triggerall = prevstateno != [1020,1029]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = !numprojid(6125)
trigger1 = Ctrl
trigger1 = P2BodyDist X > 200.0
trigger1 = BackEdgeDist <= 10.0
trigger1 = Random <= 200

; ムーンサルトスラッシュ 弱 
[State -1]
type = ChangeState
value = 1060
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_x"
triggerall = !numprojid(6025)
triggerall = pos y < -15
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && animelem = 2,> 0
trigger3 = stateno = 610 && animelem = 2,> 0
trigger4 = stateno = 620 && animelem = 3,> 0
trigger5 = stateno = 630 && animelem = 2,> 0
trigger6 = stateno = 640 && animelem = 3,> 0
trigger7 = stateno = 650 && animelem = 7,> 0

; ムーンサルトスラッシュ 中
[State -1]
type = ChangeState
value = 1070
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_y"
triggerall = !numprojid(6025)
triggerall = pos y < -15
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && animelem = 2,> 0
trigger3 = stateno = 610 && animelem = 2,> 0
trigger4 = stateno = 620 && animelem = 3,> 0
trigger5 = stateno = 630 && animelem = 2,> 0
trigger6 = stateno = 640 && animelem = 3,> 0
trigger7 = stateno = 650 && animelem = 7,> 0

; ムーンサルトスラッシュ 弱 / 中
[State -1]
type = ChangeState
value = IfElse(Time % 2 = 0, IfElse(Power >= 1500, 3100, 1060), IfElse(Power >= 1500, 3100, 1070))
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H && var(6) < 2
triggerall = stateno != [1060,1070]
triggerall = prevstateno != [1060,1070]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = !numprojid(6025)
triggerall = p2movetype != H
trigger1 = Ctrl
trigger1 = !(P2BodyDist X > 0.0 && P2BodyDist X < 66.0 && P2Dist Y < 90.0)
;trigger1 = P2StateType = S
;trigger1 = Vel Y > 0.0
trigger1 = Random <= 75
trigger1 = NumEnemy
trigger1 = EnemyNear, Random <= 499

; ムーンサルトスラッシュ 弱 / 中
[State -1]
type = ChangeState
value = IfElse(Time % 2 = 0, IfElse(Power >= 1500, 3100, 1300), IfElse(Power >= 1500, 3100, 1300))
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H && var(6) < 2
triggerall = stateno != [1300,1399]
triggerall = prevstateno != [1300,1399]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = !numprojid(6025)
triggerall = p2movetype != H
trigger1 = Ctrl
trigger1 = !(P2BodyDist X > 0.0 && P2BodyDist X < 66.0 && P2Dist Y < 90.0)
;trigger1 = P2StateType = S
;trigger1 = Vel Y > 0.0
trigger1 = Random <= 75
trigger1 = NumEnemy
trigger1 = EnemyNear, Random > 499

; ムーンサルトスラッシュ 弱 / 中
[State -1]
type = ChangeState
value = IfElse(Time % 2 = 0, 1060, 1070)
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H && var(6) < 2
triggerall = stateno != [1060,1070]
triggerall = prevstateno != [1060,1070]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = !numprojid(6025)
triggerall = p2movetype = H && !var(1)
trigger1 = stateno = 640 && movehit
trigger1 = Random > 499

; ムーンサルトスラッシュ 強
[State -1]
type = ChangeState
value = 1080
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_z"
triggerall = !numprojid(6025)
triggerall = pos y < -15
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && animelem = 2,> 0
trigger3 = stateno = 610 && animelem = 2,> 0
trigger4 = stateno = 620 && animelem = 3,> 0
trigger5 = stateno = 630 && animelem = 2,> 0
trigger6 = stateno = 640 && animelem = 3,> 0
trigger7 = stateno = 650 && animelem = 7,> 0

; 天魔空刃脚 
[State -1]
type = ChangeState
value = 1300
triggerall = roundstate = 2 && !AILevel && var(6) < 2
triggerall = command = "236_a" || command = "236_b" || command = "236_c"
triggerall = !numprojid(6025)
triggerall = pos y < -15
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && animelem = 2,> 0
trigger3 = stateno = 610 && animelem = 2,> 0
trigger4 = stateno = 620 && animelem = 3,> 0
trigger5 = stateno = 630 && animelem = 2,> 0
trigger6 = stateno = 640 && animelem = 3,> 0
trigger7 = stateno = 650 && animelem = 7,> 0

; 天魔空刃脚 
[State -1]
type = ChangeState
value = 1300
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H && var(6) < 2
triggerall = stateno != [1300,1399]
triggerall = prevstateno != [1300,1399]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = p2movetype != H
trigger1 = Ctrl
trigger1 = P2BodyDist X > 0.0 && P2BodyDist X < 90.0 && P2Dist Y > 60.0 && P2Dist Y < 110.0
trigger1 = P2StateType != A
trigger1 = Vel Y <= 0.0
trigger1 = Random <= 85
trigger2 = stateno = 640 && movehit
trigger2 = Random <= 499

; 天魔空刃脚 
[State -1]
type = ChangeState
value = 1300
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H && var(6) < 2
triggerall = stateno != [1300,1399]
triggerall = prevstateno != [1300,1399]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = p2movetype = H && !Var(1)
trigger1 = stateno = 640 && animelem = 4,> 0
trigger1 = random <= 25
 
; 投げ1 
[State -1]
type = ChangeState
value = 900
triggerall = roundstate = 2 && !AILevel
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

; 投げ2
[State -1]
type = ChangeState
value = 910
triggerall = roundstate = 2 && !AILevel
trigger1 = command = "c" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 18 && enemynear,movetype != H
trigger1 = statetype = S && ctrl

; 投げ1/2
[State -1]
type = ChangeState
value = IfElse(Time % 2 = 0, IfElse(GameTime % 2 = 0, 200, 900), IfElse(GameTime % 2 = 0, 235, 910))
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = p2bodydist x < 18 && p2movetype = I
trigger1 = ctrl
trigger1 = p2statetype != L
trigger1 = P2StateType != A
trigger1 = Random <= 125
trigger2 = p2bodydist x < 22 ;&& p2movetype = I
trigger2 = ctrl
trigger2 = p2statetype != L
trigger2 = P2StateType != A
trigger2 = Random <= 25

; 空中投げ1
[State -1]
type = Null;ChangeState
value = 920
triggerall = roundstate = 2 && !AILevel
trigger1 = command = "z" && (command = "holdfwd" || command = "holdback")
trigger1 = p2bodydist x < 20 && abs(p2bodydist y) < 20 && enemynear,movetype != H
trigger1 = statetype = A && ctrl
 
; 立ち6強P 
[State -1]
type = Null;ChangeState
value = 300
triggerall = roundstate = 2 && !AILevel
triggerall = command = "z" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; 立ち6中K
[State -1]
type = Null;ChangeState
value = 310
triggerall = roundstate = 2 && !AILevel
triggerall = command = "b" && (command = "holdfwd" || command = "holdback") && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

; 立ち6強K
[State -1]
type = Null;ChangeState
value = 320
triggerall = roundstate = 2 && !AILevel
triggerall = command = "c" && (command = "holdfwd" || command = "holdback") && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
 
; ジャンプ2弱K 
[State -1]
type = Null;ChangeState
value = 700
triggerall = roundstate = 2 && !AILevel
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
 
; 立ち弱P 
[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2 && !AILevel
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && prevstateno != 810
trigger3 = stateno = 200 && animelem = 3,> 0
trigger4 = (stateno = 230 && animelem = 3,> 0) || (stateno = 235 && animelem = 3,> 0)
trigger5 = stateno = 400 && animelem = 3,> 0
trigger6 = stateno = 430 && animelem = 3,> 0

; 立ち中P
[State -1]
type = ChangeState
value = 210
triggerall = roundstate = 2 && !AILevel
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

; 立ち中P
[State -1]
type = ChangeState
value = 210
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [210,219]
triggerall = prevstateno != [210,219]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
;trigger1 = p2statetype = S
trigger1 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
trigger1 = random <= 455

; 立ち強P
[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2 && !AILevel
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

; 立ち強P / しゃがみ強P
[State -1]
type = ChangeState
value = IfElse(p2bodydist x > 60 && p2bodydist x < 80, 420, 220)
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [220,229]
triggerall = prevstateno != [220,229]
triggerall = stateno != [420,429]
triggerall = prevstateno != [420,429]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = ctrl
trigger1 = P2StateType != A
trigger1 = P2StateType != L
trigger1 = p2bodydist x > 41 && p2bodydist x < 100 ;&& p2movetype = I
trigger1 = numenemy
trigger1 = enemynear, abs(animtime) > 47
trigger1 = random <= 125

; 立ち強P
[State -1]
type = Null;ChangeState
value = 220
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [220,229]
triggerall = prevstateno != [220,229]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = stateno = 410 && movecontact
trigger1 = random <= 140
trigger2 = stateno = 440 && movecontact
trigger3 = random <= 140

; 立ち弱K
[State -1]
type = ChangeState
value = 230 + (5 * (p2bodydist x <= 16.0))
triggerall = roundstate = 2 && !AILevel
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 200 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 3,> 0) || (stateno = 235 && animelem = 3,> 0)
trigger6 = stateno = 400 && animelem = 3,> 0
trigger7 = stateno = 430 && animelem = 3,> 0

; 立ち中K
[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2 && !AILevel
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact

; 立ち中K
[State -1]
type = ChangeState
value = 240
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [240,249]
triggerall = prevstateno != [240,249]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = p2statetype = S
trigger1 = (stateno = 230 && movecontact) || (stateno = 430 && movecontact)
trigger1 = random <= 455

; 立ち強K
[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2 && !AILevel
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && prevstateno != 810
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact
 
; しゃがみ弱P 
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2 && !AILevel
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && animelem = 3,> 0
trigger3 = (stateno = 230 && animelem = 3,> 0) || (stateno = 235 && animelem = 3,> 0)
trigger4 = stateno = 400 && animelem = 3,> 0
trigger5 = stateno = 430 && animelem = 3,> 0

しゃがみ弱P
[State -1]
type = ChangeState
value = 400 ;IfElse(Time % 2 = 0, IfElse(GameTime % 2 = 0, 400, 900), IfElse(GameTime % 2 = 0, 430, 910))
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [400,409]
triggerall = prevstateno != [400,409]
triggerall = stateno != [430,439]
triggerall = prevstateno != [430,439]
triggerall = stateno != [910,999]
triggerall = prevstateno != [910,999]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = p2bodydist x >= 18 && p2bodydist x <= 36 && p2movetype = I
trigger1 = ctrl
trigger1 = p2statetype != L
trigger1 = p2statetype != C || P2StateNo = 40
trigger1 = Random <= 125
trigger2 = p2bodydist x >= 18 && p2bodydist x <= 36
trigger2 = stateno = 52
trigger2 = time >= 1 || numtarget(1) || numtarget(2+4) || numtarget(4+64) ;prevstateno = [600,650]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger2 = Random <= 195
trigger3 = p2bodydist x >= 18 && p2bodydist x <= 36
trigger3 = stateno = 1301 || (prevstateno = 1300 && numtarget(1))
trigger3 = animtime <= -1
trigger3 = p2statetype != L
trigger3 = p2movetype = H
trigger3 = Random <= 255
trigger4 = p2bodydist x >= 18 && p2bodydist x <= 36 && p2movetype = I
trigger4 = ctrl
trigger4 = NumEnemy
trigger4 = P2StateNo = 5300425 || EnemyNear, StateNo = 5300425 || EnemyNear, Anim = 5300
trigger4 = P2MoveType = H || EnemyNear, MoveType = H
trigger4 = Random <= 900
trigger5 = ctrl
trigger5 = NumEnemy
trigger5 = Facing = EnemyNear, Facing
trigger5 = Random <= 900

; しゃがみ中P
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2 && !AILevel
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact

; しゃがみ中P
[State -1]
type = ChangeState
value = 410
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [410,419]
triggerall = prevstateno != [410,419]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = p2statetype = C
trigger1 = (stateno = 200 && movecontact) || (stateno = 400 && movecontact)
trigger1 = random <= 455
trigger2 = p2bodydist x >= 37 && p2bodydist x <= 50
trigger2 = stateno = 52
trigger2 = time >= 1 || numtarget(1) || numtarget(2+4) || numtarget(4+64) ;prevstateno = [600,650]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger2 = Random <= 195
trigger3 = p2bodydist x >= 37 && p2bodydist x <= 50
trigger3 = stateno = 1301 || (prevstateno = 1300 && numtarget(1))
trigger3 = animtime <= -1
trigger3 = p2statetype != L
trigger3 = p2movetype = H
trigger3 = Random <= 255

; しゃがみ強P
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2 && !AILevel
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact

; しゃがみ強P
[State -1]
type = ChangeState
value = 420 ;IfElse(Time % 2 = 0, IfElse(GameTime % 2 = 0, 400, 900), IfElse(GameTime % 2 = 0, 430, 910))
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [420,429]
triggerall = prevstateno != [420,429]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = numenemy
trigger1 = enemynear, vel y < 0.0
trigger1 = p2bodydist x > 36 && p2bodydist x <= 70 ;&& p2movetype = I
trigger1 = ctrl
trigger1 = p2statetype != L
trigger1 = enemynear, pos y <= -100.0 || p2statetype = A || (p2stateno = [40,44])
trigger1 = Random <= 145
trigger2 = (stateno = 200 || stateno = 400 || stateno = 210 || stateno = 240) && movehit
trigger2 = p2statetype = A
trigger2 = p2movetype = H
trigger2 = Random <= 345
trigger3 = stateno = 235 && movehit
trigger3 = Random > 199
trigger4 = p2statetype != A
trigger4 = p2movetype = H
trigger4 = (stateno = 210 || stateno = 240) && movehit
trigger4 = Random > 199

; しゃがみ強P
[State -1]
type = ChangeState
value = 420 ;IfElse(Time % 2 = 0, IfElse(GameTime % 2 = 0, 400, 900), IfElse(GameTime % 2 = 0, 430, 910))
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [400,409]
triggerall = prevstateno != [400,409]
triggerall = stateno != [430,439]
triggerall = prevstateno != [430,439]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = numenemy
trigger1 = enemynear, vel y >= 0.0
trigger1 = p2bodydist x > 60 && p2bodydist x <= 120 ;&& p2movetype = I
trigger1 = ctrl
trigger1 = p2statetype != L
trigger1 = enemynear, pos y <= -100.0 || p2statetype = A || (p2stateno = [45,51])
trigger1 = Random <= 145
trigger2 = (stateno = 200 || stateno = 400 || stateno = 210 || stateno = 240) && movehit
trigger2 = p2statetype = A
trigger2 = p2movetype = H
trigger2 = Random <= 345
trigger3 = stateno = 235 && movehit
trigger3 = Random > 199
trigger4 = p2statetype != A
trigger4 = p2movetype = H
trigger4 = (stateno = 210 || stateno = 240) && movehit
trigger4 = Random > 199

; しゃがみ弱K
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2 && !AILevel
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 200 && animelem = 3,> 0
trigger5 = (stateno = 230 && animelem = 3,> 0) || (stateno = 235 && animelem = 3,> 0)
trigger6 = stateno = 400 && animelem = 3,> 0
trigger7 = stateno = 430 && animelem = 3,> 0

しゃがみ弱K
[State -1]
type = ChangeState
value = 430 ;IfElse(Time % 2 = 0, IfElse(GameTime % 2 = 0, 400, 900), IfElse(GameTime % 2 = 0, 430, 910))
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [400,409]
triggerall = prevstateno != [400,409]
triggerall = stateno != [430,439]
triggerall = prevstateno != [430,439]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = p2bodydist x >= 18 && p2bodydist x <= 36 && p2movetype = I
trigger1 = ctrl
trigger1 = p2statetype != L
trigger1 = p2statetype = S || p2statetype = C
trigger1 = Random <= 125
trigger2 = p2bodydist x >= 18 && p2bodydist x <= 36
trigger2 = stateno = 52
trigger2 = time >= 1 || numtarget(1) || numtarget(2+4) || numtarget(4+64) ;prevstateno = [600,650]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger2 = Random <= 195
trigger3 = p2bodydist x >= 18 && p2bodydist x <= 36
trigger3 = stateno = 1301 || (prevstateno = 1300 && numtarget(1))
trigger3 = animtime <= -1
trigger3 = p2statetype != L
trigger3 = p2movetype = H
trigger3 = Random <= 255

; しゃがみ中K
[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2 && !AILevel
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

; しゃがみ中K
[State -1]
type = ChangeState
value = 440
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [440,449]
triggerall = prevstateno != [440,449]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = p2statetype = C
trigger1 = (stateno = 230 && movecontact) || (stateno = 430 && movecontact)
trigger1 = random <= 455
trigger2 = p2bodydist x >= 37 && p2bodydist x <= 50
trigger2 = stateno = 52
trigger2 = time >= 1 || numtarget(1) || numtarget(2+4) || numtarget(4+64) ;prevstateno = [600,650]
trigger2 = p2statetype != L
trigger2 = p2movetype = H
trigger2 = Random <= 195
trigger3 = p2bodydist x >= 37 && p2bodydist x <= 50
trigger3 = stateno = 1301 || (prevstateno = 1300 && numtarget(1))
trigger3 = animtime <= -1
trigger3 = p2statetype != L
trigger3 = p2movetype = H
trigger3 = Random <= 255

; しゃがみ中K
[State -1]
type = ChangeState
value = 440
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [440,449]
triggerall = prevstateno != [440,449]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = ctrl
trigger1 = p2bodydist x >= 37 && p2bodydist x <= 50
trigger1 = NumEnemy
trigger1 = P2StateNo = 5300425 || EnemyNear, StateNo = 5300425 || EnemyNear, Anim = 5300
trigger1 = P2MoveType = H || EnemyNear, MoveType = H
trigger1 = Random <= 900
trigger2 = ctrl
trigger2 = NumEnemy
trigger2 = Facing = EnemyNear, Facing
trigger2 = Random <= 900

; しゃがみ強K
[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2 && !AILevel
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = (stateno = 230 && movecontact) || (stateno = 235 && movecontact)
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
 
; ジャンプ弱P 
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2 && !AILevel
triggerall = command = "x"
trigger1 = statetype = A && ctrl

; ジャンプ弱P 
[State -1]
type = ChangeState
value = 600
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H
triggerall = stateno != [600,609]
triggerall = prevstateno != [600,609]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = numtarget(1)
triggerall = var(1)
trigger1 = statetype = A && ctrl
trigger1 = P2BodyDist X > 0.0 && P2BodyDist X < 25.0 && (P2Dist Y = [-65.0,65.0])
trigger1 = Random <= 785

; ジャンプ中P
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2 && !AILevel
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 700 && movecontact

; ジャンプ中P
[State -1]
type = ChangeState
value = 610
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H
triggerall = stateno != [600,609]
;triggerall = prevstateno != [600,609]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = numtarget(1)
triggerall = var(1)
trigger1 = statetype = A && ctrl
trigger1 = !(P2BodyDist X > 0.0 && P2BodyDist X < 25.0) && (P2Dist Y = [-70.0,70.0])
trigger1 = Random <= 785

; ジャンプ中P
[State -1]
type = ChangeState
value = 610
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H
triggerall = stateno != [610,619]
;triggerall = prevstateno != [610,619]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
;triggerall = numtarget(1)
t;riggerall = var(1)
trigger1 = statetype = A ;&& ctrl
;trigger1 = P2BodyDist X > 0.0 ;&& P2BodyDist X < 35.0 ;&& (P2Dist Y = [-45.0,45.0])
trigger1 = stateno = 630 && movehit
trigger1 = Random <= 785

; ジャンプ強P
[State -1]
type = ChangeState
value = 620
triggerall = roundstate = 2 && !AILevel
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 700 && movecontact

; ジャンプ強P
[State -1]
type = ChangeState
value = 620
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H
triggerall = stateno != [620,629]
;triggerall = prevstateno != [620,629]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = Ctrl
trigger1 = P2BodyDist X > 0.0 && P2BodyDist X < 66.0 && P2Dist Y < 90.0
trigger1 = P2StateType = S
trigger1 = Vel Y > 0.0
trigger1 = Random <= 75

; ジャンプ弱K
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2 && !AILevel
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

; ジャンプ弱K
[State -1]
type = ChangeState
value = 630
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H
triggerall = stateno != [630,639]
triggerall = prevstateno != [630,639]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
;triggerall = numtarget(1)
;triggerall = var(1)
trigger1 = statetype = A ;&& ctrl
;trigger1 = P2BodyDist X > 0.0 ;&& P2BodyDist X < 35.0 ;&& (P2Dist Y = [-45.0,45.0])
trigger1 = stateno = 600 && movehit
trigger1 = Random <= 999;785

; ジャンプ中K
[State -1]
type = ChangeState
value = 640
triggerall = roundstate = 2 && !AILevel
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 700 && movecontact

; ジャンプ中K
[State -1]
type = ChangeState
value = 640
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H
triggerall = stateno != [640,649]
;triggerall = prevstateno != [640,649]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
;triggerall = numtarget(1)
;triggerall = var(1)
trigger1 = statetype = A ;&& ctrl
;trigger1 = P2BodyDist X > 0.0 ;&& P2BodyDist X < 35.0 ;&& (P2Dist Y = [-45.0,45.0])
trigger1 = stateno = 610 && movehit
trigger1 = Random <= 785

; ジャンプ強K
[State -1]
type = ChangeState
value = 650
triggerall = roundstate = 2 && !AILevel
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 700 && movecontact

; ジャンプ強K
[State -1]
type = ChangeState
value = 650
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType = A && MoveType != H
triggerall = stateno != [650,659]
triggerall = prevstateno != [650,659]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
trigger1 = Ctrl
trigger1 = P2BodyDist X > 0.0 && P2BodyDist X < 66.0 && P2Dist Y < 110.0
trigger1 = P2StateType = C
trigger1 = Vel Y > 0.0
trigger1 = Random <= 85
 
; ダッシュ 
[State -1]
type = ChangeState
value = 100
triggerall = roundstate = 2 && !AILevel
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

; ダッシュ 
[State -1]
type = ChangeState
value = 100
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = stateno != [100,107]
triggerall = prevstateno != [100,107]
triggerall = stateno != [200,1999]
triggerall = prevstateno != [200,1999]
triggerall = !(P2StateNo = 5300425 || EnemyNear, StateNo = 5300425 || EnemyNear, Anim = 5300)
trigger1 = ctrl
trigger1 = P2BodyDist X > 150.0
trigger1 = Random <= 35

; ダッシュ 
[State -1]
type = ChangeState
value = 100
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = stateno != [100,107]
triggerall = prevstateno != [100,107]
triggerall = stateno != [200,1999]
triggerall = prevstateno != [200,1999]
triggerall = Power < 1000
trigger1 = ctrl
trigger1 = NumEnemy
trigger1 = P2StateNo = 5300425 || EnemyNear, StateNo = 5300425 || EnemyNear, Anim = 5300
trigger1 = P2MoveType = H || EnemyNear, MoveType = H
trigger1 = Random <= 900
trigger2 = ctrl
trigger2 = NumEnemy
trigger2 = Facing = EnemyNear, Facing
trigger2 = Random <= 900

; バックダッシュ
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !AILevel
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

; バックダッシュ
[State -1]
type = ChangeState
value = 105
triggerall = roundstate = 2 && !AILevel
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = stateno != [100,107]
triggerall = prevstateno != [100,107]
;trigger1 = ctrl
trigger1 = numenemy
trigger1 = enemynear, statetype = L
trigger1 = enemynear, BackEdgeDist <= 10.0
trigger1 = time = [0,1]
trigger1 = Random <= 525

; バックダッシュ
[State -1]
type = ChangeState
value = 105
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = stateno != [100,107]
triggerall = prevstateno != [100,107]
trigger1 = ctrl
trigger1 = P2BodyDist X > 120.0
trigger1 = Random <= 25
trigger2 = ctrl
trigger2 = P2BodyDist X > 60.0 && P2BodyDist X < 120.0
trigger2 = Random <= 15
trigger3 = ctrl
trigger3 = P2BodyDist X < 90.0
trigger3 = P2StateType = L
trigger3 = Random <= 35

; 空中ジャンプ
[State -1]
type = ChangeState
value = 45
triggerall = roundstate = 2 && !AILevel
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = vel y > 0 && var(2) && !var(3)

; キャンセルジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = roundstate = 2 && !AILevel
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = (stateno = [105,107]) && (1 = 0)
trigger3 = stateno = 420 && movehit

; キャンセルジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [40,44]
triggerall = prevstateno != [40,44]
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = !var(1) && prevstateno != 810
trigger1 = stateno = 420 && movehit
trigger1 = Random <= 660

; キャンセルジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = PrevStateNo = 140
triggerall = StateNo != 40
triggerall = PrevStateNo != 40
trigger1 = Ctrl
trigger1 = P2BodyDist X > 180.0
trigger1 = BackEdgeDist <= 10.0
trigger1 = Random <= 20

; しゃがみ
[State 106, ChangeState]
type = ChangeState
triggerall = command = "holddown" && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [105,107]
value = 10
ctrl = 1
 
; アドバンシングガード 
[State -1]
type = VarSet
triggerall = roundstate = 2 && !AILevel
triggerall = !numhelper(8060)
triggerall = command = "dash"
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1

; アドバンシングガード 
[State -1]
type = VarSet
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2
triggerall = !numhelper(8060)
triggerall = IfElse(BackEdgeDist <= 5.0, Random <= 20, 10)
trigger1 = stateno = 150
trigger2 = stateno = 152
trigger3 = stateno = 154
var(11) = 1
ignorehitpause = 1
 
; 挑発 
[State -1]
type = ChangeState
value = 800
triggerall = roundstate = 2 && !AILevel
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || (stateno = 106 && 1 = 0)) && time > 3
 

;;;;;;;;;;;;;;;;;;; A.I. ;;;;;;;;;;;;;;;;;;;;;;


[State -1, ChangeState]
Type = ChangeState
Value = 120
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = Ctrl || (StateNo = [10,12]) || (StateNo = 0) || (StateNo = 100) || (PrevStateNo = 140)
triggerall = InGuardDist
triggerall = StateNo != [120,155]
triggerall = PrevStateNo != [120,155]
trigger1 = NumEnemy
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT)
trigger1 = Random <= 50
trigger2 = NumEnemy
trigger2 = EnemyNear, StateNo >= 2500 || P2StateNo >= 2500
trigger2 = EnemyNear, MoveType = A
trigger2 = Random <= 250

[State -1, ChangeState]
Type = ChangeState
Value = 120
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = (StateNo = [200,3999]) && (Time = 0)
triggerall = InGuardDist
triggerall = StateNo != [120,155]
triggerall = PrevStateNo != [120,155]
trigger1 = NumEnemy
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT)
;trigger1 = Random <= 50
;trigger1 = NumEnemy
trigger1 = EnemyNear, StateNo >= 2500 || P2StateNo >= 2500
trigger1 = EnemyNear, MoveType = A
trigger1 = Random <= 350

[State -1, ChangeState]
type = ChangeState
value = 40
triggerall = AILevel && Alive && P2Life != 0 && RoundState = 2 && StateType != A && MoveType != H
triggerall = stateno != [900,999]
triggerall = prevstateno != [900,999]
triggerall = stateno != [260,270]
triggerall = prevstateno != [260,270]
triggerall = stateno != [3000,3999]
triggerall = prevstateno != [3000,3999]
triggerall = Ctrl || (StateNo = [10,12]) || (StateNo = 0) || (PrevStateNo = 140)
triggerall = StateNo != 40
triggerall = PrevStateNo != 40
triggerall = StateNo != [1000,4999]
triggerall = PrevStateNo != [3000,4999]
trigger1 = NumEnemy
trigger1 = EnemyNear, HitDefAttr = SCA, AT
trigger2 = NumEnemy
trigger2 = EnemyNear, StateNo = [800,899]
trigger3 = P2StateNo = [800,899]
ignorehitpause = 1