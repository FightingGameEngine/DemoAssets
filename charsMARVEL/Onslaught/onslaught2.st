;---------------------------------------------------------------------------
; Floor - New York City Skyline
[Statedef 20100]
anim = 20100
ctrl = 0
sprpriority = -48

[State 20100, PosSet]	; Fixes issue if enemy appears above screen
type = PosSet
trigger1 = !Time
y = 24		; 240 - Stage's Z-offset

[State 20100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20100, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20100, Invisible]
type = AssertSpecial
trigger1 = NumHelper(19000)
flag = Invisible

[State 20100, Remove]
type = Null;DestroySelf
trigger1 = !Root, NumHelper(20300)

;---------------------------------------------------------------------------
; Floor - Parallax Reference Point
[Statedef 20101]
ctrl = 0

[State 20101, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = Invisible

[State 20101, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

;---------------------------------------------------------------------------
; Floor - XMvsSF - Apocalypse Now!
[Statedef 20102]
anim = 20102
ctrl = 0
sprpriority = -48

[State 20102, PosSet]	; Fixes issue if enemy appears above screen
type = PosSet
trigger1 = !Time
y = -210		; 240 - Stage's Z-offset

[State 20102, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20102, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20102, Invisible]
type = AssertSpecial
trigger1 = NumHelper(19000)
flag = Invisible

[State 20102, Remove]
type = Null;DestroySelf
trigger1 = !Root, NumHelper(20300)

;---------------------------------------------------------------------------
; Floor - MSHvsSF - Apocalypse Now!
[Statedef 20104]
anim = 20104
ctrl = 0
sprpriority = -48

[State 20104, PosSet]	; Fixes issue if enemy appears above screen
type = PosSet
trigger1 = !Time
y = 23		; 240 - Stage's Z-offset

;[State 20104, Parallax Helper]
;type = Helper
;trigger1 = !Time && !NumHelper(20101)
;name = "Parallax Reference Point"
;id = 20101
;stateno = 20101

;[State 20104, Delta]
;type = PosSet
;trigger1 = NumHelper(20101)
;x = (Helper(20101), ScreenPos X - 160 - 70 + 24) * 0.91	; Delta
; 160 = 320/2 - Screen size
; 70 = p1start x
; Stage's 24 = ScreenLeft

[State 20104, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20104, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20104, Invisible]
type = AssertSpecial
trigger1 = NumHelper(19000)
flag = Invisible

[State 20104, Remove]
type = Null;DestroySelf
trigger1 = !Root, NumHelper(20300)

;---------------------------------------------------------------------------
; Win Pose
[Statedef 20180]
velset = IfElse(ScreenPos X < 160, 6, -6) * Facing, IfElse(Pos Y > -10, -5, 5)	; Move to the center of the screen
ctrl = 0

[State 20180, Friction - VelMul]
Type = VelMul
trigger1 = ScreenPos X = [150, 170]	; At center of the screen
trigger2 = Vel X != -6 && Vel X != 6	; At center of the screen condition has been met
x = Const(movement.stand.friction)

[State 20180, VelSet Y]
Type = VelSet
trigger1 = Pos Y = [-10, 0]
y = 0

[State 20180, ChangeState]
type = ChangeState
trigger1 = Vel X != -6 && Vel X != 6	; At center of the screen condition has been met
trigger1 = Pos Y = [-10, 0]
value = 20181

;---------------------------------------------------------------------------
; Win Pose
[Statedef 20181]
velset = Vel X, 0		; Must keep Vel X to have a friction like effect when state is changed to 0
ctrl = 0

[State 20181, ChangeState]
type = ChangeState
trigger1 = Time = 1		; Time has to be atleast 1 tick so that the head can detect root in this state
value = 0			; Changed to State 0 for floating

;---------------------------------------------------------------------------
; Intro
[Statedef 20190]
anim = 20500
velset = 0, 0
ctrl = 0
sprpriority = -50

[State 20190, Intro Done Before]
type = ChangeState
trigger1 = !Time
trigger1 = Var(51) >= 2
value = 0

[State 20190, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = TimerFreeze
flag3 = NoMusic

[State 20190, StopBgMusic]
type = StopSnd
trigger1 = FVar(30) = 1
trigger1 = !Time
trigger1 = (FVar(29) := 0) + 1
channel = 5

[State 20190, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay

[State 20190, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20191, Rock Generator]
type = Helper
trigger1 = Time = 150
trigger1 = !NumHelper(20191)
name = "Rock Generator"
id = 20191
stateno = 20191
ownpal = 1

[State 20190, Underground - PosSet]
type = PosSet
trigger1 = !Time
y = 300

[State 20190, Dark Screen]
type = AllPalFx
trigger1 = Time < 150
time = 1
add = -50, -50, -50

[State 20190, Dark Screen - Fade Back]
type = AllPalFx
trigger1 = Time = 150
time = 20
add = -50, -50, -50
sinadd = 50, 50, 50, 80

[State 20190, Explod]
type = Explod
trigger1 = !Time
anim = 20197
id = 20197
pos = 0,30
postype = Left
bindtime = -1
removetime = 150
ontop = 1
ownpal = 1

[State 20190, Go Up - VelSet]
type = VelSet
trigger1 = Time >= 150
y = -1

[State 20190, PlaySnd]
type = PlaySnd
trigger1 = Time = 350
value = 20190, 0

[State 20190, LifeSet]
type = LifeAdd
trigger1 = Time = 350
value = LifeMax
absolute = 1

[State 20190, VelSet]
type = VelSet
trigger1 = !Pos Y
y = 0

[State 20190, Intro Done]
type = VarSet
trigger1 = 1
var(51) = 2

[State 20190, ChangeState]
type = ChangeState
trigger1 = Time = 450
trigger2 = !Pos Y
value = 0
ctrl = (RoundState = 2)	; Resurrection

;---------------------------------------------------------------------------
; Rock - Rock Generator
[Statedef 20191]
anim = 20190
velset = 0, 0
ctrl = 0

[State 20191, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20191, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 20191, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 20191, 0

[State 20191, White Flash]
type = Explod
triggerall = Time >= 20
triggerall = Random < 220
trigger1 = !(Time % 2) && Random < 200
trigger2 = !(Time % 7)
trigger3 = !(Time % 9)
trigger4 = !(Time % 17)
trigger5 = !(Time % 33)
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
scale = Root, Const(size.xscale), Root, Const(size.yscale)
ontop = 1

[State 20191, EnvShake]
type = EnvShake
trigger1 = !(Time % 4)	;!(Time % 2) - Accurate to ingame but doesn't look right in MUGEN
time = 8		; time = 4 - Accurate to ingame but doesn't look right in MUGEN

[State 20191, Rocks]
type = Helper
;trigger1 = !(Time % 5)
trigger1 = Random < 333
name = "Rock"
id = 20193
postype = back
stateno = 20193

[State 20191, Remove]
type = ChangeState
trigger1 = Time = 300 - 150 * (Var(51) = 2)
value = 20192

;---------------------------------------------------------------------------
; Rock - Rock Generator - Remove
; Purpose is due to an engine bug where the child must be destroyed before the parent
[Statedef 20192]
ctrl = 0

[State 20192, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20192, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 20192, DestroySelf]
type = DestroySelf
trigger1 = !NumHelper(20193)

;---------------------------------------------------------------------------
; Rock - Rocks
[Statedef 20193]
anim = 20190
velset = 0, 0
ctrl = 0
sprpriority = -49

[State 20193, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20193, Rock Type - VarRandom]
type = VarRandom
trigger1 = !Time
v = 0
range = 0, 6

[State 20193, Rock Type - Change Anim]
type = ChangeAnim
trigger1 = !Time
value = 20190 + Var(0)

[State 20193, Pos X Random]
type = VarRandom
trigger1 = !Time
v = 1
range = -100, 100

[State 20193, PosSet]
type = PosSet
trigger1 = !Time
x = Var(1)
y = 100

[State 20193, Vel Y Random]
type = VarRandom
trigger1 = !Time
v = 2
range = -20, -15

[State 20193, Vel X Random]
type = VarRandom
trigger1 = !Time
V = 3
range = 2, 5

[State 20193, Vel X Random - Left or Right]
type = VarSet
trigger1 = !Time
var(3) = Var(3) * IfElse(Random < 500, 1, -1)

[State 20193, VelSet]
type = VelSet
trigger1 = !Time
x = Var(3)
y = Var(2)

[State 20193, Gravity]
type = VelAdd
trigger1 = 1
y = 0.4

[State 20193, SprPriority]
type = SprPriority
trigger1 = Vel Y > 0
value = 5

[State 20193, Remove]
type = DestroySelf
trigger1 = Pos Y > 100
trigger2 = FrontEdgeDist < -50
trigger3 = BackEdgeDist < -50

;---------------------------------------------------------------------------
; Body
[Statedef 20200]
anim = 20200
ctrl = 0
sprpriority = -53

[State 20200, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
facing = 1
pos = 0, 0

[State 20200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20200, Remove]
type = DestroySelf
trigger1 = !Root, NumHelper(20300)

;---------------------------------------------------------------------------
; Trapezius
[Statedef 20250]
anim = 20250
ctrl = 0
sprpriority = -52

[State 20250, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1
facing = 1
pos = 0, 0

[State 20250, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20250, Remove]
type = DestroySelf
trigger1 = !Root, NumHelper(20300)

[State 20250, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 20250 + (Parent, StateNo = [20311, 20312])	; Hurt

[State 20250, Lose]
type = ChangeState
trigger1 = !(Root, Alive) || Lose
value = 20260

;---------------------------------------------------------------------------
; Trapezius - Lose
[Statedef 20260]
ctrl = 0

[State 20260, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20260, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20251
value = 20251

[State 20260, Remove]
type = DestroySelf
trigger1 = !Root, NumHelper(20300)

;---------------------------------------------------------------------------
; Head
[Statedef 20300]
ctrl = 0
sprpriority = -51

[State 20300, Trapezius]			; Helpers called 1st have sprpriority over helpers called after
type = Helper
trigger1 = !NumHelper(20250)
name = "Trapezius"
id = 20250
stateno = 20250
ownpal = 0

[State 20300, Body]
type = Helper
trigger1 = !NumHelper(20200)
name = "Body"
id = 20200
stateno = 20200
ownpal = 1

[State 20300, BindToParent]
type = BindToparent
trigger1 = 1
time = -1
facing = 1
pos = 6, -102

[State 20300, NotHitBy]
type = NotHitBy
trigger1 = Parent, StateNo = 20190
value = SCA
time = 1 - 2 * (!(Root, Alive) || Lose || Win)

[State 20300, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20300, HitOverride]
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 20310

[State 20300, Face Up Forward 2]
type = ChangeAnim
;trigger1 = P2Dist X >= 0
;trigger1 = P2Dist Y < -70
trigger1 = (enemyNear, Pos X - Pos X) * Facing >= 0
trigger1 = enemyNear, Pos Y - Pos Y < -70
value = 20300

[State 20300, Face Up Forward]
type = ChangeAnim
;trigger1 = P2Dist X >= 0
;trigger1 = P2Dist Y = [-70, -10]
trigger1 = (enemyNear, Pos X - Pos X) * Facing >= 0
trigger1 = enemyNear, Pos Y - Pos Y  = [-70, -10]
value = 20310

[State 20300, Face Down Forward]
type = ChangeAnim
;trigger1 = P2Dist X = [40, 120]
;trigger1 = P2Dist Y >= -10
trigger1 = (enemyNear, Pos X - Pos X) * Facing = [40, 120]
trigger1 = enemyNear, Pos Y - Pos Y >= -10
value = 20330

[State 20300, Face Down]
type = ChangeAnim
;trigger1 = P2Dist X = [-40, 40]
;trigger1 = P2Dist Y >= -10
trigger1 = (enemyNear, Pos X - Pos X) * Facing = [-40, 40]
trigger1 = enemyNear, Pos Y - Pos Y >= -10
value = 20340

[State 20300, Face Down Backward]
type = ChangeAnim
;trigger1 = P2Dist X = [-120, -40]
;trigger1 = P2Dist Y >= -10
trigger1 = (enemyNear, Pos X - Pos X) * Facing = [-120, -40]
trigger1 = enemyNear, Pos Y - Pos Y >= -10
value = 20350

[State 20300, Face Backward]
type = ChangeAnim
;trigger1 = P2Dist X <= -120
;trigger1 = P2Dist Y >= -10
trigger1 = (enemyNear, Pos X - Pos X) * Facing <= -120
trigger1 = enemyNear, Pos Y - Pos Y >= -10
value = 20360

[State 20300, Face Up Backward]
type = ChangeAnim
;trigger1 = P2Dist X < 0
;trigger1 = P2Dist Y = [-70, -10]
trigger1 = (enemyNear, Pos X - Pos X) * Facing < 0
trigger1 = enemyNear, Pos Y - Pos Y = [-70, -10]
value = 20370

[State 20300, Face Up Backward 2]
type = ChangeAnim
;trigger1 = P2Dist X < 0
;trigger1 = P2Dist Y < -70
trigger1 = (enemyNear, Pos X - Pos X) * Facing < 0
trigger1 = enemyNear, Pos Y - Pos Y < -70
value = 20380

[State 20300, Face Forward]
type = ChangeAnim
;trigger1 = P2Dist X >= 120
;trigger1 = P2Dist Y >= -10
trigger1 = (enemyNear, Pos X - Pos X) * Facing >= 120
trigger1 = enemyNear, Pos Y - Pos Y >= -10
trigger2 = RoundState < 2
value = 20320

[State 20300, Lose]
type = ChangeState
trigger1 = !(Root, Alive) || Lose
value = 20312

[State 20300, Win]
type = ChangeState
trigger1 = Parent, StateNo = 20181
value = 20395

[State 20300, Rensha Beam]
type = ChangeState
trigger1 = Parent, StateNo = 21300
trigger1 = Parent, Var(20) = 1
value = 20400

[State 20300, 3 Rensha Beam]
type = ChangeState
trigger1 = Parent, StateNo = 23000
trigger1 = Parent, Var(20) = 1
value = 20450

[State 20300, 5 Rensha Beam]
type = ChangeState
trigger1 = Parent, StateNo = 23100
trigger1 = Parent, Var(20) = 1
value = 20470

;---------------------------------------------------------------------------
; Head - Hit
[Statedef 20310]
movetype = H
ctrl = 0
sprpriority = -51

[State 20310, Parent Life Add]
type = ParentVarAdd
trigger1 = !Time
var(21) = - Ceil(GetHitVar(damage) * 100/(Parent, Const(data.defence)) * Parent, FVar(11))

[State 20310, Forcefeedback Light]
type = ForceFeedback
trigger1 = !GetHitVar(animtype)
persistent = 0
time = 6
waveform = square

[State 20310, Forcefeedback Medium]
type = ForceFeedback
trigger1 = GetHitVar(animtype) = 1
persistent = 0
time = 8
waveform = sinesquare
ampl = 110, -1, -.3

[State 20310, Forcefeedback Strong]
type = ForceFeedback
trigger1 = GetHitVar(animtype) = [2, 5]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 20310, Increment GetHit Counter]		; For hurt anim
type = ParentVarAdd
trigger1 = 1
var(7) = 100 + (GetHitVar(animtype) + 1) * 50
persistent = 0

[State 20310, PalFxCounter Set]
type = VarSet
trigger1 = !Var(8)
var(8) = 3

[State 20310, Hurt State]
type = ChangeState
trigger1 = Parent, Var(7) >= 1000 + Parent, Var(28)
trigger2 = !(Root, Alive) || Lose
value = 20311

[State 20310, Freeze]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = AnimElemNo(-1) - 1 * (!AnimTime && AnimElemNo(0) > 2)	; Helps prevent looping

[State 20310, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
trigger2 = !(Root, Alive) || Lose
value = Var(5)

;---------------------------------------------------------------------------
; Head - Hurt
[Statedef 20311]
movetype = H
velset = 0, 0
ctrl = 0

[State 20311, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20311, PlaySnd]
type = PlaySnd
trigger1 = Anim != 20390 && !Time
value = 25000, 0 + (Random % 2)
channel = 0
volume = 255

[State 20311, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20390
value = 20390

[State 20311, Increase GetHit Threshold]
type = ParentVarSet
trigger1 = !AnimTime
var(28) = Ceil(Parent, Var(7) / 2)

[State 20311, Reset GetHit Counter]
type = ParentVarSet
trigger1 = !AnimTime
var(7) = 0

[State 20311, Lose]
type = ChangeState
trigger1 = !(Root, Alive) || Lose
value = 20312

[State 20311, ChangeState]
type = ChangeState
trigger1 = !AnimTime	; 41
value = 20300

;---------------------------------------------------------------------------
; Head - Lose
[Statedef 20312]
ctrl = 0

[State 20312, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20312, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 25150, 0
abspan = 0

[State 20312, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20390
value = 20390

;---------------------------------------------------------------------------
; Head - Win
[Statedef 20395]
ctrl = 0

[State 20395, Turn Head]
type = ChangeAnim
trigger1 = (Anim = [20300, 20320]) || (Anim = [20340, 20380])
trigger1 = Anim != 20330
trigger1 = Anim != 20395
value = Anim + 10 - 20 * (Anim = [20340, 20380])

[State 20395, PlaySnd]
type = PlaySnd
trigger1 = Time = 30
value = 20180, 0

[State 20395, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 30
value = 20395

;---------------------------------------------------------------------------
; Head - Rensha Beam - Init
[Statedef 20400]
ctrl = 0

[State 20400, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20400, Face Forward]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 20300
trigger1 = Anim != 20420
trigger1 = P2Dist X >= abs(Pos Y) + 69
value = 20420

[State 20400, Face Down Forward]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 20300
trigger1 = Anim != 20430
trigger1 = P2Dist X = [69, abs(Pos Y) + 69]
value = 20430

[State 20400, Face Backward]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 20300
trigger1 = Anim != 20460
trigger1 = P2Dist X <= -abs(Pos Y) - 69
value = 20460

[State 20400, Face Down Backward]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 20300
trigger1 = Anim != 20450
trigger1 = P2Dist X = [-abs(Pos Y) -69, -69]
value = 20450

[State 20400, Face Down]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 20300
trigger1 = Anim != 20440
trigger1 = P2Dist X = [-69, 69]
value = 20440

[State 20400, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(8)
value = 20401

;---------------------------------------------------------------------------
; Head - Rensha Beam - Explod
[Statedef 20401]
ctrl = 0

[State 20401, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20401, Explod]
type = Explod
trigger1 = !Time && PrevStateNo = 20400
anim = 13110
id = 20400
pos = (Anim = 20430) * 12 + (Anim = 20420) * 17 - (Anim = 20450) * 11 - (Anim = 20460) * 16, -9 - (Anim = 20430 || Anim = 20450)
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 20401, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(31)
value = 20402

;---------------------------------------------------------------------------
; Head - Rensha Beam - Beam
[Statedef 20402]
ctrl = 0

[State 20402, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20402, Beam]
type = Helper
trigger1 = !Time && PrevStateNo = 20401
name = "Rensha Beam"
id = 20410
pos = 0, 0
stateno = 20410
ownpal = 1

[State 20402, ParentVarSet]
type = ParentVarSet
trigger1 = !AnimTime		; Tells parent, this state is done
var(20) = 0

[State 20402, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 20300

;---------------------------------------------------------------------------
; Rensha Beam - Helper - Beam - Startpoint
[Statedef 20410]
anim = 21000 + (Parent, Anim = 20430 || Parent, Anim = 20450) * 10 + (Parent, Anim = 20420 || Parent, Anim = 20460) * 20
ctrl = 0
sprpriority = 2

[State 20410, 3 Rensha Beam - ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = Root, Var(5) = 23000
value = 21010 - (Parent, Anim = 20431 && Parent, AnimElem = 3) * 10

[State 20410, 5 Rensha Beam - ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = Root, Var(5) = 23100
value = 21020 - (Parent, Anim = 20441 || (Parent, Anim = 20421 && Parent, AnimElem = 3)) * 10 - (Parent, Anim = 20432) * 20

[State 20410, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 21301, 0

[State 20410, Turn]
type = Turn
triggerall = !Time
trigger1 = Root, Var(5) = 21300
trigger1 = Parent, Anim = [20450, 20460]
trigger2 = Root, Var(5) = 23000
trigger2 = Parent, Anim = 20441
trigger3 = Root, Var(5) = 23100
trigger3 = Parent, Anim = [20441, 20451]

[State 20410, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20410, Beam - EndPoint]
type = Helper
trigger1 = !Time
name = "Rensha Beam - EndPoint"
id = 20420
pos = 0, 0
stateno = 20420

[State 20410, Store Anim]
type = VarSet
trigger1 = !Time
var(0) = Anim

[State 20410, Store AnimElemNo]
type = VarSet
trigger1 = Anim = Var(0)
var(1) = AnimElemNo(0)

[State 20410, Remove]
type = ChangeState
trigger1 = Anim = Var(0) + 3
value = 20411

[State 20410, Remove]
type = DestroySelf
trigger1 = !NumHelper(20420)

[State 20410, End]
type = ChangeAnim
trigger1 = Var(2) = 1
value = Var(0) + 1 + (Anim = Var(0) + 1) + (Anim = Var(0) + 2) * 2
elem = Var(1) - 3 * (Var(1) > 3)

;---------------------------------------------------------------------------
; Rensha Beam - Helper - Beam - Startpoint - Remove
; Purpose is due to an engine bug where the child must be destroyed before the parent
[Statedef 20411]
ctrl = 0

[State 20411, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20411, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 20411, DestroySelf]
type = DestroySelf
trigger1 = !NumHelper(20420)

;---------------------------------------------------------------------------
; Rensha Beam - Helper - Beam - Endpoint
[Statedef 20420]
anim = 21004 + (Parent, Anim = 21010) * 10 + (Parent, Anim = 21020) * 20
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 20420, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20420, VelSet]
type = VelSet
trigger1 = Time = 1
x = (Parent, Anim = 21010) * 48 + (Parent, Anim = 21020) * 72
y = 48

[State 20420, ParentVarSet]
type = ParentVarSet
trigger1 = Pos Y >= 0
var(2) = 1

[State 20420, Explode]
type = ChangeState
trigger1 = Pos Y >= 0
value = 20430

;---------------------------------------------------------------------------
; Rensha Beam - Helper - Beam - Explosion
[Statedef 20430]
movetype = A
anim = 21050
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 20430, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20430, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 13111, 0

[State 20430, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 20430, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 20430, Projectile]		; Invisible projectile is used since if a helper projectile is reversed, it would not appear right
type = Projectile
trigger1 = Root, Var(5) != [23000, 23100]
trigger1 = AnimElem = 13
projID = 20430
projanim = 21051
projremovetime = 20
projedgebound = 70
attr = A, SA
animtype = Up			; Confirmed
damage = 317, 35		; Confirmed
guardflag = MA
pausetime = 0, 9
sparkno = S7012
sparkxy = 0, Ceil(enemyNear, Pos Y + enemyNear, Const(size.mid.pos.y))	; Will have to check
hitsound = S5, 3		; Will have to check
guardsound = S6, 0		; Will have to check
ground.type = High		; Confirmed
air.type = Low			; Confirmed
ground.slidetime = 0		; Irrelevant when ground.velocity y < 0
ground.hittime  = 0		; Irrelevant when ground.velocity y < 0
guard.dist = 320		; This makes sure the opponent can guard within the screen
yaccel = 0.68			; Old: yaccel = 1.2
ground.velocity = 0, -32	;
air.velocity = 0, -32		; In game, can juggle for 25+ hits
air.juggle = 15			; Not in original. Used to prevent juggling
fall = 1
palfx.time = 65
palfx.add = 160, 80, -32
palfx.sinadd = 80,40,-16,4

; HitDef for GetPower = 0,0
[State 20430, Projectile]		; Invisible projectile is used since if a helper projectile is reversed, it would not appear right
type = Projectile
trigger1 = Root, Var(5) = [23000, 23100]
trigger1 = AnimElem = 13
projID = 20430
projanim = 21051
projremovetime = 20
projedgebound = 70
attr = A, SA
animtype = Up			; Confirmed
damage = 317, 35		; Confirmed
guardflag = MA
pausetime = 0, 9
sparkno = S7012
sparkxy = 0, Ceil(enemyNear, Pos Y + enemyNear, Const(size.mid.pos.y))	; Will have to check
hitsound = S5, 3		; Will have to check
guardsound = S6, 0		; Will have to check
ground.type = High		; Confirmed
air.type = Low			; Confirmed
ground.slidetime = 0		; Irrelevant when ground.velocity y < 0
ground.hittime  = 0		; Irrelevant when ground.velocity y < 0
guard.dist = 320		; This makes sure the opponent can guard within the screen
yaccel = 0.68			; Old: yaccel = 1.2
ground.velocity = 0, -32	;
air.velocity = 0, -32		; In game, can juggle for 25+ hits
air.juggle = 7			; Not in original. Used to prevent juggling
fall = 1
getpower = 0, 0
palfx.time = 65
palfx.add = 160, 80, -32
palfx.sinadd = 80,40,-16,4

[State 20430, Flame]
type = Explod
trigger1 = Root, ProjHit20430 = 1
trigger1 = !NumExplod(20431)
anim = 6020 + (Random < 500) * 10
id = 20431
pos = 0, -40
postype = p2
bindtime = -1
random = 20, 20
sprpriority = -1
shadow = -1
ownpal = 1

[State 20430, HitFlash]
type = Explod
trigger1 = Root, ProjHit[20430] = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 20430, Remove]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Init
[Statedef 20450]
ctrl = 0

[State 20450, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20450, Turn Head]
type = ChangeAnim
trigger1 = (Anim = [20300, 20340]) || (Anim = [20360, 20380])
trigger1 = Anim != 20350
value = Anim + 10 - 20 * (Anim = [20360, 20380])

[State 20450, ChangeState]
type = ChangeState
trigger1 = Anim = 20350
value = 20451

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Super Pause
[Statedef 20451]
ctrl = 0

[State 20451, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20451
value = 20451

[State 20451, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20451, Hyper]
type = Helper
trigger1 = !Time && PrevStateNo = 20450
name = "Hyper"
id = 19000
stateno = 19000
pos = 0, -12
ownpal = 1
supermovetime = 45

[State 20451, SuperPause]
type = SuperPause
trigger1 = !Time && PrevStateNo = 20450
time = 45
anim = -1
sound = S19001, 0	; No sound
pos = 0, 0
darken = 0
poweradd = -1000

[State 20451, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(2)
value = 20452

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Explod 1
[Statedef 20452]
ctrl = 0

[State 20452, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20452, Explod]
type = Explod
trigger1 = !Time && PrevStateNo = 20451
anim = 13110
id = 20400
pos = (Anim = 20431) * 12 + (Anim = 20421) * 17 - (Anim = 20451) * 11 - (Anim = 20461) * 16, -9 - (Anim = 20431 || Anim = 20451)
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 20452, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 20453

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Transition
[Statedef 20453]
ctrl = 0

[State 20453, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20441
value = 20441

[State 20453, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20453, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(2)
value = 20454

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Explod 2
[Statedef 20454]
ctrl = 0

[State 20454, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20454, Explod]
type = Explod
trigger1 = !Time && PrevStateNo = 20453
anim = 13110
id = 20400
pos = (Anim = 20431) * 12 + (Anim = 20421) * 17 - (Anim = 20451) * 11 - (Anim = 20461) * 16, -9 - (Anim = 20431 || Anim = 20451)
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 20454, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(3)
value = 20455

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Beam 1
[Statedef 20455]
ctrl = 0

[State 20455, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20455, Beam]
type = Helper
trigger1 = !Time && PrevStateNo = 20454
name = "Rensha Beam"
id = 20410
pos = 0, 0
stateno = 20410
ownpal = 1

[State 20455, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 20456

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Transition
[Statedef 20456]
ctrl = 0

[State 20456, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20431
value = 20431

[State 20456, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20456, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(2)
value = 20457

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Explod 3
[Statedef 20457]
ctrl = 0

[State 20457, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20457, Explod]
type = Explod
trigger1 = !Time && PrevStateNo = 20456
anim = 13110
id = 20400
pos = (Anim = 20431) * 12 + (Anim = 20421) * 17 - (Anim = 20451) * 11 - (Anim = 20461) * 16, -9 - (Anim = 20431 || Anim = 20451)
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 20457, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(3)
value = 20458

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Beam 2
[Statedef 20458]
ctrl = 0

[State 20458, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20458, Beam]
type = Helper
trigger1 = !Time && PrevStateNo = 20457
name = "Rensha Beam"
id = 20410
pos = 0, 0
stateno = 20410
ownpal = 1

[State 20458, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(25)
value = 20459

;---------------------------------------------------------------------------
; Head - 3 Rensha Beam - Beam 3
[Statedef 20459]
ctrl = 0

[State 20459, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20459, Beam]
type = Helper
trigger1 = !Time && PrevStateNo = 20458
name = "Rensha Beam"
id = 20410
pos = 0, 0
stateno = 20410
ownpal = 1

[State 20459, ParentVarSet]
type = ParentVarSet
trigger1 = Anim = 20431
trigger1 = !AnimTime		; Tells parent, this state is done
var(20) = 0

[State 20459, ChangeState]
type = ChangeState
trigger1 = Anim = 20431
trigger1 = !AnimTime
value = 20300

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Init
[Statedef 20470]
ctrl = 0

[State 20470, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20470, Turn Head]
type = ChangeAnim
trigger1 = (Anim = [20300, 20350]) || (Anim = [20370, 20380])
trigger1 = Anim != 20360
value = Anim + 10 - 20 * (Anim = [20370, 20380])

[State 20470, ChangeState]
type = ChangeState
trigger1 = Anim = 20360
value = 20471

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Super Pause
[Statedef 20471]
ctrl = 0

[State 20471, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20461
value = 20461

[State 20471, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20471, Hyper]
type = Helper
trigger1 = !Time && PrevStateNo = 20470
name = "Hyper"
id = 19000
stateno = 19000
pos = 0, -12
ownpal = 1
supermovetime = 45

[State 20471, SuperPause]
type = SuperPause
trigger1 = !Time && PrevStateNo = 20470
time = 45
anim = -1
sound = S19001, 0	; No sound
pos = 0, 0
darken = 0
poweradd = -1000

[State 20471, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(2)
value = 20472

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Explod 1
[Statedef 20472]
ctrl = 0

[State 20472, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20472, Explod]
type = Explod
trigger1 = !Time && PrevStateNo = 20471
anim = 13110
id = 20400
pos = (Anim = 20432) * 12 + (Anim = 20421) * 17 - (Anim = 20451) * 11 - (Anim = 20461) * 16, -9 - (Anim = 20432 || Anim = 20451)
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 20472, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 20473

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Transition
[Statedef 20473]
ctrl = 0

[State 20473, SUper Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20451
value = 20451

[State 20473, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20473, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(2)
value = 20474

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Explod 2
[Statedef 20474]
ctrl = 0

[State 20474, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20474, Explod]
type = Explod
trigger1 = !Time && PrevStateNo = 20473
anim = 13110
id = 20400
pos = (Anim = 20432) * 12 + (Anim = 20421) * 17 - (Anim = 20451) * 11 - (Anim = 20461) * 16, -9 - (Anim = 20432 || Anim = 20451)
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 20474, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(3)
value = 20475

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Beam 1
[Statedef 20475]
ctrl = 0

[State 20475, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20475, Beam]
type = Helper
trigger1 = !Time && PrevStateNo = 20474
name = "Rensha Beam"
id = 20410
pos = 0, 0
stateno = 20410
ownpal = 1

[State 20475, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 20476

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Transition
[Statedef 20476]
ctrl = 0

[State 20476, SUper Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20441
value = 20441

[State 20476, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20476, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(2)
value = 20477

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Explod 3
[Statedef 20477]
ctrl = 0

[State 20477, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20477, Explod]
type = Explod
trigger1 = !Time && PrevStateNo = 20476
anim = 13110
id = 20400
pos = (Anim = 20432) * 12 + (Anim = 20421) * 17 - (Anim = 20451) * 11 - (Anim = 20461) * 16, -9 - (Anim = 20432 || Anim = 20451)
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 20477, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(3)
value = 20478

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Beam 2
[Statedef 20478]
ctrl = 0

[State 20478, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20478, Beam]
type = Helper
trigger1 = !Time && PrevStateNo = 20477
name = "Rensha Beam"
id = 20410
pos = 0, 0
stateno = 20410
ownpal = 1

[State 20478, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 20479

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Transition
[Statedef 20479]
ctrl = 0

[State 20479, SUper Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20432
value = 20432

[State 20479, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20479, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(2)
value = 20480

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Explod 4
[Statedef 20480]
ctrl = 0

[State 20480, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20480, Explod]
type = Explod
trigger1 = !Time && PrevStateNo = 20479
anim = 13110
id = 20400
pos = (Anim = 20432) * 12 + (Anim = 20421) * 17 - (Anim = 20451) * 11 - (Anim = 20461) * 16, -9 - (Anim = 20432 || Anim = 20451)
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 20480, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(3)
value = 20481

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Beam 3
[Statedef 20481]
ctrl = 0

[State 20481, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20481, Beam]
type = Helper
trigger1 = !Time && PrevStateNo = 20480
name = "Rensha Beam"
id = 20410
pos = 0, 0
stateno = 20410
ownpal = 1

[State 20481, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 20482

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Transition
[Statedef 20482]
ctrl = 0

[State 20482, SUper Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20421
value = 20421

[State 20482, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20482, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(2)
value = 20483

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Explod 5
[Statedef 20483]
ctrl = 0

[State 20483, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20483, Explod]
type = Explod
trigger1 = !Time && PrevStateNo = 20482
anim = 13110
id = 20400
pos = (Anim = 20432) * 12 + (Anim = 20421) * 17 - (Anim = 20451) * 11 - (Anim = 20461) * 16, -9 - (Anim = 20432 || Anim = 20451)
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 20483, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(3)
value = 20484

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Beam 4
[Statedef 20484]
ctrl = 0

[State 20484, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20484, Beam]
type = Helper
trigger1 = !Time && PrevStateNo = 20483
name = "Rensha Beam"
id = 20410
pos = 0, 0
stateno = 20410
ownpal = 1

[State 20484, ChangeState]
type = ChangeState
trigger1 = !AnimElemTime(25)
value = 20485

;---------------------------------------------------------------------------
; Head - 5 Rensha Beam - Beam 5
[Statedef 20485]
ctrl = 0

[State 20485, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 20485, Beam]
type = Helper
trigger1 = !Time && PrevStateNo = 20484
name = "Rensha Beam"
id = 20410
pos = 0, 0
stateno = 20410
ownpal = 1

[State 20485, ParentVarSet]
type = ParentVarSet
trigger1 = !AnimTime		; Tells parent, this state is done
var(20) = 0

[State 20485, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 20300

;---------------------------------------------------------------------------
; Arm - Purpose is for sprpriority to be separate from the forearm
[Statedef 20600]
sprpriority = -49

[State 20600, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20600, BindToParent]
type = BindToParent
trigger1 = 1

[State 20600, ChangeAnim]
type = ChangeAnim
trigger1 = Parent, Anim = 20520
trigger1 = Parent, AnimElemNo(0) < 56
value = 20620
elem = Parent, AnimElemNo(0) - 27

[State 20600, ChangeAnim]
type = ChangeAnim
trigger1 = Parent, Anim = 20531
value = 20631

[State 20600, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != 20520 && Parent, Anim != 20531
trigger2 = Anim = 20620 && !AnimTime

;---------------------------------------------------------------------------
; Punch
[Statedef 21000]
velset = 0, 0
ctrl = 0

[State 21000, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = [0, 40]
value = 21000, 0

[State 21000, HitCount]
type = VarSet
trigger1 = !Time && PrevStateNo = [0, 40]
var(13) = 0

[State 21000, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20520 && PrevStateNo = [0, 40]
value = 20520

[State 21000, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 21000, SprPriority]
type = SprPriority
trigger1 = AnimElemNo(0) = 24
value = 2

[State 21000, PlaySnd]
type = PlaySnd
trigger1 = AnimElemNo(0) = 28
trigger1 = !NumHelper(20600)
value = 21000, 1

[State 21000, Arm]
type = Helper
trigger1 = AnimElemNo(0) = 28
trigger1 = !NumHelper(20600)
name = "Arm"
id = 20600
stateno = 20600

[State 21000, AttackDist]		; Necessary so P2 can guard
type = AttackDist
trigger1 = AnimElemNo(0) = [23, 37]	; 1 Tick earlier than it should to allow guarding
value = 320

[State 21000, StateTypeSet]		; When there is no Clsn1 for the hand, change the movetype to I so P2 stops guarding
type = StateTypeSet
trigger1 = AnimElemNo(0) = [23, 37]	; 1 Tick earlier than it should to allow guarding
movetype = A

[State 21000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemNo(0) != [23, 37]
movetype = I

[State 21000, HitCount]
type = VarAdd
trigger1 = MoveContact = 1
var(13) = 1

[State 21000, HitDef]
type = HitDef
trigger1 = AnimElemNo(0) = [24, 37]
trigger1 = Var(13) < 4
attr = A, NA
animtype = Hard			; Confirmed
air.animtype = Light		; Confirmed
priority = 3, Miss
damage = 62, 0			; Confirmed
guardflag = MA
pausetime = 9, 9
sparkno = S7002
sparkxy = 0, Ceil(enemyNear, Pos Y + enemyNear, Const(size.mid.pos.y) + 20)	; Will have to check
hitsound = S5, 3		; Will have to check
guardsound = S6, 0		;
ground.type = Low		; Confirmed
air.type = High			; Confirmed
ground.slidetime = 16		; Will have to check
ground.hittime  = 18		; Will have to check
yaccel = 0.68
ground.velocity = -19, -17	; 
air.velocity = -10, -3		;
fall = 1
fall.recover = 0
priority = 3, Miss

[State 21000, HitFlash]
type = Explod
trigger1 = MoveHit = 1		; MoveHit increments 1 tick and stays at 1 during hitpause after hitting with ignorehitpause = 1 this is why HitPauseTime is 1 tick lower than it should be
trigger1 = HitPauseTime = 8	; This is to ensure that this only occurs for 1 tick
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 21000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dash Punch - Init
[Statedef 21100]
velset = -13, IfElse(Pos Y > -48, -5, 5)
ctrl = 0

[State 21100, Failsafe FVarSet]
type = VarSet
trigger1 = Anim != 20530
fvar(12) = 0

[State 21100, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20530
value = 20530

[State 21100, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 21100, VelSet X]
type = VelSet
trigger1 = 1
x = -13

[State 21100, VelSet Y]
type = VelSet
trigger1 = Pos Y = [-53, -43]
y = 0

[State 21100, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 21100, HitCount]
type = VarSet
trigger1 = !Time
var(13) = 0

[State 21100, NotHitBy]
type = NotHitBy
trigger1 = BackEdgeDist < 0
value = SCA

[State 21100, ChangeState]
type = ChangeState
trigger1 = BackEdgeDist < -400
trigger2 = Pos X = FVar(12)	; Check to see if the edge of the stage has been reached
value = 21101

[State 21100, Failsafe FVarSet]
type = VarSet
trigger1 = 1
fvar(12) = Pos X

;---------------------------------------------------------------------------
; Dash Punch
[Statedef 21101]
movetype = A
velset = 15, 0
ctrl = 0
sprpriority = 2

[State 21101, Failsafe FVarSet]
type = VarSet
trigger1 = Anim != 20531
fvar(12) = 0

[State 21101, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20531
value = 20531

[State 21101, Arm]
type = Helper
trigger1 = !NumHelper(20600)
name = "Arm"
id = 20600
stateno = 20600

[State 21101, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 21101, PosSet Y]
Type = PosSet
trigger1 = !Time
y = -48

[State 21101, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 21100
value = 21100, 0
abspan = 0

[State 21101, VelSet X]
type = VelSet
trigger1 = 1
x = 15

[State 21101, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 21101, EnvShake]
type = EnvShake
trigger1 = !(Time % 4)	; !(Time % 2) - accurate to ingame
time = 8		; time = 4 - accurate to ingame
ampl = -3		; ampl = -3 - accurate to ingame

[State 21101, HitPause - PosFreeze]
type = PosFreeze
trigger1 = HitPauseTime
ignorehitpause = 1

[State 21101, HitCount]
type = VarAdd
trigger1 = MoveContact = 1
var(13) = 1

[State 21101, HitDef]
type = HitDef
trigger1 = var(13) < 9
attr = A, NA
animtype = Up			; Hard initially
air.animtype = Up		; Hard initially
priority = 3, Miss
damage = 69, 7			; Confirmed
guardflag = MA
pausetime = 3, 3
sparkno = S7012
sparkxy = 0, Ceil(enemyNear, Pos Y + enemyNear, Const(size.mid.pos.y) + 20)	; Will have to check
hitsound = S5, 3		; Will have to check
guardsound = S6, 0		;
ground.type = High		; Confirmed
air.type = Low			; Confirmed
ground.slidetime = 16		; Irrelevant when ground.velocity y < 0
ground.hittime  = 18		; Irrelevant when ground.velocity y < 0
yaccel = 0.68
ground.velocity = -4, -24	; 
air.velocity = -4, -24		;
fall = 1
fall.recover = 0
priority = 3, Miss

[State 21101, HitFlash]
type = Explod
trigger1 = MoveHit = 1		; MoveHit increments 1 tick and stays at 1 during hitpause after hitting with ignorehitpause = 1 this is why HitPauseTime is 1 tick lower than it should be
trigger1 = HitPauseTime = 2; This is to ensure that this only occurs for 1 tick
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 21101, NotHitBy]
type = NotHitBy
trigger1 = FrontEdgeDist < 0
value = SCA

[State 21101, ChangeState]
type = ChangeState
trigger1 = FrontEdgeDist < -400
;trigger2 = Pos X = FVar(12)	; Check to see if the edge of the stage has been reached
value = 21102
ctrl = 1

[State 21101, Failsafe FVarSet]
type = VarSet
trigger1 = 1
fvar(12) = Pos X

;---------------------------------------------------------------------------
; Dash Punch - End
[Statedef 21102]
anim = 20500
velset = (PrevStateNo = 15000 || PrevStateNo = 15002) * Vel X, 0
ctrl = 0

[State 21102, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 21102, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 21102, Turn]
type = Turn
trigger1 = !Time && PrevStateNo = 21101 

[State 21102, VelSet]
type = VelSet
trigger1 = !Time && PrevStateNo = 21101
x = 10	; 16

[State 21102, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 21102, ChangeState]
type = ChangeState
trigger1 = BackEdgeDist > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper Grav - Init
[Statedef 21200]
velset = 0, 0
ctrl = 0

[State 21200, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20540
value = 20540

[State 21200, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 21200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 21201

;---------------------------------------------------------------------------
; Hyper Grav
[Statedef 21201]
ctrl = 0
sprpriority = 2

[State 21201, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20541
value = 20541

[State 21201, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 21201, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 21200
value = 11200, 0

[State 21201, Orb Generator]
type = Helper
trigger1 = !Time && PrevStateNo = 21200
trigger1 = !NumHelper(21205)
name = "Orb Generator"
id = 21205
stateno = 21205
ownpal = 1

[State 21201, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 21202

;---------------------------------------------------------------------------
; Hyper Grav - End
[Statedef 21202]
ctrl = 0
sprpriority = -50

[State 21202, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20542
value = 20542

[State 21202, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 21202, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper Grav - Helper - Orb Generator
[Statedef 21205]
ctrl = 0

[State 21205, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 21205, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 21205, BindToParent]
type = BindToParent
trigger1 = 1

[State 21205, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 11201, 0

[State 21205, Orb U]
type = Helper
trigger1 = !Time
name = "Orb U"
id = 11210
pos = -90, -121
stateno = 11210

[State 21205, Orb D]
type = Helper
trigger1 = !Time
name = "Orb D"
id = 11211
pos = -90, -25
stateno = 11210

[State 21205, Orb L]
type = Helper
trigger1 = !Time
name = "Orb L"
id = 11212
pos = -154, -73
stateno = 11210

[State 21205, Orb R]
type = Helper
trigger1 = !Time
name = "Orb R"
id = 11213
pos = -26, -73
stateno = 11210

[State 21205, Orb Damager]
type = Helper
trigger1 = !Time
name = "Orb Damager"
id = 11214
pos = -90, -73
stateno = 11214

[State 21205, Remove]
type = ChangeState
trigger1 = Parent, Anim != 20541
value = 11206

;---------------------------------------------------------------------------
; Rensha Beam
[Statedef 21300]
velset = 0, 0
ctrl = 0

[State 21300, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 21300, VarSet]
type = VarSet
trigger1 = !Time && PrevStateNo = [0, 40]
var(20) = 1			; Body part will switch to it's appropriate state when this is 1

[State 21300, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = [0, 40]
value = 21300, 0

[State 21300, ChangeState]
type = ChangeState
trigger1 = !Var(20)		; Since switch depends on the body part being finished, the var will be set to 0 by the body part
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 3 Rensha Beam
[Statedef 23000]
velset = 0, 0
ctrl = 0

[State 23000, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 23000, VarSet]
type = VarSet
trigger1 = !Time && PrevStateNo = [0, 40]
var(20) = 1			; Body part will switch to it's appropriate state when this is 1

[State 23000, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = [0, 40]
value = 21300, 0

[State 23000, ChangeState]
type = ChangeState
trigger1 = !Var(20)		; Since switch depends on the body part being finished, the var will be set to 0 by the body part
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 5 Rensha Beam
[Statedef 23100]
velset = 0, 0
ctrl = 0

[State 23100, Super Armor - SetStateNo]
type = VarSet
trigger1 = !Time
var(5) = StateNo

[State 23100, VarSet]
type = VarSet
trigger1 = !Time && PrevStateNo = [0, 40]
var(20) = 1			; Body part will switch to it's appropriate state when this is 1

[State 23100, PlaySnd]
type = PlaySnd
trigger1 = !Time && PrevStateNo = [0, 40]
value = 21300, 0

[State 23100, ChangeState]
type = ChangeState
trigger1 = !Var(20)		; Since switch depends on the body part being finished, the var will be set to 0 by the body part
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lose - Orb
[Statedef 25151]
anim = 25151
velset = 0, IfElse(Random < 500, -1, 1)
ctrl = 0
sprpriority = -2

[State 25151, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = RoundNotOver

[State 25151, Orb Type]
type = VarRandom
trigger1 = !Time
v = 0
range = 0, 5

[State 25151, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 25151 + Var(0)

[State 25151, Pos X Random]
type = VarRandom
trigger1 = !Time
v = 1
range = -80, 80

[State 25151, Pos Y Random]
type = VarRandom
trigger1 = !Time
v = 2
range = -180, -50

[State 25151, PosSet]
type = PosSet
trigger1 = !Time
x = Var(1)
y = Var(2)

[State 25151, Float]
type = VelSet
trigger1 = !(Time % 16)
y = -1 * Vel Y / abs(Vel Y)

[State 25151, Disperse]
type = ChangeState
trigger1 = Time = 210
value = 25152

;---------------------------------------------------------------------------
; Lose - Orb - Disperse
[Statedef 25152]
velset = 0, 0
ctrl = 0

[State 25151, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 25152, VelSet]
type = VelSet
trigger1 = !Time
x = 3 * IfElse(!Var(1), 0, Var(1)/(abs(Var(1)) / 2))				; The further away from the center, the faster it is
y = 3 * IfElse(!Var(2), 0, (Var(2) + 100)/(abs(Var(2) + 100) / 2))	; The further away from the center, the faster it is

[State 25152, VelSet 0,0]
type = VelSet
trigger1 = !Var(1)
trigger1 = !(Var(2) + 100)
y = IfElse(Random < 500, -3, 3)			; In the case where 0 would result with the velset due to being at the exact center

[State 25152, VelMul]
type = VelMul
trigger1 = 1
x = 1.03
y = 1.03

[State 25152, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -100
trigger2 = BackEdgeDist < -200
trigger3 = ScreenPos Y < -100
trigger4 = ScreenPos Y > 339

;---------------------------------------------------------------------------
; Lose - White Cover
[Statedef 25155]
anim = 7030
velset = 0, 0
ctrl = 0
sprpriority = 100

[State 25155, PosSet]
type = PosAdd
trigger1 = 1
x = -ScreenPos X
y = -ScreenPos Y

[State 25155, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 25155, Fade In To White]
type = Trans
trigger1 = Time = [0, 90]
trans = addalpha
alpha = Ceil(Time * 3.2), 256

[State 25155, Fade Out]
type = Trans
trigger1 = Time > 90
trans = addalpha
alpha = 256 - Ceil((Time - 110)* 3.2), 256

;---------------------------------------------------------------------------
; Lose - Orb Generator
[Statedef 25156]
velset = 0, 0
ctrl = 0

[State 25156, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 25156, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 25156, Orb 1]
type = Helper
trigger1 = !Time
name = "Orb 1"
id = 25151
stateno = 25151

[State 25156, Orb 2]
type = Helper
trigger1 = !Time
name = "Orb 2"
id = 25151
stateno = 25151

[State 25156, Orb 3]
type = Helper
trigger1 = !Time
name = "Orb 3"
id = 25151
stateno = 25151

[State 25156, Orb 4]
type = Helper
trigger1 = !Time
name = "Orb 4"
id = 25151
stateno = 25151

[State 25156, Orb 5]
type = Helper
trigger1 = !Time
name = "Orb 5"
id = 25151
stateno = 25151

[State 25156, Orb 6]
type = Helper
trigger1 = !Time
name = "Orb 6"
id = 25151
stateno = 25151

[State 25156, Orb 7]
type = Helper
trigger1 = !Time
name = "Orb 7"
id = 25151
stateno = 25151

[State 25156, Orb 8]
type = Helper
trigger1 = !Time
name = "Orb 8"
id = 25151
stateno = 25151

[State 25156, Orb 9]
type = Helper
trigger1 = !Time
name = "Orb 9"
id = 25151
stateno = 25151

[State 25156, Orb 10]
type = Helper
trigger1 = !Time
name = "Orb 10"
id = 25151
stateno = 25151

[State 25156, Orb 11]
type = Helper
trigger1 = !Time
name = "Orb 11"
id = 25151
stateno = 25151

[State 25156, Orb 12]
type = Helper
trigger1 = !Time
name = "Orb 12"
id = 25151
stateno = 25151

[State 25156, Orb 13]
type = Helper
trigger1 = !Time
name = "Orb 13"
id = 25151
stateno = 25151

[State 25156, Orb 14]
type = Helper
trigger1 = !Time
name = "Orb 14"
id = 25151
stateno = 25151

[State 25156, Orb 15]
type = Helper
trigger1 = !Time
name = "Orb 15"
id = 25151
stateno = 25151