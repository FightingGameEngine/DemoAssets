;---------------------------------------------------------------------------
; Stand
[Statedef 0]
velset = Vel X, 0
physics = S
sprpriority = -2 - (Var(50) = 1) * 49

[State 0, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 0, HitCount Reset]	; For attacks that rely on number of contacts
type = VarSet
trigger1 = Var(13)
var(13) = 0

;=====================
; Onslaught (1st Form)
;=====================

[State 0, Stop Intro Music]
type = StopSnd
trigger1 = !Var(50)
trigger1 = RoundState = 2
trigger1 = PrevStateNo = 0 || PrevStateNo = 10190
channel = 1
persistent = 0

[State 0, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = !Var(50)
trigger1 = Anim != 10000
value = 10000

[State 0, Flame]
type = Helper
trigger1 = !Var(50)
trigger1 = !NumHelper(10001)
name = "Flame"
id = 10001
stateno = 10001
ownpal = 1

[State 0, Glow - Reset Glow Counter]
type = VarSet
triggerall = !Var(50)
trigger1 = Var(11) = 117
trigger2 = !Time
trigger2 = PrevStateNo != 15000
trigger2 = PrevStateNo != 10
trigger2 = PrevStateNo != 40
trigger2 = PrevStateNo != 175
var(11) = 0

[State 0, Glow - PalFx]
type = PalFX
trigger1 = !Var(50)
trigger1 = Var(11) = 66
time = 50
add = 32, 32, 32
sinadd = 112, 112, 112, 100

[State 0, Glow - Increment Glow Counter]
type = VarAdd
trigger1 = !Var(50)
var(11) = 1

[State 0, Float - Reset Float Counter]
type = VarSet
triggerall = !Var(50)
trigger1 = Var(12) = 81
trigger2 = !Time
trigger2 = PrevStateNo != 15000
trigger2 = PrevStateNo != 10
trigger2 = PrevStateNo != 40
trigger2 = PrevStateNo != 175
var(12) = 0

[State 0, Float - Reset Pos Y]
type = VarSet
trigger1 = !Var(50)
trigger1 = !Var(12)
fvar(0) = 0

[State 0, Float - Float Up]
type = VarAdd
triggerall = !Var(50)
trigger1 = !Var(12)
trigger2 = Var(12) = 3
trigger3 = Var(12) = 10
trigger4 = Var(12) = 14
trigger5 = Var(12) = 18
trigger6 = Var(12) = 21
trigger7 = Var(12) = 23
trigger8 = Var(12) = 30
trigger9 = Var(12) = 35
fvar(0) = -1

[State 0, Float - Float Down]
type = VarAdd
triggerall = !Var(50)
trigger1 = Var(12) = 48
trigger2 = Var(12) = 53
trigger3 = Var(12) = 57
trigger4 = Var(12) = 60
trigger5 = Var(12) = 62
trigger6 = Var(12) = 65
trigger7 = Var(12) = 69
trigger8 = Var(12) = 73
trigger9 = Var(12) = 80
fvar(0) = 1

; Since pos y is always set to 0 after the intro this fixes the problem
[State 0, Float - Set Pos Y]
type = PosSet
trigger1 = !Var(50)
y = FVar(0)

[State 0, Float Increment Float Counter]
type = VarAdd
trigger1 = !Var(50)
var(12) = 1

; Yes, I know that if Onslaught goes to his Super Armor state at tick 16, the sparkle will be skipped
; A var counter would be more appropriate. May implement later
[State 0, Sparkle Random Pos X]
type = VarRandom
trigger1 = !Var(50)
trigger1 = !(GameTime % 16)
v = 8
range = -60, 60

[State 0, Sparkle Random Pos Y]
type = VarRandom
trigger1 = !Var(50)
trigger1 = !(GameTime % 16)
v = 9
range = -160, -20

[State 0, Sparkle]
type = Null;Helper
trigger1 = !Var(50)
trigger1 = !(GameTime % 16)
name = "Sparkle"
id = 10003
pos = Var(8), Var(9)
stateno = 10003
ownpal = 1

[State 0, Sparkle]
type = Explod
trigger1 = !Var(50)
trigger1 = !(GameTime % 16)
anim = 10003
id = 10003
pos = Var(8), Var(9)
bindtime = -1
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 1 - (Random % 2) * 2
ownpal = 1

;=====================
; Onslaught (2nd Form)
;=====================

; The Player - Hand
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Var(50) = 1
trigger1 = Anim != 20500
value = 20500

[State 0, Store Pos Y]
type = VarSet
trigger1 = Var(50) = 1
trigger1 = !Time
fvar(2) = IfElse(Pos Y > 0, 0, Pos Y)

[State 0, Float - Reset Float Counter]
type = VarSet
triggerall = Var(50) = 1
trigger1 = Var(12) = 100
trigger2 = !Time
trigger2 = PrevStateNo != [15000, 15002]
var(12) = 0

[State 0, Float - Reset Pos Y]
type = VarSet
triggerall = Var(50) = 1
trigger1 = !Var(12)
fvar(0) = FVar(2)

[State 0, Float - Float Up]
type = PosAdd
triggerall = Var(50) = 1
trigger1 = !Var(12)
trigger2 = Var(12) = 1
trigger3 = Var(12) = 6
trigger4 = Var(12) = 11
trigger5 = Var(12) = 14
trigger6 = Var(12) = 18
trigger7 = Var(12) = 21
trigger8 = Var(12) = 25
trigger9 = Var(12) = 30
trigger10 = Var(12) = 37
y = -1 + !(FVar(0) := FVar(0) -1)

[State 0, Float - Float Down]
type = PosAdd
triggerall = Var(50) = 1
trigger1 = Var(12) = 52
trigger2 = Var(12) = 59
trigger3 = Var(12) = 64
trigger4 = Var(12) = 68
trigger5 = Var(12) = 71
trigger6 = Var(12) = 75
trigger7 = Var(12) = 78
trigger8 = Var(12) = 73
trigger9 = Var(12) = 83
trigger10 = Var(12) = 88
y = 1 + !(FVar(0) := FVar(0) + 1)

[State 0, Float Increment Float Counter]
type = VarAdd
trigger1 = Var(50) = 1
var(12) = 1

; Since pos y is always set to 0 after the intro this fixes the problem
[State 0, Float - Set Pos Y]
type = PosSet
trigger1 = Var(50) = 1
trigger1 = PrevStateNo = 20190
y = FVar(0)

;=====================
; Sentinel
;=====================

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Var(50) = 3
triggerall = Anim != 0 + 1500 * Var(40)
trigger1 = Anim && Anim != 5
trigger2 = Anim = 5 && !AnimTime ;Turn anim over
value = 0 + 1500 * Var(40)

[State 0, VelSet Y]
type = VelSet
trigger1 = Var(50) = 3
trigger1 = !Time
y = 0

[State 0, VelSet X] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
triggerall = Var(50) = 3
trigger1 = !Time
x = 0

[State 0, Smoke Counter]
type = VarRandom
trigger1 = Var(50) = 3
trigger1 = !Var(11)
v = 11
range = 0, 500

[State 0, Smoke Count Down]
type = VarAdd
trigger1 = Var(50) = 3
trigger1 = Var(11)
var(11) = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Var(50) = 3
trigger1 = !Var(11)
trigger1 = !NumExplod(1)
value = 1, 0

[State 0, Smoke A]
type = Explod
trigger1 = Var(50) = 3
trigger1 = !Var(11)
trigger1 = !NumExplod(1)
anim = 1
id = 1
bindtime = -1
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 1
ownpal = 1
removeongethit = (Var(7) >= 300)	; Only if Super Armor is off

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Var(50) = 3
trigger1 = !Var(11)
trigger1 = !NumExplod(2)
value = 1, 0

[State 0, Smoke B]
type = Explod
trigger1 = Var(50) = 3
trigger1 = !Var(11)
trigger1 = !NumExplod(2)
anim = 2
id = 2
bindtime = -1
scale = Const(size.xscale), Const(size.yscale)
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 0, Grab - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [1, 6]
trigger2 = AnimElemNo(0) = [43, 48]
id = 1400
pos = 10, -160

[State 0, Grab - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [7, 12]
trigger2 = AnimElemNo(0) = [36, 42]
id = 1400
pos = 10, -159

[State 0, Grab - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [13, 18]
trigger2 = AnimElemNo(0) = [31, 36]
id = 1400
pos = 10, -158

[State 0, Grab - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [19, 24]
trigger2 = AnimElemNo(0) = [25, 30]
id = 1400
pos = 10, -157

[State 0, Dead]
type = ChangeState
triggerall = Var(50) = 3
triggerall = RoundState > 1
trigger1 = !Var(30)
value = 5050

[State 0, Enable Dizzy Counter]
type = VarSet
triggerall = Var(50) = 3
trigger1 = Var(43) = -1
var(43) = 0

;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
ctrl = 1

[State 10, Onslaught (1st Form) - Reset Float]
type = VarSet
trigger1 = !Var(50)
trigger1 = (Command = "holdfwd" || Command = "holdback")
var(12) = 0

[State 10, Onslaught (1st Form) - ChangeState]
type = ChangeState
trigger1 = !Var(50)
value = (Command = "holdfwd" || Command = "holdback") * 20	; DF and DB changes to State 20

[State 10, Onslaught (2nd Form) - ChangeState]
type = ChangeState
trigger1 = Var(50) = 1
value = 20

[State 10, Sentinel - StateTypeSet]
type = StateTypeSet
trigger1 = Var(50) = 3
statetype = C
physics = C

[State 10, Sentinel - PlaySnd]
type = PlaySnd
trigger1 = Var(50) = 3
trigger1 = !Time
trigger1 = Anim != 10
value = 10, 0

[State 10, Sentinel - ChangeAnim]
type = ChangeAnim
trigger1 = Var(50) = 3
trigger1 = Anim != 10 + 1500 * Var(40)
value = 10 + 1500 * Var(40)

[State 10, Sentinel]
type = VelMul
trigger1 = Var(50) = 3
trigger1 = !Time
x = .75

[State 10, Grab - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [1, 4]
trigger2 = AnimElemNo(0) = [5, 8]
id = 1400
pos = 11, -162

[State 10, Grab - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [9, 12]
id = 1400
pos = 11, -176

[State 10, Grab - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [13, 16]
id = 1400
pos = 16, -178

[State 10, Grab - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [17, 20]
id = 1400
pos = 22, -123

[State 10, Grab - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [21, 24]
id = 1400
pos = 23, -90

[State 10, Grab - TargetBind 6]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [25, 28]
id = 1400
pos = 24, -95

[State 10, Crouch]
type = ChangeState
trigger1 = Var(50) = 3
trigger1 = Anim = 10 + Var(40) * 1500
trigger1 = !AnimTime
value = 11

;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type = C
physics = C
sprpriority = 0

[State 11, ChangeAnim] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim != 11 + 1500 * Var(40)
trigger2 = Anim = 6 && !AnimTime
value = 11 + 1500 * Var(40)

[State 11, Grab - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [1, 6]
id = 1400
pos = 18, -110

[State 11, Grab - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [7, 12]
trigger2 = AnimElemNo(0) = [37, 42]
id = 1400
pos = 18, -109

[State 11, Grab - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [13, 18]
trigger2 = AnimElemNo(0) = [31, 36]
id = 1400
pos = 18, -108

[State 11, Grab - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [19, 24]
id = 1400
pos = 18, -107

[State 11, Grab - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [25, 30]
id = 1400
pos = 18, -106

;---------------------------------------------------------------------------
; Crouch to Stand
[Statedef 12]
type = S
physics = S

[State 12, PlaySnd]
type = PlaySnd
trigger1 = Var(50) = 3
trigger1 = !Time
trigger1 = Anim != 12
value = 10, 0

[State 12, ChangeAnim] ;Change from turning animation
type = ChangeAnim
trigger1 = Anim != 12 + 1500 * Var(40)
value = 12 + 1500 * Var(40)

[State 12, Grab - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [1, 4]
id = 1400
pos = 23, -90

[State 12, Grab - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [5, 8]
id = 1400
pos = 22, -123

[State 12, Grab - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [9, 12]
id = 1400
pos = 16, -178

[State 12, Grab - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [13, 16]
id = 1400
pos = 11, -176

[State 12, Grab - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [17, 24]
trigger2 = AnimElemNo(0) = [25, 28]
id = 1400
pos = 11, -162

[State 12, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
physics = S
velset = 0, 0
ctrl = 1

[State 20, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20, Forward]
type = VelSet
trigger1 = Var(50) = [0, 1]
trigger1 = FrontEdgeBodyDist > 0
trigger1 = Command = "holdfwd"
x = Const(velocity.walk.fwd.x)	; + (Var(50) = 1)	; Accurate value for Onslaught (2nd Form) would be 4 but it appears to be too fast
;x = Const(velocity.walk.fwd.x) + (Var(50) = 1) + (!Var(50) && !(P2BodyDist X) && NumEnemy) * (IfElse((enemyNear, Const(velocity.walk.fwd.x) - Const(velocity.walk.fwd.x) > 0), enemyNear, Const(velocity.walk.fwd.x) - Const(velocity.walk.fwd.x) + 1, 0))	; Onslaught always wins

[State 20, Back]
type = VelSet
trigger1 = Var(50) = [0, 1]
trigger1 = BackEdgeBodyDist > 0
trigger1 = Command = "holdback"
x = Const(velocity.walk.back.x)	; - (Var(50) = 1)	; Accurate value for Onslaught (2nd Form) would be -4 but it appears to be too fast

;=====================
; Onslaught (1st Form)
;=====================

[State 20, Forward - Enemy Corner]	; Prevents going over opponent when at edge
type = VelSet
trigger1 = !Var(50)
trigger1 = FrontEdgeBodyDist <= enemyNear, Const(size.ground.front) + Const(size.ground.front)
trigger1 = enemyNear, BackEdgeBodyDist <= 0
trigger1 = Command = "holdfwd"
trigger1 = IfElse(enemyNear, Name = "Abyss", enemyNear, Var(50) != 2, 1)
trigger1 = IfElse(enemyNear, Name = "Onslaught", enemyNear, Var(50) != 1, 1)
x = 0

[State 20, Super Armor - ChangeAnim]
type = ChangeAnim
triggerall = !Var(50)
triggerall = PrevStateNo != 15000
trigger1 = Anim != 10020
trigger1 = Anim != 5
trigger2 = Anim = 5
trigger2 = !AnimTime
value = 10020

;=====================
; Onslaught (2nd Form)
;=====================

[State 20, Up]
type = VelSet
trigger1 = Var(50) = 1
trigger1 = Pos Y > -147;-352	MVC1 value	; Change to adjust upper flying limit
trigger1 = Command = "holdup"
y = Ceil(Const(velocity.walk.back.x))	; It is important that all y velocity in Onslaught's 2nd form is a whole number to avoid jaggy body parts
										; Accurate value for Onslaught (2nd Form) would be -4 but it appears to be too fast

[State 20, Down]
type = VelSet
trigger1 = Var(50) = 1
trigger1 = Command = "holddown"
trigger1 = Pos Y < 0
y = Ceil(Const(velocity.walk.fwd.x))	; Accurate value for Onslaught (2nd Form) would be 4 but it appears to be too fast

[State 20, Limit Down - PosSet]
type = PosSet
trigger1 = Var(50) = 1
trigger1 = Pos Y > 0
y = 0

[State 20, Limit Up - PosSet]
type = PosSet
trigger1 = Var(50) = 1
trigger1 = Pos Y + Vel Y < -147			; Change to adjust upper flying limit
y = -147

[State 20, Back - VelSet]
type = VelSet
triggerall = Var(50) = 1
trigger1 = BackEdgeDist < 0
trigger1 = Vel X < 0
trigger2 = FrontEdgeDist < 0
trigger2 = Vel X > 0
x = 0

[State 20, ChangeState]
type = ChangeState
trigger1 = Var(50) = 1
trigger1 = Command != "holdback" && Command != "holdfwd"
trigger1 = Command != "holdup" && Command != "holddown"
value = 0

;=====================
; Sentinel
;=====================

[State 20, Sentinel - StateTypeSet]
type = StateTypeSet
trigger1 = Var(50) = 3
statetype = S

[State 20, Sentinel - VelSet]
type = VelSet
trigger1 = Var(50) = 3
x = 0

[State 20, Sentinel - Walk Forward Anim]
type = ChangeAnim
triggerall = Var(50) = 3
triggerall = Command = "holdfwd"
trigger1 = Anim != 20 + 1500 * Var(40)
trigger1 = Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 20 + 1500 * Var(40)

[State 20, Sentinel - Walk Backward Anim]
type = ChangeAnim
triggerall = Var(50) = 3
triggerall = Command = "holdback"
trigger1 = Anim != 21 + 1500 * Var(40)
trigger1 = Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 21 + 1500 * Var(40)

[State 20, Sentinel - Forward 1]
type = PosAdd
triggerall = Var(50) = 3
triggerall = FrontEdgeBodyDist > 0
triggerall = Command = "holdfwd"
triggerall = Anim = 20
trigger1 = !AnimElemTime(4)
x = 6

[State 20, Sentinel - Forward 2]
type = PosAdd
triggerall = Var(50) = 3
triggerall = FrontEdgeBodyDist > 0
triggerall = Command = "holdfwd"
triggerall = Anim = 20
trigger1 = !AnimElemTime(1)		; Will only trigger the 1st loop
trigger2 = !AnimElemTime(8)
trigger3 = !AnimElemTime(84)
x = 11

[State 20, Sentinel - Forward 3]
type = PosAdd
triggerall = Var(50) = 3
triggerall = FrontEdgeBodyDist > 0
triggerall = Command = "holdfwd"
triggerall = Anim = 20
trigger1 = !AnimElemTime(34)
trigger2 = !AnimElemTime(42)
x = 10

[State 20, Sentinel - Forward 4]
type = PosAdd
triggerall = Var(50) = 3
triggerall = FrontEdgeBodyDist > 0
triggerall = Command = "holdfwd"
triggerall = Anim = 20
trigger1 = !AnimElemTime(38)
x = 42

[State 20, Sentinel - Forward 5]
type = PosAdd
triggerall = Var(50) = 3
triggerall = FrontEdgeBodyDist > 0
triggerall = Command = "holdfwd"
triggerall = Anim = 20
trigger1 = !AnimElemTime(46)
x = 7

[State 20, Sentinel - Forward 6]
type = PosAdd
triggerall = Var(50) = 3
triggerall = FrontEdgeBodyDist > 0
triggerall = Command = "holdfwd"
triggerall = Anim = 20
trigger1 = !AnimElemTime(50)
x = 8

[State 20, Sentinel - Forward 7]
type = PosAdd
triggerall = Var(50) = 3
triggerall = FrontEdgeBodyDist > 0
triggerall = Command = "holdfwd"
triggerall = Anim = 20
trigger1 = !AnimElemNo(76)
x = 33

[State 20, Sentinel - Forward 8]
type = PosAdd
triggerall = Var(50) = 3
triggerall = FrontEdgeBodyDist > 0
triggerall = Command = "holdfwd"
triggerall = Anim = 20
trigger1 = !AnimElemTime(80)
x = 26

[State 20, Sentinel - Back 1]
type = PosAdd
triggerall = Var(50) = 3
triggerall = BackEdgeBodyDist > 0
triggerall = Command = "holdback"
triggerall = Anim = 21
trigger1 = !AnimElemTime(1)	; Will only trigger the 1st loop
trigger2 = !AnimElemTime(12)
trigger3 = !AnimElemTime(36)
trigger4 = !AnimElemTime(39)
trigger5 = !AnimElemTime(42)
trigger6 = !AnimElemTime(54)
trigger7 = !AnimElemTime(79)
trigger8 = !AnimElemTime(82)
trigger9 = !AnimElemTime(84)
x = -5

[State 20, Sentinel - Back 2]
type = PosAdd
triggerall = Var(50) = 3
triggerall = BackEdgeBodyDist > 0
triggerall = Command = "holdback"
triggerall = Anim = 21
trigger1 = !AnimElemTime(2)
trigger2 = !AnimElemTime(4)
trigger3 = !AnimElemTime(6)
trigger4 = !AnimElemTime(8)
trigger5 = !AnimElemTime(10)
trigger6 = !AnimElemTime(44)
trigger7 = !AnimElemTime(46)
trigger8 = !AnimElemTime(48)
trigger9 = !AnimElemTime(50)
trigger10 = !AnimElemTime(52)
x = -6

[State 20, Sentinel - Back 3]
type = PosAdd
triggerall = Var(50) = 3
triggerall = BackEdgeBodyDist > 0
triggerall = Command = "holdback"
triggerall = Anim = 21
trigger1 = !AnimElemTime(14)
trigger2 = !AnimElemTime(30)
trigger3 = !AnimElemTime(56)
trigger4 = !AnimElemTime(70)
trigger5 = !AnimElemTime(73)
x = -3

[State 20, Sentinel - Back 4]
type = PosAdd
triggerall = Var(50) = 3
triggerall = BackEdgeBodyDist > 0
triggerall = Command = "holdback"
triggerall = Anim = 21
trigger1 = !AnimElemTime(23)
x = -2

[State 20, Sentinel - Back 5]
type = PosAdd
triggerall = Var(50) = 3
triggerall = BackEdgeBodyDist > 0
triggerall = Command = "holdback"
triggerall = Anim = 21
trigger1 = !AnimElemTime(33)
trigger2 = !AnimElemTime(76)
x = -4

[State 20, Sentinel - Grab - Walk Forward - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [1, 5]
id = 1400
pos = 20, -174

[State 20, Sentinel - Grab - Walk Forward - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [6, 10]
id = 1400
pos = 21, -177

[State 20, Sentinel - Grab - Walk Forward - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [11, 15]
trigger2 = AnimElemNo(0) = [79, 84]
id = 1400
pos = 20, -166

[State 20, Sentinel - Grab - Walk Forward - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [16, 22]
id = 1400
pos = 21, -168

[State 20, Sentinel - Grab - Walk Forward - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [23, 28]
trigger2 = AnimElemNo(0) = [29, 34]
trigger3 = AnimElemNo(0) = [96, 100]
id = 1400
pos = 21, -174

[State 20, Sentinel - Grab - Walk Forward - TargetBind 6]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [35, 40]
id = 1400
pos = 21, -171

[State 20, Sentinel - Grab - Walk Forward - TargetBind 7]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [41, 45]
id = 1400
pos = 19, -177

[State 20, Sentinel - Grab - Walk Forward - TargetBind 8]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [46, 50]
id = 1400
pos = 18, -181

[State 20, Sentinel - Grab - Walk Forward - TargetBind 9]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [51, 55]
id = 1400
pos = 21, -175

[State 20, Sentinel - Grab - Walk Forward - TargetBind 10]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [56, 60]
id = 1400
pos = 19, -175

[State 20, Sentinel - Grab - Walk Forward - TargetBind 11]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [61, 65]
id = 1400
pos = 20, -172

[State 20, Sentinel - Grab - Walk Forward - TargetBind 12]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [66, 72]
id = 1400
pos = 19, -164

[State 20, Sentinel - Grab - Walk Forward - TargetBind 13]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [73, 78]
id = 1400
pos = 18, -172

[State 20, Sentinel - Grab - Walk Forward - TargetBind 14]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [85, 90]
id = 1400
pos = 20, -167

[State 20, Sentinel - Grab - Walk Forward - TargetBind 15]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = AnimElemNo(0) = [91, 95]
id = 1400
pos = 20, -175

[State 20, Sentinel - Grab - Walk Backward - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [1, 3]
trigger2 = AnimElemNo(0) = [47, 50]
trigger3 = AnimElemNo(0) = [51, 54]
trigger4 = AnimElemNo(0) = [55, 57]
trigger5 = AnimElemNo(0) = [106, 108]
id = 1400
pos = 21, -160

[State 20, Sentinel - Grab - Walk Backward - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [4, 6]
trigger2 = AnimElemNo(0) = [43, 46]
trigger3 = AnimElemNo(0) = [58, 60]
id = 1400
pos = 19, -160

[State 20, Sentinel - Grab - Walk Backward - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [7, 9]
trigger2 = AnimElemNo(0) = [61, 63]
id = 1400
pos = 16, -160

[State 20, Sentinel - Grab - Walk Backward - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [10, 12]
trigger2 = AnimElemNo(0) = [64, 66]
id = 1400
pos = 13, -159

[State 20, Sentinel - Grab - Walk Backward - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [13, 15]
trigger2 = AnimElemNo(0) = [32, 38]
trigger3 = AnimElemNo(0) = [67, 69]
trigger4 = AnimElemNo(0) = [90, 93]
id = 1400
pos = 13, -158

[State 20, Sentinel - Grab - Walk Backward - TargetBind 6]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [16, 18]
trigger2 = AnimElemNo(0) = [19, 21]
trigger3 = AnimElemNo(0) = [70, 72]
trigger4 = AnimElemNo(0) = [73, 75]
id = 1400
pos = 13, -157

[State 20, Sentinel - Grab - Walk Backward - TargetBind 7]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [22, 24]
trigger2 = AnimElemNo(0) = [76, 82]
id = 1400
pos = 12, -152

[State 20, Sentinel - Grab - Walk Backward - TargetBind 8]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [25, 31]
id = 1400
pos = 13, -151

[State 20, Sentinel - Grab - Walk Backward - TargetBind 9]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [39, 42]
trigger2 = AnimElemNo(0) = [94, 97]
id = 1400
pos = 15, -159

[State 20, Sentinel - Grab - Walk Backward - TargetBind 10]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [83, 89]
id = 1400
pos = 13, -150

[State 20, Sentinel - Grab - Walk Backward - TargetBind 11]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [98, 101]
id = 1400
pos = 18, -160

[State 20, Sentinel - Grab - Walk Backward - TargetBind 11]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = AnimElemNo(0) = [102, 105]
id = 1400
pos = 20, -160

[State 20, Sentinel - Grab - Walk Forward - PosAdd 1]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = !AnimElemTime(1)
trigger2 = !AnimElemTime(11)
x = 11

[State 20, Sentinel - Grab - Walk Forward - PosAdd 2]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = !AnimElemTime(6)
x = 6

[State 20, Sentinel - Grab - Walk Forward - PosAdd 3]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = !AnimElemTime(41)
trigger2 = !AnimElemTime(51)
x = 14

[State 20, Sentinel - Grab - Walk Forward - PosAdd 4]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = !AnimElemTime(46)
x = 42

[State 20, Sentinel - Grab - Walk Forward - PosAdd 5]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = !AnimElemTime(56)
x = 7

[State 20, Sentinel - Grab - Walk Forward - PosAdd 6]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = !AnimElemTime(61)
x = 8

[State 20, Sentinel - Grab - Walk Forward - PosAdd 7]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = !AnimElemTime(91)
x = 33

[State 20, Sentinel - Grab - Walk Forward - PosAdd 8]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1520
trigger1 = !AnimElemTime(96)
x = 26

[State 20, Sentinel - Grab - Walk Backward - PosAdd 1]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = !AnimElemTime(1)
trigger2 = !AnimElemTime(19)
trigger3 = !AnimElemTime(47)
trigger4 = !AnimElemTime(51)
trigger5 = !AnimElemTime(55)
trigger6 = !AnimElemTime(73)
trigger7 = !AnimElemTime(102)
trigger8 = !AnimElemTime(106)
x = -5

[State 20, Sentinel - Grab - Walk Backward - PosAdd 2]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = !AnimElemTime(4)
trigger2 = !AnimElemTime(7)
trigger3 = !AnimElemTime(10)
trigger4 = !AnimElemTime(13)
trigger5 = !AnimElemTime(16)
trigger6 = !AnimElemTime(58)
trigger7 = !AnimElemTime(61)
trigger8 = !AnimElemTime(64)
trigger9 = !AnimElemTime(67)
trigger10 = !AnimElemTime(70)
x = -6

[State 20, Sentinel - Grab - Walk Backward - PosAdd 3]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = !AnimElemTime(22)
trigger2 = !AnimElemTime(39)
trigger3 = !AnimElemTime(76)
trigger4 = !AnimElemTime(90)
trigger5 = !AnimElemTime(94)
x = -3

[State 20, Sentinel - Grab - Walk Backward - PosAdd 4]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = !AnimElemTime(32)
x = -2

[State 20, Sentinel - Grab - Walk Backward - PosAdd 5]
type = PosAdd
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1521
trigger1 = !AnimElemTime(43)
trigger2 = !AnimElemTime(98)
x = -4

[State 20, Sentinel - EnvShake]
type = EnvShake
triggerall = Var(50) = 3
trigger1 = Anim = 20 && !AnimElemTime(12)
trigger2 = Anim = 20 && !AnimElemTime(50)
trigger3 = Anim = 21 && !AnimElemTime(16)
trigger4 = Anim = 21 && !AnimElemTime(63)
trigger5 = Anim = 1520 && !AnimElemTime(16)
trigger6 = Anim = 1520 && !AnimElemTime(61)
trigger7 = Anim = 1521 && !AnimElemTime(25)
trigger8 = Anim = 1521 && !AnimElemTime(83)
time = 6 - 2 * (Anim = 21 + 1500 * Var(40))
freq = 180

[State 20, Sentinel - PlaySnd]
type = PlaySnd
triggerall = Var(50) = 3
trigger1 = Anim = 20 && !AnimElemTime(12)
trigger2 = Anim = 20 && !AnimElemTime(50)
trigger3 = Anim = 21 && !AnimElemTime(16)
trigger4 = Anim = 21 && !AnimElemTime(63)
trigger5 = Anim = 1520 && !AnimElemTime(16)
trigger6 = Anim = 1520 && !AnimElemTime(61)
trigger7 = Anim = 1521 && !AnimElemTime(25)
trigger8 = Anim = 1521 && !AnimElemTime(83)
value = 20, 0

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
ctrl = 1

[State 40, Onslaught (1st Form) Reset Float]
type = VarSet
trigger1 = !Var(50)
trigger1 = (Command = "holdfwd" || Command = "holdback")
var(12) = 0

[State 40, Onslaught (1st Form) ChangeState]
type = ChangeState
trigger1 = !Var(50)
value = (Command = "holdfwd" || Command = "holdback") * 20	; UF and UB changes to State 20

[State 40, Onslaught (2nd Form) ChangeState]
type = ChangeState
trigger1 = Var(50) = 1
value = 20

[State 40, Sentinel - StateTypeSet]
type = StateTypeSet
trigger1 = Var(50) = 3
statetype = S
physics = S

[State 40, VarSet - Super Jump]
type = VarSet
trigger1 = Var(50) = 3
trigger1 = !Time
var(32) = 0

[State 40, Sentinel - SysVarSet]
type = VarSet
trigger1 = Var(50) = 3
trigger1 = !Time
sysvar(1) = 0

[State 40, Sentinel - SysVarSet - Forward]
type = VarSet
trigger1 = Var(50) = 3
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, Sentinel - SysVarSet - Backward]
type = VarSet
trigger1 = Var(50) = 3
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, Sentinel - ChangeAnim]
type = ChangeAnim
trigger1 = Var(50) = 3
trigger1 = Anim != 40 + (1500 - (SysVar(1) = -1)) * Var(40)
value = 40 + (1500 - (SysVar(1) = -1)) * Var(40)

[State 40, Sentinel - Grab - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [1, 5]
id = 1400
pos = 14, -173

[State 40, Sentinel - VelSet]
type = VelSet
trigger1 = Var(50) = 3
trigger1 = Anim = 40 + (1500 - (SysVar(1) = -1)) * Var(40)
trigger1 = !AnimTime
x = 3 * (SysVar(1) = 1) - 2 * (SysVar(1) = -1)
y = -6

[State 40, Sentinel - Run VelSet]
type = VelSet
trigger1 = Var(50) = 3
trigger1 = !AnimTime
trigger1 = PrevStateNo = 100 ;RUN_FWD
trigger1 = SysVar(1) = 1
x = 5

[State 40, Sentinel - PlaySnd]
type = PlaySnd
trigger1 = Var(50) = 3
trigger1 = Anim = 40 + (1500 - (SysVar(1) = -1)) * Var(40)
trigger1 = !AnimTime
value = 40, 0

[State 40, Sentinel - ChangeState]
type = ChangeState
trigger1 = Var(50) = 3
trigger1 = Anim = 40 + (1500 - (SysVar(1) = -1)) * Var(40)
trigger1 = !AnimTime
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Super Jump Start
[Statedef 41]
type = S
physics = S
ctrl = 0

[State 41, VarSet - Super Jump]
type = VarSet
trigger1 = !Time
var(32) = 1

[State 41, NoWalk]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 41, Sentinel - SysVarSet]
type = VarSet
trigger1 = !Time
sysvar(1) = 0

[State 41, Sentinel - SysVarSet - Forward]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 41, Sentinel - SysVarSet - Backward]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 41, Sentinel - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 40 + (1500 - (SysVar(1) = -1)) * Var(40)
value = 40 + (1500 - (SysVar(1) = -1)) * Var(40)

[State 41, Sentinel - Grab - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [1, 5]
id = 1400
pos = 14, -173

[State 41, Sentinel - VelSet]
type = VelSet
trigger1 = Anim = 40 + (1500 - (SysVar(1) = -1)) * Var(40)
trigger1 = !AnimTime
x = 3 * (SysVar(1) = 1) - 2 * (SysVar(1) = -1)
y = IfElse(PrevStateNo = 240 || PrevStateNo = 251, -14, -16)

[State 41, Sentinel - Run VelSet]
type = VelSet
trigger1 = !AnimTime
trigger1 = PrevStateNo = 100 ;RUN_FWD
trigger1 = SysVar(1) = 1
x = 5

[State 41, Sentinel - PlaySnd]
type = PlaySnd
trigger1 = Anim = 40 + (1500 - (SysVar(1) = -1)) * Var(40)
trigger1 = !AnimTime
value = 41, 0

[State 41, Explod]
type = Explod
trigger1 = Anim = 40 + (1500 - (SysVar(1) = -1)) * Var(40)
trigger1 = !AnimTime
ID = 7140
anim = 7140
postype = p1
pos = 0, 30
bindtime = 1
removetime = -2
ownpal = 1
;scale = Const(size.xscale) * 0.5, Const(size.yscale) * 0.5
sprpriority = 2
;scale = 1.20 - (Time * 0.15), 1.54 - (Time * 0.15) 

[State 41, Explod]
type = Null;Explod
trigger1 = Anim = 40 + (1500 - (SysVar(1) = -1)) * Var(40) 
trigger1 = !AnimTime
ID = 7142
anim = 7142
postype = p1
pos = 0, 20
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 2
scale = 2, 2

[State 41, Sentinel - ChangeState]
type = ChangeState
trigger1 = Anim = 40 + (1500 - (SysVar(1) = -1)) * Var(40)
trigger1 = !AnimTime
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type = A
physics = A

[State 50, SysVarSet]
type = VarSet
trigger1 = !Time
sysvar(1) = 0

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != [41 + 1500 * Var(40) + 30000 * Var(33), 46 + 1500 * Var(40) + 30000 * Var(33)])
value = IfElse(!(Vel X), 41 + 1500 * Var(40) + 30000 * Var(33), IfElse((Vel X) > 0, 42 + 1500 * Var(40) + 30000 * Var(33), 43 + 1500 * Var(40) + 30000 * Var(33)))

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = [41 + 1500 * Var(40) + 30000 * Var(33), 43 + 1500 * Var(40) + 30000 * Var(33)])
trigger1 = !AnimTime
trigger1 = SelfAnimExist(Anim + 3)
persistent = 0
value = Anim + 3

[State 50, Sentinel - Grab - Jump Up - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1541
trigger2 = Anim = 1542 || Anim = 1543
trigger2 = AnimElemNo(0) = [1, 12]
id = 1400
pos = 14, -172

[State 50, Sentinel - Grab - Jump Up - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1542 || Anim = 1543
trigger1 = AnimElemNo(0) = [13, 36]
id = 1400
pos = 14, -156

[State 50, Sentinel - Grab - Peak and coming down from Jumping up - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1544
id = 1400
pos = 14, -171

[State 50, Sentinel - Grab - Peak and coming down from Jumping forward - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1545
id = 1400
pos = 13, -155

[State 50, Sentinel - Grab - Peak and coming down from Jumping backward - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1546
id = 1400
pos = 15, -155

;---------------------------------------------------------------------------
; Jump Down
[Statedef 51]
type = A
physics = A

[State 51, Sentinel - Fly]
type = ChangeState
trigger1 = Var(50) = 3
trigger1 = (Var(34) > 0)
value = 1302

[State 51, SysVarSet]
type = VarSet
trigger1 = !Time
sysvar(1) = 0

[State 51, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != [44 + 1500 * Var(40) + 30000 * Var(33), 46 + 1500 * Var(40) + 30000 * Var(33)])
value = IfElse(!(Vel X), 44 + 1500 * Var(40) + 30000 * Var(33), IfElse((Vel X) > 0, 45 + 1500 * Var(40) + 30000 * Var(33), 46 + 1500 * Var(40) + 30000 * Var(33)))

[State 51, Sentinel - Grab - Peak and coming down from Jumping up - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1544
id = 1400
pos = 14, -171

[State 51, Sentinel - Grab - Peak and coming down from Jumping forward - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1545
id = 1400
pos = 13, -155

[State 51, Sentinel - Grab - Peak and coming down from Jumping backward - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1546
id = 1400
pos = 15, -155

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type = S
physics = S
ctrl = 0

[State 52, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = (Anim != [47 + 1500 * Var(40) + 30000 * Var(33), 49 + 1500 * Var(40) + 30000 * Var(33)])
value = 44, 0

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != [47 + 1500 * Var(40) + 30000 * Var(33), 49 + 1500 * Var(40) + 30000 * Var(33)])
value = (47 + (Vel X > 0) + (Vel X < 0) * 2) + 1500 * Var(40) + 30000 * Var(33)

[State 52, Sentinel - Grab - Jump Land - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [1, 2]
id = 1400
pos = 14, -172

[State 52, Sentinel - Grab - Jump Land - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [3, 4]
id = 1400
pos = 9 - (Anim = 1548), -147

[State 52, Sentinel - Grab - Jump Land - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [5, 6]
trigger2 = Anim != 1547
trigger2 = AnimElemNo(0) = [21, 22]
id = 1400
pos = 9 + (Anim = 1549), -139

[State 52, Sentinel - Grab - Jump Land - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [7, 8]
id = 1400
pos = 8 + (Anim != 1547), -135

[State 52, Sentinel - Grab - Jump Land - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [9, 10]
trigger2 = Anim != 1547
trigger2 = AnimElemNO(0) = [19, 20]
id = 1400
pos = 9, -132

[State 52, Sentinel - Grab - Jump Land - TargetBind 6]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [11, 12]
id = 1400
pos = 9, -129

[State 52, Sentinel - Grab - Jump Land - TargetBind 7]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = AnimElemNo(0) = [13, 14]
id = 1400
pos = 9, -128

[State 52, Sentinel - Grab - Jump Land - TargetBind 8]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1547
trigger1 = AnimElemNo(0) = [15, 16]
trigger2 = Anim != 1547
trigger2 = Anim = [23, 24]
id = 1400
pos = 10, -154

[State 52, Sentinel - Grab - Jump Land - TargetBind 9]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1547
trigger1 = AnimElemNo(0) = [17, 18]
trigger2 = Anim != 1547
trigger2 = Anim = [25, 26]
id = 1400
pos = 10, -158

[State 52, NoAutoTurn]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 52, Wave]
type = Explod
trigger1 = !Time
anim = 7144
pos = 0,4
sprpriority = -1
ownpal = 1
scale = 1.4, 1.2

[State 52, Dust]
type = Explod
trigger1 = !Time && Vel X
anim = 7145
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 5
ownpal = 1

[State 52, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State 52, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 52, EnvShake]
type = EnvShake
trigger1 = !Time
time = 6
freq = 180

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time
value = 1

[State 52, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0 + 100 * (NumTarget(600) && BackEdgeDist < 0)
ctrl = 1 - (NumTarget(600) && BackEdgeDist < 0)

;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type = S
physics = S
sprpriority = 1
ctrl = 1 - (NumTarget(600) && BackEdgeDist < 0)

[State 100, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = (Anim != [100 + 1500 * Var(40), 101 + 1500 * Var(40)])
value = 40, 0

[State 100, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != [100 + 1500 * Var(40), 101 + 1500 * Var(40)])
value = 100 + 1500 * Var(40)

[State 100, Grab - Run Forward - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1600
trigger1 = AnimElemNo(0) = [1, 2]
id = 1400
pos = 1, -173

[State 100, Grab - Run Forward - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1600
trigger1 = AnimElemNo(0) = [3, 4]
id = 1400
pos = 3, -170

[State 100, Grab - Run Forward - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1600
trigger1 = AnimElemNo(0) = [5, 6]
id = 1400
pos = 20, -170

[State 100, Grab - Run Forward - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1600
trigger1 = AnimElemNo(0) = [7, 8]
id = 1400
pos = 37, -160

[State 100, Grab - Run Forward - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1600
trigger1 = AnimElemNo(0) = [9, 10]
id = 1400
pos = 37, -165

[State 100, Grab - Run Forward - TargetBind 6]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1600
trigger1 = AnimElemNo(0) = [11, 14]
id = 1400
pos = 41, -168

[State 100, VelSet]
type = VelSet
trigger1 = Anim = 100 + 1500 * Var(40)
trigger1 = AnimElemNo(0) != [1, 2]
x = 8

[State 100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk			; Prevent run from canceling into walk
flag2 = NoAutoTurn		; Prevent from turning

[State 100, TimerSet]
type = VarSet
trigger1 = !Time && PrevStateNo != 9000
var(31) = 42

[State 100, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 100 + 1500 * Var(40)
trigger1 = !Var(31)
value = 101 + 1500 * Var(40)

[State 100, Grab - Run Forward Stop - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
triggerall = Anim = 1601
trigger1 = AnimElemNo(0) = [1, 2]
trigger2 = AnimElemNo(0) = [5, 6] 
id = 1400
pos = 41, -160

[State 100, Grab - Run Forward Stop - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1601
trigger1 = AnimElemNo(0) = [3, 4]
id = 1400
pos = 47, -160

[State 100, Grab - Run Forward Stop - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1601
trigger1 = AnimElemNo(0) = [7, 8]
id = 1400
pos = 37, -160

[State 100, Grab - Run Forward Stop - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1601
trigger1 = AnimElemNo(0) = [9, 10]
id = 1400
pos = 20, -170

[State 100, Grab - Run Forward Stop - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1601
trigger1 = AnimElemNo(0) = [11, 12]
id = 1400
pos = 3, -170

[State 100, Grab - Run Forward Stop - TargetBind 6]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1601
trigger1 = AnimElemNo(0) = [13, 14]
id = 1400
pos = 5, -166

[State 100, Grab - Run Forward Stop - TargetBind 7]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1601
trigger1 = AnimElemNo(0) = [15, 16]
id = 1400
pos = 2, -168

[State 100, Grab - Run Forward Stop - TargetBind 8]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1601
trigger1 = AnimElemNo(0) = [17, 18]
id = 1400
pos = 1, -173

[State 100, TimerCountDown]
type = VarAdd
trigger1 = Var(31)
var(31) = -1

[State 100, Dash Dust]
type = Null;Explod
trigger1 = Anim = 100 + 1500 * Var(40)
trigger1 = !AnimElemTime(1)
anim = 7100
ID = 7100
pos = 0, 6
scale = 1, 0.5
sprpriority = 8
ownpal = 1
ignorehitpause = 1

[State 100, Dash Explod]
type = Explod
trigger1 = Anim = 100 + 1500 * Var(40)
trigger1 = !(AnimElemTime(1) % 4)
ID = 7110
anim = 7110
postype = p1
pos = -20, -80
bindtime = 1
removetime = -2
vel = -.8, 0
ownpal = 1
random = 20, 60
scale = 0.5, 0.5
sprpriority = 2

[State 100, ChangeState]
type = ChangeState
trigger1 = (Anim = 101 + 1500 * Var(40)) && !AnimTime
trigger2 = Command = "holdback" && Ctrl
value = 0 + (Command = "holdback" && Ctrl) * 20
ctrl = 1

[State 100, Grab - Over]
type = ChangeState
trigger1 = Anim = [1600, 1601]
trigger1 = !Var(40)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type = S
physics = S
sprpriority = 1
ctrl = 1

[State 105, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = (Anim != [105 + 1500 * Var(40), 106 + 1500 * Var(40)])
value = 40, 0

[State 105, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != [105 + 1500 * Var(40), 106 + 1500 * Var(40)])
value = 105 + 1500 * Var(40)

[State 105, Grab - Run Backward - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1605
trigger1 = AnimElemNo(0) = [1, 2]
id = 1400
pos = 1, -173

[State 105, Grab - Run Backward - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1605
trigger1 = AnimElemNo(0) = [3, 4]
id = 1400
pos = 3, -170

[State 105, Grab - Run Backward - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1605
trigger1 = AnimElemNo(0) = [5, 6]
id = 1400
pos = -25, -174

[State 105, Grab - Run Backward - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1605
trigger1 = AnimElemNo(0) = [7, 8]
id = 1400
pos = -25, -172

[State 105, Grab - Run Backward - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1605
trigger1 = AnimElemNo(0) = [9, 10]
id = 1400
pos = -24, -176

[State 105, Grab - Run Backward - TargetBind 6]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1605
trigger1 = AnimElemNo(0) = [11, 14]
id = 1400
pos = -22, -175

[State 105, VelSet]
type = VelSet
trigger1 = Anim = 105 + 1500 * Var(40)
x = -10

[State 105, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk			; Prevent run from canceling into walk
flag2 = NoAutoTurn		; Prevent from turning

[State 105, TimerSet]
type = VarSet
trigger1 = !Time && PrevStateNo != 9000
var(31) = 41

[State 105, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 105 + 1500 * Var(40)
trigger1 = !Var(31)
value = 106 + 1500 * Var(40)

[State 105, Grab - Run Backward Stop - TargetBind 1]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1606
trigger1 = AnimElemNo(0) = [1, 2]
id = 1400
pos = -24, -176

[State 105, Grab - Run Backward Stop - TargetBind 2]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1606
trigger1 = AnimElemNo(0) = [3, 4]
id = 1400
pos = -33, -169

[State 105, Grab - Run Backward Stop - TargetBind 3]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1606
trigger1 = AnimElemNo(0) = [5, 6]
id = 1400
pos = -25, -174

[State 105, Grab - Run Backward Stop - TargetBind 4]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1606
trigger1 = AnimElemNo(0) = [7, 8]
id = 1400
pos = 3, -170

[State 105, Grab - Run Backward Stop - TargetBind 5]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1606
trigger1 = AnimElemNo(0) = [9, 10]
id = 1400
pos = 5, -166

[State 105, Grab - Run Backward Stop - TargetBind 6]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1606
trigger1 = AnimElemNo(0) = [11, 12]
id = 1400
pos = 2, -168

[State 105, Grab - Run Backward Stop - TargetBind 7]
type = TargetBind
triggerall = Var(50) = 3
triggerall = Var(40)
trigger1 = Anim = 1606
trigger1 = AnimElemNo(0) = [13, 14]
id = 1400
pos = 1, -173

[State 105, TimerCountDown]
type = VarAdd
trigger1 = Var(31)
var(31) = -1

[State 105, Dash Dust]
type = Null;Explod
trigger1 = Anim = 105 + 1500 * Var(40)
trigger1 = !AnimElemTime(1)
anim = 7105
ID = 7105
pos = 0, 19
scale = 1, 0.5
sprpriority = 8
ownpal = 1
ignorehitpause = 1

[State 105, Dash Explod]
type = Null;Explod
trigger1 = Anim = 105 + 1500 * Var(40)
trigger1 = !(AnimElemTime(1) % 4)
ID = 7110
anim = 7110
postype = p1
pos = 10,-89
bindtime = 1
vel = -2
ownpal = 1
random = 18,48
removetime = -2
scale = 0.5, 0.5
sprpriority = 2

[State 105, ChangeState]
type = ChangeState
trigger1 = (Anim = 106 + 1500 * Var(40)) && !AnimTime
trigger2 = Command = "holdfwd"
value = 0 + (Command = "holdfwd") * 20
ctrl = 1

[State 105, Grab - Over]
type = ChangeState
trigger1 = Anim = [1605, 1606]
trigger1 = !Var(40)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type    = S
physics = S

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type    = C
physics = C

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command != "holddown"
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type    = A
physics = N

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = !Var(34)
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl = 1

[State 140, 1]
type = ChangeAnim
trigger1 = !Time && Anim != [140, 142]
value = 140 + (statetype = C) + (statetype = A)*2

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

;[State 140, 5] ;Implemented within engine
;type = ChangeState
;trigger1 = AnimTime = 0
;value = (statetype = C)*11 + (statetype = A)*51

;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S
anim = 150

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, 4]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C
anim = 151

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, 2]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, 4]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N
anim = 152

[State 155, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = !Var(34)
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 155, 4]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 155, 5]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
trigger1 = inguarddist
value = 130

[State 155, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 155, Fly]
type = ChangeState
trigger1 = Var(34)
value = 1302

;---------------------------------------------------------------------------
; Advance Guard
[Statedef 160]
type = U
movetype = I
physics = N
ctrl = 0
sprpriority = 2

[State 160, Guard Anim]
type = ChangeAnim
triggerall = !Time
trigger1 = StateType = S
trigger1 = Anim != 130
trigger2 = StateType = C
trigger2 = Anim != 131
trigger3 = StateType = A
trigger3 = Anim != 132
value = 130 + (StateType = C) + (StateType = A) * 2

[State 160, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 6, 0

[State 160, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 160, Width]
type = Width
trigger1 = 1
player = 0, 0

[State 160, Stand Helper]
type = Helper
trigger1 = !Time && StateType = S
name = "Advance Guard"
id = 165
pos = 25, -80
stateno = 165
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 160, Crouch Helper]
type = Helper
trigger1 = !Time && StateType = C
name = "Advance Guard"
id = 165
pos = 25, -40
stateno = 165
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 160, Aerial Helper]
type = Helper
trigger1 = !Time && StateType = A
name = "Advance Guard"
id = 165
pos = 25, -104
stateno = 165
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 160, PosFreeze]
type = PosFreeze
trigger1 = StateType = A

[State 160, ChangeState]
type = ChangeState
trigger1 = Time = 18
value = 0 + (StateType = C) * 11 + (StateType = A) * 51 + (StateType = A && Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Advance Guard - Helper
[Statedef 165]
velset = 0, 0
ctrl = 0
sprpriority = 5

[State 165, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 165, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 165, Explod]
type = Explod
trigger1 = !Time
anim = 7120
ownpal = 1
sprpriority = 5
scale = 0.5, 0.5

[State 165, PosSet]
type = PosSet
trigger1 = Time
y = 0

[State 165, VelSet]
type = VelSet
trigger1 = 1
x = 30 - (Time = [11, 13]) * 10 - (Time > 13) * 20

[State 165, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 165, DestroySelf]
type = DestroySelf
trigger1 = Time = 18

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
velset = 0,0
ctrl = 0

[State 170, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 170, Onslaught - Lose]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 5150

[State 170, Sentinel - Lose]
type = ChangeAnim
trigger1 = Var(50) = 3
trigger1 = Anim != 175
value = 175

;---------------------------------------------------------------------------
; DRAWGAME (Time over)
[Statedef 175]
velset = 0,0
ctrl = 0

[State 175, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 175, Reset Move Toggler]
type = VarSet
trigger1 = Var(50) = 1
var(20) = 0

[State 175, Onslaught]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 0

[State 175, Sentinel]
type = ChangeAnim
trigger1 = Var(50) = 3
trigger1 = Anim != 175
value = 175

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
velset = 0, 0
ctrl = 0

[State 180, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 180, Reset Move Toggler]
type = VarSet
trigger1 = Var(50) = 1
var(20) = 0

[State 180, Onslaught (1st Form)]
type = ChangeState
trigger1 = !Var(50)
value = 10180

[State 180, Onslaught (2nd Form)]
type = ChangeState
trigger1 = Var(50) = 1
value = 20180

; Refer to Var(42) in Statedef -2 for how Win Pose is decided
[State 180, Sentinel - Win A]
type = ChangeState
triggerall = Var(50) = 3
trigger1 = !FVar(21)
trigger2 = !MatchOver
value = 181

[State 180, Sentinel - Win B]
type = ChangeState
triggerall = Var(50) = 3
trigger1 = FVar(21)
trigger1 = MatchOver
value = 182

;---------------------------------------------------------------------------
; Sentinel - Win A
[Statedef 181]
velset = 0, 0
ctrl = 0

[State 181, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 181
value = 181

[State 181, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemNo(0) != 52
flag = roundnotover

[State 181, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = [0, 104]
trigger1 = !(AnimElemTime(4) % 6)
value = 182, 0

[State 181, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 157
value = 1, 0

[State 181, Explod]
type = Explod
trigger1 = !AnimElemTime(4)
trigger1 = !NumExplod(182)
anim = 182
id = 182
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 3

;---------------------------------------------------------------------------
; Sentinel - Win B
[Statedef 182]
physics = S
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = roundnotover

[State 182, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 182, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 40
value = 40

[State 182, VelSet]
type = VelSet
trigger1 = Anim = 40
trigger1 = !AnimTime
x = ((FVar(20) - Pos X) * Facing - 163)/ (12/Const(movement.yaccel))
y = -6

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Anim = 40
trigger1 = !AnimTime
value = 40, 0

[State 182, ChangeState]
type = ChangeState
trigger1 = Anim = 40
trigger1 = !AnimTime
value = 183

;---------------------------------------------------------------------------
; Sentinel - Win B - Jump Up
[Statedef 183]
type = A
physics = N
ctrl = 0

[State 183, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = roundnotover

[State 183, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 183, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != [41, 46])
value = IfElse(!(Vel X), 41, IfElse((Vel X) > 0, 42, 43))

[State 183, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = [41, 43])
trigger1 = !AnimTime
trigger1 = SelfAnimExist(Anim + 3)
persistent = 0
value = Anim + 3

[State 183, Gravity]
type = Gravity
trigger1 = 1

[State 183, Land]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 184

;---------------------------------------------------------------------------
; Sentinel - Win B - Jump Land
[Statedef 184]
physics = S
ctrl = 0

[State 184, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = roundnotover

[State 184, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 184, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = (Anim != [47, 49])
value = 44, 0

[State 184, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != [47, 49])
value = (47 + (Vel X > 0) + (Vel X < 0) * 2)

[State 184, Wave]
type = Explod
trigger1 = !Time
anim = 7144
pos = 0,4
sprpriority = -1
ownpal = 1
scale = 1.4, 1.2

[State 184, Dust]
type = Explod
trigger1 = !Time && Vel X
anim = 7145
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 5
ownpal = 1

[State 184, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State 184, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 184, EnvShake]
type = EnvShake
trigger1 = !Time
time = 6
freq = 180

[State 184, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 185

;---------------------------------------------------------------------------
; Sentinel - Win B - Create Bubble
[Statedef 185]
physics = S
ctrl = 0
sprpriority = 2

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = ScreenPos Y > 0
flag = roundnotover

[State 185, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 185, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 184

[State 185, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 184, 0

[State 185, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 2
anim = 185
id = 185
bindtime = -1
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 3
ownpal = 1

[State 185, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 39
anim = 186
id = 186
postype = p2
bindtime = -1
removetime = -1
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 0
ownpal = 1

[State 185, VelSet]
type = VelSet
trigger1 = !AnimElemTime(23)
y = -4

[State 185, Acceleration]
type = VelAdd
trigger1 = AnimElemTime(23) > 0
y = -0.66

[State 185, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(23)
value = 40, 0

;---------------------------------------------------------------------------
; Sentinel - Win B - P2 State
[Statedef 187]
type = L
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 187, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 187, Turn]
type = Turn
trigger1 = !Time
trigger1 = Facing != enemyNear, Facing

[State 187, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 187

[State 187, PosSet 1]
type = PosSet
trigger1 = NumEnemy
trigger1 = enemyNear, AnimElemTime(5) = [30, 50]
x = enemyNear, Pos X + (170 * Facing)
y = enemyNear, Pos Y + -25 - (enemyNear, AnimElemTime(5) - 30)

[State 187, PosSet 2]
type = PosSet
trigger1 = NumEnemy
trigger1 = enemyNear, AnimElemNo(0) = 17
x = enemyNear, Pos X + (154 * Facing)
y = enemyNear, Pos Y + -61

[State 187, PosSet 3]
type = PosSet
trigger1 = NumEnemy
trigger1 = enemyNear, AnimElemNo(0) = 18
x = enemyNear, Pos X + (114 * Facing)
y = enemyNear, Pos Y + -72

[State 187, PosSet 4]
type = PosSet
trigger1 = NumEnemy
trigger1 = enemyNear, AnimElemNo(0) = 19
x = enemyNear, Pos X + (116 * Facing)
y = enemyNear, Pos Y + -72

[State 187, PosSet 5]
type = PosSet
trigger1 = NumEnemy
trigger1 = enemyNear, AnimElemNo(0) = [20, 22]
x = enemyNear, Pos X + (121 *Facing)
y = enemyNear, Pos Y + -84

[State 187, PosSet 6]
type = PosSet
trigger1 = NumEnemy
trigger1 = enemyNear, AnimElemNo(0) = [23, 24]
x = enemyNear, Pos X + (121 * Facing)
y = enemyNear, Pos Y + -101

;---------------------------------------------------------------------------
; Preintro - State decider
[Statedef 190]
velset = 0, 0
ctrl = 0

[State 190, Onslaught (1st Form)]
type = ChangeState
trigger1 = !Var(50)
value = 10190

[State 190, Onslaught (2nd Form)]
type = ChangeState
trigger1 = Var(50) = 1
value = 20190

[State 190, Sentinel]
type = ChangeState
trigger1 = Var(50) = 3
trigger1 = RoundsExisted
value = 0

[State 190, Sentinel]
type = ChangeState
trigger1 = Var(50) = 3
value = IfElse(Random < 500, 30190, 191)

;---------------------------------------------------------------------------
; Sentinel - Intro B
[Statedef 191]
type = A
velset = 0, 0
ctrl = 0

[State 191, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 191, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 191, PosSet]
type = PosSet
trigger1 = !Time
y = -320

[State 191, VelSet]
type = VelSet
trigger1 = !Time
y = 6

[State 191, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 40, 0

[State 191, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1340

[State 191, Land]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 192

;---------------------------------------------------------------------------
; Sentinel - Intro B - Jump Land
[Statedef 192]
physics = S
ctrl = 0

[State 192, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 192, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = (Anim != [47, 49])
value = 44, 0

[State 192, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != [47, 49])
value = (47 + (Vel X > 0) + (Vel X < 0) * 2)

[State 192, Wave]
type = Explod
trigger1 = !Time
anim = 7144
pos = 0,4
sprpriority = -1
ownpal = 1
scale = 1.4, 1.2

[State 192, Dust]
type = Explod
trigger1 = !Time && Vel X
anim = 7145
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 5
ownpal = 1

[State 192, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State 192, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 192, EnvShake]
type = EnvShake
trigger1 = !Time
time = 6
freq = 180

[State 192, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Switch Forms - Used with Start command
[Statedef 195]
ctrl = 0

[State 195, PalFx]		; Remove all PalFx effects
type = PalFx
trigger1 = 1
add = 0, 0, 0

[State 195, Switch]
type = VarSet
trigger1 = 1
var(50) = !(Var(50) = 1)

[State 195, ChangeState]
type = ChangeState
trigger1 = 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sentinel - Taunt
[Statedef 196]
physics = S
velset = 0, 0
ctrl = 0

[State 196, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 196
value = 196

[State 196, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = [0, 31]
trigger1 = !(AnimElemTime(8) % 5)
value = 182, 0

[State 196, Electricity]
type = Helper
trigger1 = !AnimElemTime(8)
trigger1 = !NumHelper(197)
name = "Electricity"
id = 197
stateno = 197
ownpal = 1

[State 196, ChangeState]
Type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sentinel - Taunt - Helper - Electricity
[Statedef 197]
anim = 197
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 197, BindToParent]
type = BindToParent
trigger1 = 1

[State 197, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Parent, Anim != 196

;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 5000]
type = S
movetype= H
physics = N
velset = 0,0

[State 5000, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5000, PlaySnd]
type = PlaySnd
trigger1 = !(GetHitVar(animtype)) 
value = 5, 12
channel = 0
persistent = 0

[State 5000, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 1
value = 5, 13
channel = 0
persistent = 0

[State 5000, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 2
value = 5, 14
channel = 0
persistent = 0

[State 5000, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) >= 3
value = 5, 15
channel = 0
persistent = 0

[State 5000, Sentinel Super Armor]
type = ChangeState
trigger1 = Var(50) = 3
trigger1 = Var(30)
trigger1 = Var(7) < 300
trigger1 = !GetHitVar(yvel) || !GetHitVar(fall)	; Super Armor is not active if hit up
trigger1 = !Pos Y
trigger1 = !GetHitVar(yvel)
value = 9000

[State 5000, Increment Dizzy Counter]		; For dizzy anim
type = VarAdd
trigger1 = !Time && Var(43) >= 0
var(43) = 100 + (GetHitVar(animtype) + 1) * 50

; HIT_BACK (animtype = 3) => LIGHT
; HIT_UP (animtype = 4) => MEDIUM
; HIT_DIAGUP (animtype = 5) => HARD
[State 5000, HitShake Anim] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = !Time
value = 5010 - (GetHitVar(groundtype) = 1) * 10 + GetHitVar(animtype) - (GetHitVar(animtype) = [3,5]) * 3

[State 5000, Hit Off Ground] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, HitShakeOver]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, Hit Off Ground]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type = S
movetype = H
physics = S

[State 5001, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5001, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

; HIT_BACK (animtype = 3) => LIGHT
; HIT_UP (animtype = 4) => MEDIUM
; HIT_DIAGUP (animtype = 5) => HARD
[State 5001, Hit Recover Anim]
type = ChangeAnim
trigger1 = HitOver
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype) = 2) * 10 - (GetHitVar(animtype) = [3,5]) * 3
persistent = 0

[State 5001, Friction] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, Stop Sliding]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, Reset Defense]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, HitOver]
type = ChangeState
triggerall = !AnimTime
trigger1 = Anim = [5005, 5007]
trigger1 = !(Var(7) := 0)
trigger2 = Anim = [5015, 5017]
trigger2 = !(Var(7) := 0)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type = C
movetype = H
physics = N
velset = 0,0

[State 5010, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5010, PlaySnd]
type = PlaySnd
trigger1 = !(GetHitVar(animtype)) 
value = 5, 12
channel = 0
persistent = 0

[State 5010, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 1
value = 5, 13
channel = 0
persistent = 0

[State 5010, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 2
value = 5, 14
channel = 0
persistent = 0

[State 5010, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) >= 3
value = 5, 15
channel = 0
persistent = 0

[State 5010, Sentinel Super Armor]
type = ChangeState
trigger1 = Var(50) = 3
trigger1 = Var(30)
trigger1 = Var(7) < 300
trigger1 = !GetHitVar(yvel) || !GetHitVar(fall)	; Super Armor is not active if hit up
trigger1 = !Pos Y
trigger1 = !GetHitVar(yvel)
value = 9000

[State 5010, Increment Dizzy Counter]		; For dizzy anim
type = VarAdd
trigger1 = !Time && Var(43) >= 0
var(43) = 100 + (GetHitVar(animtype) + 1) * 50

; HIT_BACK (animtype = 3) => LIGHT
; HIT_UP (animtype = 4) => MEDIUM
; HIT_DIAGUP (animtype = 5) => HARD
[State 5010, HitShake Anim] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = !Time
value = 5020 + GetHitVar(animtype) - (GetHitVar(animtype) = [3, 5]) * 3

[State 5010, Hit Off Ground] ;State type gets set to aerial if getting hit up
type = StateTypeSet
triggerall = !Time
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5010, HitShakeOver]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5011 ;HITC_SLIDE

[State 5010, Hit Off Ground]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type = C
movetype = H
physics = C

[State 5011, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5011, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

; HIT_BACK (animtype = 3) => LIGHT
; HIT_UP (animtype = 4) => MEDIUM
; HIT_DIAGUP (animtype = 5) => HARD
[State 5011, Hit Recover Anim]
type = ChangeAnim
trigger1 = HitOver
value = 5025 + GetHitVar(animtype) - (GetHitVar(animtype) = [3,5]) * 3
persistent = 0

[State 5011, Friction] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, Stop Sliding Back]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, Reset Defence]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, HitOver]
type = ChangeState
trigger1 = Anim = [5025, 5027]
trigger1 = !AnimTime
trigger1 = !(Var(7) := 0)
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type = A
movetype = H
physics = N
velset = 0,0

[State 5020, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5020, PlaySnd]
type = PlaySnd
trigger1 = !(GetHitVar(animtype)) 
value = 5, 12
channel = 0
persistent = 0

[State 5020, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 1
value = 5, 13
channel = 0
persistent = 0

[State 5020, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 2
value = 5, 14
channel = 0
persistent = 0

[State 5020, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) >= 3
value = 5, 15
channel = 0
persistent = 0

[State 5020, Sentinel Super Armor]
type = Null; ChangeState	; Super Armor is not active in air
trigger1 = Var(50) = 3
trigger1 = Var(7) < 300
value = 9000

[State 5020, Increment Dizzy Counter]		; For dizzy anim
type = VarAdd
trigger1 = !Time && Var(43) >= 0
var(43) = 100 + (GetHitVar(animtype) + 1) * 50

; HIT_BACK (animtype = 3) => LIGHT
; HIT_UP (animtype = 4) => MEDIUM
; HIT_DIAGUP (animtype = 5) => HARD
[State 5020, HitShake Anim] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = !Time
value = 5130 + GetHitVar(animtype) - (GetHitVar(animtype) = [3, 5]) * 3

[State 5020, HIT_UP/HIT_DIAGUP] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = !Time
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, HitShakeOver]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type = A
movetype = H
physics = N
ctrl = 0

[State 5030, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5030, Gravity]
type = VelAdd	; Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

; HIT_BACK (animtype = 3) => LIGHT
; HIT_UP (animtype = 4) => MEDIUM
; HIT_DIAGUP (animtype = 5) => HARD
[State 5030, Hit Recover Anim]
type = ChangeAnim
trigger1 = !Time && Anim = [5130, 5132]
value = 5133 + GetHitVar(animtype) - (GetHitVar(animtype) = [3,5]) * 3

[State 5030, Hit Wall Spark]
type = Explod
triggerall = Vel X
triggerall = !NumExplod(5030)
trigger1 = BackEdgeBodyDist <= 10
anim = 7070
id = 5030
pos = -16, 70
postype = back
facing = -1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 5030, Hit Wall Sound]
type = PlaySnd
triggerall = Vel X
trigger1 = BackEdgeBodyDist <= 10
value = 5, 21
persistent = 0

[State 5030, HITA_RECOV]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 5030, HITA_FALL]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 5030, HITA_UP (transition)]
type = ChangeState
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5035, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, HITA_RECOV]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5035, HITA_FALL]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air, not falling)
[Statedef 5040]
type = A
movetype= H
physics = N

[State 5040, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5040, KO]
type = ChangeState
trigger1 = !Alive
trigger2 = !Var(30) && Var(50) = 3	; Sentinel life = 0
value = 5050

; Anim for Air Hit (going down)
[State 5040, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5133, 5135]
trigger1 = !AnimTime
value = 5060

; Anim for Air Fall (going down)
[State 5040, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = !AnimTime
value = 5061

[State 5040, Air Recover Anim]
type = ChangeAnim
triggerall = Vel Y > 0
triggerall = Pos Y >= -100
;trigger1 = AnimTime = 0
trigger1 = Anim != 5040
;trigger2 = Time = 0
;trigger2 = Anim != 5035
value = 5040

[State 5040, CtrlSet]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, StateTypeSet]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, Jump Land]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = !(Var(7) := 0)	; Reset Super Armor
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type = A
movetype = H
physics = N

[State 5050, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5050, KO PlaySnd]
type = PlaySnd
trigger1 = !Var(30) && Var(50) = 3
trigger1 = !Time
trigger1 = !Var(39)
trigger1 = Var(39) := 1
value = 9150, 0 + (Random < 500)

[State 5050, Air Fall Down Anim] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, Coming Down Anim] ;Coming down anim
type = ChangeAnim
triggerall = Var(30) && Var(50) = 3	; Alive
trigger1 = anim = [5050, 5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = Anim + 10
persistent = 0

[State 5050, Coming Down Anim - LieDead] ;Coming down anim
type = ChangeAnim
triggerall = !Var(30) && Var(50) = 3	; Dead
trigger1 = anim = [5050, 5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
value = 5090
persistent = 0

[State 5050, Gravity] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, Recover Near Ground] ;Recover near ground
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = Alive
triggerall = Var(30) && Var(50) = 3	; Sentinel life > 0
triggerall = CanRecover
;trigger1 = Command = "recovery"
trigger1 = (Command = "QCD x") || (Command = "QCD y") || (Command = "QCD z")
trigger2 = (Command = "QCD a") || (Command = "QCD b") || (Command = "QCD c")
value = 5200 ;HITFALL_RECOVER

[State 5050, Recover In Mid Air]; Recover in mid air
type = Null;ChangeState
triggerall = Vel Y > -1
triggerall = Alive
triggerall = Var(30) && Var(50) = 3	; Sentinel life > 0
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 5050, Bounce]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 5070]
type = A
movetype = H
physics = N
velset = 0,0

[State 5070, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5070, PlaySnd]
type = PlaySnd
trigger1 = !(GetHitVar(animtype)) 
value = 5, 12
channel = 0
persistent = 0

[State 5070, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 1
value = 5, 13
channel = 0
persistent = 0

[State 5070, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 2
value = 5, 14
channel = 0
persistent = 0

[State 5070, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) >= 3
value = 5, 15
channel = 0
persistent = 0

[State 5070, Increment Dizzy Counter]		; For dizzy anim
type = VarAdd
trigger1 = !Time && Var(43) >= 0
var(43) = 100 + (GetHitVar(animtype) + 1) * 50

[State 5070, HitShake Anim]
type = ChangeAnim 
trigger1 = !Time
value = 5070

[State 5070, HitShake Over]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, ForceFeedBack]
type = ForceFeedback
trigger1 = !Time
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type = A
movetype = H
physics = N

[State 5071, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5071, Fall Anim]
type = ChangeAnim 
trigger1 = !Time
value = 5071

[State 5071, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5071, Acceleration] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, Hit Ground] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type = L
movetype = H
physics = N
velset = 0,0

[State 5080, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5080, PlaySnd]
type = PlaySnd
trigger1 = !(GetHitVar(animtype)) 
value = 5, 12
channel = 0
persistent = 0

[State 5080, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 1
value = 5, 13
channel = 0
persistent = 0

[State 5080, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 2
value = 5, 14
channel = 0
persistent = 0

[State 5080, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) >= 3
value = 5, 15
channel = 0
persistent = 0

[State 5080, Increment Dizzy Counter]		; For dizzy anim
type = VarAdd
trigger1 = !Time && Var(43) >= 0
var(43) = 100 + (GetHitVar(animtype) + 1) * 50

; HIT_BACK (animtype = 3) => LIGHT
; HIT_UP (animtype = 4) => MEDIUM
; HIT_DIAGUP (animtype = 5) => HARD
[State 5080, HitShake Anim] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = !Time
value = 5081 + GetHitVar(animtype) - (GetHitVar(animtype) = [3, 5]) * 3

[State 5080, HitShakeOver]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = !GetHitVar(yvel)
value = 5081 ;HITL_SLIDE

[State 5080, Hit Off Ground]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type = L
movetype = H
physics = C

[State 5081, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

; HIT_BACK (animtype = 3) => LIGHT
; HIT_UP (animtype = 4) => MEDIUM
; HIT_DIAGUP (animtype = 5) => HARD
[State 5081, Hit Recover Anim]
type = ChangeAnim
trigger1 = HitOver
trigger1 = Anim != [5084, 5086]
value = 5084 + GetHitVar(animtype) - (GetHitVar(animtype) = [3,5]) * 3

[State 5081, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 5081, HitOver]
type = VelSet
trigger1 = HitOver
x = 0

[State 5081, SysVarSet] ;Don't show hit ground frame
type = VarSet
trigger1 = !Time
sysvar(0) = 1

[State 5081, Hit LieDown]
type = ChangeState
trigger1 = Anim = [5084, 5086]
trigger1 = !AnimTime
value = 5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type = L
movetype = H
physics = N

[State 5100, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5100, 1]
type = VelSet
trigger1 = !Time
trigger1 = !GetHitVar(fall.yvel)
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = !Time

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = !Time
sysvar(1) = floor(vel y)

[State 5100, Hit Ground Bounce Anim] ;Hit ground anim
type = ChangeAnim
triggerall = (Var(30) && Var(50) = 3); Alive
trigger1 = !Time
value = 5102;5100

[State 5100, 4]
type = PosSet
trigger1 = !Time
y = 0 + 20 * (!Var(30) && Var(50) = 3)	; Dead

[State 5100, 5]
type = VelSet
trigger1 = !Time
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = !Time
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = !Time
trigger1 = !GetHitVar(fall.yvel)
value = 5110 ;HIT_LIEDOWN

[State 5100, Hit Ground Explod]
type = Explod
trigger1 = Time = 1
anim = 7060
sprpriority = -3

[State 5100, 8]
type = Null;GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, Dead] ;Hit ground
triggerall = !Var(30) && Var(50) = 3	; Dead
trigger1 = Time >= 3
type = ChangeState
value = 5110

[State 5100, Bounce Into Air]
type = ChangeState
triggerall = Var(30) && Var(50) = 3	; Alive
trigger1 = !AnimTime
trigger1 = !(Var(7) := 0)	; Reset Super Armor
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type = L
movetype = H
physics = N

[State 5101, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5101, Bounce Into Air Anim] ;Coming hit ground anim (normal)
type = Null;ChangeAnim
triggerall = Var(30) && Var(50) = 3	; Alive
trigger1 = !Time
value = 5200

[State 5101, HitFallVel]
type = HitFallVel
trigger1 = !Time

[State 5101, PosSet]
type = PosSet
trigger1 = !Time
y = 20

[State 5101, Acceleration] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5110

[State 5101, HitBy]
type = HitBy
trigger1 = 1
value = SCA

[State 5101, VelSet]
type = Null;VelSet
trigger1 = !AnimElemNo(6)
x = 0
y = 0

[State 5101, PosSet]
type = Null;PosSet
trigger1 = !AnimElemNo(6)
y = 0

[State 5101, EnvShake]
type = Null;EnvShake
trigger1 = !AnimElemTime(6)
time = 6
freq = 180
persistent = 0

; Recover from bounce
[State 5101, Recover from Bounce] ;Hit ground
triggerall = Vel Y > 0
;triggerall = Pos Y >= 0
trigger1 = Pos Y >= 0
;trigger1 = AnimElemNo(0) < 6
;trigger2 = AnimElemNo(0) >= 6
;trigger2 = !AnimTime
type = Null;ChangeState
value = 52 - (AnimElemNo(0) >= 6) * 52 + (Var(7) := 0) ; Jump Land and Reset Super Armor
ctrl = (AnimElemNo(0) >= 6)

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type = L
movetype = H
physics = N

[State 5110, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = !Time

[State 5110, Hit Ground Anim] ;Hit ground anim (from 5071)
type = ChangeAnim
triggerall = !Time
triggerall = Anim != [5110,5119] ;Not already changed anim
trigger1 = Anim = 5071
value = 5170

[State 5110, LieDown Anim] ;For hit liedown (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = Anim = [5081,5089]
trigger2 = Anim != 5071 && Anim != 5170
trigger3 = Anim = 5170 && !AnimTime
value = 5110

[State 5110, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5110, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = !SysVar(0)	; Not triggered from 5081
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, Hit Ground Explod]
type = Explod
trigger1 = !Time
anim = 7060
sprpriority = -3

[State 5110, GameMakeAnim]
type = Null;GameMakeAnim
trigger1 = !Time
trigger1 = !SysVar(0)	; Not triggered from 5081
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5110, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 5110, KO PlaySnd]
type = PlaySnd
trigger1 = !Var(30) && Var(50) = 3
trigger1 = !Time
trigger1 = !Var(39)
trigger1 = Var(39) := 1
value = 9150, 0 + (Random < 500)

[State 5110, KO] ;If just died
type = ChangeState
triggerall = !alive || (!Var(30) && Var(50) = 3)
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = IfElse(!Var(53), 9150, 5150)

[State 5110, Recovery]
type = ChangeState
triggerall = alive || (Var(30) && Var(50) = 3)
trigger1 = Command = "holdback" || Command = "holdfwd"
trigger1 = Time >= 30
value = 5202

[State 5110, SysVarSet]
type = VarSet
trigger1 = SysVar(0)
trigger1 = !Time
sysvar(0) = 0

[State 5110, Friction] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, ForceFeedBack]
type = ForceFeedback
trigger1 = alive && (Var(30) && Var(50) = 3)
trigger1 = !Time
time = 8
ampl = 240
waveform = sine

[State 5110, ForceFeedBack]
type = ForceFeedback
trigger1 = !Alive || (!Var(30) && Var(50) = 3)
trigger1 = !Time
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type = L
movetype = I
physics = N

[State 5120, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5120, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 10, 0

[State 5120, Hit GetUp Anim] ;Get up anim
type = ChangeAnim
trigger1 = !Time
value = 5120

[State 5120, VelSet]
type = VelSet
trigger1 = !Time
x = 0

[State 5120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, HitFallSet]
type = HitFallSet
trigger1 = !AnimTime
value = 1

[State 5120, NotHitBy] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = !AnimTime
value = , NT,ST,HT
time = 12

[State 5120, NotHitBy] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = !AnimTime
value2 = SCA
time = 3

[State 5120, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger1 = !(Var(7) := 0)	; Reset Super Armor
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type = A
movetype = H
physics = N

[State 5200, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = !AnimTime
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
trigger1 = !(Var(7) := 0)
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type = S
movetype = H
physics = S

[State 5201, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 5200
value = 5200

[State 5201, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 10, 0

[State 5201, Reset Super Armor]
type = VarSet
trigger1 = !Time
var(7) = 0

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = !Time
trigger1 = p2dist X < -5

[State 5201, VelSet]
type = VelSet
trigger1 = Time = 0
x = IfElse(Vel X > 0, .15, -.15)
;y = -3.5

[State 5201, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, ChangeState]	; Adjusted for Sentinel
type = ChangeState
trigger1 = AnimElemTime(5) >= 4
value = 52
ctrl = 1

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, Hit Ground Explod]
type = Explod
trigger1 = Time = 1
anim = 7060
sprpriority = -3

[State 5201, GameMakeAnim]
type = Null;GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground) - Escape
[Statedef 5202]
type = L
movetype = I
physics = N

[State 5202, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 5202
value = 5202

[State 5202, Reset Super Armor]
type = VarSet
trigger1 = !Time
var(7) = 0

[State 5202, VelSet]
type = VelSet
trigger1 = !Time
x = -8 + (Command = "holdfwd") * 16
y = 0

[State 5202, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5202, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, NA, NP, SA, SP, HA, HP
time = 1

[State 5202, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 5202, Hit Ground Explod]
type = Explod
trigger1 = Time = 1
anim = 7060
sprpriority = -3

[State 5202, GameMakeAnim]
type = Null;GameMakeAnim
trigger1 = Time = 1
value = 60
pos = 0, 0
under = 1

[State 5202, ChangeState]
type = ChangeState
trigger1 = Time = 30
value = 5201

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0

[State 5210, Super Armor]
type = ChangeState
trigger1 = Var(50) = [0, 1]
value = 15000

[State 5210, PosFreeze]
type = PosFreeze
trigger1 = !Time
value = 4

[State 5210, Turn] ;Turn if not facing opponent
type = Turn
trigger1 = !Time
trigger1 = p2dist X < -20

[State 5210, VelMul] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, VelAdd]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, VelMul]
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, VelAdd]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, VelAdd]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, Go Up] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, Go Down] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, Go Fwd] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, Go Back] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 15

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, Gravity]
type = VelAdd	;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, Air]
type = ChangeState
trigger1 = !AnimTime
trigger1 = Pos Y < 0
trigger1 = !(Var(7) := 0)	; Reset Super Armor
value = 51

[State 5210, Land] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger1 = !(Var(7) := 0)	; Reset Super Armor
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; Dizzy Up
[Statedef 5250]
movetype = H
velset = -3, -16
ctrl = 0

[State 5250, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5250, Disable Dizzy Counter]
type = VarSet
trigger1 = Var(43) > 0
var(43) = -1

[State 5250, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = Vel Y < 0
trigger1 = Anim != 5250
value = 5250

[State 5250, ChangeAnim]
type = ChangeAnim
trigger1 = Vel Y >= 0
trigger1 = Anim = 5250
trigger1 = Anim != 5260
value = 5260

[State 5250, Gravity]
type = VelAdd
trigger1 = Anim != 5200
y = 0.68

[State 5250, Hit Ground Explod]
type = Explod
trigger1 = Vel Y >= 0
trigger1 = Pos Y > -Vel Y
anim = 7060
sprpriority = -3
persistent = 0

[State 5250, GameMakeAnim]
type = Null;GameMakeAnim
trigger1 = Vel Y >= 0
trigger1 = Pos Y > -Vel Y
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14
persistent = 0

[State 5250, PlaySnd]
type = PlaySnd
trigger1 = Vel Y >= 0
trigger1 = Pos Y > -Vel Y
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)
persistent = 0

[State 5250, ForceFeedback]
type = ForceFeedback
trigger1 = Vel Y >= 0
trigger1 = Pos Y > -Vel Y
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20
persistent = 0

[State 5250, ChangeAnim]
type = ChangeAnim
trigger1 = Vel Y >= 0
trigger1 = Pos Y > -Vel Y
trigger1 = Anim != 5200
value = 5200

[State 5250, VelSet]
type = VelSet
trigger1 = Anim = 5200
x = 0
y = 0

[State 5250, PosSet]
type = PosSet
trigger1 = Anim = 5200
y = 0

[State 5250, SelfState]
type = SelfState
trigger1 = Anim = 5200
trigger1 = AnimElemNo(0) = 8
value = 5300

;---------------------------------------------------------------------------
; Dizzy
[Statedef 5300]
movetype = I
velset = 0, 0
ctrl = 0

[State 5300, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 5300
value = 5300

[State 5300, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 5000 + !(Random % 2), 0

[State 5300, Turn SuperArmor Off]
type = VarSet
trigger1 = 1
var(7) = 600

[State 5300, Explod]
type = Explod
trigger1 = !(Time % 4)
trigger1 = NumExplod(5300) < 4
anim = 5350 + (Random % 2)
id = 5300
pos = 0, -130
facing = 1 - !(Random % 2) * 2
vfacing = 1 - !(Random % 2) * 2
bindtime = -1
random = 65, 20
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 2 - !(Random % 2) * 4
ownpal = 1
removeongethit = 1

[State 5300, State]
type = SelfState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Continue?
[Statedef 5500]
type = S
ctrl = 0
velset = 0,0

[State 5500, Onslaught] ;Use continue animation if available
type = ChangeAnim
trigger1 = Var(50) = [0, 2]
trigger1 = !Time
value = 10000

[State 5500, Sentinel] ;Use continue animation if available
type = ChangeAnim
trigger1 = Var(50) = 3
trigger1 = !Time
value = 5300

;---------------------------------------------------------------------------
; Lose - Must be in 5150 to end the round
[Statedef 5150]
movetype = H
type = L
velset = 0, 0
ctrl = 0

[State 5150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;======================
; Onslaught (1st Form)
;======================

[State 5150, White Cover]
type = Helper
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = !Var(50)
trigger1 = !NumHelper(15155)
name = "White Cover"
id = 15155
pos = 0, -Ceil(ScreenPos Y)
postype = Left
stateno = 15155
ownpal = 1

[State 5150, ChangeAnim]
type = ChangeAnim
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = !Var(50)
trigger1 = Anim != 15150
value = 15150

[State 5150, PlaySnd]
type = PlaySnd
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = !Var(50)
trigger1 = !Time
value = 15150, 0

[State 5150, Invisible]
type = AssertSpecial
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = !Var(50)
trigger1 = Time > 110		; Triggers when the maximum AllPalFx amplification is reached
flag = Invisible

[State 5150, Round Lost]
type = VarSet
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = !Var(50)
trigger1 = !Time
var(51) = 1

;======================
; Onslaught (2nd Form)
;======================

[State 5150, White Cover]
type = Helper
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 1
trigger1 = !NumHelper(25155)
name = "White Cover"
id = 25155
pos = 0, -Ceil(ScreenPos Y)
postype = Left
stateno = 25155
ownpal = 1

[State 5150, Freeze]
type = ChangeAnim
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
trigger1 = Var(50) = 1
value = IfElse(Anim = 5110, 20500, Anim)
elem = AnimElemNo(0)

[State 5150, Remove All Body Parts]
type = VarSet
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 1
trigger1 = Time > 90
var(50) = 2

[State 5150, PosSet - Floor Level]
type = PosSet
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
trigger1 = Var(50) = 2
y = 0
persistent = 0

[State 5150, Xavier]
type = ChangeAnim
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 2
trigger1 = Anim != 25150
value = 25150

[State 5150, SprPriority]
type = SprPriority
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
trigger1 = Var(50) = 2
value = -3
persistent = 0

[State 5150, Orb Generator]
type = Helper
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 2
trigger1 = !NumHelper(25156)
name = "Orb Generator"
id = 25156
stateno = 25156
ownpal = 1
persistent = 0

[State 5150, Round Lost]
type = VarSet
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 1
trigger1 = !Time
var(51) = 3

;=======================================
; Sentinel
;=======================================

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 3
triggerall = Var(53)
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 3
triggerall = Var(53)
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 3
triggerall = Var(53)
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 3
triggerall = Var(53)
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 3
trigger1 = Var(53)
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
triggerall = Name = "Onslaught" && AuthorName = "XsLaught"
triggerall = Var(50) = 3
triggerall = Var(53)
trigger1 = Vel x < .05
persistent = 0
x = 0

;=======================================
; Sentinel - P2 Custom State - For Win B
;=======================================

[State 5150, PosSet]
type = PosSet
triggerall = (Name != "Onslaught")
trigger1 = !Time
y = 0

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = (Name != "Onslaught")
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
triggerall = (Name != "Onslaught")
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
triggerall = (Name != "Onslaught")
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
triggerall = (Name != "Onslaught")
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, VelMul] ;Friction
type = VelMul
trigger1 = (Name != "Onslaught")
;trigger1 = 1
x = 0.85

[State 5150, VelSet] ;Friction
type = VelSet
triggerall = (Name != "Onslaught")
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, ChangeState]
type = ChangeState
triggerall = (Name != "Onslaught") || (Name = "Onslaught" && AuthorName = "XsLaught" && Var(50) = 3 && Var(53))
trigger1 = NumEnemy
trigger1 = enemyNear, Name = "Onslaught" && enemyNear, AuthorName = "XsLaught"
trigger1 = enemyNear, Anim = 184
trigger1 = enemyNear, AnimElemTime(5) = 29
value = 187

;---------------------------------------------------------------------------
; Super Armor
[Statedef 15000]
movetype = H
facep2 = 0
ctrl = 0
movehitpersist = 1

[State 15000, SprPriority]
type = SprPriority
trigger1 = !Var(50)
value = -2

[State 15000, NoKo]
type = AssertSpecial
trigger1 = FVar(31) = 1
flag = NoKo

[State 15000, Resurrection]
type = ChangeState
trigger1 = !Var(50)
trigger1 = FVar(31) = 1
trigger1 = !Time
trigger1 = Life <= Ceil(GetHitVar(damage) * 100/Const(data.defence) * FVar(11))
value = 15150
ignorehitpause = 1

;[State 15000, Onslaught (1st Form) - Damage]
;type = LifeAdd
;trigger1 = !Var(50)
;trigger1 = !Time
;value = - Floor(GetHitVar(damage) * FVar(11))
;kill = Var(50)	; Remove to remove resurrection

[State 15000, Damage]
type = VarAdd
trigger1 = !Time
trigger1 = 1 - ((Life <= Ceil(GetHitVar(damage) * 100/Const(data.defence) * FVar(11))) * (FVar(31) = 1))
var(21) = - Ceil(GetHitVar(damage) * 100/Const(data.defence) * FVar(11))

[State 15000, Forcefeedback Light]
type = ForceFeedback
trigger1 = !GetHitVar(animtype)
trigger1 = !Time
time = 6
waveform = square

[State 15000, Forcefeedback Medium]
type = ForceFeedback
trigger1 = GetHitVar(animtype) = 1
trigger1 = !Time
time = 8
waveform = sinesquare
ampl = 110, -1, -.3

[State 15000, Forcefeedback Strong]
type = ForceFeedback
trigger1 = GetHitVar(animtype) = [2, 5]
trigger1 = !Time
time = 15
waveform = sinesquare
ampl = 140

[State 15000, HitCount]
type = VarAdd
trigger1 = MoveContact = 1
var(13) = 1

[State 15000, Increment GetHit Counter]		; For hurt anim
type = VarAdd
trigger1 = !Time
trigger1 = !Var(50)
var(7) = 100 + (GetHitVar(animtype) + 1) * 50

[State 15000, Lose]
type = ChangeState
trigger1 = !Alive
value = 5150

[State 15000, ScreenBound]
type = ScreenBound
trigger1 = !Var(50)
trigger1 = Var(5) = [13002, 13004]	; Magnetic Shockwave
value = 0

[State 15000, Onslaught (1st Form) Hurt State]
type = ChangeState
trigger1 = !Var(50)
trigger1 = Var(7) >= 1000 + Var(28)
value = 15001

[State 15000, Onslaught (1st Form) ChangeState]
type = ChangeState
trigger1 = !Var(50)
trigger1 = HitShakeOver
value = Var(5)
ctrl = !Var(5)

[State 15000, PalFxCounter Set]
type = VarSet
trigger1 = Var(50) = 1
trigger1 = !Var(14)
var(14) = 3

[State 15000, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 15000, ScreenBound]
type = ScreenBound
trigger1 = Var(50) = 1
trigger1 = Var(5) = [21100, 21102]	; Dash Punch
value = 0

[State 15000, Pause]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = AnimElemNo(-1) - 1 * (!AnimTime && AnimElemNo(0) > 2)	; Helps prevent looping

[State 15000, Onslaught (2nd Form) ChangeState]
type = ChangeState
trigger1 = Var(50) = 1
trigger1 = HitShakeOver
value = Var(5)
ctrl = !Var(5)

;---------------------------------------------------------------------------
; Super Armor - Onslaught (1st Form) - Hurt
[Statedef 15001]
movetype = H
facep2 = 0
velset = 0, 0
ctrl = 0

[State 15001, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 15001, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [15000, 15020]
value = 15000 + (GetHitVar(animtype) = 1) * 10 + (GetHitVar(animtype) = [2, 5]) * 20

[State 15001, Freeze]
type = ChangeAnim
trigger1 = !HitShakeOver
value = Anim
elem = AnimElemNo(0) - 1 - 1 * (!AnimTime && AnimElemNo(0) > 2)	; Helps prevent looping	; When hit, 1 tick is taken off

[State 15001, Shake]
type = OffSet
trigger1 = AnimTime
trigger1 = !(Time % 2)
x = Cos(Time * Pi / 2)
y = Cos(Time * Pi / 2)

[State 15001, Reset OffSet]
type = OffSet
trigger1 = !AnimTime
x = 0
y = 0

[State 15001, Increase GetHit Threshold]
type = VarSet
trigger1 = !AnimTime
var(28) = Ceil(Var(7) / 2)

[State 15001, Reset GetHit Counter]
type = VarSet
trigger1 = !AnimTime
var(7) = 0

[State 15001, Lose]
type = ChangeState
trigger1 = !Alive
value = 5150

[State 15001, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Super Armor - Onslaught (2nd Form) - PosFreeze when Head is hit
[Statedef 15002]
movetype = H
facep2 = 0
ctrl = 0
movehitpersist = 1

[State 15002, HitCount]
type = VarAdd
trigger1 = MoveContact = 1
var(13) = 1

[State 15002, Freeze]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = AnimElemNo(0) - 1 - 1 * (!AnimTime && AnimElemNo(0) > 2)	; Helps prevent looping

[State 15002, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 15002, ScreenBound]
type = ScreenBound
trigger1 = Var(5) = [21100, 21102]	; Dash Punch
value = 0

[State 15002, Onslaught (2nd Form) ChangeState]
type = ChangeState
trigger1 = Helper(20300), HitShakeOver && Helper(20300), StateNo != 20311
trigger2 = !Helper(20300), AnimTime && Helper(20300), StateNo = 20311
trigger2 = Var(5) = 21300 || Var(5) = [23000, 23100]
trigger2 = !(Var(5) := 0)
trigger2 = !(Var(20) := 0)
value = Var(5)
ctrl = !Var(5)

;---------------------------------------------------------------------------
; Hyper - Helper
[Statedef 19000]
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 19000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 19000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = Invisible

[State 19000, Hyper Portrait]
type = Explod
trigger1 = !Time
anim = 9000 + (!(Root, Var(50)) * 10000) + ((Root, Var(50) = 1) * 20000)
id = 19000
postype = back
sprpriority = -100 + 90 * (Root, Var(50) = 1)
supermovetime = -1
removetime = 45
pos = 0,0
bindtime = -1
scale = 1.38, 1.38;Const(size.xscale), Const(size.yscale)

[State 19000, Modify Hyper Portrait]
type = ModifyExplod
trigger1 = NumExplod(19000)
trigger1 = Time = [0, 10]
scale = 1.38 - 0.038 * Time, 1.38 - 0.038 * Time

[State 19000, Modify Hyper Portrait]
type = ModifyExplod
trigger1 = NumExplod(19000)
trigger1 = Time = 11
scale = 1, 1

[State 19000, HyperBg]
type = Explod
trigger1 = Time = 15 + 23
anim = 7320
pos = 0, 0
id = 7320
sprpriority = -101
supermovetime = -1
postype = Left
bindtime = -1
removetime = -1
scale = Const(size.xscale), Const(size.yscale)
ownpal = 1

[State 19000, Hyper Explode]
type = Explod
trigger1 = Time = 15
anim = 7300
ownpal = 1
sprpriority = 5
supermovetime = 45
ontop = 1
scale = Const(size.xscale), Const(size.yscale)

[State 19000, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = 9000, 0

[State 19000, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = 9000, 1
channel = 2

[State 19000, RemoveExplod]
type = RemoveExplod
triggerall = Time > 30
triggerall = Root, StateNo != 9000
triggerall = Root, StateNo != 15000
triggerall = Root, StateNo != 15002
triggerall = Root, Time
trigger1 = Root, StateNo != [3000, 3999]
trigger1 = Root, StateNo != [13000, 13999]
trigger1 = Root, StateNo != [23000, 23999]

[State 19000, StopSnd]
type = StopSnd
triggerall = Time > 30
triggerall = Root, StateNo != 9000
triggerall = Root, StateNo != 15000
triggerall = Root, StateNo != 15002
triggerall = Root, Time
trigger1 = Root, StateNo != [3000, 3999]
trigger1 = Root, StateNo != [13000, 13999]
trigger1 = Root, StateNo != [23000, 23999]
channel = 2

[State 19000, DestroySelf]
type = DestroySelf
triggerall = Time > 30
triggerall = Root, StateNo != 9000
triggerall = Root, StateNo != 15000
triggerall = Root, StateNo != 15002
triggerall = Root, Time
trigger1 = Root, StateNo != [3000, 3999]
trigger1 = Root, StateNo != [13000, 13999]
trigger1 = Root, StateNo != [23000, 23999]

[State 19000, Hyper Combo Finish]
type = ChangeState
trigger1 = Root, WinKO && RoundState = 3
value = 19001

;---------------------------------------------------------------------------
; Hyper - Helper - Hyper Combo Finish
[Statedef 19001]
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 19001, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 19001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = Invisible

[State 19001, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
id = 7320

[State 19001, HyperComboFinishBg]
type = Explod
trigger1 = !Time
anim = 7330
pos = 0, 0
id = 7330
sprpriority = -101
supermovetime = -1
postype = Left
bindtime = -1
removetime = -2
ownpal = 1
scale = Const(size.xscale), Const(size.yscale)

[State 19001, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 9000, 10

[State 19001, DestroySelf]
type = DestroySelf
trigger1 = !NumExplod(7330)

;---------------------------------------------------------------------------
; MVC1 - Super Portrait - Helper
[Statedef 19010]
anim = 19000
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 19000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 19000, PosSet]
type = PosSet
trigger1 = !Time
x = -333
y = -(Floor(ScreenPos Y)) + 8

[State 19000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = NoBarDisplay

[State 19000, BGPalFx]
type = BGPalFx
trigger1 = !Time
time = 45
sinadd = 256, 256, 256, 180

[State 19000, PosAdd 1]
type = PosAdd
trigger1 = Time = 3
x = 21

[State 19000, PosAdd 2]
type = PosAdd
trigger1 = Time = 4
x = 28; 49

[State 19000, PosAdd 3]
type = PosAdd
trigger1 = Time = 5
x = 26; 75

[State 19000, PosAdd 4]
type = PosAdd
trigger1 = Time = 6
x = 22; 97

[State 19000, PosAdd 5]
type = PosAdd
trigger1 = Time = 7
x = 19; 116

[State 19000, PosAdd 6]
type = PosAdd
trigger1 = Time = 8
x = 16; 132

[State 19000, PosAdd 7]
type = PosAdd
trigger1 = Time = 9
x = 12; 144

[State 19000, PosAdd 8]
type = PosAdd
trigger1 = Time = 10
x = 10; 154 - 558

[State 19000, PosAdd 9]
type = PosAdd
trigger1 = Time = 11
x = 6; 160

[State 19000, PosAdd 10]
type = PosAdd
trigger1 = Time = 12
x = 2; 162

[State 19000, PosAdd 11]
type = PosAdd
trigger1 = Time = 13; 163
trigger2 = Time = 17; 565 - 164
trigger3 = Time = 21; 569 - 165
trigger4 = Time = 25; 573 - 166
trigger5 = Time = 29; 577 - 167
trigger6 = Time = 33; 581 - 168
trigger7 = Time = 37; 585 - 169
trigger8 = Time = 41; 589 - 170
trigger9 = Time = 45; (alpha effect) - 593
x = 1

[State 19000, Trans]
type = Null;Trans
trigger1 = Time >= 30
trans = addalpha
alpha = 256, 128 + (Time - 30) * 8

[State 19000, Remove]
Type = DestroySelf
trigger1 = Time = 46