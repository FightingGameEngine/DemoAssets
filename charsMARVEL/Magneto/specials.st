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
;EM Disruptor
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle = 0;  = 3
poweradd= 80
ctrl = 0
anim = 1270
sprpriority = 2
velset = 0,0
facep2 = 1

[State 1260]
type = PlaySnd
trigger1 = Time = 1
value = 1270,0

[State 1260]
type = PlaySnd
trigger1 = Time = 5
value = 1270,1



[State 1260]
type = PalFx
trigger1 = Time = 10
time = 4
add = 64,64,64
sinadd = 64,64,64,30


[State 1260]
type = Helper
trigger1 = AnimElem = 15
stateno = 21270
id = 21270
ownpal = 1


[State 1260]
type = HitDef
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = S, SP
animtype  = Medium
damage    = 90
guardflag = HA
pausetime = 7,7
sparkno = 3
sparkxy = -10,-80+floor(P2Dist Y)
hitsound   = S1,7
guardsound = S4,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7
fall = 1

[State 1260]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;EM Disruptor
[Statedef 1010]
type    = A
movetype= A
physics = A
juggle = 0;  = 3
poweradd= 50
ctrl = 0
anim = 1270
sprpriority = 2
velset = 0,0
facep2 = 1

[State 0, VelSet]
type = VelSet
trigger1 = timemod = 4,2
y = -0.3

[State 1270]
type = PlaySnd
trigger1 = Time = 1
value = 1270,0

[State 1270]
type = PlaySnd
trigger1 = Time = 5
value = 1270,1



[State 1270]
type = PalFx
trigger1 = Time = 10
time = 4
add = 64,64,64
sinadd = 64,64,64,30


[State 1270]
type = Helper
trigger1 = AnimElem = 15
stateno = 21270
id = 21270
ownpal = 1

[State 1270]
type = HitDef
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = A, SP
animtype  = Medium
damage    = 90
guardflag = HA
pausetime = 7,7
sparkno = 3
sparkxy = -10,-80+floor(P2Dist Y)
hitsound   = S1,7
guardsound = S4,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7
fall= 1


;[State 1270]
;type = ChangeState
;triggerall = var(54)
;trigger1 = AnimTime = 0
;trigger2 = Anim = 44
;value = 1335
;ctrl = 1

[State 1270]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0



;EM Helper
[Statedef 21270]
type = S
movetype = I
physics = N
;anim = 21270
ctrl = 0
sprpriority = 1
velset = 0,0


[State 21270]
type = ChangeAnim
trigger1 = Anim != 21270 && Time = 0
value = 21270

[State 21270]
type = HitBy
trigger1 = 1
value = SCA,AP


[State 21270]
type = HitOverride
trigger1 = 1
stateno = 21270
attr = SCA,AP
slot = 0
time = -1



[State 21270]
type = DestroySelf
trigger1 = AnimTime = 0


[State 21270]
type = BindToParent
trigger1 = 1
ignorehitpause = 1

;--puxa
;Hyper Grav
[Statedef 1100]
type    = S
movetype= A
physics = N
juggle = 0;  = 3
poweradd= 80
ctrl = 0
velset = 0,0
anim = 1360
sprpriority = 2
facep2 = 1


[State 1360]
type = VarSet
trigger1 = Time = 0
var(28) = 1

[State 1360]
type = PlaySnd
trigger1 = Time = 3
value = 1360,0


[State 1360]
type = PlaySnd
trigger1 = Time = 9
value = 410,1

[State 1360]
type = Helper
trigger1 = Time = 36
stateno = 21360
id = 21360
pos = 0,-100
ownpal = 1
size.xscale = 1.5;(float)
size.yscale = 1.5; (float)


;[State 1360]
;type = Helper
;trigger1 = Time = 36
;stateno = 21360
;id = 21360
;pos = -71,-50
;ownpal = 1


;[State 1360]
;type = Helper
;trigger1 = Time = 36
;stateno = 21360
;id = 21360
;pos = -88,-130
;ownpal = 1


;[State 1360]
;type = Helper
;trigger1 = Time = 36
;stateno = 21360
;id = 21360
;pos = 88,-130
;ownpal = 1


[State 1360]
type = Explod
trigger1 = Time = 36
anim = 6195
pos = 12,-6
ownpal = 1


;[State 1360]
;type = Explod
;trigger1 = Time = 36
;anim = 6195
;pos = 74,-6
;ownpal = 1

;[State 1360]
;type = Explod
;trigger1 = Time = 36
;anim = 6195
;pos = -70,-6
;ownpal = 1

;[State 1360]
;type = Explod
;trigger1 = Time = 36
;anim = 6195
;pos = -85,-6
;ownpal = 1

[State 1360]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;begin bolinha
;Hyper Grav Start
[Statedef 21360]
type = A
movetype = A
physics = N
anim = 21361
ctrl = 0
sprpriority = 3
velset = 0,0

[State 21360]
type = VarSet
trigger1 = Time = 0
var(2) = parent,stateno

[State 21360]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 21360]
type = ChangeState
trigger1 = AnimTime = 0
value = 21362


[State 21360]
type = DestroySelf
trigger1 = Parent,stateno != var(2)

;------------------------------------------------------------------------------------------------------------
;Hyper Grav
[Statedef 21362]
type = A
movetype = A
physics = N
anim = 21362
ctrl = 0
sprpriority = 4
velset = 0,0
hitcountpersist = 1


[State 21362]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 21362]
type = Turn
trigger1 = facing != Parent,facing

[State 21362]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21362]
type = HitOverride
trigger1 = 1
stateno = 21369
attr = SCA,AP
slot = 0
time = -1

[State 21362]
type = HitDef
attr = A, ST
;trigger1 = Enemynear,Stateno != 21370
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 5,0
animtype = Medium
priority  = 2, Hit
guardflag = MA
hitflag = MAF
pausetime = 0,0
sparkxy = -10,-10
hitsound   = -1
guardsound = -1
sparkno = -1
ground.type = High
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1stateno = 21370
p2stateno = 21380
id = 1360
kill = 0


[State 21362]
type = VelAdd
trigger1 = Time > 0
x = P2dist x  + random%50 - 0.9*(P2dist x + random%50)

[State 21362]
type = VelAdd
trigger1 = Time > 0
y = P2dist Y + random%50 - abs(enemynear,const(size.mid.pos.y)) - 0.9*(P2dist Y-abs(enemynear,const(size.mid.pos.y)) + random%50)

[State 21362]
type = VelAdd
trigger1 = p2dist x > p2dist y && Vel Y > 1
y = -0.5

[State 21362]
type = VelAdd
trigger1 = p2dist x < p2dist y && Vel Y > 0
y = 0.5

[State 21362]
type = VelSet
trigger1 = Vel X > 4
x = 4


[State 21362]
type = VelSet
trigger1 = Vel X < -4
x = -4


[State 21362]
type = VelSet
trigger1 = vel Y > 4
y = 4

[State 21362]
type = VelSet
trigger1 = Vel Y < -4
y = -4

[State 21362]
type = ChangeState
trigger1 = Time = 120;Parent,Var(28) = 0
trigger2 = MoveContact
value = 21369
ignorehitpause = 1


;------------------------------------------------------------------------------------------------------------
;Hyper Grav End
[Statedef 21369]
type = A
movetype = I
physics = N
anim = 9999;21363
ctrl = 0
sprpriority = 4
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 21363
ID = 21363
pos = 0,-65
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1.5,1.5
sprpriority = 50
ownpal = 1
removeongethit = 1


[State 21369]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 21369]
type = DestroySelf
trigger1 = Time = 12


;------------------------------------------------------------------------------------------------------------
;Hyper Grav
[Statedef 21370]
type = A
movetype = I
physics = N
anim = 9999;21370
ctrl = 0
sprpriority = 4
velset = 0,0
hitcountpersist = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 21370
ID = 21370
pos = 0,-65
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = 90
scale = 1.5,1.5
sprpriority = 50
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =


[State 21370]
type = Turn
trigger1 = facing != Parent,facing

[State 21370]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 21370]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 21370, Bind 1]
type = TargetBind
trigger1 = 1
pos = 0,-20


[State 21370]
type = VelSet
trigger1 = Time = 0
x = 0.2
y = -0.2

[State 21370]
type = VelAdd
trigger1 = Time > 0
x = ParentDist X + 50 - 0.9*(ParentDist X + 50)

[State 21370]
type = VelAdd
trigger1 = Time > 0
y = ParentDist Y + 80 - abs(const(size.mid.pos.y)) - 0.9*(ParentDist Y-abs(const(size.mid.pos.y)) + 80)

[State 21370]
type = VelAdd
trigger1 = ParentDist X  > ParentDist Y && Vel Y > 1
y = -1

[State 21370]
type = VelAdd
trigger1 = ParentDist X < ParentDist Y && Vel Y < 0
y = 0.5

[State 21370]
type = VelSet
trigger1 = Vel X > 7
x = 7


[State 21370]
type = VelSet
trigger1 = Vel X < -7
x = -7


[State 21370]
type = VelSet
trigger1 = vel Y > 7
y = 7

[State 21370]
type = VelSet
trigger1 = Vel Y < -7
y = -7


[State 21370]
type = TargetState
trigger1 = Time = 90
trigger2 = NumTarget(1360)
trigger2 = Target(1360),life <= 0
value = 859

[State 21370]
type = ChangeState
trigger1 = Time = 90
trigger2 = NumTarget(1360)
trigger2 = Target(1360),life <= 0
trigger3 = !NumTarget(1360)
value = 21369


[Statedef 859]
type    = A
movetype= H
physics = N
velset = 0,5
poweradd = 60


[State 859]
type = ChangeAnim2
Trigger1 = Time = 0
value = 823


[State 859] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 859]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,0

[State 859] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;Hyper Grav Grab

[Statedef 21380]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -2

[State 21380]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 21380]
type = ChangeAnim2
trigger1 = Time = 0
value = 21380



[State 21380]
type = DestroySelf
trigger1 = ishelper
;end bolinha


;EM Disruptor
[Statedef 1200]
type    = S
movetype= A
physics = N
juggle = 0;  = 3
poweradd= 60
ctrl = 0
anim = 1200
sprpriority = 2
velset = 0,0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1300,0
channel = -1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 7,1
value = 3,1


;[State 0, NotHitBy]
;type = NotHitBy
;trigger1 = 1
;value = SCA,NP
;time = 1

[State 1301, HitDef]
type = HitDef
triggerall = p2name != "dangerroom" && p2name != "helibonus" && p2name != "Prime Sentinels" && p2name != "Trainingroom"
trigger1 = time = 0
attr = S, NA   
air.cornerpush.veloff = -20

damage = 90,2
guardflag = MA
pausetime = 0,0
hitsound = S2,1
guardsound = S3,0
priority = 6, Hit
sparkno = 3
sparkxy = 0,-100
animtype = High
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-11
guard.velocity = -5
air.velocity = -4,-9
p2stateno = 1210

[State 1301, HitDef]
type = HitDef
triggerall = p2name = "dangerroom" || p2name = "helibonus" || p2name = "Prime Sentinels" || p2name = "Trainingroom"
trigger1 = time = 0
attr = S, NA   
air.cornerpush.veloff = -20

damage = 90,2
guardflag = MA
pausetime = 0,0
priority = 6, Hit
hitsound = S2,1
guardsound = S3,0
sparkno = 3
sparkxy = 0,-100
animtype = High
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,-11
guard.velocity = -5
air.velocity = -4,-9
;p2stateno = 1210

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
trigger2 = movehit
value = 1201
ctrl = 0
;anim =
;ignorehitpause =
;persistent =

[Statedef 1201]
type    = S
movetype= I
physics = N
anim = 1201
sprpriority = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1202
ID = 1202
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 1
ownpal = 1
removeongethit = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 1210]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 0, PosAdd]
type = PosAdd
triggerall = pos y > -10
trigger1 = time = 0
y = -10
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -5
y = -5

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5
;ignorehitpause =
;persistent =


[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 4
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 128,128,1
mul = 256,256,256

[State 3210, Electrocuted FXs]
type = PalFX
trigger1 = Time % 6
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 1,1,128
mul = 256,256,256

[State 7696, Electrocuted_Anim]
type = ChangeAnim
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 7696

[State 7696, 6]
type = SelfState
trigger1 = Time = 30
trigger2 = pos y > -6
;trigger3 = pos y < -100
value = 5100

;Magnetic Blast
[Statedef 1900]
type    = A
movetype= A
physics = A
juggle = 0;  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1240
sprpriority = 2
facep2 = 1

[State 1900, VelSet]
type = VelSet
trigger1 = timemod = 4,2
y = -0.3

[State 1900]
type = PlaySnd
trigger1 = AnimElem = 9
value = 220,0

[State 1900]
type = PlaySnd
trigger1 = AnimElem = 7
value = 320,0

[State 1900]
type = Helper
trigger1 = AnimElem = 12
stateno = 21240
id = 21240
ontop = 1
ownpal = 1
pos = 70,-80

[State 1900]
type = PalFx
trigger1 = Time = 10
time = 4
add = 64,64,64
sinadd = 64,64,64,30

[State 1900]
type = CtrlSet
trigger1 = Anim = 44
value = 1
persistent = 0

[State 1900]
type = VelAdd
triggerall = AnimElem = 13, > 0
trigger1 = Pos Y < 0 && !var(54)
trigger2 = Anim = 44
y = 0.35

[State 1900]
type = ChangeAnim
trigger1 = Time < 36 && AnimElem = 19
value = 1240
elem = 17

[State 1900]
type = ChangeState
triggerall = var(54)
trigger1 = AnimElem = 19, = 3
trigger2 = Anim = 44
value = 1335
ctrl = 1

[State 1900]
type = ChangeState
trigger1 = Animtime = 0
value = 948;50
ctrl = 0

;Magnetic Blast
[Statedef 21240]
type = A
movetype = A
physics = N
anim = 21240
ctrl = 0
sprpriority = 3
velset = 9,8
hitcountpersist = 1


[State 21240]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 21240]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21240]
type = HitOverride
trigger1 = 1
stateno = 21241
attr = SCA,AP
slot = 0
time = -1


[State 21240]
type = HitDef
attr = A, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 70,3
animtype = Medium
priority  = 3, Hit
guardflag = MA
hitflag = MAFD
pausetime = 0,5
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = 2
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5;,-7
air.velocity = -5;,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 1

[State 21240]
type = ChangeState
trigger1 = MoveContact
value = 21241
ignorehitpause = 1

[State 21240]
type = DestroySelf
trigger1 = FrontEdgeDist < -100
trigger2 = Time = 240

;------------------------------------------------------------------------------------------------------------
;Magnetic Blast End
[Statedef 21241]
type = A
movetype = I
physics = N
anim = 9800
ctrl = 0
sprpriority = 1
velset = 0,0


[State 21241]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 21240]
type = DestroySelf
trigger1 = Time = 0

;-------------------  ESPETOS
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle = 0;  = 3
poweradd= 60
ctrl = 0
anim = 1500
sprpriority = 2
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
trigger2 = time = 11
trigger3 = time = 12
value = 105,0

[State 0, Helper]
type = Helper
trigger1 = time = 10
trigger2 = time = 11
trigger3 = time = 12
helpertype = normal ;player
name = "espeto"
ID = 1510
stateno = 1510
pos = -50+floor(random/10),floor(random/20)
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1260]
type = ChangeState
triggerall = time > 30
trigger1 = command != "holdk"
trigger2 = var(59) ;&& time > 45
value = 1501
ctrl = 0


[Statedef 1501]
type    = S
movetype= A
physics = S
juggle = 0;  = 3
ctrl = 0
anim = 1501
sprpriority = 2
velset = 0,0

 [State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 105,1


[State 1260]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1510]
type    = A
movetype= A
physics = N
juggle = 0;  = 3
ctrl = 0
;anim = 1502
sprpriority = 40
velset = 0,-6

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 20
range = 0,3


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1502 + var(20)

[State 1270]
type = PalFx
trigger1 = Time = 0
time = -1
add = 14,14,14
sinadd = 14,14,14,20

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 8
FrameGap = 2


[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 35
range = 2,7
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 0
y = 0

[State 0, VelSet]
type = VelSet
triggerall = time > 24
triggerall = pos y > -200
trigger1 = parent,command = "holdup"
y = -1*var(35)/2;0.6

[State 0, VelSet]
type = VelSet
triggerall = time > 24
triggerall = pos y < -10
trigger1 = parent,command = "holddown"
y = var(35)/2;0.6

[State 0, VelSet]
type = VelSet
triggerall = time > 24
trigger1 = pos y < -190 && parent,command = "holdup"
trigger2 = pos y > -20 && parent,command = "holddown"
trigger3 = parent,command != "holdup" && parent,command != "holddown"
trigger4 = parent,var(59)
y = 0

[State 0, Projectile]
type = Projectile
triggerall = time > 24
trigger1 = parent,command != "holdk"
trigger2 = parent,var(59) ;&& parent,time =0 && parent,stateno = 1501
ProjID = 1511
projanim = 1512 + var(20)
projhitanim = 1512 + var(20)
projremanim = 1512 + var(20)
projcancelanim = 1512 + var(20)
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 18,0
accel = 0,0
projpriority = 2
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 0,0
postype = p1         ;p2,front,back,left,right
projshadow = 20,20,20
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 35,5
pausetime = 5,5
sparkno = 1
sparkxy = 0,0
hitsound = s1,12
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 5
ground.hittime = 20
air.hittime = 20
ground.velocity = -4,0
air.velocity = -2,0
sprpriority = 40
p1getp2facing = 0
fall = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,command != "holdk" && time > 24
trigger2 = parent,anim != 1500 && parent,anim != 1501
trigger3 = parent,var(59) && time > 24


[Statedef 1600]
type    = S
movetype= A
physics = S
juggle = 0;  = 3
poweradd= 60
ctrl = 0
anim = 1600
sprpriority = 2
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 410,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1601
ID = 1601
pos = 0,-80
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
shadow = 20,20,20
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = 220,0

[State 0, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal ;player
name = "liga"
ID = 1610
stateno = 1610
pos = 0,-80
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1260]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1610]
type    = A
movetype= A
physics = N
juggle = 0;  = 3
ctrl = 0
anim = 1602
sprpriority = 20
velset = 5,0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1630
time = 1

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 1
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 0,0
hitsound = s1,9
guardsound = 6,0
sparkno = 3
sparkxy = 0,0
animtype = Heavy
ground.type = High
kill = 0
p1stateno = 1615
p2stateno = 1620

[State 0, ChangeState]
type = ChangeState
trigger1 = moveguarded
value = 1630

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 100


[Statedef 1615]
type    = A
movetype= I
physics = N
juggle = 0;  = 3
ctrl = 0
anim = 1603
sprpriority = 20
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 20,1
value = 3,0

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = enemynear,pos x
y = enemynear,pos y - 70

[State 0, DestroySelf]
type = DestroySelf
trigger1 = enemynear,stateno!=1620

[Statedef 1620]
type    = A
movetype= H
physics = N
juggle = 0;  = 3
ctrl = 0
;anim = 1620
sprpriority = 15
velset = 0,0

[State 1270]
type = PalFx
trigger1 = Timemod = 10,1
time = 4
add = 64,64,64
sinadd = 64,64,64,30

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1620

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 10

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist x > 30
x = 3

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist x < -30
x = -3

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist y > 80
y = 3

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist y < -30
y = -3

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist x < 30 && p2bodydist x > -30
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist y < 80 && p2bodydist y > -30
y = 0

[State 0, PosSet]
type = Posadd
trigger1 = time = 100
y = 60

[State 0, SelfState]
type = SelfState
trigger1 = time = 100
value = 5050

[Statedef 1630]
type    = A
movetype= I
physics = N
juggle = 0;  = 3
ctrl = 0
anim = 1604
sprpriority = 2
velset = 0.2,0.1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

