;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Gammacharge low
[Statedef 1000]
type    = U
movetype= A
physics = N
juggle  = 5
poweradd= 90
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1000,0
channel = 5

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1000,1
channel = 4

[State 1000, VelSet]
type = VelSet
trigger1 = time > 8
x = 8
y = 0

[State 1000, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1050
ID = 1050
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 20
removetime = 15
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1000, RemoveExplod]
type = RemoveExplod
trigger1 = time = 30
trigger2 = movecontact
id = 1050

[State 1000, HitDef]
type = HitDef
trigger1 = time = 0
trigger1 = !movehit
attr = A, SA
hitflag = MAF
guardflag = MA
animtype  = Back
air.type = High
priority = 4,Hit
damage = 60, 1
getpower = 20
givepower = 10
pausetime = 10 ,10
sparkno = S8022
guard.sparkno = S8001
sparkxy = -10,-70
hitsound   = S8000,5
guardsound = S8000,6
ground.type = High
air.type = High
ground.slidetime = 15
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 25
air.hittime = 20
ground.velocity = -3,-8
guard.velocity = -10
air.velocity = -5,-8
airguard.velocity = -5,-5
fall = 1
air.fall = 1

[State 1000]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1000, Roll]
type = ChangeState
triggerall = statetype != A
trigger1 = time = 27
trigger2 = movecontact
value = 1001
ctrl = 0

[State 1000, AirRoll]
type = ChangeState
triggerall = statetype = A
trigger1 = time = 27
trigger2 = movecontact
value = 1002
ctrl = 0

;---------------------------------------------------------------------------
;Gammacharge Medium
[Statedef 1010]
type    = U
movetype= A
physics = N
juggle  = 5
poweradd= 90
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1000,0
channel = 5

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1000,1
channel = 4

[State 1010, VelSet]
type = VelSet
trigger1 = time >8
x = 13
y = 0

[State 1010, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1050
ID = 1050
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 25
removetime = 20
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1010, RemoveExplod]
type = RemoveExplod
trigger1 = time = 35
trigger2 = movecontact
id = 1050

[State 1010, HitDef]
type = HitDef
trigger1 = time = 0
trigger1 = !movehit
attr = A, SA
hitflag = MAF
guardflag = MA
animtype  = Back
air.type = High
priority = 4,Hit
damage = 60, 1
getpower = 20
givepower = 10
pausetime = 10 ,10
sparkno = S8022
guard.sparkno = S8001
sparkxy = -10,-70
hitsound   = S8000,5
guardsound = S8000,6
ground.type = High
air.type = High
ground.slidetime = 15
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 25
air.hittime = 20
ground.velocity = -3,-8
guard.velocity = -10
air.velocity = -5,-8
airguard.velocity = -5,-5
fall = 1
air.fall = 1


[State 1010]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1010, Roll]
type = ChangeState
triggerall = statetype != A
trigger1 = time = 32
trigger2 = movecontact
value = 1001
ctrl = 0

[State 1010, AirRoll]
type = ChangeState
triggerall = statetype = A
trigger1 = time = 32
trigger2 = movecontact
value = 1002
ctrl = 0

;---------------------------------------------------------------------------
;Gammacharge High
[Statedef 1020]
type    = U
movetype= A
physics = N
juggle  = 5
poweradd= 90
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1000,0
channel = 5

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1000,1
channel = 4

[State 1020, VelSet]
type = VelSet
trigger1 = time >8
x = 18
y = 0

[State 1020, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1050
ID = 1050
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 30
removetime = 30
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1020, RemoveExplod]
type = RemoveExplod
trigger1 = time = 43
trigger2 = movecontact
id = 1050

[State 1020, HitDef]
type = HitDef
trigger1 = time = 0
trigger1 = !movehit
attr = A, SA
hitflag = MAF
guardflag = MA
animtype  = Back
air.type = High
priority = 4,Hit
damage = 60, 1
getpower = 20
givepower = 10
pausetime = 10 ,10
sparkno = S8022
guard.sparkno = S8001
sparkxy = -10,-70
hitsound   = S8000,5
guardsound = S8000,6
ground.type = High
air.type = High
ground.slidetime = 15
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 25
air.hittime = 20
ground.velocity = -3,-8
guard.velocity = -10
air.velocity = -5,-8
airguard.velocity = -5,-5
fall = 1
air.fall = 1

[State 1020]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1020, Roll]
type = ChangeState
triggerall = statetype != A
trigger1 = time = 40
trigger2 = movecontact
value = 1001
ctrl = 0

[State 1020, Airroll]
type = ChangeState
triggerall = statetype = A
trigger1 = time = 40
trigger2 = movecontact
value = 1002
ctrl = 0

;---------------------------------------------------------------------------
;Gammacharge roll
[Statedef 1001]
type    = A
movetype= A
physics = N
juggle  = 5
poweradd= 90
ctrl = 0
velset = 5,0
anim = 1001
sprpriority = 2

[State 1001, VelSet]
type = VelSet
trigger1 = time > 12
x = 0

[State 1001, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1001, END]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Suplex

[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1100
p2facing = 1
facep2 = 1
sprpriority = 2

[State 1100, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, ST
hitflag = M
priority = 1, Miss
sparkno = -1
sparkxy = -13, -72
hitsound = S1,16
sprpriority = 1
p1facing = 1
p2facing = 1
fall.yvelocity=0
p1stateno = 1112
p2stateno = 1120
numhits = 0
guard.dist = 0
fall = 1

[State 1100, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------
;-------------------------------
[Statedef 1112]
type = S
movetype = A
physics = S
anim = 1112
velset = 0,0
sprpriority = 2

[State 1112, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 1100,0
channel = 4

[State 1112, 0]
type = NotHitBy
trigger1 = animelemtime(9)<0
value = SCA
time = 1

[State 1112, Width]
type = Width
trigger1 = animelemtime(9)<0
edge = 30,30

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=1
pos = 75,-71

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=2
pos = 43,-107

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=3
pos = 45,-103

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=4
pos = 46,-80

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=5
pos = 46,-67

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=6
pos = 42,-95

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=7
pos = -20,-122

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=8
pos = -70,-88

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=9
pos = -96,-72

[State 1112, TargetBind]
type = TargetBind
trigger1 = AnimElem=10
pos = -119,0

[State 1112, PlaySnd]
type = PlaySnd
trigger1 = time = 48
value = S8200,0

[State 1112, Explod]
type = Explod
trigger1 = AnimElem=11
anim = 1107
ID = 1112
pos = 0,20
postype = p2
bindtime = 1
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = 0.75,0.75
sprpriority = -1
ownpal = 1
removeongethit = 0

[State 1112, EnvShake]
type = EnvShake
trigger1 = AnimElem=11
time = 10
freq = 100
ampl = -5
phase = 10

[State 1112, LifeAdd]
type = TargetLifeAdd
trigger1 = animelem=11
value = -150

[State 1112, HitAdd]
type = HitAdd
trigger1 = time = 48
value = 1

[State 1112, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Land from being grabbed
[Statedef 1116]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1116, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1116, VelSet]
type = VelSet
trigger1 = Time = 20
x = -4
y = -8

[State 1116, VelAdd]
type = VelAdd
trigger1 = Time > 20
y = .49

[State 1116, SelfState]
type = SelfState
trigger1 = Time > 20
value = 5050

;---------------------------------------------------------------------------
; Grabbed
[Statedef 1120]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1120, Anim2]
type = ChangeAnim2
trigger1 = !time && Anim != 1116
value = 1116

[State 1120, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1120, Turn]
type = Turn
trigger1 = !time

[State 1120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1120, ChangeState]
type = ChangeState
trigger1 = AnimElem = 9
value = 1116

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Summersault Low
[Statedef 1200]
type    = A
movetype= A
physics = N
juggle  = 5
poweradd= 90
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,0
channel = 5

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S1000,1
channel = 4

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
hitflag = MAF
guardflag = MA
animtype  = Back
air.type = High
priority = 4,Hit
damage = 60
getpower = 20
givepower = 10
pausetime = 10 ,10
sparkno = S8022
guard.sparkno = S8001
sparkxy = -10,-70
hitsound   = S8000,5
guardsound = S8000,6
ground.type = High
air.type = High
ground.slidetime = 15
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 25
air.hittime = 20
ground.velocity = -1,-11
guard.velocity = -8
air.velocity = -1,-11
airguard.velocity = -2.5,-5
fall = 1
air.fall = 1

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3204
ID = 3200
postype = p1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
removetime = -2
scale = 1.25,1.25;const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 0
removeongethit = 1
ignorehitpause = 0
ontop = 1


[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 7
id = 3200


[State 1200, width]
type = Width
trigger1 = Time >= 0
value = 40

[State 1200, 4]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 2
X = 1.4
Y = -3.5

[State 1200, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 1200, 6]
type = ChangeState
trigger1 = !animtime
value = 1201
ctrl = 0

;-------------------------------
;Summersault Low Falling
[Statedef 1201]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 1,-6
anim = 1201

[State 1201, 1]
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 1201, 5]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1202
ctrl = 0

;---------------------------------------------------------------------------
;Summersault Medium
[Statedef 1210]
type    = A
movetype= A
physics = N
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,0
channel = 5

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S1000,1
channel = 4

[State 1210, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
hitflag = MAF
guardflag = MA
animtype  = Back
air.type = High
priority = 4,Hit
damage = 45
getpower = 30
givepower = 10
pausetime = 10 ,10
sparkno = S8022
guard.sparkno = S8001
sparkxy = -10,-70
hitsound   = S8000,5
guardsound = S8000,6
ground.type = High
air.type = High
ground.slidetime = 15
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 25
air.hittime = 20
ground.velocity = -1,-12
guard.velocity = -9
air.velocity = -1,-12.5
airguard.velocity = -2.5,-5

[State 1210, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
hitflag = MAF
guardflag = MA
animtype  = Back
air.type = High
priority = 4,Hit
damage = 45
getpower = 30
givepower = 10
pausetime = 10 ,10
sparkno = S8022
guard.sparkno = S8001
sparkxy = -10,-70
hitsound   = S8000,5
guardsound = S8000,6
ground.type = High
air.type = High
ground.slidetime = 15
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 25
air.hittime = 20
ground.velocity = -1,-12
guard.velocity = -9
air.velocity = -1,-12.5
airguard.velocity = -2.5,-5
fall = 1
air.fall = 1

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3204
ID = 3200
postype = p1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
removetime = -2
scale = 1.25,1.25;const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 0
removeongethit = 1
ignorehitpause = 0
ontop = 1


[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 7
id = 3200


[State 1210, width]
type = Width
trigger1 = Time >= 0
value = 20

[State 1210, 4]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 3

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 2
X = 2.5
Y = -5.5

[State 1200, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 1210, 6]
type = ChangeState
trigger1 = !animtime
value = 1211
ctrl = 0

;-------------------------------
;Summersault Medium Falling
[Statedef 1211]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 1,-2.9
anim = 1201

[State 1211, 1]
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 1211, 5]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1202
ctrl = 0

;---------------------------------------------------------------------------
;Summersault High

[Statedef 1220]
type    = A
movetype= A
physics = N
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,0
channel = 5

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S1000,1
channel = 4

[State 1210, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
hitflag = MAF
guardflag = MA
animtype  = Back
air.type = High
priority = 4,Hit
damage = 60
getpower = 40
givepower = 10
pausetime = 10 ,10
sparkno = S8022
guard.sparkno = S8001
sparkxy = -10,-70
hitsound = s8000, 0
guardsound = S8000,6
ground.type = High
air.type = High
ground.slidetime = 15
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 25
air.hittime = 20
ground.velocity = -1,-13
guard.velocity = -10
air.velocity = -1,-13.5
airguard.velocity = -2.5,-5.5

[State 1210, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
hitflag = MAF
guardflag = MA
animtype  = Back
air.type = High
priority = 4,Hit
damage = 60
getpower = 40
givepower = 10
pausetime = 10 ,10
sparkno = S8022
guard.sparkno = S8001
sparkxy = -10,-70
hitsound   = S8000,5
guardsound = S8000,6
ground.type = High
air.type = High
ground.slidetime = 15
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 25
air.hittime = 20
ground.velocity = -1,-13
guard.velocity = -10
air.velocity = -1,-13.5
airguard.velocity = -2.5,-5.5
fall = 1
air.fall = 1

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3204
ID = 3200
postype = p1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
removetime = -2
scale = 1.25,1.25;const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 0
removeongethit = 1
ignorehitpause = 0
ontop = 1

[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 7
id = 3200


[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 2
X = 4
Y = -8

[State 1200, VelAdd]
type = VelAdd
trigger1 = 1
y = .28

[State 1220 PosFreeze]
type = PosFreeze
trigger1 = Time = [13, 14]

[State 1220, 8]
type = ChangeState
trigger1 = !animtime
value = 1221
ctrl = 0

;---------------------------------------------------------------------------
;Summersault High Falling
[Statedef 1221]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 1,-4.7
anim = 1201

[State 1221, 1]
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 1221, 5]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1202
ctrl = 0

;---------------------------------------------------------------------------
;Summersault landing
[Statedef 1202]
type = S
ctrl = 0
anim = 1202

[State 1202, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1202, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1202, 3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;-------------------------------------------------------------------------------

;Gamma Charge UP
[Statedef 1300]
type    = U
movetype= A
physics = N
juggle  = 5
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 1300]
type = PlayerPush
trigger1 = 1
value = 0

[State 1300]
type = HitDef
attr = A, SA
triggerall = var(39) <= 3
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 50, 1
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 13,13
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S8000,5
guardsound = S8000,6
sparkno = 2;s7702
;guard.sparkno = S8430
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9,-13
air.velocity = -9,-13
fall = 1
air.fall = 1
fall.recover = 1
getpower = 50,25
sprpriority = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 11
value = S1000,0
channel = 5

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1000,1
channel = 4

[State 1300, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1050
ID = 1050
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 25
removetime = 15
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1300]
type = VelSet
trigger1 = AnimElem = 3
x = 9
y = -9

[State 1300]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1300]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 1300]
type = ChangeState
trigger1 = Time = 20 && StateType != A
value = 1331
ctrl = 0

[State 1300]
type = ChangeState
trigger1 = Time = 20 && StateType = A
value = 1332
ctrl = 0

;---------------------------------------------------------------------------
;Gamma Charge UP
[Statedef 1310]
type    = U
movetype= A
physics = N
juggle  = 5
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 1310]
type = PlayerPush
trigger1 = 1
value = 0

[State 1310]
type = HitDef
attr = A, SA
triggerall = var(39) <= 3
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 50, 1
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 13,13
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S8000,5
guardsound = S8000,6
sparkno = 2;s7702
;guard.sparkno = S8430
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9,-13
air.velocity = -9,-13
fall = 1
air.fall = 1
fall.recover = 1
getpower = 50,25
sprpriority = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 11
value = S1000,0
channel = 5

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1000,1
channel = 4

[State 1010, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1050
ID = 1050
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 25
removetime = 20
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1310]
type = VelSet
trigger1 = AnimElem = 3
x = 11
y = -11

[State 1310]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0


[State 1310]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 1310]
type = ChangeState
trigger1 = Time = 27 && StateType != A
value = 1331
ctrl = 0

[State 1310]
type = ChangeState
trigger1 = Time = 27 && StateType = A
value = 1332
ctrl = 0


;---------------------------------------------------------------------------
;Gamma Charge UP
[Statedef 1320]
type    = U
movetype= A
physics = N
juggle  = 5
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 1320]
type = PlayerPush
trigger1 = 1
value = 0

[State 1320]
type = HitDef
attr = A, SA
trigger1 = time = 0
triggerall = var(39) <= 3
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 50, 1
animtype = Medium
priority  = 5, Hit
guardflag = HA
pausetime = 13,13
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S8000,5
guardsound = S8000,6
sparkno = 2;s7702
;guard.sparkno = S8430
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9,-13
air.velocity = -9,-13
fall = 1
air.fall = 1
fall.recover = 1
getpower = 50,25
sprpriority = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 11
value = S1000,0
channel = 5

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1000,1
channel = 4

[State 1010, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1050
ID = 1050
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 25
removetime = 30
pausemovetime = 0
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1320]
type = VelSet
trigger1 = AnimElem = 3
x = 13
y = -13

[State 1320]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0


[State 1320]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 1320]
type = ChangeState
trigger1 = Time = 30 && StateType != A
value = 1331
ctrl = 0

[State 1320]
type = ChangeState
trigger1 = Time = 30 && StateType = A
value = 1332
ctrl = 0

;---------------------------------------------------------------------------
;Gamma Charge H  End
[Statedef 1331]
type    = U
movetype= I
physics = S
juggle  = 3
;poweradd= 60
ctrl = 0
;velset = 0,0
anim = 1003
sprpriority = 0
;facep2 = 1

[State 1331]
type = PlaySnd
trigger1 = Time = 0
value = 100,8

[State 1331]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 0

;------------------------------------------------------------------------------------------------------------
; Gamma Charge U  End
[Statedef 1332]
type = A
movetype = I
physics = A
anim = 1004
ctrl = 0
sprpriority = 0
velset = 0,0

[State 1332]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 1332]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
 ;Air Kick 3
 
[Statedef 1400]
type    = A
movetype= A
physics = N
poweradd= 0
anim = 1400
ctrl = 0

[State 1400, width]
type = Width
trigger1 = anim = 1401 && animelem = 2
trigger2 = anim = 1401 && time >=4
player = 10, 0

[State 1400, Anim]
type=changeanim
trigger1= anim=1400 && !animtime
value=1401

[State 1400, statetype]
type=statetypeset
trigger1= anim=1400 || anim=1405
statetype=A
physics=A

[State 1400, statetype]
type=statetypeset
trigger1= anim=1401
statetype=A
physics=N

[State ]
type = VelSet
trigger1 = !Time
x = 9
y = -2

[State ]
type = Veladd
trigger1 = Time >= 18
y = .5

[State ]
type = Veladd
trigger1 = Time >= 0
trigger1 = FrontEdgeBodyDist = 0
y = .7

[State 1400, Vel]
type=velset
trigger1= anim=1400 && animelem=1
x = 8.5
y = -6

[State 1400, Vel]
type=velset
trigger1= anim=1401
x = 9

[State 1400]
type = VelAdd
trigger1 = anim=1401
y = .5

[State 1400, Anim]
type=changeanim
trigger1= anim=1401 && animelemtime(1)>=15
value=1405
persistent=0

[State 1400, Anim]
type=changeanim
trigger1= anim=1401 && !animtime
value=1405
persistent=0

[State 1400, Hit]
type=hitdef
trigger1= anim=1401 && animelem=1
attr=A,SA
damage = 90,10
animtype=Hard
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= 4,4
sparkNo = s8002
guard.sparkNo = s8100
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -70
hitsound   = S8000,5
guardsound = S8000,6
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-5,-3
air.type=Low
air.velocity=-5,-3
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity= -10.52
guard.cornerpush.veloff = 0
getpower= 72,36
givepower=36,36
envshake.time=8
envshake.freq=60
envshake.ampl=2
fall=1
fall.recovertime=18
fall.animtype=Medium
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= -4,-1.5
forcestand=1
airguard.cornerpush.veloff = 0
kill = !var(58) || 1*p2stateno = 003 ; evita que o P2 morra antes do Finish Him

[State 1400, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1050
ID = 1400
pos = 0,-55
postype = p1
bindtime = 10
removetime = 10
scale = 1.25,0.65
sprpriority = 3
ontop = 1
removeongethit = 1

[State 1400, RemoveExplod]
type = RemoveExplod
trigger1 = movehit
id = 1400

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = time = 8
value = S1000,1
channel = 4

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = time = 11
value = S1400,0
channel = 5

[State 1400]
type = statetypeset
trigger1 = anim = 1405
movetype = I

[State 1400, spark]
type = explod
trigger1 = animelem = 2
anim = 1046
id = 1046
pos = 60,-70
bindtime = -1
sprpriority = 7
trans = add
scale = 1,1
;pausemovetime=60

[State 1400, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1405
ctrl = 0

;--------------------------------------------------------------------
[StateDef 1405]
type = A
movetype= A
physics = A
juggle  = 0
velset = 0,0
anim = 43
ctrl = 0
sprpriority = 1

[State 1405, Velset]
type = VelSet
trigger1 = 1
x = -2.5

[State 1405, VelAdd]
type = VelAdd
trigger1 = animelem = 1
y = -4

[State 1405]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim+3)
persistent = 0
value = Anim+3


;---------------------------------------------------------------------------

