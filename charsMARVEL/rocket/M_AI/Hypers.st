;-------------------------------------------------------------------------------
;------------------------------
; P.Cannon - Jump Up
[Statedef 3344]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 3300
juggle = 0
sprpriority = 2


[State ,ScreenBound]
Type                       = ScreenBound
Trigger1                   = 1
value                      = 0
MoveCamera                 = 1, 0
Persistent                 = 1
IgnoreHitPause             = 0

[State 3344, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 4 ;AnimElem = 3
Time = 60
;anim =-1;s3012
pos = 25,-65
sound = S8889,0
poweradd = -1000
movetime = 60

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


[State 0, JumpUp]
type = velset
trigger1 =animelem = 6
x = 4
y = -22;15

[State 0, Stay Air]
type = velset
trigger1 = Pos Y <= -160
x = 0
y = 0

[State 3344, end]
type = ChangeState
trigger1 = Pos Y <= -160
trigger2 = time > 100
value = 3345
ctrl = 0

;-------------------------------------------------------------------------------
; P.Cannon - Taking outta Cannon
[Statedef 3345]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 3301
juggle = 0
sprpriority = 2


[State ,ScreenBound]
Type                       = ScreenBound
Trigger1                   = 1
value                      = 0
MoveCamera                 = 1, 0
Persistent                 = 1
IgnoreHitPause             = 0

[state 3344, snd]
type = playsnd
trigger1 =animelem = 1     ;trigger1 = animelem = 13
value = 31,3
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem = 6;4
value = 31,2
channel = 0


[State 1300, helper] ;Calling Proton Beam
type = Helper
triggerall = !Numhelper(3304)
trigger1 = animelem = 6     ;trigger1 = AnimElem = 13
name = "ProtonBeam"
StateNo = 3304
id =3304
postype = p1
sprpriority = 9
pos = -95, -65
ownpal = 1
removeongethit = 1
Size.XScale = .8
Size.YScale = .9


[State 3344, end]
type = ChangeState
trigger1 = Time = 87
value = 50
ctrl = 1

;----------------------------------------------------------------------------
;----------------------------------------------------------------------------
;Cannon shot
;--------------------------------------------------------------------------
[statedef 3304]
type = A
movetype = A
physics = N
anim = 3304
sprpriority = 9
hitdefpersist = 1
juggle = 4


[State 465, Angle Draw]
Type = AngleDraw
value = 270
trigger1 = 1

[State 1305, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3344, hit]
type = HitDef
trigger1 = Time % 4 = 0 && Time < 117 ;95
bindtime = -1
velocity = 0.001,0.001
attr = A,HP
damage   = 9,2;7,1
hitsound = S2,0
guardsound = S3,0
animtype = Hard
guardflag = MA
hitflag = MAFD
pausetime = 0,6
sparkno = S3310
sparkxy = -60,0
ground.type = High
ground.slidetime = 15
ground.hittime = 15;150
ground.velocity = 0,0
air.velocity = -1, -1
sprpriority = 9
hit.priority = 9
fall = 1
air.fall =1
down.velocity = -10
down.hittime = 150
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
fall.recover = 0

[State 3344, hit]
type = HitDef
trigger1 = Time > 117 ;95
bindtime = -1
velocity = 0.001,0.001
attr = A,HP
damage   = 10,1
hitsound = S2,0
guardsound = S3,0
animtype = Hard
guardflag = MA
hitflag = MAFD
pausetime = 0,6
sparkno = -1;S3310
sparkxy = -60,0
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = -5, -4
air.velocity = -5, -4
sprpriority = 9
hit.priority = 9
fall = 1
air.fall =1
down.velocity = -10
down.hittime = 150
down.bounce = 0
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
fall.recover = 0


[State 1005, 8]
type = DestroySelf
trigger1 = AnimTime = 0

[State 1005, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------
; Proton Cannon - (move end)
[Statedef 3305]
type    = S
physics = S
ctrl = 0
anim = 3302
sprpriority = 2



[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem = 1
value = 31,0
channel =0


[State 3201, d]
type = removeexplod
trigger1 = !time
id = 9999

[State 3005, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1