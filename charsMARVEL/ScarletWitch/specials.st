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
poweradd = ifelse(var(30)=1,0,80)

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,10

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "hexbolt"
ID = 1010
stateno = 1010
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 1010]
type = A
movetype = A
physics = N
juggle = 9
anim = 1001
velset = 5,0
sprpriority = 99

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
trigger1 = time = 0
attr = S, SP
damage = 20,5
guardflag = MA
pausetime = 6,6
hitsound = S1000,13
guardsound = S171,4
sparkno = -1
;guard.sparkno = S6004
sparkxy = -20, 0; (enemynear,pos y)
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
fall = 1
p2stateno = 1020
envshake.time = 6
envshake.ampl = 3

[State 1010, VarSet]
type = ParentVarSet
trigger1 = movecontact
fv = 26
value = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(1002) = 0
trigger1 = movehit
anim = 1002
ID =  1002
pos = 0,-40
postype = p2
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 190
ownpal = 1
removeongethit = 0


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  movehit
trigger2 = time > 50

; Special 1
[StateDef 1020]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
poweradd = ifelse(var(30)=1,0,10)

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1020

[State 0, VelAdd]
type = posset
trigger1 = time = 0
y = 0


[State 1000, changestate]
type = selfState
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 1050]
type = A
movetype = I
physics = N
anim = 1021
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 99


[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = enemynear, Pos X ;+ 55*facing
y = enemynear, Pos Y ;- 25

[State 0, ChangeState]
type = ChangeState
trigger1 = enemynear,stateno != 1020
value = 1051
ctrl = 0

[StateDef 1051]
type = A
movetype = I
physics = N
anim = 1022
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 99

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
v = 41
range = 0,3

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
anim = 1030 + var(41)
ID = 1030
pos = 10,-30
postype = p1
vel = 3-random/500,-6+random/500
accel = 0,0.4
removetime = 35
scale = 1,1
sprpriority = 99

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
v = 41
range = 0,3

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
anim = 1030 + var(41)
ID = 1030
pos = 10,-30
postype = p1
vel = 2.2-random/500,-7+random/500
accel = 0,0.4
removetime = 35
scale = 1,1
sprpriority = 99

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
v = 41
range = 0,3

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
anim = 1030 + var(41)
ID = 1030
pos = 10,-30
postype = p1
vel = -2.2+random/500,-7+random/500
accel = 0,0.4
removetime = 35
scale = 1,1
sprpriority = 99

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
v = 41
range = 0,3

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
anim = 1030 + var(41)
ID = 1030
pos = 10,-30
postype = p1
vel = -3+random/500,-6+random/500
accel = 0,0.4
removetime = 35
scale = 1,1
sprpriority = 99


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0


[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0
poweradd = ifelse(var(30)=1,0,80)


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,0

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "qcf_c"
v = 41
value = 200

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "qcf_b"
trigger2 = var(59)
v = 41
value = 130

[State 0, VarSet]
type = VarSet
triggerall = command = "qcf_a"
trigger1 = time = 0
v = 41
value = 60

[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "fire"
ID = 1110
stateno = 1110
pos = var(41),0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
;size.xscale = .8
;size.yscale = .8

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1101
ID =  1101
pos = 32,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = -5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1110]
type = A
movetype = A
physics = N
anim = 1102
velset = 0,0
sprpriority = 99

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, Explod]
type = Explod
triggerall = numexplod(1105)=0
trigger1 = movehit
anim = 1105
ID = 1105
pos = 0,-20
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0

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
triggerall = parent,var(32)=0
trigger1 = time = 0
attr = S, SP
damage = 80,5
hitflag = MADF
guardflag = MA
pausetime = 6,6
hitsound = S7,1
guardsound = S171,4
sparkno = S1103
;guard.sparkno = S6004
sparkxy = -20, -70; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0,-6
guard.velocity = -5
air.velocity = 0,-6
down.velocity = 0,-6
down.bounce = -5
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
palfx.time = 40
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
envshake.time = 6
envshake.ampl = 3


[State 1110, VarSet]
type = ParentVarSet
trigger1 = movecontact
fv = 26
value = 1

[State 1110, VarSet]
type = ParentVarSet
trigger1 = movecontact
fv = 29
value = 1

[State 1110, ParentVarSet]
type = ParentVarSet
trigger1 = movecontact
v = 32
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
;trigger2 = parent, anim != 1100



[StateDef 1200]
type = S
movetype = I
physics = S
anim = 1200
ctrl = 0
velset = 0,0
poweradd = ifelse(var(30)=1,0,80)

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,9

[State 1200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 1

[State 0, Helper]
type = Helper
trigger1 = time = 1
helpertype = normal ;player
name = "escudo"
ID = 1210
stateno = 1210
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
size.xscale =0.5
size.yscale =0.5

[State 0, ChangeState]
type = ChangeState
trigger1 = time > 20
value = 0
ctrl = 1


[StateDef 1210]
type = A
movetype = I
physics = N
anim = 1201
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 99

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 50*facing
y = parent, Pos Y - 60

[State 0, NotHitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP;,NT,ST,HT
stateno = 1211
time = -1
ignorehitpause = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0;parent,stateno != 1200

[StateDef 1211]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1000,1

[State 0, Projectile]
type = Projectile
trigger1 = time = 0
ProjID = 1211
projanim = 1211
projhitanim = 1212
projremanim = 1212
projcancelanim = 1212
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 16,-2 + random/225
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 0,-20
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 70,1
pausetime = 3,3
sparkno = 3
sparkxy = 30,0
hitsound = 0,0
guardsound = 0,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 25
air.hittime = 20
ground.velocity = -3,0-2
air.velocity = -4,-3
fall = 1

[State 1211, VarSet]
type = ParentVarSet
trigger1 = movecontact
fv = 26
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 1210
ctrl = 0

[StateDef 1300]
type = S
movetype = I
physics = S
anim = 1300
ctrl = 0
velset = 0,0
poweradd = ifelse(var(30)=1,0,80)

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,8

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1301
ID = 1301
pos = 15,-65
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 45
scale = .35,.5
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA,SA,HA,NT,ST,HT
stateno = 1309
time = 60
ignorehitpause = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[StateDef 1309]
type = S
movetype = A
physics = S
anim = 1309
ctrl = 0
velset = 0,0

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 1310
p2stateno = 1320
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1310]
type    = S
movetype= A
physics = N
anim = 1310
sprpriority = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1301
ID = 1301
pos = 15,-65
postype = p1
vel = 4,0
bindtime = 1
removetime = 18
scale = .15,.5
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 25
anim = 1302
ID = 1302
pos = 0,-20
postype = p2
bindtime = 1
removetime = 35
scale = .5,.15
sprpriority = 10
ownpal = 1
removeongethit = 1


[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 2
value = -7

[State 810, TargetBind]
type = TargetBind
trigger1 = time = 1
pos = 200,-150

[State 810, TargetState]
type = TargetState
trigger1 = time = 30
value = 1330

[State 801, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1320]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 815, ScreenBound]
type = ScreenBound
trigger1 = time < 16
value = 0
movecamera = 0,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 5000
ID = 271291
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 2,0
removetime = 14
scale = 1,1
sprpriority = 13
ownpal = 1
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 5
ID = 271291
scale = .9,1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 271291
scale = .8,1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 7
ID = 271291
scale = .7,1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 271291
scale = .6,1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 271291
scale = .5,1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 10
ID = 271291
scale = .4,1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 11
ID = 271291
scale = .3,1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 12
ID = 271291
scale = .2,1


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 13
ID = 271291
scale = .1,1






[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1320


[Statedef 1330]
type    = A
movetype= H
physics = N
velset = 0,8
poweradd = ifelse(var(30)=1,0,50)


[State 0, Turn]
type = Turn
trigger1 = time = 0


[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 1330

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0


[StateDef 1400]
type = S
movetype = A
physics = S
anim = 1400
ctrl = 0
velset = 0,0
poweradd = ifelse(var(30)=1,0,80)

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,3

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "smart3"
trigger2 = var(59)
v = 41
value = 110

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "smart2"
v = 41
value = 60

[State 0, VarSet]
type = VarSet
triggerall = command = "smart1"
trigger1 = time = 0
v = 41
value = 10


[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "trap"
ID = 1410
stateno = 1410
pos = var(41),0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5


[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 950
ID =  1411
pos = 29,-17
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 15
scale = 1,.25
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1410]
type = A
movetype = A
physics = N
anim = 1401
velset = 0,0
sprpriority = 99

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = animelem = 34
v = 31
value = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = -20

[State 220, HitDef]
type = null;HitDef
trigger1 = time = 0
attr = S, SP
damage = 1,1
guardflag = MA
pausetime = 6,6
hitsound = S7,1
guardsound = S171,4
sparkno = -1;S1103
;guard.sparkno = S6004
sparkxy = -20, -70; (enemynear,pos y)
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

[State 0, Helper]
type = Helper
triggerall = var(31) = 0
triggerall = p2bodydist x < 30
triggerall = p2bodydist x > -30
triggerall = p2bodydist y > -10
trigger1 = numhelper(1415) = 0
helpertype = normal ;player
name = "trap"
ID = 1415
stateno = 1415
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = 2
size.yscale = 2

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 1415]
type = A
movetype = A
physics = N
anim = 1402
velset = 0,0
sprpriority = 99


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,11

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 50

[State 220, HitDef]
type = HitDef
triggerall = root,var(31)=0
trigger1 = time = 0
attr = S, SP
damage = 95,5
hitflag = MAFD
guardflag = MA
pausetime = 0,8
hitsound = S7,1
guardsound = S171,4
sparkno = 2
;guard.sparkno = S6004
sparkxy = 0, -90; (enemynear,pos y)
animtype = Up
ground.type = Hard
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0,-13
guard.velocity = -5
air.velocity = 0,-13
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 9
envshake.ampl = 5
fall = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
