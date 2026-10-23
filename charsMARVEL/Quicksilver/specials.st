; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
juggle= 10
velset = 0,0
poweradd = 60

[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 6
trigger1 = timemod =4,1
value = 0,1

[State 200, HitDef]
type = HitDef
trigger1 = timemod =4,1
attr = S,SA
damage = 5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 1,1
sparkno = 0
sparkxy = -10, -80 + floor(random/20)
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 4
ground.velocity = -3
air.type = Low
air.hittime = 4
air.velocity = -3,-1
guard.velocity = -5
airguard.velocity = -5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5
getpower = 0

[State 1000, changestate]
type = ChangeState
triggerall = time > 30
trigger1 = command != "holdp"
trigger2= time > 120
value = 1001
ctrl = 0


[StateDef 1001]
type = S
movetype = I
physics = S
anim = 1001
ctrl = 0
velset = 0,0


[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[StateDef 1100]
type = S
movetype = I
physics = N
anim = 1100
ctrl = 0
velset = 0,0
poweradd= 30
sprpriority = -5


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,13

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 40
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = 40
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0
y = 0



[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 1110]
type = S
movetype = I
physics = N
anim = 1100
ctrl = 0
velset = 0,0
poweradd= 30
sprpriority = -5


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,13

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 30
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = 40
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0
y = 0



[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 1120]
type = S
movetype = I
physics = N
anim = 1100
ctrl = 0
velset = 0,0
poweradd= 30
sprpriority = -5


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,13

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 20
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = 40
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0
y = 0



[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4

[Statedef 1200]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
poweradd = 60
anim = 1200
ctrl = 0
sprpriority = 0

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 171,13

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 85
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 1
sparkxy = -10, -80
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -15,-5
air.type = Low
air.hittime = 5
air.velocity = -17,-1
fall= 1
air.fall = 1

[State 0, ChangeState]
type = ChangeState
triggerall = animtime = 0
trigger1 = movehit
value = 1201
ctrl = 0


[State 0, ChangeState]
type = ChangeState
triggerall = animtime = 0
trigger1 = !movehit
value = 1202
ctrl = 0


[Statedef 1201]
type    = S
movetype= I
physics = N
juggle  = 0
velset = 20,0
anim = 1201
ctrl = 0
sprpriority = 0




[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 15

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1202]
type    = S
movetype= I
physics = N
juggle  = 0
velset = 18,0
anim = 1202
ctrl = 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,12

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 12

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 8

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0


[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 62
ID = 62
pos = 10,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1



[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1




;------
 ;---------- corrida
 ;special------------------
;Throw 1
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 1300
poweradd = 60
ctrl = 0
sprpriority = 0



[State 800, Hitdef]
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
p1stateno = 1310
p2stateno = 1320
guard.dist = 0
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------
;Throw 1 - P1
[Statedef 1310]
type = S
movetype = I
physics = N
anim = 1310
poweradd = 60
velset = 0, 0
sprpriority = 0
ctrl = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 5,1
value = 171,0

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 35, -70
time = -1

[State 0, VelAdd]
type = VelAdd
trigger1 =  time > 0 && vel x < 40
x = 1.5


[State 0, Explod]
type = Explod
trigger1 = timemod = 2,1
anim = 918
ID =  918
pos = -30,5
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 3


[State 810, Hits]
type = TargetLifeAdd
trigger1 = AnimElem = 2
value = -3
kill = 0

;[State 0, ScreenBound]
;type = ScreenBound
;trigger1 = 1
;value = 0
;movecamera = 15,0
;ignorehitpause =


[State 0, TargetState]
type = TargetState
trigger1 = frontEdgeBodyDist < 50
value = 1330 ;uhu


[State 810, Change State]
type = ChangeState
trigger1 = frontEdgeBodyDist < 50
value = 1340
ctrl = 0

;------------------------
;Throw 1 - P2
[Statedef 1320]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0
poweradd = 80
sprpriority = -2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 150,0
;ignorehitpause =
;persistent =

[State 820, Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 1320



[Statedef 1340]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1340
poweradd= 10
ctrl = 0
sprpriority = 0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,7

[State 220, 4]
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
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 24
ground.velocity = -16, -8
guard.slidetime = 13
guard.hittime = 31
guard.velocity = -10
air.velocity = -10, -8
air.hittime = 45
;p2stateno = 221
fall.recovertime = 40
air.fall = 1
fall = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20, -20
time = 1

[State 810, Change State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;------------------------
[Statedef 1330]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 50


;[State 816, ChangeAnim]
;type = ChangeAnim
;trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
;value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0); && (!SelfAnimExist(5060));Not if hit off ground anim
value = 1330

[State 816, SelfState]
type = SelfState
trigger1 = time > 15
value = 5100
ctrl = 0


[Statedef 1400]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 60
velset = -14,0
anim = 1400
ctrl = 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,11


[State 0, Explod]
type = Explod
trigger1 = timemod = 6,1
anim = 918
ID =  918
pos = 30,5
facing = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 0, ChangeState]
type = ChangeState
trigger1 = BackEdgeBodyDist < 10
value = 1401
ctrl = 0

[Statedef 1401]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,-14
anim = 1401
ctrl = 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,11

[State 0, ChangeState]
type = ChangeState
trigger1 = time > 20
value = 1402
ctrl = 0

[Statedef 1410]
type    = S
movetype= A
physics = N
juggle  = 0
velset = -14,0
anim = 1400
ctrl = 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,11

[State 0, Explod]
type = Explod
trigger1 = timemod = 6,1
anim = 918
ID =  918
pos = 30,5
facing = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 0, ChangeState]
type = ChangeState
trigger1 = BackEdgeBodyDist < 10
value = 1411
ctrl = 0

[Statedef 1411]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,-14
anim = 1401
ctrl = 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,11


[State 0, ChangeState]
type = ChangeState
trigger1 = time > 12
value = 1402
ctrl = 0

[Statedef 1420]
type    = S
movetype= A
physics = N
juggle  = 0
velset = -14,0
anim = 1400
ctrl = 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,11

[State 0, Explod]
type = Explod
trigger1 = timemod = 6,1
anim = 918
ID =  918
pos = 30,5
facing = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 0, ChangeState]
type = ChangeState
trigger1 = BackEdgeBodyDist < 10
value = 1421
ctrl = 0

[Statedef 1421]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,-14
anim = 1401
ctrl = 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,11


[State 0, ChangeState]
type = ChangeState
trigger1 = time > 5
value = 1402
ctrl = 0



[Statedef 1402]
type    = A
movetype= A
physics = A
juggle  = 0
velset = 15,-3
anim = 1402
ctrl = 0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,11

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = -0.3


[State 650, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 3
sparkxy = -10, -33
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
fall = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1403
ctrl = 0


[Statedef 1403]
type    = A
movetype= I
physics = A
juggle  = 0
velset = 4,0
anim = 1403
ctrl = 0
sprpriority = 0

[State 0, ChangeState]
type = null;ChangeState
trigger1 = 0
value = 0
ctrl = 0
;anim =
;ignorehitpause =
;persistent =








