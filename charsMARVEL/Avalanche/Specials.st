;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;--------------------------------------------
;---------------------------------------------------------------------------
; Excavate X
;---------------------------------------------------------------------------
[Statedef 1401]
type    = S
movetype= A
physics = N
anim = 1400
ctrl = 0
vel = 0,0
juggle  = 4

[State 1401, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 1401, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1000,0

[State 1401, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1202
pos = 0,25
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -22

[State 1401, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8200,0


[State 1401, EnvShake]
type = EnvShake
trigger1 = animelem = 5
time = 40
freq = 60
ampl = -4

[State 1401, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 30,3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,14
sparkno = 2
sparkxy = -10, -70
guard.sparkno = s6767
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,0
air.type = Low
air.hittime = 5
air.velocity = -7,0

[State 1401, 8]
type = EnvShake
trigger1 = AnimElem = 5
freq = 220
time = 80

[State 1401, 9]
type = Helper
trigger1 = animelem = 6
ID = 1404
name = "Raised Rock"
postype = p1
pos = 60,15
stateno = 1404
ownpal = 1

[State 1401, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1301
pos = -80,80
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 12

[State 1401, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Excavate Y
;---------------------------------------------------------------------------
[Statedef 1402]
type    = S
movetype= A
physics = N
anim = 1400
ctrl = 0
vel = 0,0
juggle  = 4

[State 1402, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 1402, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1000,0

[State 1402, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1202
pos = 0,25
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -22

[State 1402, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8200,0


[State 1402, EnvShake]
type = EnvShake
trigger1 = animelem = 5
time = 40
freq = 60
ampl = -4

[State 1402, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 30,3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,14
sparkno = 2
sparkxy = -10, -70
guard.sparkno = s6767
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -12,2
air.type = Low
air.hittime = 5
air.velocity = -7,0

[State 1402, 8]
type = EnvShake
trigger1 = AnimElem = 5
freq = 220
time = 80

[State 1402, 9]
type = Helper
trigger1 = animelem = 6
ID = 1404
name = "Raised Rock"
postype = p1
pos = 120,15
stateno = 1404
ownpal = 1

[State 1402, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1301
pos = -80,80
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 12

[State 1402, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Excavate Z
;---------------------------------------------------------------------------
[Statedef 1403]
type    = S
movetype= A
physics = N
anim = 1400
ctrl = 0
vel = 0,0
juggle  = 4

[State 1403, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 1403, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1000,0

[State 1403, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1202
pos = 0,25
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -22

[State 1403, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8200,0

[State 1403, EnvShake]
type = EnvShake
trigger1 = animelem = 5
time = 40
freq = 60
ampl = -4

[State 1403, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 30,3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,14
sparkno = 2
sparkxy = -10, -70
guard.sparkno = s6767
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,-1
air.type = Low
air.hittime = 5
air.velocity = -7,-5

[State 1403, 8]
type = EnvShake
trigger1 = AnimElem = 5
freq = 220
time = 80

[State 1403, 9]
type = Helper
trigger1 = animelem = 5
ID = 1404
name = "Raised Rock"
postype = p1
pos = 180,15
stateno = 1404
ownpal = 1

[State 1403, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1301
pos = -80,80
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 12

[State 1403, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------
; Raised Rock
[Statedef 1404]
type = S
movetype = A
physics = N
anim = 1404
sprpriority = 4

[State 1404, HitDef]
type = HitDef
trigger1 = (time % 14) = 0
attr = S,SA
damage = 30,3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
sparkno = 2
sparkxy = -10, -5
guard.sparkno = s6767
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,0
air.type = Low
air.hittime = 5
air.velocity = -7,0
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 1404, 4]
type = PlaySnd
trigger1 = (time % 20) = 0
value = 121,16
volume = 10
channel = 1

[State 1404, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1405
time = -1

[State 1404, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1405
ctrl = 1

[State 1404, 5]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1405]
type    = S
movetype= I
physics = N
juggle  = 5
poweradd = 0
anim = 1405
ctrl = 0
sprpriority = 4
velset = 0

[State 1405, 2]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Eruption
;---------------------------------------------------------------------------

[StateDef 1100]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 1100
poweradd = 55
velset = -1,-0.5
sprpriority = 2

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1000,1

[State 1100, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 100
freq = 40
ampl = -2

[State 1100, Explod]
type = Explod
trigger1 = time = 0
anim = 1104
ID = 1104
pos = -5,-20
postype = p1
removetime = -2
sprpriority = 78
ownpal = 1
removeongethit = 0

[State 1100, Explod]
type = Explod
trigger1 = time = 0
anim = 1104
ID = 1104
pos = 45,10
scale = 2.5,1.5
postype = p1
removetime = -2
sprpriority = 78
ownpal = 1
removeongethit = 0

[State 1100, ground crack back]
type = Explod
trigger1 = animelem = 1
anim = 6289
ID = 6288
pos = 25,-5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 78
ownpal = 1
removeongethit = 1

[State 1100, ground crack front]
type = Explod
trigger1 = animelem = 1
anim = 6290
ID = 6288
pos = 25,-5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.45
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 78
ownpal = 1
removeongethit = 1

[State 1100, ground crack front]
type = Explod
trigger1 = animelem = 2
anim = 6290
ID = 6288
pos = 25,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.45
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 79
ownpal = 1
removeongethit = 1

[State 1100, ground crack back]
type = Explod
trigger1 = animelem = 2
anim = 6289
ID = 6288
pos = 25,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.65
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 79
ownpal = 1
removeongethit = 1

[State 1100, ground crack back]
type = Explod
trigger1 = animelem = 1
anim = 6289
ID = 6288
pos = 25,15
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.65
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 79
ownpal = 1
removeongethit = 1

[State 1100, ground crack front]
type = Explod
trigger1 = animelem = 1
anim = 6290
ID = 6288
pos = 25,15
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 76
ownpal = 1
removeongethit = 1

[State 1100, ground crack front]
type = Explod
trigger1 = animelem = 2
anim = 6290
ID = 6288
pos = 25,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 77
ownpal = 1
removeongethit = 1

[State 1100, ground crack back]
type = Explod
trigger1 = animelem = 2
anim = 6289
ID = 6288
pos = 25,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 77
ownpal = 1
removeongethit = 1

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8200,0

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101

[StateDef 1101]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 1101
velset = 10,0
sprpriority = 0

[State 1101, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 179,3

[State 1101, Explod]
type = Explod
trigger1 = timemod = 3,1
anim = 1102
ID = 1102
pos = 0,0
postype = p1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 1101, HitDef]
type = HitDef
triggerall = hitcount < 5
trigger1 = timemod = 2,0
attr = A,SA
damage = 35,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = 1
sparkxy = -10, -20
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

[State 1101, End]
type = ChangeState
trigger1 = time > 30
trigger2= FrontEdgeBodyDist < 50
value = 1102
ctrl= 0

[StateDef 1102]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 1103
velset = 4,0
sprpriority = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 179,2

[State 1100, Explod]
type = Explod
trigger1 = time = 0
anim = 1102
ID = 1102
pos = 0,0
postype = p1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 1102, Explod]
type = Explod
trigger1 = timemod = 3,1
anim = 1102
ID = 1102
pos = 25,0
postype = p1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 1102, End]
type = ChangeState
trigger1 = time > 15
value = 50
ctrl= 1


[StateDef 1110]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 1100
poweradd = 55
velset = -1,-0.75
sprpriority = 2

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1000,1

[State 1110, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 100
freq = 40
ampl = -2

[State 1110, Explod]
type = Explod
trigger1 = time = 0
anim = 1104
ID = 1104
pos = -5,-20
postype = p1
removetime = -2
sprpriority = 78
ownpal = 1
removeongethit = 0

[State 1110, Explod]
type = Explod
trigger1 = time = 0
anim = 1104
ID = 1104
pos = 45,10
scale = 2.5,1.5
postype = p1
removetime = -2
sprpriority = 78
ownpal = 1
removeongethit = 0

[State 1110, ground crack back]
type = Explod
trigger1 = animelem = 1
anim = 6289
ID = 6288
pos = 25,-5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 78
ownpal = 1
removeongethit = 1

[State 1110, ground crack front]
type = Explod
trigger1 = animelem = 1
anim = 6290
ID = 6288
pos = 25,-5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.45
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 78
ownpal = 1
removeongethit = 1

[State 1110, ground crack front]
type = Explod
trigger1 = animelem = 2
anim = 6290
ID = 6288
pos = 25,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.45
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 79
ownpal = 1
removeongethit = 1

[State 1110, ground crack back]
type = Explod
trigger1 = animelem = 2
anim = 6289
ID = 6288
pos = 25,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.65
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 79
ownpal = 1
removeongethit = 1

[State 1110, ground crack back]
type = Explod
trigger1 = animelem = 1
anim = 6289
ID = 6288
pos = 25,15
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.65
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 79
ownpal = 1
removeongethit = 1

[State 1110, ground crack front]
type = Explod
trigger1 = animelem = 1
anim = 6290
ID = 6288
pos = 25,15
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 76
ownpal = 1
removeongethit = 1

[State 1110, ground crack front]
type = Explod
trigger1 = animelem = 2
anim = 6290
ID = 6288
pos = 25,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 77
ownpal = 1
removeongethit = 1

[State 1110, ground crack back]
type = Explod
trigger1 = animelem = 2
anim = 6289
ID = 6288
pos = 25,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 77
ownpal = 1
removeongethit = 1

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8200,0

[State 1110, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1111

[StateDef 1111]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 1101
velset = 10,-1
sprpriority = 0


[State 1111, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 179,3

[State 1111, Explod]
type = Explod
trigger1 = timemod = 3,1
anim = 1102
ID = 1102
pos = 0,0
postype = p1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 1111, HitDef]
type = HitDef
triggerall = hitcount < 5
trigger1 = timemod = 2,0
attr = A,SA
damage = 25,3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = 1
sparkxy = -10, -20
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


[State 1111, End]
type = ChangeState
trigger1 = time > 30
trigger2= FrontEdgeBodyDist < 50
value = 1102
ctrl= 0


[StateDef 1120]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 1100
poweradd = 55
velset = -2,-1
sprpriority = 2

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1000,1

[State 1120, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 100
freq = 40
ampl = -2

[State 1120, Explod]
type = Explod
trigger1 = time = 0
anim = 1104
ID = 1104
pos = -5,-20
postype = p1
removetime = -2
sprpriority = 78
ownpal = 1
removeongethit = 0

[State 1120, Explod]
type = Explod
trigger1 = time = 0
anim = 1104
ID = 1104
pos = 45,10
scale = 2.5,1.5
postype = p1
removetime = -2
sprpriority = 78
ownpal = 1
removeongethit = 0

[State 1120, ground crack back]
type = Explod
trigger1 = animelem = 1
anim = 6289
ID = 6288
pos = 25,-5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 78
ownpal = 1
removeongethit = 1

[State 1120, ground crack front]
type = Explod
trigger1 = animelem = 1
anim = 6290
ID = 6288
pos = 25,-5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.45
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 78
ownpal = 1
removeongethit = 1

[State 1120, ground crack front]
type = Explod
trigger1 = animelem = 2
anim = 6290
ID = 6288
pos = 25,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.45
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 79
ownpal = 1
removeongethit = 1

[State 1120, ground crack back]
type = Explod
trigger1 = animelem = 2
anim = 6289
ID = 6288
pos = 25,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.65
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 79
ownpal = 1
removeongethit = 1

[State 1120, ground crack back]
type = Explod
trigger1 = animelem = 1
anim = 6289
ID = 6288
pos = 25,15
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.65
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 79
ownpal = 1
removeongethit = 1

[State 1120, ground crack front]
type = Explod
trigger1 = animelem = 1
anim = 6290
ID = 6288
pos = 25,15
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0.15,-0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 76
ownpal = 1
removeongethit = 1

[State 1120, ground crack front]
type = Explod
trigger1 = animelem = 2
anim = 6290
ID = 6288
pos = 25,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 77
ownpal = 1
removeongethit = 1

[State 1120, ground crack back]
type = Explod
trigger1 = animelem = 2
anim = 6289
ID = 6288
pos = 25,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.15,0.5
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1.25
sprpriority = 77
ownpal = 1
removeongethit = 1

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8200,0

[State 1120, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1121

[StateDef 1121]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 1101
velset = 10,-2
sprpriority = 0


[State 1121, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 179,3

[State 1121, Explod]
type = Explod
trigger1 = timemod = 3,1
anim = 1102
ID = 1102
pos = 0,0
postype = p1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 1121, HitDef]
type = HitDef
triggerall = hitcount < 5
trigger1 = timemod = 2,0
attr = A,SA
damage = 16,3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = 1
sparkxy = -10, -20
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


[State 1121, End]
type = ChangeState
trigger1 = time > 30
trigger2= FrontEdgeBodyDist < 50
value = 1102
ctrl= 0

;---------------------------------------------------------------------------
; Earthquake
;---------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= A
physics = N
anim = 1200
ctrl = 0
vel = 0,0
juggle  = 4

[State 1200, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 1200, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1202
pos = 0,25
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -22

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S8200,0

[State 1200]
type = PlaySnd
trigger1 = time = 18
value = 8200,0

[State 1200]
type = PlaySnd
trigger1 = time = 27
value = 8200,0

[State 1200]
type = PlaySnd
trigger1 = time = 36
value = 8200,0

[State 1200]
type = PlaySnd
trigger1 = time = 40
value = 8200,0

[State 1200, EnvShake]
type = EnvShake
trigger1 = animelem = 5
time = 40
freq = 60
ampl = -4

[State 1200, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,SA
damage = 30,3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,14
sparkno = 2
sparkxy = -10, -70
guard.sparkno = s6767
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,0
air.type = Low
air.hittime = 5
air.velocity = -7,0

[State 1200, 8]
type = EnvShake
trigger1 = AnimElem = 5
freq = 220
time = 80

[State 1200, 9]
type = Helper
trigger1 =animelem = 6
ID = 1201
name = "Ground rip"
postype = p1
pos = 90,0
stateno = 1201
ownpal = 1

[State 1200, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1301
pos = -80,80
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 12

[State 1200, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------
; ground rip
[Statedef 1201]
type = S
movetype = A
physics = N
anim = 1201
sprpriority = 4

[State 1201, 2]
type = VelSet
trigger1 = time = 0
x = 1.2

[State 1201, HitDef]
type = HitDef
trigger1 = (time % 14) = 0
attr = C,SA
damage = 30,3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
sparkno = 2
sparkxy = -10, -5
guard.sparkno = s6767
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,0
air.type = Low
air.hittime = 5
air.velocity = -7,0
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 1201, 4]
type = PlaySnd
trigger1 = (time % 20) = 0
value = 121,16
volume = 10
channel = 1

[State 1201, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1204
time = -1

[State 1201, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1204
ctrl = 1

[State 1201, 5]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1204]
type    = S
movetype= I
physics = N
juggle  = 5
poweradd = 0
anim = 1204
ctrl = 0
sprpriority = 4
velset = 0

[State 1204, 2]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Rictor Kick up
;---------------------------------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = 120
anim = 1600
ctrl = 0
sprpriority = 2

[State 1000, 0]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 5000
time = -1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S7050,0

[State 1000, foot vibe]
type = Explod
trigger1 = animelem = 3
anim = 3412
ID = 3412
pos = 49,-41
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 14
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1


[State 1000, foot stomp]
type = Explod
trigger1 = animelem = 5
anim = 3411
ID = 3411
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 8
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 1000, rock]
type = Explod
trigger1 = animelem = 5
anim = 6288
ID = 6288
pos = 55,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-9.5
accel = 0,.43
random = 0,0
removetime = 34
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 4
ownpal = 1
removeongethit = 1


[State 1000, rock up]
type = Helper
trigger1 = time = 59
helpertype = normal ;player
name = "rockL1"
ID = 1001
stateno = 1001
pos = 55,-55
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1000, rubble 1]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "rubble1"
ID = 1013
stateno = 1013
pos = 55,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1000, rubble 2]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "rubble1"
ID = 1015
stateno = 1015
pos = 26,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1000, rubble 3]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "rubble1"
ID = 1016
stateno = 1016
pos = -52,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1000, punch explode]
type = Explod
trigger1 = time = 59
anim = 8002
ID = 6288
pos = 58,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 18
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 1000, punch sound]
type = PlaySnd
trigger1 = animelem = 7
value = S8000,2


[State 1000, ground crack back]
type = Explod
trigger1 = animelem = 3
anim = 6289
ID = 6288
pos = 55,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 1000, ground crack front]
type = Explod
trigger1 = animelem = 3
anim = 6290
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8200,0

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------
;------------------------------------------------------------------------------------------------------------
;Rock diagonal
[Statedef 1001]
type = A
movetype = A
physics =N
anim = 6288
ctrl = 0
sprpriority = 6
velset = 0,0

[State 1001, VelSet]
type = VelSet
trigger1 = 1
x = 5
y = -6

[State 1001]
type = HitDef
attr = A, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80,8
animtype = Medium
priority  = 3, Hit
guardflag = MA
hitflag = MAFD
pausetime = 7,7
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = S8002
guard.sparkno = S8001
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 40,5

[State 1001]
type = ChangeState
trigger1 = MoveContact
value = 1012
ignorehitpause = 1

[State 1001, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1012
time = -1

[State 1001, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1001, 5]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------------------------------------------------------------------------------------
;rock destroyed
[Statedef 1002]
type = A
movetype = I
physics = N
anim = 9800
ctrl = 0
sprpriority = 1
;velset = 0,0
movehitpersist = 1
hitcountpersist = 1

[State 1002]
type = Explod
trigger1 = MoveContact = [1,3]
anim = 21246+random%4
ignorehitpause = 1
pos = 0,0
random = 50,70
;postype = p1
ownpal = 1
ontop = 1
;bindtime = 0
vel = -1+random%2,-2+random%3
accel = 0,0.3
ID = 1012
removetime = 24

[State 1002, RemoveExplod]
type = RemoveExplod
trigger1 = time = 24
id = 1012

[State 1002]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1002, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1334
time = -1

[State 1002, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1002, 5]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------------------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Rictor Kick diaginal
;---------------------------------------------------------------------------
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = 120
anim = 1600
ctrl = 0
sprpriority = 2

[State 1010, 0]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 5000
time = -1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S7050,0

[State 1010, foot vibe]
type = Explod
trigger1 = animelem = 3
anim = 3412
ID = 3412
pos = 49,-41
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 14
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1


[State 1010, foot stomp]
type = Explod
trigger1 = animelem = 5
anim = 3411
ID = 3411
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 8
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 1010, rock]
type = Explod
trigger1 = animelem = 5
anim = 6288
ID = 6288
pos = 55,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-9.5
accel = 0,.43
random = 0,0
removetime = 34
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 4
ownpal = 1
removeongethit = 1


[State 1010, rock up]
type = Helper
trigger1 = time = 59
helpertype = normal ;player
name = "rockL1"
ID = 1011
stateno = 1011
pos = 55,-55
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1010, rubble 1]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "rubble1"
ID = 1013
stateno = 1013
pos = 55,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1010, rubble 2]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "rubble1"
ID = 1015
stateno = 1015
pos = 26,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1010, rubble 3]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "rubble1"
ID = 1016
stateno = 1016
pos = -52,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1010, punch explode]
type = Explod
trigger1 = time = 59
anim = 8002
ID = 6288
pos = 58,-75
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 18
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 1010, punch sound]
type = PlaySnd
trigger1 = animelem = 7
value = S8000,2


[State 1010, ground crack back]
type = Explod
trigger1 = animelem = 3
anim = 6289
ID = 6288
pos = 55,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 1010, ground crack front]
type = Explod
trigger1 = animelem = 3
anim = 6290
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8200,0

[State 1010, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------
;------------------------------------------------------------------------------------------------------------
;Rock diagonal
[Statedef 1011]
type = A;S
movetype = A;I
physics =N
anim = 6288
ctrl = 0
sprpriority = 6
velset = 0,0

[State 1011, VelSet]
type = VelSet
trigger1 = 1
x = 7.5
y = -4

[State 1011]
type = HitDef
attr = A, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80,8
animtype = Medium
priority  = 3, Hit
guardflag = MA
hitflag = MAFD
pausetime = 7,7
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = S8002
guard.sparkno = S8001
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 40,5

;[State 1011]
;type = HitBy
;trigger1 = 1
;value = SCA,AP

[State 1011]
type = ChangeState
trigger1 = MoveContact
value = 1012
ignorehitpause = 1

[State 1011, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1012
time = -1

[State 1011, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1011, 5]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------------------------------------------------------------------------------------
;rock destroyed
[Statedef 1012]
type = A
movetype = I
physics = N
anim = 9800
ctrl = 0
sprpriority = 1
;velset = 0,0
movehitpersist = 1
hitcountpersist = 1

[State 1012]
type = Explod
trigger1 = MoveContact = [1,3]
anim = 21246+random%4
ignorehitpause = 1
pos = 0,0
random = 50,70
;postype = p1
ownpal = 1
ontop = 1
;bindtime = 0
vel = -1+random%2,-2+random%3
accel = 0,0.3
ID = 1012
removetime = 24

[State 1012, RemoveExplod]
type = RemoveExplod
trigger1 = time = 24
id = 1012

[State 1012]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1012, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1334
time = -1

[State 1012, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1012, 5]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------------------------------------------------------------------------------------
;rubble 1
[Statedef 1013]
type = A;S
movetype = I
physics =N
anim = 23110
ctrl = 0
sprpriority = 8
velset = 3.5,-4

[State 1013]
type = VelAdd
Trigger1 = 1
y = .5

[State 1013]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 1013]
type = ChangeState;DestroySelf
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1013
ignorehitpause = 1

[State 1013, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1012
time = -1

[State 1013, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1013, 5]
type = DestroySelf
trigger1 = animtime = 0
;------------------------------------------------------------------------------------------------------------
;rubble 1 ground
[Statedef 1014]
type = A;S
movetype = I
physics =N
anim = 23109
ctrl = 0
sprpriority = 6
velset = 0,0

[State 1014, DestroySelf]
type = DestroySelf
trigger1 = time = 40
;ignorehitpause =
;persistent =

;------------------------------------------------------------------------------------------------------------
;rubble 2
[Statedef 1015]
type = A;S
movetype = I
physics =N
anim = 23110
ctrl = 0
sprpriority = 8
velset = 2.0,-6

[State 1015]
type = VelAdd
Trigger1 = 1
y = .5

[State 1015]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 1015]
type = ChangeState;DestroySelf
trigger1 = Vel Y > 2
trigger1 = Pos Y >= 2
value = 1014
ignorehitpause = 1

;[State 1015]
;type = DestroySelf
;trigger1 = Pos Y >= 2
;trigger1 = Vel Y > 2
;ignorehitpause = 1

[State 1015, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1012
time = -1

[State 1015, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1015, 5]
type = DestroySelf
trigger1 = animtime = 0
;------------------------------------------------------------------------------------------------------------
;rubble 3
[Statedef 1016]
type = A;S
movetype = I
physics =N
anim = 23110
ctrl = 0
sprpriority = 8
velset = -2.5,-5

[State 1016]
type = VelAdd
Trigger1 = 1
y = .5

[State 1016]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 1016]
type = ChangeState;DestroySelf
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1014
ignorehitpause = 1

[State 1016, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1012
time = -1

[State 1016, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1016, 5]
type = DestroySelf
trigger1 = animtime = 0


;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Rictor Kick 2
;---------------------------------------------------------------------------
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = 120
anim = 1600
ctrl = 0
sprpriority = 2

[State 1020, 0]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 5000
time = -1

[State 1020, foot vibe]
type = PlaySnd
trigger1 = animelem = 3
value = S7050,0

[State 1020, foot vibe]
type = Explod
trigger1 = animelem = 3
anim = 3412
ID = 3412
pos = 49,-41
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 14
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1


[State 1020, foot stomp]
type = Explod
trigger1 = animelem = 5
anim = 3411
ID = 3411
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 8
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1


[State 1020, rock]
type = Explod
trigger1 = animelem = 5
anim = 6288
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-10
accel = 0,.43
random = 0,0
removetime = 34
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 4
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 1020, rock up]
type = Helper
trigger1 = animelem = 8
helpertype = normal ;player
name = "rockL1"
ID = 1020
stateno = 1021
pos = 55,-80
postype = p1
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1020, rubble 1]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "rubble1"
ID = 1012
stateno = 1012
pos = 55,0
postype = p1
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1020, rubble 2]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "rubble1"
ID = 1014
stateno = 1014
pos = 26,0
postype = p1
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999

[State 1020, rubble 3]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "rubble1"
ID = 1015
stateno = 1015
pos = -52,0
postype = p1
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999

[State 1020, punch explode]
type = Explod
trigger1 = animelem = 8
anim = 8002
ID = 6288
pos = 58,-85
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 18
scale = 4,4
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1020, punch sound]
type = PlaySnd
trigger1 = animelem = 7
value = S8000,2


[State 1020, ground crack back]
type = Explod
trigger1 = animelem = 3
anim = 6289
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 1020, ground crack front]
type = Explod
trigger1 = animelem = 3
anim = 6290
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8200,0

[State 1020, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
;------------------------------------------------------------------------------------------------------------
;Rock diag straight
[Statedef 1021]
type = A;S
movetype = A;I
physics =N
anim = 6288
ctrl = 0
sprpriority = 6
velset = 0,0

[State 1021, VelSet]
type = VelSet
trigger1 = 1
x = 9
y = -1

[State 1021]
type = HitDef
attr = A, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80,8
animtype = Medium
priority  = 3, Hit
guardflag = MA
hitflag = MAFD
pausetime = 7,7
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = S8002
guard.sparkno = S8001
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 40,5

[State 1021]
type = ChangeState
trigger1 = MoveContact
value = 1012
ignorehitpause = 1

[State 1021, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1012
time = -1

[State 1021, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1021, 5]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Rictor Kick 3
;---------------------------------------------------------------------------
[Statedef 1030]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 120
anim = 1650
ctrl = 0
sprpriority = 2

[State 1030, 0]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 5000
time = -1

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S7050,0

[State 1030, foot vibe]
type = Explod
trigger1 = animelem = 3
anim = 3412
ID = 3412
pos = 49,-41
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 14
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1


[State 1030, foot stomp]
type = Explod
trigger1 = animelem = 5
anim = 3411
ID = 3411
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 8
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 1030, rock]
type = Explod
trigger1 = animelem = 5
anim = 6288
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 3.5,-9.5
accel = 0,.43
random = 0,0
removetime = 34
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1030, rubble 1]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "rubble1"
ID = 1012
stateno = 1012
pos = 55,0
postype = p1
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999

[State 1030, rubble 2]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "rubble1"
ID = 1014
stateno = 1014
pos = 26,0
postype = p1
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999


[State 1030, rubble 3]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "rubble1"
ID = 1015
stateno = 1015
pos = -52,0
postype = p1
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999

[State 1030, hand vibe]
type = PlaySnd
trigger1 = animelem = 7
value = S7050,0

[State 1030, rock explode]
type = Helper
trigger1 = animelem = 8
helpertype = normal
name = "rockL3"
ID = 1031
stateno = 1031
pos = 160,-75
postype = p1
facing = 1
ownpal = 1
supermove = 99999
pausemove = 99999

[State 1030, ground crack back]
type = Explod
trigger1 = animelem = 3
anim = 6289
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 1030, ground crack front]
type = Explod
trigger1 = animelem = 3
anim = 6290
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1030]
type = HitDef
attr = A, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80,8
animtype = Medium
priority  = 3, Hit
guardflag = MA
hitflag = MAFD
pausetime = 7,7
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = S8002
guard.sparkno = S8001
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 40,5

[State 1030, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8200,0

[State 1030, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
;------------------------------------------------------------------------------------------------------------
;Rock explode
[Statedef 1031]
type = A;S
movetype = A;I
physics =N
anim = 6291
ctrl = 0
sprpriority = 6
velset = 0,0

[State 1031, rock partical]
type = Explod
trigger1 = time = 0
anim = 21246+random%4
ignorehitpause = 1
pos = 0,0
random = 0,0
;postype = p1
ownpal = 1
ontop = 1
;bindtime = 0
vel = 0,-3
accel = 0,0.3
ID = 1031
removetime = 35

[State 1031, rock partical]
type = Explod
trigger1 = time = 0
anim = 21246+random%4
ignorehitpause = 1
pos = 0,0
random = 0,0
;postype = p1
ownpal = 1
ontop = 1
;bindtime = 0
vel = 3,-3
accel = 0,0.3
ID = 1031
removetime = 35

[State 1031, rock partical]
type = Explod
trigger1 = time = 0
anim = 21246+random%4
ignorehitpause = 1
pos = 0,0
random = 0,0
;postype = p1
ownpal = 1
ontop = 1
;bindtime = 0
vel = 3,0
accel = 0,0.3
ID = 1031
removetime = 35

[State 1031, rock partical]
type = Explod
trigger1 = time = 0
anim = 21246+random%4
ignorehitpause = 1
pos = 0,0
random = 0,0
;postype = p1
ownpal = 1
ontop = 1
;bindtime = 0
vel = 3,3
accel = 0,0.3
ID = 1031
removetime = 35

[State 1031, rock partical]
type = Explod
trigger1 = time = 0
anim = 21246+random%4
ignorehitpause = 1
pos = 0,0
random = 0,0
;postype = p1
ownpal = 1
ontop = 1
;bindtime = 0
vel = 0,3
accel = 0,0.3
ID = 1031
removetime = 35


[State 1031, RemoveExplod]
type = RemoveExplod
trigger1 = time = 35
id = 1031
;ignorehitpause =
;persistent =

[State 1031, punch explode]
type = Explod
trigger1 = time = 0
anim = 8002
ID = 6288
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 18
supermove = 999999
pausemove = 999999
scale = .5,.5
sprpriority = 5
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 1031]
type = HitDef
attr = A, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80,8
animtype = Medium
priority  = 3, Hit
guardflag = MA
hitflag = MAFD
pausetime = 7,7
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = S8002
guard.sparkno = S8001
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 40,5

[State 1031, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1012
time = -1

[State 1031, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1031, 5]
type = DestroySelf
trigger1 = animtime = 0

