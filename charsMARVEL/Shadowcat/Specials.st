;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1400
sprpriority = 2

[State 1400, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 30
y = 0

[State 1400, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1410
p2stateno = 1420
guard.dist = 0
fall = 1

[State 1400, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 11, 3

[State 1400, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 11, 1

[State 1400, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 18, 8

[State 1400, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1410]
type    = S
movetype= A
physics = N
anim = 1410
poweradd = 60

[State 1410, Hurt 1]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -15

[State 1410, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 2
y = 3

[State 1410, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 0
y = 0

[State 1410, Holding]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 1410, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 18, 11

[State 1410, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 18, 0

[State 1410, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 28, 0

[State 1410, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 1410, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 58, 0

[State 1410, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 47, 0

[State 1410, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 41, 60

[State 1410, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 45, 75

[State 1410, Hurt 2]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = -35

[State 1410, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 45, 90

[State 1410, Bind 9]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = 45, 96

[State 1410, Bind 10]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = 44, 90

[State 1410, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 40, 50

[State 1410, Hurt 3]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -100

[State 1410, Throw 11]
type = TargetState
trigger1 = AnimElem = 11
value = 1421

[State 1410, Turn 12]
type = Turn
trigger1 = AnimElem = 12

[State 1410, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1302
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by
[Statedef 1420]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1420, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1420, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1420

[State 1420, Pause]
type = Pause
trigger1 = animelem = 2
time = 33
movetime = 1

[State 1420, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S11,3
volume = 255
channel = 4

[State 1420, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S8000,2
volume = 255
channel = 3

[State 1420, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 1421

;---------------------------------------------------------------------------
;Thrown by(in air)
[Statedef 1421]
type    = A
movetype= H
physics = N
velset = 3.5,-15
poweradd = 40

[State 1421, 1]
type = VelAdd
Trigger1 = 1
y = .5

[State 1421, 2]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 1421, 3]
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State 1421, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------


; UpperKat = Diving Under out of screen
[Statedef 1000]
type = S
movetype = A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1000
sprpriority = 2

[State 1000, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
;movecamera = 0,1

[State 1000, FX]
type = AfterImage
trigger1 = AnimElem >= 1
time = 10
length = 40
PalBright = 0, 0, 0
PalContrast = 100, 150, 200
PalAdd = 0, 0, 0
FrameGap = 4
Trans = add

[State 1000, 1]
type = Velset
trigger1 = AnimElem >=30
persistent = 0
y = -1

[State 1000, 3]
type=PosSet
trigger1= Pos y < -1
x=(enemy(0),Pos x)

[State 1000,4]
type=ChangeState
trigger1 = Pos y < -1
value=1003
ctrl = 0

;---------------------------------------------------------------------------
;
[Statedef 1001]
type = S
movetype = A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1000
sprpriority = 2

[State 1001, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
;movecamera = 0,1

[State 1001, FX]
type = AfterImage
trigger1 = AnimElem >= 1
time = 10
length = 40
PalBright = 0, 0, 0
PalContrast = 100, 150, 200
PalAdd = 0, 0, 0
FrameGap = 4
Trans = add

[State 1001, 1]
type = Velset
trigger1 = AnimElem >=24
persistent = 0
y = -3

[State 1001, 3]
type=PosSet
trigger1= Pos y < -1
x=(enemy(0),Pos x)

[State 1001,4]
type=ChangeState
trigger1 = Pos y < -1
value=1003
ctrl = 0

;---------------------------------------------------------------------------
;
[Statedef 1002]
type = S
movetype = A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1000
sprpriority = 2

[State 1002, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
;movecamera = 0,1

[State 1002, FX]
type = AfterImage
trigger1 = AnimElem >= 1
time = 10
length = 40
PalBright = 0, 0, 0
PalContrast = 100, 150, 200
PalAdd = 0, 0, 0
FrameGap = 4
Trans = add

[State 1001, 1]
type = Velset
trigger1 = AnimElem >=24
persistent = 0
y = -5

[State 1002, 3]
type=PosSet
trigger1= Pos y < -1
x=(enemy(0),Pos x)

[State 1002,4]
type=ChangeState
trigger1 = Pos y < -1
value=1003
ctrl = 0

;---------------------------------------------------------------------------
; Show Up - Rising UpperKat
[Statedef 1003]
type = A
movetype = A
physics = A
juggle = 4
poweradd= 0
velset = 0,0
ctrl = 0
anim = 1003
sprpriority = 2

[State 1003, FX]
type = AfterImage
trigger1 = AnimElem >= 1
time = 10
length = 40
PalBright = 0, 0, 0
PalContrast = 100, 150, 200
PalAdd = 0, 0, 0
FrameGap = 4
Trans = add

[State 1003, 1]
type = HitDef
hitdefpersist = 1
;trigger1 = Time = 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
;p1stateno = 50
animtype = Hard
attr = A, SA
damage    = 25,2
guardflag = HA
priority = 3
pausetime = 10,10
sparkno = 62
sparkxy = 0, 20
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -4
air.velocity = -4, 2
envshake.time = 8
envshake.freq = 120
envshake.ampl = -16
fall = 1


[State 1003, 2]
type = Velset
trigger1 = AnimElem >=1
persistent = 0
y = -8


[State 1003, EndState]
type = ChangeState
trigger1 = (Pos y >=40) || (Vel y =0)
physics = A
ctrl = 0
fall = 1
value = 50

;---------------------------------------------------------------------------
; Counter Strike
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 1100
poweradd = 60
ctrl = 0
sprpriority = 0

[State 1100, Hitdef]
type = HitDef
Trigger1 = Time = 1
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = S3, 1
sprpriority = 0
p1facing =  1
p2facing = 1
p1stateno = 1110
p2stateno = 1120
guard.dist = 0
fall = 1

[State 1100, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Pirouette
[Statedef 1110]
type = S
movetype = I
physics = N
anim = 1110
poweradd = 60
velset = 3, 0
sprpriority = 1
ctrl = 0

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S17,0
volume = 0
channel = 2


[State 1110, Change State]
type = ChangeState
trigger1 = animelem = 7
value = 1130
ctrl = 0

;---------------------------------------------------------------------------
; P2 state
[Statedef 1120]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0
poweradd = 60
sprpriority = 2


[State 1120, Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 1120
;---------------------------------------------------------------------------
; Strike
[Statedef 1130]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1130
poweradd= 10
ctrl = 0
sprpriority = 0
facep2 = 0

[State 1130, Turn]
type = Turn
trigger1 = time = 0

[State 1130, 4]
type = HitDef
trigger1 = time = 0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
pausetime = 9, 9
priority = 5, Miss
damage = 60
sparkno = 3
sparkxy = -10, -66
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 24
ground.velocity = -16, -8
guard.slidetime = 13
guard.hittime = 31
guard.velocity = -10
air.velocity = -10, -8
air.hittime = 45
fall.recovertime = 40
air.fall = 1
fall = 1

[State 1130, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20, -20
time = 1

[State 1130, Change State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------
;Ghost Kicks (slide)

[StateDef 1200]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1199
poweradd = 20
sprpriority = 2

[State 1200, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 30
y = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S18,7
volume = 255
channel = 3

[State 1200, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 1200, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1

p1facing = 1
p2facing = -1
p1stateno = 1260
p2stateno = 1290
guard.dist = 0
fall = 0

[State 1200, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1200, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1260
ctrl = 1


[StateDef 1260]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1200
poweradd = 20
sprpriority = 2

[State 1260, Turn]
type = Turn
trigger1 = AnimElem = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S18,11
volume = 255
channel = 3

[State 1260, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 10,2
animtype = Light
guardflag = S
hitflag = MAF
priority = 5, Hit
pausetime = 10, 10
sparkno = S8220
sparkxy = -10, -76
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7, -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5,-3
air.hittime = 12
fall=1


[State 1260, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 1260, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------
;Ghost Kicks (thrust)

[StateDef 1201]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1199
poweradd = 20
sprpriority = 2

[State 1201, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 40
y = 0

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S18,7
volume = 255
channel = 3

[State 1201, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 1201, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1

p1facing = 1
p2facing = 1
p1stateno = 1270
p2stateno = 1290
guard.dist = 0
fall = 1

[State 1201, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1201, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1270
ctrl = 1


[StateDef 1270]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1201
poweradd = 20
sprpriority = 2

[State 1270, Turn]
type = Turn
trigger1 = AnimTime = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S18,10
volume = 255
channel = 3

[State 1270, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 10,2
animtype = Medium
guardflag = C
hitflag = MAF
priority = 5, Hit
pausetime = 10, 10
sparkno = S8220
sparkxy = -10, -76
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 7, -4
airguard.velocity = 1.9,-.8
air.type = High
air.velocity = 5,-3
air.hittime = 12
fall=1

[State 1270, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 1270, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Ghost Kicks (launch)

[StateDef 1202]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1199
poweradd = 20
sprpriority = 2

[State 1202, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 40
y = 0

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S18,7
volume = 255
channel = 3

[State 1202, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 1202, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1

p1facing = 1
p2facing = 1
p1stateno = 1280
p2stateno = 1290
guard.dist = 0
fall = 1

[State 1202, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 1202, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1280
ctrl = 1
;---------------------------------------------------------------------------
;
[StateDef 1280]
type = S
movetype= A
physics = S
juggle  = 1
velset =-5,0
ctrl = 0
anim = 1202
poweradd = 20
sprpriority = 2

[State 1280, Turn]
type = Turn
trigger1 = AnimElem = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S18,9
volume = 255
channel = 3

[State 1280, 1]
type = HitDef
;trigger1 = Time = 0
trigger1 = AnimElem = 7
trigger2 = AnimElem = 9
trigger3 = AnimElem = 11
trigger4 = AnimElem = 10
trigger5 = AnimElem = 11
attr = S, SA
damage = 10,2
animtype = Hard
guardflag = C
hitflag = MAF
priority = 5, Hit
pausetime = 5, 5
sparkno = S8220
sparkxy = -10, -76
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7, -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5,-3
air.hittime = 12
fall=1

[State 1280, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 1280, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;
[Statedef 1290]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002
velset = 0.5,0

[State 1290, Electrocuted]
type = ChangeAnim
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 7696

[State 1290, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S21,6
volume = 0
channel = 5

[State 1290, 6]
type = SelfState
trigger1 = Time = 100
value = 5100

;---------------------------------------------------------------------------
; Ghost attack
[Statedef 1300]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1000
ctrl = 0

[State 1300,1]
type=ChangeState
trigger1 = AnimElem = 24
value = 1301

[Statedef 1301]
type = A
movetype = A
hitflag = HMAF
poweradd = 20
damage = 40,0
ctrl = 0
physics = N
juggle  = 10
anim = 1301
sprpriority = 2

[State 1301, 1]
type = ScreenBound
trigger1 = AnimElem >=1
value = 1
movecamera = 0,1

[State 1301, 2]
type=PosSet
trigger1 = AnimElem = 1
x=(enemy(0),Pos x)

[State 1301, 3]
type = HitDef
hitdefpersist = 1
trigger1 = AnimElem = 22
trigger2 = AnimElem = 23
trigger3 = AnimElem = 24
trigger4 = AnimElem = 25
animtype = Back
attr = A, SA
damage    = 20,3
guardflag = LA
priority = 3
pausetime = 5,8
sparkno = 3
sparkxy = -10,-58
hitsound = s8000,2
guardsound = S8000,6
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 20
ground.velocity = -4
air.velocity = -0.5, -1.5
fall = 1

[State 1301, 6]
type = ChangeState
trigger1 = AnimElem >= 41
physics = A
ctrl = 1
fall = 1
value = 1302

[StateDef 1302]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1001
poweradd = 20
sprpriority = 2

[State 1302, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = !time
trigger1 = facing = 1
x = enemynear, pos x -150
y = 0

[State 1302, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = !time
trigger1 = facing = -1
x = enemynear, pos x +150
y = 0

;[State 1302, ScreenBound]
;type = ScreenBound
;trigger1 = 1
;value = 0
;movecamera = 1,1

[State 1302, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1302, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;-------------------------------------------------------------------------
;shocking run

[StateDef 1500]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1199
poweradd = 20
sprpriority = 2

[State 1500, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 40
y = 0

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S18,8
volume = 255
channel = 3

[State 1500, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 1500, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1

p1facing = 1
p2facing = -1
p1stateno = 1501
p2stateno = 1502
guard.dist = 0
fall = 0

[State 1500, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1500, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1560
ctrl = 1

[StateDef 1501]
type = S
movetype= A
physics = S
juggle  = 1
velset = 13,0
ctrl = 0
anim = 1501
poweradd = 20
sprpriority = 2

[State 1501, Turn]
type = Turn
trigger1 = AnimElem = 5

[State 1501, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S19,0
volume = 255
channel = 3

[State 1501, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0
y = 0

[State 1501, 1]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 50,2
animtype = Light
guardflag = S
hitflag = MAF
priority = 5, Hit
pausetime = 10, 10
sparkno = S8220
sparkxy = -10, -76
hitsound = s21,6
guardsound = S8000,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 7, -2
airguard.velocity = 1.9,-.8
air.type = High
air.velocity = 5,-3
air.hittime = 12
fall=1


[State 1501, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 1501, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; shocked
[Statedef 1502]
type    = S
physics = N
movetype = H
ctrl = 0
anim = 5002
velset = 0,0

[State 1502, Electrocuted]
type = ChangeAnim
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 7696

[State 1502, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S21,6
volume = 0
channel = 2

[State 1502, 6]
type = SelfState
trigger1 = Time = 100
value = 5100

;---------------------------------------------------------------------------
; Lockheed
;---------------------------------------------------------------------------
; Lockheed call

[Statedef 6000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 6000
ctrl = 0
sprpriority = 2

[State 6000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S6000,0
volume = 255
channel = 5


[State 6000, lockheed]
type = Helper
trigger1 = AnimElem = 1
ID = 6001
stateno = 6001
postype = back
pos = -100,-120
name = "Lockheed"
ownpal = 1


[State 6000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Running In
[Statedef 6001]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 6001
ctrl = 0
sprpriority = 4
velset = 0,0

[State 6001, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 6
y = 1

[State 6001, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0
y = 0

[State 6001, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 6005
time = -1

[State 6001, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 6002
ctrl = 1

;-------------------------------------------------------------------------------
;Lockheed Attack
[Statedef 6002]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 6002
ctrl = 0
sprpriority = 1
velset = 0,0

[State 6002, blast]
type = Helper
trigger1 = AnimElem = 9
ID = 6003
stateno = 6003
postype = p1
pos = 75,-15
name = "Flame"
ownpal = 1

[State 6002, Explod]
type = Explod
trigger1 = animelem = 8
anim = 6003
ID = 6002
pos = 35,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = .2,.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 6002, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 6005
time = -1

[State 6002, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 6004
ctrl = 1

;-------------------------------------------------------------------------------
;Fire Blast
[Statedef 6003]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6003
sprpriority = 0
hitcountpersist = 1
poweradd = 40

[State 6003, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 6
y = 1

[State 6003, AfterImage]
type = AfterImage
trigger1 = Time = 0
paladd = 500,150,0
length = 8
framegap = 4
trans = add
time = 25

[State 6003, SprPriority]
type = SprPriority
trigger1 = animtime = 0
value = 6003

[State 6003, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 6003, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6003, 4]
type = hitdef
trigger1 = time = 0
attr = S,HA
damage = 20
scale = .5,.5
getpower = 5
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
fall = 1
palfx.time = 40
palfx.add = 100,-50,-200
palfx.mul = 255,200,100
palfx.sinadd = 50,10,0,15
palfx.invertall = 1
palfx.color = 25
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 6003, 7]
type = DestroySelf
trigger1 = ScreenPos Y < -10

;-------------------------------------------------------------------------------
;Running Out
[Statedef 6004]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6001
sprpriority = 9
hitcountpersist = 1

[State 6004, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8
y = -2

[State 6004, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 6004]
type = DestroySelf
trigger1 =Time = 200

;---------------------------------------------------------------------------
; Lockheed Get Hit
[Statedef 6005]
type    = S
movetype= I
physics = N
juggle  = 5
poweradd = 0
anim = 6004
ctrl = 0
sprpriority = 4
velset = 0

[State 6005, 1]
type = VelSet
trigger1 = 1
x = -6
y = -4

[State 6005, 2]
type = DestroySelf
trigger1 = ScreenPos Y < -10
;---------------------------------------------------------------------------
; Lockheed
;---------------------------------------------------------------------------
; Lockheed call

[Statedef 6006]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 6000
ctrl = 0
sprpriority = 2

[State 6006, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = S6000,0
volume = 255
channel = 5

[State 6006, lockheed]
type = Helper
trigger1 = AnimElem = 1
ID = 6007
stateno = 6007
postype = back
pos = -100,-120
name = "Lockheed"
ownpal = 1


[State 6006, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Flight In
[Statedef 6007]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 6001
ctrl = 0
sprpriority = 4
velset = 0,0

[State 6007, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 6
y = 1

[State 6007, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0
y = 0

[State 6007, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 6005
time = -1

[State 6007, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 6008
ctrl = 1

;-------------------------------------------------------------------------------
;Dragon Barrage
[Statedef 6008]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 6008
ctrl = 0
sprpriority = 1
velset = 8,2

[State 6008, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S6000,2
volume = 255
channel = 5

[State 6008, 4]
type = hitdef
trigger1 = time = 0
attr = S,HA
damage = 30
getpower = 5
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
fall = 1
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 6008, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 6005
time = -1

[State 6008, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 6009
ctrl = 1

;-------------------------------------------------------------------------------
; Flight Away
[Statedef 6009]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6001
sprpriority = 9
hitcountpersist = 1

[State 6008, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8
y = 2

[State 6009, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 6009]
type = DestroySelf
trigger1 =Time = 200

;---------------------------------------------------------------------------
; Lockheed
;---------------------------------------------------------------------------
; Lockheed call C

[Statedef 6010]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 6000
ctrl = 0
sprpriority = 2

[State 6010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S6000,0
volume = 255
channel = 5

[State 6010, lockheed]
type = Helper
trigger1 = AnimElem = 1
ID = 6011
stateno = 6011
postype = back
pos = -100,-120
name = "Lockheed"
ownpal = 1


[State 6010, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Running In
[Statedef 6011]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 6001
ctrl = 0
sprpriority = 4
velset = 0,0

[State 6011, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 6
y = 1

[State 6011, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0
y = 0

[State 6011, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 6005
time = -1

[State 6011, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 6012
ctrl = 1

;-------------------------------------------------------------------------------
;Lockheed Attack
[Statedef 6012]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 6002
ctrl = 0
sprpriority = 1
velset = 0,0

[State 6012, blast]
type = Helper
trigger1 = AnimElem = 9
ID = 6013
stateno = 6013
postype = p1
pos = 95,-15
name = "Flame"
ownpal = 1

[State 6012, Explod]
type = Explod
trigger1 = animelem = 8
anim = 6003
ID = 6012
pos = 35,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = .2,.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0


[State 6012, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 6005
time = -1

[State 6012, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 6014
ctrl = 1

;-------------------------------------------------------------------------------
;Fire Blast
[Statedef 6013]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6013
sprpriority = 0
hitcountpersist = 1
poweradd = 40

[State 6013, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 6
y = 1

[State 6013, AfterImage]
type = AfterImage
trigger1 = Time = 0
paladd = 500,150,0
length = 8
framegap = 4
trans = add
time = 25

[State 6013, SprPriority]
type = SprPriority
trigger1 = animtime = 0
value = 6013

[State 6013, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 6013, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 6013, 4]
type = hitdef
trigger1 = time = 0
attr = S,HA
damage = 40
scale = .5,.5
getpower = 5
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
fall = 1
palfx.time = 40
palfx.add = 100,-50,-200
palfx.mul = 255,200,100
palfx.sinadd = 50,10,0,15
palfx.invertall = 1
palfx.color = 25
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 6013, 7]
type = DestroySelf
trigger1 = ScreenPos Y < -10

;-------------------------------------------------------------------------------
;Running Out
[Statedef 6014]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6001
sprpriority = 9
hitcountpersist = 1

[State 6014, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8
y = -2

[State 6014, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 6014]
type = DestroySelf
trigger1 =Time = 200


