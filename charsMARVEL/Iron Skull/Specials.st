;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Teleport
[statedef 1100]
type = S
Movetype = I
physics = S
Anim = 1020
poweradd = 50
ctrl = 0

[State 1100, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1100, d]
type = removeexplod
trigger1 = !time
id = 104



[State 0, VarSet]
type = VarSet
trigger1 = command = "Teleport a"
v = 10    ;fv = 10
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = command = "Teleport b"
v = 10    ;fv = 10
value = 2

[State 0, VarSet]
type = VarSet
trigger1 = command = "Teleport c"
v = 10    ;fv = 10
value = 3



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 25,0
volume = 0
channel = -1



[state 702, 2]
type = posadd
trigger1 = animelem = 4  && var(10) = 2
x = 180


[state 702, 2]
type = posadd
trigger1 = animelem = 4 && var(10) = 3
x = 250


[state 702, 2]
type = posadd
trigger1 = animelem = 4  && var(10) = 1
x = 100



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 480,0
volume = 0
channel = -1




[state 702 ,5]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Special 6 ; Energy Blaze
;---------------------------------------------------------------------------
[Statedef 1600]
type = S
movetype = A
physics = N
poweradd = 80
juggle = 1
velset = 0,0
anim = 1600
ctrl = 0
sprpriority = 2


[State 1600, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1600, d]
type = removeexplod
trigger1 = !time
id = 104



[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 6
anim = 8170
pos = -8,3
sprpriority = -4
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .5, .5
facing = 1
ownpal = 1
ignorehitpause = 1




[state 1600, 1]
type = Playsnd
trigger1 = animelem = 1
value =  33

[State 1600, projectile]
type = Projectile
trigger1 = animelem = 6
ProjID = 1600
projanim = 1610
projhitanim = 1611
projcancelanim = 1611
projremovetime = 150
velocity = 5,0
offset = 90, -90
attr = S,NP
guardflag = MA
animtype = medium
damage = 65
pausetime = 14,14
sparkno = -1
guard.sparkno = -1
hitsound = S34,0
guardsound = S32,0
ground.hittime = 15
ground.slidetime = 15
ground.velocity = -7
envshake.time = 14
envshake.ampl = 5
palfx.time = 13
palfx.mul = 102, 0, 255
palfx.add = 0, 140, 140




[State 1600, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Grenate Cannon
;---------------------------------------------------------------------------
[Statedef 1700]
type = S
movetype = A
physics = N
poweradd = 80
juggle = 1
velset = 0,0
anim = 1700
ctrl = 0
sprpriority = 2


[State 1700, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1700, d]
type = removeexplod
trigger1 = !time
id = 104


[State 1700,Grenade]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 4
v = 40
value = -1




[state 1700, 1]
type = Playsnd
trigger1 = animelem = 1
value =  41


[State 1700, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1701
projanim = 1701
projhitanim = 1702
projremanim = 1702
projcancelanim = 1702
projremovetime = 100
velocity = 14,0
offset = 62,-90
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 65,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S42,0
guardsound = S32,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1
palfx.time = 13
palfx.mul = 240, 50, 0
palfx.add = 250, 224, 120



[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1712
ID = 3260
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1




[State 1700, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Uni Beam
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 80

[State 1200, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1200, d]
type = removeexplod
trigger1 = !time
id = 104



[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 50,0

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Uni Beam"
ID = 1010
stateno = 1010
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 1200, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1010]
type = A
movetype = A
physics = N
anim = 1201
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 65*facing
y = parent, Pos Y - 70

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
trigger1 = timemod= 8,1
attr = S, SP
damage = 24,2
guardflag = MA
pausetime = 2,6
hitsound = S51,0
guardsound = S30,0
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



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1200






;---------------------------------------------------------------------------
; Bolt Cannon
[StateDef 1800]
type = S
movetype = A
physics = S
anim = 1800
ctrl = 0
velset = 0,0
poweradd = 80

[State 1800, c]
type = removeexplod
trigger1 = !time
id = 102

[State 1800, d]
type = removeexplod
trigger1 = !time
id = 104



[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 73,0

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "Bolt Cannon"
ID = 1020
stateno = 1020
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 1800, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1020]
type = A
movetype = A
physics = N
anim = 1801
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 65*facing
y = parent, Pos Y - 70

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
trigger1 = timemod= 8,1
attr = S, SP
damage = 24,2
guardflag = MA
pausetime = 2,6
hitsound = S74,0
guardsound = S30,0
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
fall = 1



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1800





;---------------------------------------------------------------------------

