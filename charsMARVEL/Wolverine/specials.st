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

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0


[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 8
value = S171,1

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 8
attr = S, SA
damage = 11,1
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 0,0
hitsound = S171,6
guardsound =6,0
sparkno = 1
sparkxy = -40,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7,-1
guard.velocity = -4
air.velocity = -4,-1
fall = 1


[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1001
ID = 1001
pos = 0,-20
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.6,0.6
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1002
ID = 1002
pos = 0,-20
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 0.6,0.6
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 4

[State 0, VelAdd]
type = VelAdd
triggerall = time > 9
trigger1 = vel x < 6
x = 1

[State 1000, changestate]
type = ChangeState
trigger1 = time > 56
value = 1010

;---------
; Special 1 - end
[StateDef 1010]
type = S
movetype = A
physics = S
anim = 1010
velset = 0,0

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------
;Dive Kick

[Statedef 1100]
type = A
movetype = I
physics = N
anim = 40
velset = 0,0
ctrl = 0

[State 1100, 0]
type = VelSet
trigger1 = animtime = 0
x = 8
y = const(velocity.jump.y)*1.3

[State 1100, 1]
type = PlaySnd
trigger1 = animtime = 0
value = 8,0

[State 1100, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1101
ctrl = 1

;---------------------------------
[Statedef 1101]
type    = A
movetype = I
physics = A
ctrl = 0
anim = 1100

[State 1101, 1]
type = NotHitBy
trigger1 =  1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2

[State 1101, 2]
type = ScreenBound
trigger1 = var(42) = 0
value = 0
movecamera = floor(pos x),0;floor(pos y)

[State 1101, 3]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 1101, 4]
type = VelAdd
trigger1 = Vel X <= 2.5
x = 0.25

[State 1101, 5]
type = ChangeState
value = 1102
trigger1 = var(42) = 0
trigger1 = (ScreenPos Y <= 123) &&  (ScreenPos Y >= 75)
trigger2 = var(42) = 1
trigger2 = pos Y < -102

[State 1101, 6]
type = ChangeState
trigger1 = vel y > 0
value = 50
ctrl = 1

;---------------------------------
[Statedef 1102]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 1101
velset = 0,0

[State 1102, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
value = 171,3

[State 1102, loclcamera]
type = ScreenBound
trigger1 = var(42) = 0
value = 0
movecamera = 0,0

[State 1102, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1110

;---------------------------------
[Statedef 1110]
type    = A
movetype = A
physics = A
ctrl = 0
velset = 7, 5
anim = 1102

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,2

[State 1110, loclcamera]
type = ScreenBound
triggerall = var(42) = 0
trigger1 = time < 5
value = 0
movecamera = 0,0

[State 1110, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 90,5
guardflag = HA
pausetime = 12,12
hitsound = S2,2
priority = 3, Hit
guardsound = 6,0
sparkxy = 0,-10
sparkno = 2
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7,-3
guard.velocity = -7
air.velocity = -4,3
fall = 1
p2stateno = 5130
;p2getp1state = 0

;---------------------------------
;Medium Dive Kick

[Statedef 1150]
type = A
movetype = I
physics = N
anim = 40
velset = 0,0
ctrl = 0

[State 1150, 1]
type = VelSet
trigger1 = animtime = 0
x = 12
y = const(velocity.jump.y)*1.3

[State 1150, 2]
type = PlaySnd
trigger1 = animtime = 0
value = 8,0

[State 1150,3]
type = ChangeState
trigger1 = animtime = 0
value = 1151
ctrl = 1

;---------------------------------
[Statedef 1151]
type    = A
movetype = I
physics = A
ctrl = 0
anim = 1100

[State 1151, 1]
type = NotHitBy
trigger1 =  1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2

[State 1151, 2]
type = ScreenBound
trigger1 = var(42) = 0
value = 0
movecamera = floor(pos x),0;floor(pos y)

[State 1151, 3]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 1151, 4]
type = VelAdd
trigger1 = Vel X <= 4
x = 0.25

[State 1151, 5]
type = ChangeState
value = 1152
trigger1 = var(42) = 0
trigger1 = (ScreenPos Y <= 123) &&  (ScreenPos Y >= 75)
trigger2 = var(42) = 1
trigger2 = pos Y < -102

[State 1151, 6]
type = ChangeState
trigger1 = vel y > 0
value = 50
ctrl = 1

;---------------------------------
[Statedef 1152]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 1101
velset = 0,0

[State 1152, 1]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
value = 171,3

[State 1152, 2]
type = ScreenBound
trigger1 = var(42) = 0
value = 0
movecamera = 0,0

[State 1152, 3]
type = ChangeState
trigger1 = animtime = 0
value = 1160

;---------------------------------
[Statedef 1160]
type    = A
movetype = A
physics = A
ctrl = 0
velset = 0, 5
anim = 1150

[State 1160, 1]
type = ScreenBound
triggerall = var(42) = 0
trigger1 = time < 5
value = 0
movecamera = 0,0

[State 1160, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 0,2

[State 1160, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 85,5
guardflag = HA
pausetime = 12,12
hitsound = S2,2
priority = 3, Hit
guardsound = 6,0
sparkxy = 0,-10
sparkno = 2
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,-3
guard.velocity = -7
air.velocity = 0,6
fall = 1
p2stateno = 5130
;p2getp1state = 0

;---------------------------------
;Lethal Lunge

[StateDef 1200]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem= 5
value = 8,0

[State 1200, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 4
y = -4

[State 1200, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 9
y = -4

[State 1200, VelAdd]
type = VelAdd
trigger1 = time > 25
y = 0.5

[State 1200, ChangeState]
type = ChangeState
triggerall =  time > 25
trigger1 = p2bodydist X < 30 ;|| pos y > -6
value =  1201

[State 1200, ChangeState]
type = ChangeState
triggerall =  time > 25
trigger1 = pos y  > -6
value =  1202

[StateDef 1250]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = animelem= 5
value = 8,0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 4
y = -3

[State 1250, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 8
y = -2

[State 1250, VelAdd]
type = VelAdd
trigger1 = time > 25
y = 0.5

[State 1250, ChangeState]
type = ChangeState
triggerall =  time > 25
trigger1 = p2bodydist X < 30 ;|| pos y > -6
value =  1201

[State 1250, ChangeState]
type = ChangeState
triggerall =  time > 25
trigger1 = pos y  > -6
value =  1202

[StateDef 1260]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0

[State 1260, PlaySnd]
type = PlaySnd
trigger1 = animelem= 5
value = 8,0

[State 1260, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 2
y = -3

[State 1260, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 7
y = -1

[State 1260, VelAdd]
type = VelAdd
trigger1 = time > 25
y = 0.5


[State 1260, ChangeState]
type = ChangeState
triggerall =  time > 25
trigger1 = p2bodydist X < 30 ;|| pos y > -6
value =  1201

[State 1260, ChangeState]
type = ChangeState
triggerall =  time > 25
trigger1 = pos y  > -6
value =  1202

[StateDef 1270]
type = A
movetype = A
physics = A
anim = 1205
ctrl = 0

[State 1270, PlaySnd]
type = PlaySnd
trigger1 = animelem= 3
value = 0,2

[State 1270, ChangeState]
type = ChangeState
triggerall =  time > 12
trigger1 = p2bodydist X < 30 ;|| pos y > -6
value =  1201


[StateDef 1201]
type = A
movetype = A
physics = N
anim = 1201
ctrl = 0

[State 1201, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 1201, VelAdd]
type = VelAdd
trigger1 = time > 1
y = 0.5

[State 1201, Hitdef]
type = HitDef
trigger1 = Time = 0
attr = S, ST
;guardflag = MA
hitflag = M-
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 1210;+(StateType = A)
p2stateno = 1220;+(StateType = A)
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S1,9
id = 800
guardsound = S4,0
;guard.sparkno = S8430
;damage = 4*var(30),var(30)/2
sparkxy = -10,-60

[State 3600, ChangeState]
type = ChangeState
trigger1 = pos y  > -6
value =  1202

[StateDef 1202]
type = S
movetype = A
physics = N
anim = 1202
ctrl = 0

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = animelem= 1
value = 8,2

[State 1202, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 1202, VelSet]
type = VelSet
trigger1 = time = 0
;x = 6
y = 0

[State 1202, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 0
y = 0

[State 1202, Dust]
type = Explod
trigger1 = animelem = 1, >= 0
;trigger1 = animelem = 8, < 0
trigger1 = timemod = 6,0
scale = const(size.xscale)
id = 451
anim = 451
pos = -45,0
sprpriority = 2
bindtime = 1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1

[State 1202, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =  0
ctrl = 1


[Statedef 1210]
type    = A
movetype= A
physics = N
anim = 1210
sprpriority = 5

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 171,5

[State 1210, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 2
anim = -1
sound = -1
move = 0
darken = 0
poweradd = 0
unhittable = 1
pausebg = 1

[State 1210, VelAdd]
type = VelAdd
trigger1 = time > 1
y = 0.5

[State 1210, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = -40
kill = 0

[State 1210, TargetBind]
type = TargetBind
trigger1 = time = 0
time = -1
pos = 50,-30

[State 1210, Explod]
type = Explod
trigger1 = time = 0
anim = 3113
ID = 3113
pos = 30,-55
facing = 1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 10
removeongethit = 0

[State 1210, Explod]
type = Explod
trigger1 = time = 0
anim = 1211
ID = 1211
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = -3
removeongethit = 1
;ignorehitpause =
;persistent =

[State 1210, TargetState]
type = TargetState
trigger1 = pos y  > -6
value = 1225

[State 1210, ChangeState]
type = ChangeState
trigger1 = pos y  > -6
value =  1215

[Statedef 1215]
type    = C
movetype= A
physics = C
anim = 1215
velset = 0,0
sprpriority = 1
juggle = 0

[State 1215, PlaySnd]
type = PlaySnd
trigger1 = animelem= 1
value = 8,2

[State 1215, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 9
trigger5 = animelem = 11
trigger6 = animelem = 13
trigger7 = animelem = 15
trigger8 = animelem = 17
value = 171,2

[State 1215, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 9
trigger5 = animelem = 11
trigger6 = animelem = 13
trigger7 = animelem = 15
trigger8 = animelem = 17
attr = S, SA
guardflag = MA        ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 7
hitsound = S171,6
guardsound = 6,0
pausetime = 0,0
sparkno = 1
sparkxy = -40,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
kill =0
p2stateno = 1226

[State 1215, HitDef]
type = HitDef
trigger1 = animelem = 19
attr = S, SA
guardflag = MA
damage = 20
guardflag = L
pausetime = 3,3
hitsound = S171,5
guardsound = 6,0
sparkno = 2
sparkxy = -40,0
animtype = Medium
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
fall = 1
kill =1
p2stateno = 1227

[State 1215, Explod]
type = Explod
trigger1 = animelem = 19
anim = 1216
ID = 1216
pos = 10,5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1
ignorehitpause = 1

[State 1215, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 1215, RemoveExplod]
type = RemoveExplod
trigger1 =  time = 0 && numexplod(1211)>0
id = 1211

[State 1215, TargetBind]
type = TargetBind
trigger1 = animelem = 1
pos = 0,0

[State 1215, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =  105
ctrl = 1

[Statedef 1220]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 1220, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1220, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1220

[State 1220, SelfState]
type = SelfState
trigger1 = enemynear, name = "Wolverine" && enemynear, stateno != 1210
value =  5100

[Statedef 1225]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 1225, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1225

[State 1225, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 1225, PosAdd]
type = PosAdd
triggerall = prevstateno != 1226
trigger1 = time = 0
x = -10

[State 1225, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1225, SelfState]
type = SelfState
trigger1 = time > 105
value = 5120

[Statedef 1226]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 1226, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1226

[State 1226, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 1226, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1226, SelfState]
type = SelfState
trigger1 = time > 105
value = 5120

[Statedef 1227]
type    = A
movetype= H
physics = N
velset = -10,0
sprpriority = 0

[State 1227, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1227

[State 1227, SelfState]
type = SelfState
trigger1 = life = 0
value = 5100

[State 1227, SelfState]
type = SelfState
trigger1 = time > 8
value = 5120

;---{Super Jump}---
[Statedef 1300]
type = A
movetype = I
physics = N
anim = 1300
velset = 0,0
ctrl = 0

[State 0, ]
type = explod
trigger1 = time = 1
anim = F61
postype = p1
pos = 0,0
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = VelSet
trigger1 = animtime = 0
x = -6.5;), ifelse(var(0)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y);*1.1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1301
ctrl = 1

[Statedef 1301]
type    = A
movetype = I
physics = A
ctrl = 0
anim = 1301
;velset = 0, -15

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)

[State 0, NotHitBy]
type = NotHitBy
trigger1 =  1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),0;floor(pos y)

[State 0, ]
type = explod
trigger1 = time = 0
anim = F700
postype = p1
pos = 0,0 ;const(size.head.pos.y)-40
vel = 0,1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = explod
trigger1 = vel y <= -0.5 && numexplod(701) <= 5 && timemod = 3,1
anim = F701
id = 701
postype = p1
pos = const(size.mid.pos.x),const(size.mid.pos.y)-20
random = 20+const(size.air.back)+const(size.air.front),15
vel = var(50),1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 0, ]
type = VelAdd
trigger1 = Vel X >= -2.5
x = -0.25

[State -1, Triangle Jump]
type = ChangeState
value = 7730
;triggerall = stateno != 1340 && stateno != 1350
trigger1 = (backedgebodydist <= 0) && pos y < - 20


[State 0, ChangeState]
type = Changeanim
trigger1 = vel y > 0
value = 1302



[Statedef 1400]
type = A
movetype = A
physics = N
anim = 1400
juggle = 0;= 2
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 171,0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 15

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
y = -8
x = 8

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0

[State 0, VelAdd]
type = VelAdd
triggerall = time < 17
trigger1 = vel y < 0 && vel y > -5
y = -1

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 17
y = 0.5


[State 650, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, SA
damage = 30,2
sparkno = 1
priority = 4, Hit
guardflag = HA
pausetime = 5,5
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 1,-10
guard.velocity = -7
air.velocity = 1,-10


[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 1401


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1402
ctrl = 0

[Statedef 1401]
type = A
movetype = A
juggle = 0; =5
physics = N
anim = 1401
ctrl = 0

 [State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
;trigger2 = animelem = 2
trigger2 = animelem = 4
;trigger4 = animelem = 4
trigger3 = animelem = 6
;trigger6 = animelem = 6
trigger4 = animelem = 8
value = 171,2


[State 650, HitDef]
type = HitDef
trigger1 = animelem = 1
;trigger2 = animelem = 2
trigger2 = animelem = 3
;trigger4 = animelem = 4
trigger3 = animelem = 5
;trigger6 = animelem = 6
trigger4 = animelem = 7
;trigger8 = animelem = 8
attr = A, NA
damage = 12,2
sparkno = 1
priority = 2, Hit
guardflag = HA
pausetime = 3,3
hitsound = S171,6
guardsound = 6,0
sparkxy = -20,-90
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,-6
guard.velocity = -7
air.velocity = 0,-7

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
y = -4
x = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = vel y < 0 && vel y > -4
y = -1

[State 0, ChangeState]
type = ChangeState
trigger1 = time > 32
value = 1402
ctrl = 0

[Statedef 1402]
type = A
movetype = A
physics = A
anim = 1402
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 0, ChangeState]
type = null;ChangeState
trigger1 = animtime = 0
value = 1402
ctrl = 0


;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4
