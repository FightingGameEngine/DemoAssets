;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1 = Machine Gun Upper
;---------------------------------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1000
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6097
ID = 1000
pos = 0,10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -1.5,0
scale = 1,1
sprpriority = 10
ontop = 1

[State 1000, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 7

[State 1000, 2]
type = PlaySnd
triggerall = anim = 1000
trigger1 = AnimElem = 2
value = 1000, 1

[State 1000, 2]
type = PlaySnd
triggerall = anim = 1005
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
value = 8400,2

[State 1000, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1000
trigger1 = p2bodydist x <= 30
trigger2 = animtime > 14
value = 1005

[State 1000, VelSet]
type = VelSet
trigger1 = anim = 1005
x = 0
y = 0

[State 1000, HitDef]
type = HitDef
triggerall = anim = 1005
trigger1 = animelem =2
trigger2 = animelem =3
trigger3 = animelem =4
trigger4 = animelem =6
attr = S,SA
damage = 22,5
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 1000, End]
type = ChangeState
triggerall = Anim = 1005
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1000
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6097
ID = 1000
pos = 0,10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -1.5,0
scale = 1,1
sprpriority = 10
ontop = 1

[State 1001, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 7

[State 1001, 2]
type = PlaySnd
triggerall = anim = 1000
trigger1 = AnimElem = 2
value = 1000, 1

[State 1002, 2]
type = PlaySnd
triggerall = anim = 1006
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
value = 8400,0

[State 1002, 2]
type = PlaySnd
triggerall = anim = 1006
trigger1 = AnimElem = 6
value = 8400,1

[State 1001, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1000
trigger1 = p2bodydist x <= 30
trigger2 = animtime > 24
value = 1006

[State 1001, VelSet]
type = VelSet
trigger1 = anim = 1006
x = 0
y = 0

[State 1001, HitDef]
type = HitDef
triggerall = anim = 1006
trigger1 = animelem =2
trigger2 = animelem =3
trigger3 = animelem =4
attr = S,SA
damage = 22,5
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0


[State 1002, PosAdd]
type = PosAdd
triggerall = anim = 1006
trigger1 = animelemtime(5)=0
x = 30

[State 1001, HitDef]
type = HitDef
triggerall = anim = 1006
trigger1 = animelem =6
attr = S,SA
damage = 22,5
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,-5
air.type = Low
air.hittime = 5
air.velocity = -5,-5
fall = 1

[State 1001, End]
type = ChangeState
triggerall = Anim = 1006
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1002]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1000
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6097
ID = 1000
pos = 0,10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -1.5,0
scale = 1,1
sprpriority = 10
ontop = 1

[State 1002, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 7

[State 1002, 2]
type = PlaySnd
triggerall = anim = 1000
trigger1 = AnimElem = 2
value = 1000, 1

[State 1002, 2]
type = PlaySnd
triggerall = anim = 1007
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
value = 8400,0

[State 1002, 2]
type = PlaySnd
triggerall = anim = 1007
trigger1 = AnimElem = 6
value = 8400,1

[State 1002, 2]
type = PlaySnd
triggerall = anim = 1007
trigger1 = AnimElem = 9
value = 8400,2

[State 1002, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1000
trigger1 =  (p2bodydist x <= 30)
trigger2 = animtime > 30
value = 1007

[State 1002, VelSet]
type = VelSet
trigger1 = anim = 1007
x = 0
y = 0

[State 1002, HitDef]
type = HitDef
triggerall = anim = 1007
trigger1 = animelem =2
trigger2 = animelem =3
trigger3 = animelem =4
attr = S,SA
damage = 22,5
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 1002, PosAdd]
type = PosAdd
triggerall = anim = 1007
trigger1 = animelemtime(5)=0
x = 30

[State 1002, HitDef]
type = HitDef
triggerall = anim = 1007
trigger1 = animelem =6
attr = S,SA
damage = 22,5
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,20
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = 0,-5
air.type = Low
air.hittime = 5
air.velocity = 0,-5
fall = 1

[State 1002, HitDef]
type = HitDef
triggerall = anim = 1007
trigger1 = animelem =9
attr = S,SA
damage = 22,5
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -6,-9
air.type = Low
air.hittime = 5
air.velocity = -6,-8
fall = 1

[State 1002, PosAdd]
type = PosAdd
triggerall = anim = 1007
trigger1 = animelem = 7
x = 30

[State 1002, End]
type = ChangeState
triggerall = Anim = 1007
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Special 2 = roadhouse Blues
;---------------------------------------------------------------------------
[Statedef 1100]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 4,0
poweradd = 50
anim = 1101
ctrl = 0
sprpriority = 2

[State 1100, 2]
type = PlaySnd
triggerall = anim = 1101
trigger1 = AnimElem = 1
value = 1000, 3

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6097
ID = 1000
pos = 0,10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -0.5,0
scale = 1,1
sprpriority = 10
ontop = 1

[State 1100, HitDef]
type = HitDef
triggerall = enemynear,stateno != [5110,5120]
triggerall = var(29) = 0
trigger1 = animelem = 3
attr = S,SA
damage = 42,7
animtype = low
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-10
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 1100, HitDef]
type = HitDef
triggerall = enemynear,stateno = [5110,5120]
triggerall = var(29) = 0
trigger1 = animelem = 3
attr = S,SA
damage = 42,7
animtype = low
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-10
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
p2stateno = 5130
p2getp1state = 0

[State 1100, HitDef]
type = HitDef
triggerall = var(29)!=0
trigger1 = animelem = 3
attr = S,SA
damage = 42,7
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-10
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 1100, VarSet]
type = VarSet
triggerall = var(29) != 1
trigger1 = movecontact
v = 29
value = 1

[State 1100, VarSet]
type = VarSet
triggerall = fvar(29) != 1
trigger1 = movecontact
fv = 29
value = 1

[State 1100, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1102
trigger1 = movecontact
trigger2 = time >= 25
value = 1102

[State 1100, VelSet]
type = VelSet
trigger1 = anim = 1102
trigger1 = animelem = 2
x = 0
y = 0

[State 1100, End]
type = ChangeState
triggerall = anim = 1102
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1101]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 6,0
poweradd = 50
anim = 1104
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6097
ID = 1000
pos = 0,10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -1.5,0
scale = 1,1
sprpriority = 10
ontop = 1

[State 1100, 2]
type = PlaySnd
triggerall = anim = 1104
trigger1 = AnimElem = 1
value = 1000, 3

[State 1100, HitDef]
type = HitDef
triggerall = enemynear,stateno != [5110,5120]
triggerall = var(29) = 0
trigger1 = animelem = 3
attr = S,SA
damage = 42,7
animtype = low
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-10
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
fall = 1

[State 1100, HitDef]
type = HitDef
triggerall = enemynear,stateno = [5110,5120]
triggerall = var(29) = 0
trigger1 = animelem = 3
attr = S,SA
damage = 42,7
animtype = low
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-10
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
p2stateno = 5130
p2getp1state = 0

[State 1100, HitDef]
type = HitDef
triggerall = var(29)!=0
trigger1 = animelem = 3
attr = S,SA
damage = 42,7
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-10
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
fall = 1

[State 1100, VarSet]
type = VarSet
triggerall = var(29) != 1
trigger1 = movecontact
v = 29
value = 1

[State 1100, VarSet]
type = VarSet
triggerall = fvar(29) != 1
trigger1 = movecontact
fv = 29
value = 1

[State 1100, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1105
trigger1 = movecontact
trigger2 = time >= 25
value = 1105

[State 1100, VelSet]
type = VelSet
trigger1 = anim = 1105
trigger1 = animelem = 2
x = 0
y = 0

[State 1100, End]
type = ChangeState
triggerall = anim = 1105
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1102]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 6,0
poweradd = 50
anim = 1100
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 6097
ID = 1000
pos = 0,10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -2.5,0
scale = 1,1
sprpriority = 10
ontop = 1

[State 1100, 2]
type = PlaySnd
triggerall = anim = 1100
trigger1 = AnimElem = 1
value = 1000, 3

[State 1100, HitDef]
type = HitDef
triggerall = var(28) = 0
trigger1 = animelem = 3
attr = S,SA
damage = 42,7
animtype = low
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -9,-7
air.type = Low
air.hittime = 5
air.velocity = -9,-6
fall=1
p2stateno = 5045
p2getp1state = 0

[State 1100, HitDef]
type = HitDef
triggerall = var(28)!=0
trigger1 = animelem = 3
attr = S,SA
damage = 42,7
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -15,0
air.type = Low
air.hittime = 5
air.velocity = -15,0
fall=1

[State 1100, VarSet]
type = VarSet
triggerall = var(28) != 1
trigger1 = movecontact
v = 28
value = 1

[State 1100, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1103
trigger1 = movecontact
trigger2 = time >= 25
value = 1103

[State 1100, VelSet]
type = VelSet
trigger1 = anim = 1103
trigger1 = animelem = 2
x = 0
y = 0

[State 1100, End]
type = ChangeState
triggerall = anim = 1103
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Special 3A = Spin Cycle (Slow)
;---------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0.5

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1201
ID = 1200
pos = -5,10
postype = p1
facing = 1
vfacing = 1
bindtime = 25
vel = 0,0
scale = 1,0.55
sprpriority = 10
ontop = 1


[State 1200, 1]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
value = 1000, 2
channel = 5

[State 1200, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
attr = S,SA
damage = 12,2
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 1200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1204
ctrl = 1

;---------------------------------------------------------------------------
; Special 3B = Spin Cycle (Normal)
;---------------------------------------------------------------------------
[Statedef 1201]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1201
ID = 1200
pos = -5,10
postype = p1
facing = 1
vfacing = 1
bindtime = 25
vel = 0,0
scale = 1,0.55
sprpriority = 10
ontop = 1

[State 1201, 2]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
value = 1000, 2
channel = 5

[State 1201, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
attr = S,SA
damage = 12,2
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 1201, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1204
ctrl = 1

;---------------------------------------------------------------------------
; Special 3C = Spin Cycle (Fast)
;---------------------------------------------------------------------------
[Statedef 1202]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 3.5

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1201
ID = 1200
pos = -5,10
postype = p1
facing = 1
vfacing = 1
bindtime = 25
vel = 0,0
scale = 1,0.55
sprpriority = 10
ontop = 1

[State 1202, 2]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
value = 1000, 2
channel = 5

[State 1202, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
attr = S,SA
damage = 12,2
animtype = low
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 1202, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1204
ctrl = 1

[Statedef 1204] ;chain back ON
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 2

[State 1204, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000, 2
channel = 4

[State 1204,end]  ;chain back ON
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;The Chain Gang
;---------------------------------------------------------------------------
[Statedef 1300]
type     = S
movetype = A
physics  = S
juggle   = 0
velset   = 2,0
poweradd = 50
ctrl     = 0
anim     =1300
sprpriority = 2

[State 1300, 1]
type = NotHitBy
triggerall = time = 0
trigger1 = animelemtime(4) <=  0
value = SCA,AA,AP
ignorehitpause=1

[State 1300, 3]
type = HitDef
trigger1 = Time = 0
attr = S, ST
hitflag = M+
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p2sprpriority = 0
p1facing = 1
p2facing = 1
p1stateno = 1305
p2stateno = 1306
guard.dist = 0
hitsound   = S8000,5
fall = 1
fall.recover = 0
id = 1300
down.bounce = 0

[State 1300, 4]
type = HitDef
trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p2sprpriority = 0
p1facing = 1
p2facing = 1
p1stateno = 1305
p2stateno = 1306
guard.dist = 0
hitsound   = S8000,5
fall = 1
fall.recover = 0
id = 1300
down.bounce = 0

[State 1300, end]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------
; chain attack
[Statedef 1305]
type     = S
movetype = A
physics  = N
anim = 1305
VelSet = 0,0
sprpriority = 1

[State 1305, 1]
type = SprPriority
trigger1 =  AnimElem = 1||AnimElem = 9
value = 2

[State 1305, 2]
type = SprPriority
trigger1 =  AnimElem = 3||AnimElem = 11
value = -1

[State 1305, 3]
type = Width
trigger1 = 1
value = 32,32

[State 1305, 4]
type = TargetState
trigger1 = time = 0
value = 1306

[State 1305, 5]
type = TargetBind
trigger1 =  AnimElem = 1
pos = 20,-60
postype = P1
time = -1

[State 1305, 6]
type = TargetBind
trigger1 =  AnimElem = 2
pos = 60,-70
postype = P1
time = -1

[State 1305, 7]
type = TargetBind
trigger1 =  AnimElem = 3
pos = 80,-130
postype = P1
time = -1

[State 1305, 8]
type = TargetBind
trigger1 =  AnimElem = 4
pos = 75,-135
postype = P1
time = -1

[State 1305, 9]
type = TargetBind
trigger1 =  AnimElem = 5
pos = 70,-140
postype = P1
time = -1

[State 1305, 10]
type = TargetBind
trigger1 =  AnimElem = 6
pos = 45,-120
postype = P1
time = -1

[State 1305, 11]
type = TargetBind
trigger1 =  AnimElem = 7
pos = 25,-40
postype = P1
time = -1

[State 1305, 12]
type = TargetBind
trigger1 =  AnimElem = 8
pos = -30,0
postype = P1
time = -1


[State 1305, 13]
type = TargetBind
trigger1 =  AnimElem = 9
pos = -20,-60
postype = P1
time = -1

[State 1305, 14]
type = TargetBind
trigger1 =  AnimElem = 10
pos = -60,-70
postype = P1
time = -1

[State 1305, 15]
type = TargetBind
trigger1 =  AnimElem = 11
pos = -80,-130
postype = P1
time = -1

[State 1305, 16]
type = TargetBind
trigger1 =  AnimElem = 12
pos = -75,-135
postype = P1
time = -1

[State 1305, 17]
type = TargetBind
trigger1 =  AnimElem = 13
pos = -70,-140
postype = P1
time = -1

[State 1305, 18]
type = TargetBind
trigger1 =  AnimElem = 14
pos = -45,-120
postype = P1
time = -1

[State 1305, 19]
type = TargetBind
trigger1 =  AnimElem = 15
pos = -25,-40
postype = P1
time = -1

[State 1305, 20]
type = TargetBind
trigger1 =  AnimElem = 16
pos = 20,-20
postype = P1
time = 1

[State 1305, 23]
type = PlaySnd
trigger1 = AnimElem = 2
value = 800,0
channel = 5

[State 1305, 24]
type = PlaySnd
trigger1 = AnimElem = 3||AnimElem = 11||AnimElem = 4||AnimElem = 12
value = 1000,2

[State 1305, 25]
type = EnvShake
trigger1 = AnimElem = 8||AnimElem = 16
time = 22
freq = 50
ampl = -5
phase = 60
ignorehitpause = 1

[State 1305, 26]
type = TargetState
triggerall = !NumTarget(1300)
trigger1 = AnimElem = 16
value = 5130;1307

[State 1305, 27]
type = TargetState
triggerall = NumTarget(1300) >= 1
triggerall =target(1300),alive = 1
trigger1 = AnimElem = 16
value = 5130;1307

[State 1305, 28]
type = TargetState
triggerall = NumTarget(1300) >= 1
triggerall =target(1300),life <= 0
trigger1 = AnimElem = 16
value = 5130

[State 1305, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;1304
ctrl = 1
;---------------------------------------------------------------------------
; end = jump away
[Statedef 1304]
type    = A
physics = A
ctrl = 0
anim = 41
sprpriority = 1
velset = -3,-5

[State 1304,1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1304,2]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52

;-----------------------------------------------------------------------------
;P2 state
[Statedef 1306]
type     = S
movetype = H
velset   = 0,0
sprpriority = 2

[State 1306, 1]
type = LifeAdd
trigger1 = animtime = 30
value = -20

[State 1306, 1]
type = LifeAdd
trigger1 = animtime = 70
value = -30

[State 1306, 2]
type = ChangeAnim2
Trigger1 = time = 0
value = 1306

[State 1306, end]
type = ScreenBound
trigger1 = 1
movecamera = 0,0

;------------------------------------------------------------------------

[Statedef 1307]
type     = A
movetype = H
physics  = N
velset = -4,-4

[State 1307, 1]
type = LifeAdd
trigger1 = Time = 0
value = -100

[State 1307, 2]
type = Gravity
trigger1 =1

[state 1307, end]
type = selfstate
trigger1 = Vel Y > 0&&Pos Y >= 0
value = 5050


