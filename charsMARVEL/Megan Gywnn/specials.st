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
poweradd = 40

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1001
ID = 1001
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 10
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
trigger2 = animelem = 20
anim =  1105
ID =  1105
pos = 5,-82
postype = p1  ;p2,front,back,left,right
vel = 2+(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 25
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
trigger2 = animelem = 20
anim =  1105
ID =  1105
pos = 5,-82
postype = p1  ;p2,front,back,left,right
vel = 2+(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 25
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
trigger2 = animelem = 20
anim =  1105
ID =  1105
pos = 5,-82
postype = p1  ;p2,front,back,left,right
vel = 2+(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 25
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
trigger2 = animelem = 20
ProjID = 1010
projanim = 1010
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projremove = 1
projremovetime = -1
velocity = 10,0
remvelocity = 0,0
projscale = .5,.5
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 5,-82
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 22,1
pausetime = 3,3
sparkno = 1
sparkxy = 10,0
hitsound = s172,4
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 25
air.hittime = 25
ground.velocity = -1,0
air.velocity = -2,-3
afterimage.length = 10
afterimage.palbright = 5,5,5
afterimage.palcontrast = 55,55,55
afterimage.paladd =  5,5,5
afterimage.palmul = 1,1,1
afterimage.framegap = 1
afterimage.trans = add;,addalpha,sub
afterimage.time = 20

[State 220, swoosh]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 20
value = 172,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 12
anim =  1105
ID =  1105
pos = 5,-62
postype = p1  ;p2,front,back,left,right
vel = 2+(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 25
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 12
anim =  1105
ID =  1105
pos = 5,-62
postype = p1  ;p2,front,back,left,right
vel = 2+(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 25
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 12
anim =  1105
ID =  1105
pos = 5,-62
postype = p1  ;p2,front,back,left,right
vel = 2+(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 25
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 12
ProjID = 1010
projanim = 1010
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projremove = 1
projremovetime = -1
velocity = 10,0
remvelocity = 0,0
projscale = .5,.5
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 5,-62
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 22,1
pausetime = 3,3
sparkno = 1
sparkxy = 10,0
hitsound = s172,4
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 25
air.hittime = 25
ground.velocity = -1,0
air.velocity = -2,-3
afterimage.length = 10
afterimage.palbright = 5,5,5
afterimage.palcontrast = 55,55,55
afterimage.paladd =  5,5,5
afterimage.palmul = 1,1,1
afterimage.framegap = 1
afterimage.trans = add;,addalpha,sub
afterimage.time = 20

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


 [StateDef 1020]
type = A
movetype = A
physics = N
anim = 1020
ctrl = 0
poweradd = 40

[State 0, VelSet]
type = VelSet
trigger1 =  time = 3
y = 0.15
x = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim =  1105
ID =  1105
pos = 10,-63
postype = p1  ;p2,front,back,left,right
vel = 2+(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 25
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim =  1105
ID =  1105
pos = 10,-63
postype = p1  ;p2,front,back,left,right
vel = 2+(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 25
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim =  1105
ID =  1105
pos = 10,-63
postype = p1  ;p2,front,back,left,right
vel = 2+(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 25
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 220, swoosh]
type = PlaySnd
trigger1 = animelem = 5
value = 172,1

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 5
ProjID = 1021
projanim = 1021
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projremove = 1
projremovetime = -1
velocity = 9,5
remvelocity = 0,0
projscale = .5,.5
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 8,-66
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 44,1
pausetime = 3,3
sparkno = 1
sparkxy = 10,0
hitsound = s172,4
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 15
air.hittime = 25
ground.velocity = -1,0
air.velocity = -2,-3
afterimage.length = 10
afterimage.palbright = 5,5,5
afterimage.palcontrast = 55,55,55
afterimage.paladd =  5,5,5
afterimage.palmul = 1,1,1
afterimage.framegap = 1
afterimage.trans = add;,addalpha,sub
afterimage.time = 20



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1



[StateDef 1100]
type = A
movetype = A
physics = N
anim = 1100
ctrl = 0
velset = -4,-2
poweradd = 40


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1150
ctrl = 0

[StateDef 1110]
type = A
movetype = A
physics = N
anim = 1100
ctrl = 0
velset = -5,0
poweradd = 40


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1150
ctrl = 0

[StateDef 1120]
type = A
movetype = A
physics = N
anim = 1100
ctrl = 0
velset = -4,-5
poweradd = 40


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1150
ctrl = 0

[StateDef 1150]
type = A
movetype = A
physics = N
anim = 1101
ctrl = 0
velset = 15,0
poweradd = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 0
value = 172,3

[State 0, Explod]
type = Explod
trigger1 = 1
anim =  1105
ID =  1105
pos = 0,-60
postype = p1  ;p2,front,back,left,right
vel = -2-(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 20
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = 1
anim =  1105
ID =  1105
pos = 3,-55
postype = p1  ;p2,front,back,left,right
vel = -2-(random/500),-1 -(random/500)
accel = 0,0.2
random = 0,0
removetime = 20
scale = .25,.25
sprpriority = -5
ownpal = 1

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 55,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = 2
sparkxy = -1, -55
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -2
air.type = Low
air.hittime = 20
air.velocity = -3,-2

[State 0, ChangeState]
type = ChangeState
trigger1 =  movehit
trigger2 = moveguarded
value = 1151
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


[State 1000, changestate]
type = ChangeState
trigger1 = time = 30
value = 1160
ctrl = 0

[StateDef 1151]
type = A
movetype = I
physics = N
anim = 1102
ctrl = 0
velset = 15,0
poweradd = 0

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 1160
ctrl = 0

[StateDef 1160]
type = A
movetype = I
physics = N
anim = 1103
ctrl = 0
velset = 2,0
poweradd = 0

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1



[StateDef 1200]
type = A
movetype = A
physics = N
anim = 1201
ctrl = 0
velset = 0,0
poweradd = 10

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "qcb_c"
trigger2 = var(59) &&  P2BodyDist X > 130
v = 41
value = 4

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "qcb_b"
trigger2 = var(59) &&  P2BodyDist X <= 130
v = 41
value = 2


[State 0, VarSet]
type = VarSet
triggerall = command = "qcb_a"
trigger1 = time = 0
v = 41
value = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 0
value = 172,0


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1200
ID = 1200
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = -5
removeongethit = 1
ignorehitpause = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 11
x = 4+var(41)
y = 2

[State 0, VelAdd]
type = VelAdd
trigger1 =  time > 11
trigger1 = time < 25
y = -0.6
;ignorehitpause =
;persistent =
[State 0, VelAdd]
type = VelAdd
trigger1 =  time > 24
trigger1 = time < 44
y = 0.6

[State 0, VelSet]
type = VelSet
trigger1 = time = 50
y = 0
x = 2


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 1
ID = 1200
scale = .45,.45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 3
ID = 1200
scale = .4,.4

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 5
ID = 1200
scale = .35,35

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 7
ID = 1200
scale = .3,.3

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 9
ID = 1200
scale = .25,.25

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 11
ID = 1200
scale = .2,.2

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 43
ID = 1200
scale = .25,.25

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 45
ID = 1200
scale = .3,.3

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 47
ID = 1200
scale = .3,.3

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 49
ID = 1200
scale = .35,.35

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =  time = 51
ID = 1200
scale = .43,.43


[State 0, Explod]
type = Explod
triggerall = time > 10
triggerall = time < 42
trigger1 = 1
anim =  1105
ID =  1105
pos = 0,-20
postype = p1  ;p2,front,back,left,right
vel = -2-(random/500),-1 -(random/500)
accel = 0,0.3
random = 0,0
removetime = 20
scale = .15,.15
sprpriority = -5
ownpal = 1

[State 0, Explod]
type = Explod
triggerall = time > 10
triggerall = time < 42
trigger1 = 1
anim =  1105
ID =  1105
pos = 3,-15
postype = p1  ;p2,front,back,left,right
vel = -2-(random/500),-1 -(random/500)
accel = 0,0.2
random = 0,0
removetime = 20
scale = .15,.15
sprpriority = -5
ownpal = 1



[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1




