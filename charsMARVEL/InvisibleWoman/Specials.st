;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;TEMPORARY INVISIBILITY


[StateDef 1150]
type = S
movetype= I
physics = S
juggle  = 1
ctrl = 0
anim = 177
poweradd = 20
sprpriority = 2


[State 106, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
channel = 2
value = 1400,0

[State 0, VarSet]
type = VarSet
trigger1 = animelem = 13
v = 24   ;fv = 10
value = 1


[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 1151]
type = S
movetype= I
physics = S
juggle  = 1
ctrl = 0
anim = 178
poweradd = 20
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = animelem = 1
v = 24   ;fv = 10
value = 0


[State 1101, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;:::::::::::::::::suprise attack

[StateDef 1350]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 176
poweradd = 20
sprpriority = 2

[State 1100, Explod]
type = Explod
trigger1 = animelem = 1
anim = 7023
ID = 7023
pos = -40,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = .9,.9
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
;ignorehitpause =
;persistent =



[State 1050, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1360
ctrl = 1



[StateDef 1360]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 179
poweradd = 20
sprpriority = 2

[State 100, 5]
type = PlaySnd
trigger1 = AnimElem = 1
channel = 2
value = 1400,2

[State 0, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = !time
trigger1 = facing = 1
x = enemynear, pos x -35
y = 0
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = !time
trigger1 = facing = -1
x = enemynear, pos x +35
y = 0


[State 1050, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 50,5
animtype = Light
guardflag = S
hitflag = MAF
priority = 5, Hit
pausetime = 10, 10
sparkno = S8220
sparkxy = -10, -76
hitsound = S5,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5, -3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5,-3
air.hittime = 12
fall=1


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
;ignorehitpause =
;persistent =

[State 1050, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1355
ctrl = 1



[Statedef 1355]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 1350
poweradd = 60
sprpriority = 2

[State 1355, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 10
y = 0

[State 1355, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 1355, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 72,1
animtype = High
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = low;trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -10,0

[State 1355, Invisibility Effect]
type = AfterImage
trigger1 = var(0) = 1
;time = 25
;length = 25
time = 375
length = 375
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

[State 1355, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



[StateDef 1351]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 176
poweradd = 20
sprpriority = 2



[State 1100, Explod]
type = Explod
trigger1 = animelem = 1
anim = 7023
ID = 7023
pos = -40,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = .9,.9
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
;ignorehitpause =
;persistent =



[State 1050, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1370
ctrl = 1



[StateDef 1370]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 179
poweradd = 20
sprpriority = 2

[State 1370, 5]
type = PlaySnd
trigger1 = AnimElem = 1
channel = 2
value = 1400,2

[State 0, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = !time
trigger1 = facing = 1
x = enemynear, pos x -60
y = 0
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = !time
trigger1 = facing = -1
x = enemynear, pos x +60
y = 0


[State 1050, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 50,5
animtype = Light
guardflag = C
hitflag = MAF
priority = 5, Hit
pausetime = 10, 10
sparkno = S8220
sparkxy = -10, -76
hitsound = S5,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5, -3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5,-3
air.hittime = 12
fall=1


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
;ignorehitpause =
;persistent =

[State 1050, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1356
ctrl = 1

[Statedef 1356]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = 2

[State 1356, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 15
y = 0

[State 1356, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 1356, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -15,0
air.type = Low
air.hittime = 5
air.velocity = -15,0

[State 1356, Invisibility Effect]
type = AfterImage
trigger1 = var(0) = 1
;time = 25
;length = 25
time = 375
length = 375
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

[State 1356, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[StateDef 1352]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 176
poweradd = 20
sprpriority = 2



[State 1100, Explod]
type = Explod
trigger1 = animelem = 1
anim = 7023
ID = 7023
pos = -40,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = .9,.9
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
;ignorehitpause =
;persistent =



[State 1050, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1380
ctrl = 1


[StateDef 1380]
type = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 179
poweradd = 20
sprpriority = 2

[State 100, 5]
type = PlaySnd
trigger1 = AnimElem = 1
channel = 2
value = 1400,2

[State 0, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = !time
trigger1 = facing = 1
x = enemynear, pos x -80
y = 0
;ignorehitpause =
;persistent =

[State 0, PosSet]
type = PosSet
triggerall = numenemy >0
trigger1 = !time
trigger1 = facing = -1
x = enemynear, pos x +80
y = 0


[State 1050, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 50,5
animtype = Light
guardflag = A
hitflag = MAF
priority = 5, Hit
pausetime = 10, 10
sparkno = S8220
sparkxy = -10, -76
hitsound = S5,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5, -3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5,-3
air.hittime = 12
fall=1


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1
;ignorehitpause =
;persistent =

[State 1050, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1357
ctrl = 1

[Statedef 1357]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 250
poweradd= 60
sprpriority = 2

[State 1357, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 25
y = 0

[State 1357, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 1357, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 2
envshake.ampl = 2
fall=1

[State 1357, Invisibility Effect]
type = AfterImage
trigger1 = var(0) = 1
;time = 25
;length = 25
time = 375
length = 375
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

[State 1357, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Shield
[Statedef 1100]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 100, 5]
type = PlaySnd
trigger1 = AnimElem = 2
channel = 2
value = 1400,3

[State 1100, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1102
sprpriority = 3
postype = p1
pos = -20,-90
scale = .75,.75
bindtime = -1
ownpal = 1
id = 1100
name = "Bubble"
persistent = 0

[State 1100, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1102
sprpriority = 3
postype = p1
pos = 20,-80
scale = .6,.6
bindtime = -1
ownpal = 1
id = 1100
name = "Bubble"
persistent = 0

[State 1100, 1]
type = PlaySnd
trigger1 = Time = 3
value = 1100, 0

[State 1100, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = -1

[State 1100, 2] ;Shield
type = Helper
trigger1 = Time = 4
ID = 1101
name = "Shield"
pos = 0,0
stateno = 1101
ownpal = 1


[State 1100, 3]
type = ChangeState
triggerall = !var(49)
trigger1 = time = 45   ;AnimTime = 0
value = 0
ctrl = 1

[State 1100, 3]
type = ChangeState
triggerall = var(49)
trigger1 = time = 45   ;AnimTime = 0
value = 1702
ctrl = 1

;---------------------------------------------------------------------------
; Shield (Shield2)
[Statedef 1101]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 1101
ctrl = 0
sprpriority = 2

[State 1101, 1]
type = BindtoParent
trigger1 = 1
pos = 0,-80

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S10,10
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1101, 1]
type = PalFX
trigger1 = Time = 0
;add = 0,0,240
add = 0,500,500
mul = 256,256,256
color = 256
invertall = 0
persistent = 2
time = -1

[State 1101, 2]
type = HitOverride
trigger1 = Anim = 1101
trigger1 = AnimTime = 0
trigger2 = 1
attr = SCA, AA, AT, AP
stateno = 1102
time = -1

[State 1101, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = -1

[State 1101, 4]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 1102

[State 1101, 5]
type = HitDef
trigger1 = Anim = 1102
trigger1 = MoveContact = 0
trigger2 = Time % 15 = 0
attr = S, SP
ID = 1101
damage    = 50,2
getpower  = 60
givepower = 40
guardflag = MA
pausetime = 0,8
sparkno = S4023
guard.sparkno = S4023
sparkxy = -floor(P2Dist X)+75,-60
hitsound   = S5,7
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -4, -4
airguard.velocity = -4.5
air.velocity = -3.5,-5.5
air.juggle = 3
fall = -1

[State 1101, 6]
type = ChangeState
trigger1 = MoveHit
value = 1102

[State 1101, 7]
type = DestroySelf
trigger1 = Time = 45

;---------------------------------------------------------------------------
;Shield (Shield Hit)
[Statedef 1102]
velset = 0,0

[State 1102, 1]
type = BindtoParent
trigger1 = 1
pos = 0,-80

[State 1101, 3]
type = DestroySelf
trigger1 = Time = 10

;------------------------------------------------------------------------------
;Shield Force Back 1
;---------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S10,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S10,15
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0


[State 1201, Projectile]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1201
projhitanim = 1202
Projremanim = -1
Projcancelanim = 1202
projid = 1201
Projscale = 0.55,1
offset = -25,-60
projpriority = 1
projsprpriority = 4
velocity = 2,0
attr = S, SP
damage = 40, 5
animtype  = Hard
animtype = Medium
hitflag = MAFD
guardflag = MA
pausetime = 5,10
sparkno = S8022
sparkxy = 33, 0
guard.sparkno = S8001
hitsound = S11,8
guardsound = S101,74
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 20
ground.velocity = -8
guard.velocity = -8
air.velocity = -8
airguard.velocity = -8
persistant = 1
fall = 0
air.juggle = 1
air.fall = 1
air.recover = 1
persistent = 1
envshake.time = 8
envshake.ampl = 2
forcestand = 1
yaccel = .5

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1102
sprpriority = 3
postype = p1
pos = -30,-60
scale = 0.5,0.5
bindtime = -1
ownpal = 1
id = 1200
name = "shield burst"
persistent = 0

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1102
sprpriority = 3
postype = p1
pos = 30,-70
scale = 0.4,0.4
bindtime = -1
ownpal = 1
id = 1200
name = "shield burst"
persistent = 0

[State 1200, PalFX]
type = PalFX
trigger1 = AnimElem = 1
trigger2 = Time % 140 = 0
time = 10
add = 0,500,500
mul = 256,256,256
;sinadd = 0,0,0,10
invertall = 0
color = 256

[State 1200, ]
type = Explod
trigger1 = AnimElem = 1
anim = 1102
pos = 0,-60
postype = p1
bindtime = -1
scale = 1.5,1.5
vel = 0,0
sprpriority = 3
ownpal = 1
removeongethit = 1
removetime = 16

[State 1200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;------------------------------------------------------------------------------
;Shield Force Back 2
[Statedef 1210]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S10,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S10,14
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1210, Projectile]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1201
projhitanim = 1202
Projremanim = -1
Projcancelanim = 1202
projid = 1201
Projscale = 0.35,.75
offset = -25,-60
projpriority = 1
projsprpriority = 4
velocity = 3.5,0
attr = S, SP
damage = 40, 5
animtype  = Hard
animtype = Medium
hitflag = MAFD
guardflag = MA
pausetime = 5,10
sparkno = S8022
sparkxy = 33, 0
guard.sparkno = S8001
hitsound = S11,8
guardsound = S101,74
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 20
ground.velocity = -8
guard.velocity = -8
air.velocity = -8
airguard.velocity = -8
persistant = 1
fall = 0
air.juggle = 1
air.fall = 1
air.recover = 1
persistent = 1
envshake.time = 8
envshake.ampl = 2
forcestand = 1
yaccel = .5

[State 1210, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1102
sprpriority = 3
postype = p1
pos = -30,-60
scale = 0.5,0.5
bindtime = -1
ownpal = 1
id = 1200
name = "shield burst"
persistent = 0

[State 1210, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1102
sprpriority = 3
postype = p1
pos = 30,-70
scale = 0.4,0.4
bindtime = -1
ownpal = 1
id = 1200
name = "shield burst"
persistent = 0


[State 1210, PalFX]
type = PalFX
trigger1 = AnimElem = 1
trigger2 = Time % 140 = 0
time = 10
add = 0,500,500
mul = 256,256,256
;sinadd = 0,0,0,10
invertall = 0
color = 256

[State 1210, ]
type = Explod
trigger1 = AnimElem = 1
anim = 1102
pos = 0,-60
postype = p1
bindtime = -1
scale = 1.2,1.2
vel = 0,0
sprpriority = 3
ownpal = 1
removeongethit = 1
removetime = 16

[State 1210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;------------------------------------------------------------------------------
;Shield Force Back 3
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S10,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S10,13
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1220, Projectile]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1201
projhitanim = 1202
Projremanim = -1
Projcancelanim = 1202
projid = 1201
Projscale = 0.25,0.5
offset = -25,-60
projpriority = 1
projsprpriority = 4
velocity = 5,0
attr = S, SP
damage = 40, 5
animtype  = Hard
animtype = Medium
hitflag = MAFD
guardflag = MA
pausetime = 5,10
sparkno = S8022
sparkxy = 33, 0
guard.sparkno = S8001
hitsound = S11,8
guardsound = S101,74
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
guard.ctrltime = 20
ground.velocity = -8
guard.velocity = -8
air.velocity = -8
airguard.velocity = -8
persistant = 1
fall = 0
air.juggle = 1
air.fall = 1
air.recover = 1
persistent = 1
envshake.time = 8
envshake.ampl = 2
forcestand = 1
yaccel = .5

[State 1220, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1102
sprpriority = 3
postype = p1
pos = -30,-60
scale = 0.5,0.5
bindtime = -1
ownpal = 1
id = 1200
name = "shield burst"
persistent = 0

[State 1220, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1102
sprpriority = 3
postype = p1
pos = 30,-70
scale = 0.4,0.4
bindtime = -1
ownpal = 1
id = 1200
name = "shield burst"
persistent = 0

[State 1220, PalFX]
type = PalFX
trigger1 = AnimElem = 1
trigger2 = Time % 140 = 0
time = 10
add = 0,500,500
mul = 256,256,256
;sinadd = 0,0,0,10
invertall = 0
color = 256

[State 1200, ]
type = Explod
trigger1 = AnimElem = 1
anim = 1102
pos = 0,-60
postype = p1
bindtime = -1
scale = 1.2,1.2
vel = 0,0
sprpriority = 3
ownpal = 1
removeongethit = 1
removetime = 16

[State 1220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1




;---------------------------------------------------------------------------


; End
