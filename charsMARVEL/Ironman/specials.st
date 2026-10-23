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
velset = 0,0
poweradd = 80

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 172,0

[State 1000, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "missi"
ID = 1010
stateno = 1010
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1010]
type = A
movetype = A
physics = N
anim = 1001
velset = 0,0
sprpriority = 99

[State 1010, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = animelem = 1
value = S1000,1
volume = 255
channel = 5

[State 1010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 65*facing
y = parent, Pos Y - 70

[State 1010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1010, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 1010, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
damage = 25,2
guardflag = MA
pausetime = 2,6
hitsound = S7,1
guardsound = S171,4
sparkno = S1009
;guard.sparkno = S6004
sparkxy = -40, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 6
envshake.ampl = 3

[State 1010, ParentVarSet]
type = ParentVarSet
trigger1 =fvar(26)!= 1
fv = 26
value = 1

[State 1010, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1000

; Special 1
[StateDef 1050]
type = A
movetype = A
physics = A
anim = 1050
ctrl = 0
velset = 0,0
poweradd = 80

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 172,0

[State 1050, VelAdd]
type = VelAdd
trigger1 = time < 42
y = -0.47

[State 1050, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "missi"
ID = 1051
stateno = 1051
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 1050, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

[Statedef 1051]
type = A
movetype = A
physics = N
anim = 1001
velset = 0,0
sprpriority = 99

[State 1051, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = animelem = 1
value = S1000,1
volume = 255
channel = 5

[State 1051, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 72*facing
y = parent, Pos Y - 95

[State 1051, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1051, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 1051, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
damage = 25,2
guardflag = MA
pausetime = 2,6
hitsound = S7,1
guardsound = S171,4
sparkno = S1009
;guard.sparkno = S6004
sparkxy = -40, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 6
envshake.ampl = 3

[State 1051, ParentVarSet]
type = ParentVarSet
trigger1 =fvar(26)!= 1
fv = 26
value = 1

[State 1051, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1050

;-------------------------------------------------------------------------------
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0
poweradd = 80

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 19
value = 173,4

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 173,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 10
value = 171,6

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
value = 172,8
channel = -1

[State 1100, Explod]
type = Explod
trigger1 =  animelem = 11
anim = 1101
ID = 1101
pos = 21,-84
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 2
removeongethit = 1

[State 1100, Explod]
type = Explod
trigger1 =  animelem = 3
anim = 1104
ID = 1104
pos = 41,-94
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 30
scale = 1,1
sprpriority = 9
removeongethit = 1

[State 1100, Explod]
type = Explod
trigger1 =  animelem = 3
anim = 1105
ID = 1105
pos = 0,-65
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = 50
scale = 1,1
sprpriority = 9
removeongethit = 1

[State 1100, Helper]
type = Helper
trigger1 = animelem = 11
helpertype = normal ;player
name = "missi"
ID = 1110
stateno = 1110
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 1100, Helper]
type = Helper
trigger1 = animelem = 12
helpertype = normal ;player
name = "missi"
ID = 1110
stateno = 1110
pos = 16,-85
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = time >= 40
trigger1 = command = "FF"
value = 100
ctrl = 0

[State 1100, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[StateDef 1110]
type = A
movetype = A
physics = N
anim = 1110
ctrl = 0
velset = 6,-7
poweradd = 0
sprpriority = 8

[State 1100, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = animelem = 1
value = S1100,1
volume = 255
channel = 5

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1109
time = -1

[State 0, VelSet]
type = VelSet
trigger1 = time = 10
x = 3
y = -3

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1110
trigger1 = vel x > 0
trigger1 = vel y < 0
value = 1110

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1112
trigger1 = vel x > 0
trigger1 = vel y > 0
value = 1112

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1114
trigger1 = vel x < 0
trigger1 = vel y > 0
value = 1114

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1116
trigger1 = vel x < 0
trigger1 = vel y < 0
value = 1116

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1113
trigger1 = vel x = [-1,1]
trigger1 = vel y > 0
value = 1113

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1115
trigger1 = vel x < 0
trigger1 = vel y = [-1,1]
value = 1115

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1111
trigger1 = vel x > 0
trigger1 = vel y = [-1,1]
value = 1111

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1117
trigger1 = vel x = [-1,1]
trigger1 = vel y < 0
value = 1117





[State 0, VelAdd]
type = VelAdd
triggerall = time > 10
triggerall = vel x < 4
trigger1 = p2bodydist x > 0
x = 0.2

[State 0, VelAdd]
type = VelAdd
triggerall = time > 10
triggerall = vel x > -4
trigger1 = p2bodydist x < 0
x = -0.2

[State 0, VelAdd]
type = VelAdd
triggerall = time > 10
triggerall = vel y < 4
trigger1 = p2bodydist y > 0
y = 0.2

[State 0, VelAdd]
type = VelAdd
triggerall = time > 10
triggerall = vel y > -4
trigger1 = p2bodydist y < 0
y = -0.2


[State 0, PosSet]
type = PosSet
trigger1 = pos y > -10
y = -10




[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,SA
damage = 55,3
animtype = medium
priority = 2, Hit
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 3,3
sparkno = 2
sparkxy = 5,0
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -8
air.velocity = 0, -3.5
fall = 1

[State 1051, ParentVarSet]
type = ParentVarSet
trigger1 =fvar(26)!= 1
fv = 26
value = 1

[State 0, DestroySelf]
type = changestate
trigger1 = time = 84
trigger2 = movehit
value = 1109
ctrl = 0

[StateDef 1109]
type = A
movetype = I
physics = N
anim = 1109
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,10

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0


;boxe


;--------------
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 60
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 174,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 172,13

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 173,4

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1204
ID =1204
pos = 12,-74
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = .7,.7
sprpriority = 99
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "mina"
ID = 1210
stateno = 1210
pos = 20,-68
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1210]
type = A
movetype = A
physics = N
anim = 1201
velset = .2,-0.4
sprpriority = 99

[State 1210, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = animelem = 1
value = S1200,1
volume = 255
channel = 5

[State 1510, PosSet]
type = velset
trigger1 = time = 5
x = 2
y = -4

[State 1510, PosSet]
type = veladd
triggerall = time > 5
trigger1 = 1
y = 0.3

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1208
time = -1


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 80,2
guardflag = MAFD
pausetime = 2,6
hitsound = S7,1
guardsound = S171,4
sparkno = 3
priority = 2, Hit
sparkxy = -10, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 6
envshake.ampl = 3
fall = 1

[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y > 0
value =  1205
ctrl = 0

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = time = 0
fv = 29
value = 1

[State 0, DestroySelf]
type = changestate
trigger1 =  movehit
value = 1208
ctrl = 0

[Statedef 1205]
type = C
movetype = A
physics = N
anim = 1202
velset = 1,0;,-4
sprpriority = 99

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,12

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 50
value = 173,3

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1510, PosSet]
type = velset
trigger1 = animelem = 5
x = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1209
time = -1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = C, SP
damage = 100,2
hitflag = MAFD
guardflag = L
pausetime = 2,6
hitsound = S7,1
guardsound = S171,4
sparkno = 3
priority = 2, Hit
sparkxy = -10, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 6
envshake.ampl = 3
fall = 1

[State 0, DestroySelf]
type = changestate
trigger1 =  movehit
trigger2 = time > 150
value = 1209
ctrl = 0

[StateDef 1209]
type = A
movetype = I
physics = N
anim = 1205
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,16

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 6
ampl = 4



[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

[StateDef 1208]
type = A
movetype = I
physics = N
anim = 1203
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,16

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 6
ampl = 4

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

; Special 1
[StateDef 1250]
type = A
movetype = A
physics = A
anim = 1250
ctrl = 0
velset = 0,0
poweradd = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,14

[State 0, VelAdd]
type = VelAdd
trigger1 = time < 27
y = -0.47

[State 1000, 2]
type = Projectile
triggerall = fvar(29) = 0
trigger1 = AnimElem = 6
ProjID = 1251
projanim = 1251
projhitanim = 1203
projremanim = 1203
projcancelanim = 1203
projheightbound = -440
velocity = 2.0,-1.5
accel = 0,.4
offset = 5,-87
projpriority = 5
projsprpriority = 5
attr = S,SP
guardflag = MA
hitflag = MAFD
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 55,0
pausetime = 4,4
;postype = P2
sparkno = 2
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-6
air.velocity = -8,-6;-4,5
down.velocity = 0,-6
down.bounce = -6
fall.velocity = 0,-6
fall = 1
air.fall = 1
envshake.time = 7
envshake.ampl = 4
afterimage.length = 30
afterimage.palbright = 15,5,5
afterimage.palcontrast = 155,55,55
afterimage.paladd =  15,5,5
afterimage.palmul = 11,1,1
afterimage.framegap = 3
afterimage.trans = add
afterimage.time = 100
p2stateno = 5130
;p2getp1state = 0

[State 1000, 2]
type = Projectile
triggerall = fvar(29) = 0
trigger1 = AnimElem = 6
ProjID = 1251
projanim = 1251
projhitanim = 1203
projremanim = 1203
projcancelanim = 1203
projheightbound = -440
velocity = 3.75,-1.5
accel = 0,.4
offset = 35,-87
projpriority = 5
projsprpriority =5
attr = S,SP
guardflag = MA
hitflag = MAFD
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 55,0
pausetime = 4,4
;postype = P2
sparkno = 2
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-6
air.velocity = -8,-6;-4,5
down.velocity = 0,-6
down.bounce = -6
fall.velocity = 0,-6
fall = 1
air.fall = 1
envshake.time = 7
envshake.ampl = 4
afterimage.length = 30
afterimage.palbright = 15,5,5
afterimage.palcontrast = 155,55,55
afterimage.paladd =  15,5,5
afterimage.palmul = 11,1,1
afterimage.framegap = 3
afterimage.trans = add
afterimage.time = 100
p2stateno = 5130
;p2getp1state = 0

[State 1000, 2]
type = Projectile
triggerall = fvar(29) = 1
trigger1 = AnimElem = 6
ProjID = 1251
projanim = 1252
projhitanim = 1203
projremanim = 1203
projcancelanim = 1203
projheightbound = -440
velocity = 2.0,-1.5
accel = 0,.4
offset = 5,-87
projpriority = 5
projsprpriority = 5
attr = S,SP
guardflag = MA
hitflag = MAFD
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 55,0
pausetime = 4,4
;postype = P2
sparkno = 2
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-6
air.velocity = -8,-6;-4,5
down.velocity = 0,-6
down.bounce = -6
fall.velocity = 0,-6
fall = 1
air.fall = 1
envshake.time = 7
envshake.ampl = 4
afterimage.length = 30
afterimage.palbright = 15,5,5
afterimage.palcontrast = 155,55,55
afterimage.paladd =  15,5,5
afterimage.palmul = 11,1,1
afterimage.framegap = 3
afterimage.trans = add
afterimage.time = 100
p2stateno = 5130
;p2getp1state = 0

[State 1000, 2]
type = Projectile
triggerall = fvar(29) = 1
trigger1 = AnimElem = 6
ProjID = 1251
projanim = 1252
projhitanim = 1203
projremanim = 1203
projcancelanim = 1203
projheightbound = -440
velocity = 3.75,-1.5
accel = 0,.4
offset = 35,-87
projpriority = 5
projsprpriority =5
attr = S,SP
guardflag = MA
hitflag = MAFD
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 55,0
pausetime = 4,4
;postype = P2
sparkno = 2
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,-6
air.velocity = -8,-6;-4,5
down.velocity = 0,-6
down.bounce = -6
fall.velocity = 0,-6
fall = 1
air.fall = 1
envshake.time = 7
envshake.ampl = 4
afterimage.length = 30
afterimage.palbright = 15,5,5
afterimage.palcontrast = 155,55,55
afterimage.paladd =  15,5,5
afterimage.palmul = 11,1,1
afterimage.framegap = 3
afterimage.trans = add
afterimage.time = 100
p2stateno = 5130
;p2getp1state = 0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------

[StateDef 1300]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 174,6

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "escudo"
ID = 1310
stateno = 1310
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale =.75
size.yscale =.75



[State 1000, changestate]
type = ChangeState
triggerall = time > 20
trigger1 = time = 80
trigger2 = numhelper(1310)=0
value = 1305
ctrl = 0

[StateDef 1305]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 1305
velset = 0,0

[State 1300, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = animelem = 1
value = S1300,1
volume = 255
channel = 5

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1310]
type = A
movetype = A
physics = N
anim = 1310
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 8*facing
y = parent, Pos Y - 120

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 220, HitDef]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = 100,2
guardflag = MA
pausetime = 8,18
hitsound = S7,1
guardsound = S171,4
sparkno = S1309
;guard.sparkno = S6004
sparkxy = -40, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -15,-2
guard.velocity = -5
air.velocity = -15,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 6
envshake.ampl = 3
fall = 1

[State 1310, ParentVarSet]
type = ParentVarSet
trigger1 =fvar(26)!= 1
fv = 26
value = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(1306)=0
trigger1 = movehit
anim = 1306
ID = 1306
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 10
scale = 1,1
sprpriority = 99
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1300
trigger3 = movehit

;-------------------------------------------------------------------------------
; Lazer Attack
[StateDef 1400]
type = S
movetype = A
physics = N
anim = 1400
ctrl = 0
velset = 8,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,7

[State 1400, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1404
trigger1 = p2dist x <= 90
trigger2 = time >= 30
value = 1404

[State 1400, SprPriority]
type = SprPriority
trigger1 =  1
value = 0

[State 1400, Explod]
type = Explod
triggerall = anim = 1404
trigger1 =  animelem = 1
anim = 1405
ID = 1405
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1400, Explod]
type = Explod
triggerall = anim = 1400
trigger1 = animelem = 1
anim = 101
ID = 1400
pos = -36,-17
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 18
sprpriority = -3
removeongethit = 1

[State 1400, Explod]
type = Explod
triggerall = anim = 1404
trigger1 = animelem = 1
anim = 101
ID = 1400
pos = -1,-18
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 18
sprpriority = -5
removeongethit = 1

[State 1400, VelSet]
type = VelSet
triggerall = anim = 1404
trigger1 = animelem = 2
x = 0
y = 0

[State 1400, Width]
type = Width
trigger1 = time > 18
player = 50,20

[State 1400, HitDef]
type = HitDef
triggerall = anim = 1404
trigger1 = timemod = 3,1
attr = S,SA
damage = 8,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,3
sparkno = s1402
sparkxy = -35, -80
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 31
ground.velocity = -2
air.type = Low
air.hittime = 30
air.velocity = -1,-2
envshake.time = 3
envshake.ampl = 2

[State 1400, ChangeState]
type = ChangeState
triggerall = anim = 1404
triggerall = movecontact
trigger1 =  animtime = 0
value = 1401
ctrl = 0

[State 1400, ChangeState]
type = ChangeState
triggerall = anim = 1404
triggerall = !movecontact
trigger1 =  animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[StateDef 1401]
type = S
movetype = A
physics = S
anim = 1401
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 173,6

[State 0, Explod]
type = Explod
trigger1 =  animelem = 1
anim = 1406
ID = 1406
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, SprPriority]
type = SprPriority
trigger1 =  1
value = 0


[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 75
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5,2
sparkno = -1
sparkxy = 5,0
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 5,-14
air.velocity = 3, -8
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(1403) = 0
trigger1 = movehit
anim = 1403
ID = 1403
pos = 0,-70
postype = p2  ;p2,front,back,left,right
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
value = 0
ctrl = 1
