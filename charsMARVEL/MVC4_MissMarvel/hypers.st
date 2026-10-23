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
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
;triggerall = !Var(29)
trigger1 = animelem = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = animelem = 2
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0



[State -2, Helper]
type = Helper
;triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 2
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

; end DCvM stuff

[State 0, Helper]
type = Helper
triggerall = numhelper(3010) = 0
trigger1 = time = 12
helpertype = normal ;player
name = "missi"
ID = 3010
stateno = 3010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 3110, back to stance]
type = ChangeState
triggerall = time > 13
trigger1 = numhelper(3010) = 0
value = 3001
ctrl = 0

[StateDef 3001]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 1009
velset = 0,0


[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 3010]
type = A
movetype = A
physics = N
anim = 3010
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 10*facing
y = parent, Pos Y - 63

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 174,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 25
value = 173,2

[State 220, HitDef]
type = HitDef
triggerall = time < 56
trigger1 = timemod= 2,1
attr = S, SP
damage = 8,2
guardflag = MA
pausetime = 0,1
hitsound = S2,1
guardsound = s3,0
sparkno = S1103
getpower = 0
sparkxy = -20, -5+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6,0
guard.velocity = -5
air.velocity = -5,0
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
envshake.time = 2
envshake.ampl = 2

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 29
attr = S, SP
damage = 16,2
guardflag = MA
pausetime = 0,1
hitsound = S2,2
guardsound = s3,0
sparkno = S1103
;guard.sparkno = S6004
sparkxy = -20, -5+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,-4
guard.velocity = -5
air.velocity = -9,-5
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
fall = 1
envshake.time = 5
envshake.ampl = 4


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, anim != 3000
trigger2 = animtime = 0




;3100
[StateDef 3100]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3100
velset = 0,0



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
;triggerall = !Var(29)
trigger1 = animelem = 9
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = animelem = 9
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0

[State -2, Helper]
type = Helper
;triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 2
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

; end DCvM stuff
 [State 0, Explod]
type = Explod
trigger1 =  animelem = 10
anim =  3101
ID =  3101
pos = 0,-80
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
scale = 1.5,1.5
sprpriority = 10
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = 172,9


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
value = 174,2


[State 220, HitDef]
type = HitDef
triggerall = var(30) = 0
trigger1 =time = 0
attr = S, SP
damage = 300,20
hitflag = MAFD
guardflag = MA
pausetime = 10,11
hitsound = S173,3
guardsound = s173,3
sparkno = S1103
getpower = 0
sparkxy = -20, -33+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -4,-11
guard.velocity = -5
air.velocity = -4,-11
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 11
envshake.ampl = 5

[State 0, VarSet]
type = VarSet
triggerall = var(30)!=1
trigger1 = movecontact
v = 30
value = 1

[State 0, VarSet]
type = VarSet
triggerall = fvar(29) != 1
trigger1 = movecontact
fv = 29
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 3
y = -5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0
y = 0


[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1

;3150
[StateDef 3150]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3150
velset = 0,0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 171,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
;triggerall = !Var(29)
trigger1 = animelem = 8
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = animelem = 8
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0



[State -2, Helper]
type = Helper
;triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 2
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

; end DCvM stuff
 [State 0, Explod]
type = Explod
trigger1 =  animelem = 9
anim =  3101
ID =  3101
pos = 0,-80
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
scale = 1.5,1.5
sprpriority = 10
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = 30,0


[State 220, HitDef]
type = HitDef
triggerall = var(30) = 0
trigger1 =time = 0
attr = S, SP
damage = 250,20
hitflag = MAFD
guardflag = MA
pausetime = 10,11
hitsound = s173,3
guardsound = s173,3
getpower = 0
sparkno = S1103
;guard.sparkno = S6004
sparkxy = -20, -33+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,-5
guard.velocity = -5
air.velocity = -9,-5
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 11
envshake.ampl = 5

[State 0, VarSet]
type = VarSet
triggerall = var(30)!=1
trigger1 = movecontact
v = 30
value = 1

[State 0, VarSet]
type = VarSet
triggerall = fvar(29) != 1
trigger1 = movecontact
fv = 29
value = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1


;3200

[StateDef 3200]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 0,0


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
;triggerall = !Var(29)
trigger1 = animelem = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = animelem = 2
Time = 60
;anim =-1;s3012
pos = 0,-95
sound = S10,0
poweradd = -1000
darken = 0



[State -2, Helper]
type = Helper
;triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 2
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

; end DCvM stuff
[State 0, Explod]
type = Explod
trigger1 =  time  = 11
anim = 3201
ID = 3201
pos = -10,-110
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 99
scale = 1,1
sprpriority = 10
removeongethit = 1


[State 0, Explod]
type = Explod
trigger1 =  time  = 18
anim = 3201
ID = 3201
pos = -10,-110
facing = -1
vfacing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 99
scale = 1,1
sprpriority = 10
removeongethit = 1


[State 0, PlaySnd]
type = PlaySnd
triggerall =  time > 11
triggerall =  time < 111
trigger1 = timemod = 6,1
value = 172,4

[State 0, Projectile]
type = Projectile
triggerall = var(29) = 0
triggerall =  time > 11
triggerall =  time < 111
trigger1 = timemod = 5,1
ProjID = 3205
projanim = 3205
projhitanim = 3210
projremanim = 3210
projcancelanim = 3210
hitsound = s172,10
guardsound = s3,0
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 8,-7
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 5,-115
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
; HitDef
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 15,1
pausetime = 2,2
sparkno = 1
sparkxy = 0,0
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 11
fall = 0

[State 0, Projectile]
type = Projectile
triggerall = var(29) = 0
triggerall =  time > 11
triggerall =  time < 111
trigger1 = timemod = 8,1
ProjID = 3205
projanim = 3205
projhitanim = 3210
projremanim = 3210
projcancelanim = 3210
hitsound = s172,10
guardsound = s3,0
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = -7,-6
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = -25,-115
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
; HitDef
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 15,1
pausetime = 2,2
sparkno = 1
sparkxy = 0,0
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 11
fall = 0

[State 0, Projectile]
type = Projectile
triggerall = var(29) = 0
triggerall =  time > 11
triggerall =  time < 111
trigger1 = timemod = 6,1
ProjID = 3206
projanim = 3206
projhitanim = 3210
projremanim = 3210
projcancelanim = 3210
hitsound = s172,10
guardsound = s3,0
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 0,-7
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = -10,-115
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
; HitDef
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 15,1
pausetime = 2,2
sparkno = 1
sparkxy = 0,0
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 11
fall = 0



[State 0, Projectile]
type = Projectile
triggerall = var(29) = 0
triggerall =  time > 11
triggerall =  time < 111
trigger1 = timemod = 6,1
ProjID = 3207
projanim = 3207
projhitanim = 3210
projremanim = 3210
projcancelanim = 3210
hitsound = s172,10
guardsound = s3,0
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 8,0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 15,-110
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
; HitDef
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 15,1
pausetime = 2,2
sparkno = 1
sparkxy = 0,0
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 11
fall = 0  ;uhu

;clone
[State 0, Projectile]
type = Projectile
triggerall = var(29) = 0
triggerall =  time > 11
triggerall =  time < 111
trigger1 = timemod = 8,1
ProjID = 3208
projanim = 3208
projhitanim = 3210
projremanim = 3210
projcancelanim = 3210
hitsound = s172,10
guardsound = s3,0
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 7,6
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 5,-100
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
; HitDef
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 15,1
pausetime = 2,2
sparkno = 1
sparkxy = 0,0
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 11
fall = 0

[State 0, Projectile]
type = Projectile
triggerall = var(29) = 0
triggerall =  time > 11
triggerall =  time < 111
trigger1 = timemod = 11,1
ProjID = 3208
projanim = 3208
projhitanim = 3210
projremanim = 3210
projcancelanim = 3210
hitsound = s172,10
guardsound = s3,0
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = -7,6
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = -25,-100
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
; HitDef
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 15,1
pausetime = 2,2
sparkno = 1
sparkxy = 0,0
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 11
fall = 0

[State 0, Projectile]
type = Projectile
triggerall = var(29) = 0
triggerall =  time > 11
triggerall =  time < 111
trigger1 = timemod = 11,1
ProjID = 3206
projanim = 3206
projhitanim = 3210
projremanim = 3210
projcancelanim = 3210
hitsound = s172,10
guardsound = s3,0
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 0,6
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = -10,-95
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
; HitDef
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 15,1
pausetime = 2,2
sparkno = 1
sparkxy = 0,0
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 11
fall = 0

[State 0, Projectile]
type = Projectile
triggerall = var(29) = 0
triggerall =  time > 11
triggerall =  time < 111
trigger1 = timemod = 11,1
ProjID = 3207
projanim = 3207
projhitanim = 3210
projremanim = 3210
projcancelanim = 3210
hitsound = s172,10
guardsound = s3,0
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = -7,0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = -10,-110
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
; HitDef
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 15,1
pausetime = 2,2
sparkno = 1
sparkxy = 0,0
ground.hittime = 20
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
sprpriority = 11
fall = 0

[State 0, VarSet];Move Counter
type = VarSet
triggerall = var(29)!=1
trigger1 = animelem = 4
v = 29
value = 1

[State 3200, VarSet];OTG
type = VarSet
triggerall= fvar(29)!=1
trigger1 = projcontact[3025] = 1
fv = 29
value = 1

[State 3200, VarSet];OTG
type = VarSet
triggerall= fvar(29)!=1
trigger1 = projcontact[3026] = 1
fv = 29
value = 1

[State 3200, VarSet];OTG
type = VarSet
triggerall= fvar(29)!=1
trigger1 = projcontact[3027] = 1
fv = 29
value = 1

[State 3200, VarSet];OTG
type = VarSet
triggerall= fvar(29)!=1
trigger1 = projcontact[3028] = 1
fv = 29
value = 1

[State 3200, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------
;3300
[StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3300
velset = 0,0



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
;triggerall = !Var(29)
trigger1 = animelem = 4
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
;triggerall = !Var(29)
trigger1 = animelem = 4
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0
move = 60
movetime = 60



[State -2, Helper]
type = Helper
;triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 2
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
;triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 2
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

; end DCvM stuff


[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3301
ID = 3301
pos = 0,-10
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermove = 999
pausemove = 999
pausemovetime = 999
scale = 1,1
sprpriority = 10
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,8





[State -3, sense bar]
type = Explod
trigger1 = animtime = 0
anim = 3309
id = 3309
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
triggerall = animtime = 0
trigger1 = numexplod(3308)=0
anim = 3308
id = 3308
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3310
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


[StateDef 3310]
type    = A
movetype = I
physics = N
ctrl = 0
velset = 0,0


[State 0, PlaySnd]
type = PlaySnd
triggerall = prevstateno = 3300
trigger1 = time = 30
value = 171,8

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 42
value = stateno


[State 0, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y < -300
y = -300



[State 0, ChangeAnim]
type = ChangeAnim
triggerall = prevstateno != 3399
trigger1 = time = 0
value = 3310

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = command != "holdback"
trigger1 =  command = "holdfwd"
x = 6

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = command != "holdfwd"
trigger1 =  command = "holdback"
x = -3

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = pos y > -300
triggerall = command != "holddown"
trigger1 =  command = "holdup"
y = -2

[State 0, VelSet]
type = VelSet
triggerall = !var(59)
triggerall = pos y < 0
triggerall = command != "holdup"
trigger1 =  command = "holddown"
y = 2

;----AI----

[State 0, VelSet]
type = VelSet
triggerall = var(59)
trigger1 = p2bodydist x > 15
x = 6

[State 0, VelSet]
type = VelSet
triggerall = var(59)
trigger1 =  p2bodydist x < 15
x = -3

[State 0, VelSet]
type = VelSet
triggerall = var(59)
triggerall = pos y > -300
trigger1 =  p2bodydist y < 15
y = -2

[State 0, VelSet]
type = VelSet
triggerall = var(59)
triggerall = pos y < 0
trigger1 =  p2bodydist y > 15
y = 2
;----------

[State 0, VelSet]
type = VelSet
trigger1 =  command != "holddown" && command != "holdup"
y = 0

[State 0, VelSet]
type = VelSet
trigger1 =  command != "holdfwd" && command != "holdback"
x = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3311
trigger1 =  vel x > 0
;trigger1 = vel y = 0
value = 3311

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3312
trigger1 =  vel x < 0
;trigger1 = vel y = 0
value = 3312

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3313
trigger1 =  vel x = 0
trigger1 = vel y < 0
value = 3313

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3310
trigger1 =  vel x = 0
trigger1 = vel y >= 0
value = 3310

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "x"
value = 3320
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "y"
value = 3321
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "z"
value = 3322
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "a"
value = 3330
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "b"
value = 3331
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  command = "c"
value = 3332
ctrl = 0

[State 0, Turn]
type = Turn
trigger1 = P2Dist x < -10

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = win
trigger2 = lose
id = 3309
;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = numexplod(3309) = 0
value = 3390
ctrl = 0

[StateDef 3320]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 42
value = stateno

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = prevstateno != 3399
trigger1 = time = 0
value = 3320

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
air.cornerpush.veloff = -20
damage = 40,4
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
getpower = 0
sparkxy = -15, -95
hitsound = s175,2
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -3
air.type = Low
air.hittime = 20
air.velocity = -3,-2
envshake.time = 4
envshake.ampl = 2

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "a"
value = 3330
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "y"
value = 3321
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3310
ctrl = 0

[StateDef 3321]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 42
value = stateno

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = prevstateno != 3399
trigger1 = time = 0
value = 3321

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 0,1

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
air.cornerpush.veloff = -20
damage = 60,4
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -15, -95
hitsound = s175,1
getpower = 0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -3
air.type = Low
air.hittime = 20
air.velocity = -3,-2
envshake.time = 8
envshake.ampl = 3

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "b"
value = 3331
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "z"
value = 3322
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3310
ctrl = 0

[StateDef 3322]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 4
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 2
y = -6


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 0
y = 0




[State 0, PosSet]
type = PosSet
trigger1 = pos y < -300
y = -300

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 42
value = stateno

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = prevstateno != 3399
trigger1 = time = 0
value = 3322

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 0,2

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
air.cornerpush.veloff = -20
damage = 90,9
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 2
getpower = 0
sparkxy = -15, -95
hitsound = s175,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 31
ground.velocity = -5,-11
air.type = Low
air.hittime = 30
air.velocity = -5,-11
envshake.time = 10
envshake.ampl = 3

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3310
ctrl = 0

;----chutes
[StateDef 3330]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 7
y = 0


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 42
value = stateno

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = prevstateno != 3399
trigger1 = time = 0
value = 3330

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
air.cornerpush.veloff = -20
damage = 45,4
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -15, -45
hitsound = s175,2
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -3
air.type = Low
air.hittime = 20
air.velocity = -3,-2
envshake.time = 4
envshake.ampl = 2

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "b"
value = 3331
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "y"
value = 3321
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3310
ctrl = 0

[StateDef 3331]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 42
value = stateno

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = prevstateno != 3399
trigger1 = time = 0
value = 3331

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 0,1

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
air.cornerpush.veloff = -20
damage = 75,4
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 1
getpower = 0
sparkxy = -15, -45
hitsound = s175,1
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -3
air.type = Low
air.hittime = 20
air.velocity = -3,-2
envshake.time = 8
envshake.ampl = 3

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "c"
value = 3332
ctrl = 0

[State 0, ChangeState]
type = ChangeState
triggerall = movehit
trigger1 = command = "z"
value = 3322
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3310
ctrl = 0

[StateDef 3332]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 42
value = stateno

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = prevstateno != 3399
trigger1 = time = 0
value = 3332

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 0,2

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
air.cornerpush.veloff = -20
damage = 80,4
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 2
sparkxy = -15, -70
hitsound = s175,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 21
ground.velocity = -14,-2
air.type = Low
air.hittime = 20
air.velocity = -11,-2
envshake.time = 10
envshake.ampl = 4
fall = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3310
ctrl = 0

[StateDef 3399]
type    = A
movetype = I
physics = N
ctrl = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -gethitvar(damage)
kill = 1


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3399
time = 2
ignorehitpause = 1


[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 5
add = 0,0,0
mul = 256,256,256
sinadd = 220,220,220,40
invertall = 0
color = 256

[State 0, ChangeState]
type = ChangeState
triggerall = life <= 0
trigger1 = time = 0
value = 5050

[State 0, ChangeState]
type = ChangeState
triggerall = life > 0
trigger1 = time = 0
value = var(42);3310;prevstateno
ctrl = 0


[StateDef 3390]
type    = A
movetype = I
physics = N
ctrl = 0
velset = 0,5
anim = 3350

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 15
add = 0,0,0
mul = 116,116,26
sinadd = 110,110,20,10
invertall = 0
color = 256



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 176,0


[State 0, ChangeState]
type = ChangeState
trigger1 = pos y > 0
value = 3391
ctrl = 0

[StateDef 3391]
type    = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 3351

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,11

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1




