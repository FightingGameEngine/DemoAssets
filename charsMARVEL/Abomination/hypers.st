; States file for {character} -- Hypers
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
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 0

[State 3000, Explod]
type = Explod
trigger1 = time = 1
anim = 3002
ID = 3000
pos = 0,0
postype = p1
bindtime = 20
removetime = 20
scale = 1,1
sprpriority = 10
ontop = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 5
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 25
Time = 40
pos = 100,-68
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = AnimElem = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = AnimElem = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = AnimElem = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 3000,0
channel = 5

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "Blast"
ID = 3001
stateno = 3001
pos = 110,-70
postype = p1
bindtime = -1
size.shadowoffset =0

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3001]
type = A
movetype = A
physics = N
anim = 3001
velset = 0,0
sprpriority = 99

[State 3001, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x = 110
y = parent,pos y - 70

[State 3001, BindToParent]
type = BindToParent
trigger1 = 1
time = 120
pos = 108,-70

[State 3001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3001, PlaySnd]
type = PlaySnd
triggerall = time = 40
trigger1 = timemod = 12,1
value = 10,10
channel = 4

[State 5304, color]
type = palFX
trigger1 = time != 0
add = 99,195,55
mul = 130, 255, 50
sinadd = 0,50,10,15
time = 70

[State 3001, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HA
damage = 3,1
guardflag = MA
pausetime = 0,0
hitsound = S9,2
guardsound = -1
sparkno = S6000
sparkxy = 0,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,0
guard.velocity = -5
air.velocity = -4,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
P2stateno =5304

[State 3001, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3000
channel = 1

[State 3001, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 3000

;;-------------------------------------------------------------------------
; P2 Gamma Irradiated

[Statedef 5304]
type = S
movetype= U
physics = N
velset = 0,0

[State 5304, color]
type = palFX
trigger1 = time != 0
add = 99,195,55
mul = 130, 255, 50
sinadd = 0,50,10,15
time = 370

[State 5304, LifeAdd]
type = LifeAdd
trigger1 = Timemod = 2,1
value = -8

[State 5304, PowerAdd]
type = PowerAdd
trigger1 = Timemod = 2,1
value = 18

[State 5304, anim]
type = Changeanim
trigger1 = time = 0
value = 5300

[State 5304, SelfState]
type = SelfState
trigger1 = time = 40
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 5304, End]
type = ChangeState
trigger1 = time = 15
trigger1 = Pos Y < 0
value = 15304

;-------------------------------------------------------------

[Statedef 15304]
type    = S
movetype= H
physics = N
velset = 0,2
ctrl = 0
anim = 5070

[State 15304, 0]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 15304, 1]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 15304, 2]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 15304, 3]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100
ctrl = 1

;-------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Hyper 2 = Gamma Wave

[Statedef 3100]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 0
facep2 = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time  = 7
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time  = 7
Time = 40
pos = 80,-88
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time  = 7
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time  = 7
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time  = 7
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 3100,0
channel = 5

[State 3100, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3103
ID = 3103
pos = 200,-200
removetime = 25
sprpriority = 10
vel = 0,0
accel = 0,1
ontop = 1
shadow = 0,0,0
ownpal = 1
scale = 2,2
removeongethit = 0
ignorehitpause = 1

[State 3100, Explod]
type = Explod
trigger1 = time = 60
anim = 3102
ID = 3102
pos = 180,8
removetime = -2
sprpriority = 10
facing = -1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 3100, Explod]
type = Explod
trigger1 = time = 80
anim = 3102
ID = 3102
pos = 200,8
removetime = -2
sprpriority = 10
facing = -1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 3100, Explod]
type = Explod
trigger1 = time = 70
anim = 3102
ID = 3102
pos = 230,8
removetime = -2
sprpriority = 10
facing = -1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 3100, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1202
ID = 1202
pos = 80,8
removetime = -2
sprpriority = 0
facing = -1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 3100, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 40
value = 1

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 3
value = 172,7
channel = 4

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 4
value = 172,12
channel = 3

[State 3100, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
time = 125
freq = 60
ampl = -4
phase = 90

[State 3100]
type = PlaySnd
trigger1 = Time = 55 -(3*var(29))
trigger2 = Time = 67 -(3*var(29)) || Time = 79 -(3*var(29)) || Time = 91 -(3*var(29))
value = 3100,1

[State 3100]
type = Helper
trigger1 = Time = 55 -(3*var(29))
stateno = 3101
id = 3101
ownpal = 1
pos = 112,0

[State 3100]
type = Helper
trigger1 = Time = 61 -(3*var(29))
stateno = 3101
id = 3101
ownpal = 1
pos = 146,0

[State 3100]
type = Helper
trigger1 = Time = 67 -(3*var(29))
stateno = 3101
id = 3101
ownpal = 1
pos = 178,0

[State 3100]
type = Helper
trigger1 = Time = 72 -(3*var(29))
stateno = 31011
id = 31011
ownpal = 1
pos = 230,0

[State 3100]
type = VarAdd
trigger1 = AnimElem = 6, >= 0
var(9) = 1
ignorehitpause = 1
persistent = 0

[State 3100, Varset]
type = varset
trigger1 = enemynear,movetype = H
fv = 29
value = 1

[State 3100]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------
;Ground Helper
[Statedef 3101]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 3
velset = 0,0
hitcountpersist = 1

[State 3101]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 3101
value = 3101

[State 3101]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3101]
type = VelSet
trigger1 = Time = 0
y = -7

[State 3101]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 3101]
type = VelSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 3101]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 3101]
type = HitOverride
trigger1 = 1
stateno = 31012
attr = SCA,AP
slot = 0
time = -1

[State 3101]
type = HitDef
attr = A, HP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 83,7
animtype = Medium
priority  = 5, Hit
guardflag = MA
hitflag = MAFD
pausetime = 13,2
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = 2;s7702
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -7,-6
air.velocity = -7,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 50,25
sprpriority = 3
air.fall = 1
fall = 1

[State 3101]
type = ChangeState
trigger1 = MoveContact
value = 31012
ignorehitpause = 1

[State 3101]
type = ChangeState
trigger1 = MoveReversed
ignorehitpause = 1
value = 31012

[State 3101]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------------------
;Ground Helper (4th hit)
[Statedef 31011]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 3
velset = 0,0
hitcountpersist = 1

[State 31011]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 3101
value = 3101

[State 31011]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 31011]
type = VelSet
trigger1 = Time = 0
y = -7

[State 31011]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 31011]
type = VelSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 31011]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 31011]
type = HitOverride
trigger1 = 1
stateno = 31012
attr = SCA,AP
slot = 0
time = -1

[State 31011]
type = HitDef
attr = A, HP
triggerall = parent,fvar(29)=0
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 133,15
animtype = Medium
priority  = 5, Hit
guardflag = MA
hitflag = MAFD
pausetime = 13,2
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = 2;s7702
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -7,-6
air.velocity = -7,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 50,25
sprpriority = 3
air.fall = 1
fall = 1

[State 31011]
type = ChangeState
trigger1 = MoveContact
value = 31012
ignorehitpause = 1

[State 31011]
type = ChangeState
trigger1 = MoveReversed
ignorehitpause = 1
value = 31012

[State 31011]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------------------
;Ground End
[Statedef 31012]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 31012]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 31012]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 31012]
type = VelSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 31012]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------

[Statedef 3102]
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 3102]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Hyper 3 = Ribbon Slash

[Statedef 3200]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3200
ctrl = 0
sprpriority = 2
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 0,1
;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time  = 7
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time  = 7
Time = 40
pos = 80,-88
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time  = 7
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time  = 7
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time  = 7
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3200, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 30
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = S3106
sparkxy = -30,-60
hitsound = s172,10
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 4,0
air.type = Low
air.hittime = 5
air.velocity = 2,1
;p1stateno = 3101
kill = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = movehit
trigger1 = !moveguarded
value = 3201
ctrl = 0

[State 3200, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[StateDef 3201]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3201
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 8
value = 0,1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3201
trigger1 = time > 50
value = 3202

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3202
trigger1 = time > 100
value = 3203

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3203
trigger1 = time > 150
value = 3204

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3204
trigger1 = time > 200
value = 3205

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 7
attr = S,HA
damage = 5,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = S3106
sparkxy = -45,floor(-70 + random/50)
hitsound = s172,10
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -0.3,0
air.type = Low
air.hittime = 5
air.velocity = -1,1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 240, HitDef]
type = HitDef
triggerall = anim = 3205
trigger1 = animelem = 3
attr = S,HA
damage = 5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = S3106
sparkxy = -10,-60
hitsound = s172,8
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
kill = 0
p2stateno = 3202

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3205
trigger1 = animelem = 3
value = 30,0

[State 0, VelSet]
type = VelSet
triggerall = anim = 3205
trigger1 = animelem = 3
x = 20
y = 0

[State 3200, back to stance]
type = ChangeState
triggerall = anim = 3205
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 3202]
type    = A
physics = N
movetype = H
ctrl = 0
velset = -12,0
anim = 5002

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 70
value = -205
kill = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 3200,0
channel = 5

[State 0, SelfState]
type = SelfState
trigger1 = time = 10
value = 5100

[State 0, SelfState]
type = SelfState
triggerall = time = 0
trigger1 = pos y != 0
value = 5100

;-------------------------------------------------------------------------------
;Gamma Radiation Overload
[StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3300
velset = 0,0

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 6
time = 100
add = 0,155,0
mul = 156,256,156
sinadd = 10,50,10,10
;invertall = 1
color = 76

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 3
time = 12
add = 0,155,0
mul = 36,156,36
sinadd = 10,150,10,2
invertall = 1
color = 76

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 10,10
channel = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 3300,0
channel = 5

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time  = 7
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time  = 7
Time = 40
pos = 80,-88
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time  = 7
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time  = 7
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time  = 7
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3301)=0
anim = 3301
id = 3301
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3302)=0
anim = 3302
id = 3302
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 3300, VarSet]
type = VarSet
trigger1 = animelem = 6
v = 11
value = 3

[State 3300, LifeAdd]
type = LifeAdd
triggerall = life < 50
triggerall = numexplod(3302)=0
trigger1 = Timemod = 3,1
value = 18

[State 3300, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
