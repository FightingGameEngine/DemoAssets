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
;---------------------------------------------------------------------------
;Shock Wave

[Statedef 3000]
type    = S
movetype= A
physics = N
juggle = 0;  = 4
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2
facep2 = 1

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 17
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 17
Time = 60
;anim =-1;s3012
pos = 15,-88
sound = S8889,0
poweradd = -1000
movetime= 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
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


;------------End of Hyper Effects

[State 3000]
type = PlaySnd
trigger1 = Time = 7
value = 3000,2


[State 3000]
type = ChangeState
trigger1 = time = 73
value = 3001
ctrl = 0


;---------------------------------------------------------------------------
;Shock Wave
[Statedef 3001]
type    = S
movetype= A
physics = N
juggle = 0;  = 2
;poweradd=
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 2
facep2 = 1


[State 3001]
type = VarSet
trigger1 = Time = 0
var(28) = 0

[State 3001]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,0


[State 3001]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,1

[State 3001]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5100,4

[State 3001]
type = EnvShake
trigger1 = AnimElem = 3
time = 16
amp = 8

[State 0, VarSet]
type = VarSet
trigger1 = time = 4
v = 41
value = 2


[State 3001]
type = Helper
trigger1 = Time = 4
stateno = 23000
id = 23000
ownpal = 1
pos = 30-64+64*NumHelper(23000),15

[State 3001]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Shock Wave End
[Statedef 3002]
type    = U
movetype= I
physics = N
juggle = 0;  = 2
;poweradd=
velset = 0,0
anim = 0
ctrl = 1
sprpriority = 2

[State 3002]
type = ChangeState
trigger1 = Time = 0 && StateType != A
value = 0
ctrl = 1


[State 3002]
type = ChangeState
trigger1 = Time = 0 && StateType = A
value = 3003
ctrl = 1


;---------------------------------------------------------------------------
;Shock wave End
[Statedef 3003]
type    = A
movetype= I
physics = A
juggle = 0;  = 2
;poweradd=
velset = 0,0
;anim = 0
ctrl = 1
sprpriority = 2

[State 3003]
type = ChangeAnim
trigger1 = Time = 0
value = 44
elem = 9

[State 3003]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;shocão
;Shock Wave
[Statedef 23000]
type = S
movetype = A
physics = N
;anim = 23000
ctrl = 0
sprpriority = 3
velset = 0,0
hitcountpersist = 1

[State 23000]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 23000
value = 23000

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 23000]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 23000]
type = Explod
trigger1 = AnimElem = 2
anim = 23001
ontop = 1
bindtime = -1
ownpal = 1


[State 23000]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 23000]
type = HitOverride
trigger1 = 1
stateno = 23000
attr = SCA,AP
slot = 0
time = -1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41   ;fv = 10
value = parent,var(41)

[State 23000]
type = HitDef
attr = S, HP
triggerall = enemynear, name != "Bishop"
triggerall = enemynear, name != "BastionBoss"
triggerall = enemynear, name != "Trainingroom"
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Prime Sentinels"
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = floor(110/var(41)),3
animtype = Medium
priority  = 4, Hit
guardflag = MA
hitflag = MADF
pausetime = 3,3
sparkxy = -10,-70
hitsound   = S3000,1
guardsound = S4,0
sparkno = 3
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -1,-4;-7,-7
air.velocity = -10,-2;-7,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
sprpriority = 3
p2stateno = 9020

[State 23000]
type = HitDef
attr = S, HP
triggerall = hitcount < 1
triggerall = moveguarded < 1
trigger1 = enemynear, name = "Bishop"
trigger2 = enemynear, name = "BastionBoss"
trigger3 = enemynear, name = "Trainingroom"
trigger4 = enemynear, name = "helibonus"
trigger5 = enemynear, name = "Prime Sentinels"
damage = floor(120/var(41)),3
animtype = Medium
priority  = 4, Hit
guardflag = MA
hitflag = MADF
pausetime = 3,3
sparkxy = -10,-70
hitsound   = S3000,1
guardsound = S4,0
sparkno = 3
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -1,-4;-7,-7
air.velocity = -10,-2;-7,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
sprpriority = 3
;p2stateno = 9020

[State 0, ParentVarSet]
type = VarAdd
trigger1 = Time = 7
v = 41    ;fv =
value = 1

[State 23000]
type = Helper
trigger1 = FrontEdgeDist > -70; && Parent,var(28) < 8
trigger1 = Time = 7
stateno = 23000
id = 23000
ownpal = 1
pos = 64,0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
;trigger2 = Time = 240



;-----------------begin bolinha

[Statedef 3100]
type    = S
movetype= A
physics = N
juggle = 0;  = 4
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 2
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
trigger2 = animelem = 13
trigger3 = animelem = 16
value = 193,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 10
trigger2 = animelem = 13
trigger3 = animelem = 16
anim = 3105
ID = 3105
pos = 90,-110
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
supermove = 9999
pausemove = 9999
scale = 1,1
sprpriority = 20
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 8
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 8
Time = 60
;anim =-1;s3012
pos = 64,-118
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
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

;------------End of Hyper Effects

[State 3000]
type = PlaySnd
trigger1 = Time = 7
value = 3000,2

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 22
id = 3105
;ignorehitpause =
;persistent =


[State 0, Helper]
type = Helper
trigger1 = time = 74
helpertype = normal ;player
name =  "bolinha"
ID = 3110
stateno = 3110
pos = 40,-115
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 =  time = 76
helpertype = normal ;player
name =  "bolinha"
ID = 3110
stateno = 3110
pos = 40,-115
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 =  time = 78
helpertype = normal ;player
name =  "bolinha"
ID = 3110
stateno = 3110
pos = 40,-115
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1



[State 3000]
type = ChangeState
trigger1 = time = 300
value = 3101
ctrl = 0

 [Statedef 3101]
type    = S
movetype= A
physics = N
juggle = 0;  = 4
velset = 0,0
anim = 3101
ctrl = 0
sprpriority = 2
facep2 = 1
;end bolinha
[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger2 = time = 1
trigger3 = time = 2
anim = 3105
ID = 3105
pos = 90,-110
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 6
supermove = 9999
pausemove = 9999
scale = 1,1
sprpriority = 20
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 193,0

[State 3000]
type = ChangeState
trigger1 = animtime= 0
value = 0
ctrl = 1

[Statedef 3110]
type = S
movetype = A
physics = N
;anim = 23000
ctrl = 0
sprpriority = 3
velset = 0,0
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 10,1
value = 0,1

[State 0, VelSet]
type = VelSet
trigger1 = timemod = 15,0
x = ifelse(vel x = 20,-20,20)
;y = ifelse(pos y > 0,-5,5)
;ignorehitpause =
;persistent =

;[state 1101, twister]
;type = afterimage
;trigger1 = time = 0
;time = -1
;ignorehitpause = 1
;PalBright = 0, 0, 0
;PalContrast =  105,105,105;255
;PalAdd = 0, 0, 0
;PalMul = 1,1,1
;trans = add1;AS250D250;none
;Length = 5
;FrameGap = 1


[State 0, VelSet]
type = VelSet
trigger1 = timemod = 15,0
trigger1 = pos y > enemynear,pos y - 80
y = -2

[State 0, VelAdd]
type = VelAdd
trigger1 = vel y > 0
y = 0.2

[State 0, VelAdd]
type = VelAdd
trigger1 = vel y < 0
y = -0.2


[State 0, VelSet]
type = VelSet
trigger1 = timemod = 15,0
trigger1 = pos y < enemynear,pos y - 80 ;-170
y = 2


;[State 0, VelSet]
;type = VelSet
;trigger1 = timemod = 15,0
;trigger1 = pos y < 0 && pos y > -170
;y = (-2 + random/150)

[State 23000]
type = ChangeAnim
trigger1 = Time = 0 && Anim !=3110
value = 3110

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow



[State 23000]
type = HitDef
attr = S, HA
trigger1 = timemod = 5,0
damage = 6,1
animtype = Medium
priority  = 5, Hit
guardflag = MA
hitflag = MAFD
pausetime = 6,6
sparkxy = -10,-5
hitsound   = S3000,1
guardsound = S4,0
sparkno = 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 40
air.hittime = 40
ground.velocity = -3+(random/200),-6;-7,-7
air.velocity = -3+(random/200),-2;-7,-7
sprpriority = 3

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, anim != 3100
;end shoc]ao
;---------------------------------------------------------------------------
;Magnetic Tempest

[Statedef 3200]
type    = U
movetype= A
physics = N
juggle = 0;  = 4
velset = 0,0
anim = 3020
poweradd= 150
ctrl = 0
sprpriority = 2
facep2 = 1


[State 3020]
type = PlaySnd
trigger1 = Time = 1
value = 3020,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 6
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 6
Time = 60
;anim =-1;s3012
pos = -4,-85
sound = S8889,0
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
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

[State 3100, Ground Flash]
type = Explod
triggerall = !Var(29)
trigger1 = AnimElem = 6
anim = 6666
ID = 8400
postype = P1
pos = -40,0
sprpriority = 3
ownpal = 1
supermovetime = 0

;------------End of Hyper Effects

[State 3020]
type = ChangeState
trigger1 = animtime = 0
value = 3021
ctrl = 0




;---------------------------------------------------------------------------
;Magnetic Tempest
[Statedef 3021]
type    = U
movetype= A
physics = N
juggle = 0;  = 2
;poweradd=
velset = 0,0
anim = 3021
ctrl = 0
sprpriority = 2
facep2 = 1

[State 3021]
type = Helper
trigger1 = Time = 0
stateno = 23021
ownpal = 1

[State 3021]
type = null;NotHitBy
trigger1 = 1
value = SCA


[State 3021]
type = null;PlaySnd
trigger1 = Time = 1
value = 3020,0


[State 3021]
type = Explod
trigger1 = Time%5 = 0 && Time < 70
anim = 6811+random%4
id = 6811
ontop = 1
removetime = 30
bindtime = -1
facing = ifelse(random < 500,1,-1)
vfacing = ifelse(random < 500,1,-1)
postype = p1
pos = 47,-77
random = 40,40
vel = 0,0


[State 3021]
type = Explod
trigger1 = Time%5 = 0 && Time < 70
anim = 6811+random%4
id = 6811
ontop = 1
removetime = 30
bindtime = -1
facing = ifelse(random < 500,1,-1)
vfacing = ifelse(random < 500,1,-1)
postype = p1
pos = -37,-73
random = 40,40
vel = 0,0



[State 3021]
type = HitDef
attr = A, HA
trigger1 = enemynear,life < 10
trigger1 = Time%5 = 0
trigger1 = hitcount < 15
trigger1 = moveguarded < 1
animtype  = Medium
damage    = 12*var(30),floor(var(30)/4)
hitflag = MAFD
guardflag = MA
pausetime = 3,3
sparkno = S(8220+random%2)
guard.sparkno = S8430
sparkxy = -10,-80+floor(P2Dist Y)
hitsound   = S1,2
guardsound = S4,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 20
ground.velocity = -7,-9
air.velocity = -7,-9
;fall = 1
;air.fall = 1
;fall.recover =0


[State 3021]
type = Projectile
trigger1 = Time%2 = 0 && Time > 12
projid = 3021
projanim = 23021+random%4
projhitanim = 6816+random%4
projremanim = 6816+random%4
projcancelanim = 6816+random%4
projremove = 1
projremovetime = 60
velocity = (3+random%6)*(1-2*(random%2)),(3+random%6)*(1-2*(random%2))
projhits = 1
projpriority = 4
projsprpriority = 3
projedgebound = 100
projheightbound = -340,50
postype = p1
offset = 47,-77;-37,-73;
;-----------------------------
attr = A, HP
animtype  = Medium
damage    = 4*var(30),floor(var(30)/4)
hitflag = MAFD
guardflag = MA
pausetime = 0,3
sparkno = S(8220+random%2)
guard.sparkno = S8430
sparkxy = -10,0
hitsound   = S1,2
guardsound = S4,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 20
ground.velocity = -9
air.velocity = -9
;fall = 1
;air.fall = 1
;fall.recover =0
kill = 1


[State 3021]
type = Projectile
trigger1 = Time%2 = 0 && Time > 12
projid = 3021
projanim = 23021+random%4
projhitanim = 6816+random%4
projremanim = 6816+random%4
projcancelanim = 6816+random%4
projremove = 1
projremovetime = 60
velocity = (3+random%6)*(1-2*(random%2)),(3+random%6)*(1-2*(random%2))
projhits = 1
projpriority = 4
projsprpriority = 3
projedgebound = 100
projheightbound = -340,50
postype = p1
offset = -37,-73
;-----------------------------
attr = A, HP
animtype  = Medium
damage    = 4*var(30),floor(var(30)/4)
hitflag = MAFD
guardflag = MA
pausetime = 0,3
sparkno = S(8220+random%2)
guard.sparkno = S8430
sparkxy = -10,0
hitsound   = S1,2
guardsound = S4,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 20
ground.velocity = -9
air.velocity = -9
;fall = 1
;air.fall = 1
;fall.recover =0
kill = 1


[State 3021]
type = Projectile
trigger1 = Time%2 = 0 && Time > 12
projid = 3021
projanim = 23021+random%4
projhitanim = 6816+random%4
projremanim = 6816+random%4
projcancelanim = 6816+random%4
projremove = 1
projremovetime = 60
velocity = (7+random%6)*(1-2*(random%2)),0
projhits = 1
projpriority = 4
projsprpriority = 3
projedgebound = 100
projheightbound = -340,50
postype = p1
offset = -37,-73
;-----------------------------
attr = A, HP
animtype  = Medium
damage    = 4*var(30),floor(var(30)/4)
hitflag = MAFD
guardflag = MA
pausetime = 0,3
sparkno = S(8220+random%2)
guard.sparkno = S8430
sparkxy = -10,0
hitsound   = S1,2
guardsound = S4,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 20
ground.velocity = -9
air.velocity = -9
;fall = 1
;air.fall = 1
;fall.recover =0
kill = 1


[State 3021]
type = Projectile
trigger1 = Time%2 = 0 && Time > 12
projid = 3021
projanim = 23021+random%4
projhitanim = 6816+random%4
projremanim = 6816+random%4
projcancelanim = 6816+random%4
projremove = 1
projremovetime = 60
velocity = 0,(7+random%6)*(1-2*(random%2))
projhits = 1
projpriority = 4
projsprpriority = 3
projedgebound = 100
projheightbound = -340,50
postype = p1
offset = -47,-77
;-----------------------------
attr = A, HP
animtype  = Medium
damage    = 4*var(30),floor(var(30)/4)
hitflag = MAFD
guardflag = MA
pausetime = 0,3
sparkno = S(8220+random%2)
guard.sparkno = S8430
sparkxy = -10,0
hitsound   = S1,2
guardsound = S4,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
air.hittime = 20
ground.velocity = -9
air.velocity = -9
;fall = 1
;air.fall = 1
;fall.recover =0
kill = 1


[State 3021]
type = ChangeState
trigger1 = Time = 100
value = 3023
ctrl = 0



;---------------------------------------------------------------------------
;Magnetic Tempest End
[Statedef 3022]
type    = A
movetype= I
physics = N
juggle = 0;  = 2
;poweradd=
velset = 0,0
;anim = 3021
ctrl = 1
sprpriority = 2


[State 3022]
type = ChangeAnim
trigger1 = Time = 0
value = 44
elem = 9

[State 3022]
type = VelAdd
trigger1 = 1
y = 0.4

[State 3022]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0


;---------------------------------------------------------------------------
;Magnetic Tempest End
[Statedef 3023]
type    = U
movetype= I
physics = N
juggle = 0;  = 2
;poweradd=
velset = 0,0
anim = 3022
ctrl = 0
sprpriority = 2


[State 3023]
type = ChangeState
trigger1 =  AnimTime = 0 && var(54)
value = 1335
ctrl = 1

[State 3023]
type = ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 0
ctrl = 1

[State 3023]
type = ChangeState
trigger1 =  AnimTime = 0 && StateType = A
value = 3022
ctrl = 1

;Clean up Helper
[Statedef 23021]
type = S
movetype = I
physics = N
anim = 9800
ctrl = 0
sprpriority = 5
velset = 0,0



[State 3021]
type = RemoveExplod
trigger1 = Parent,Stateno = 3021
trigger1 = Parent,StateTime = 118
trigger2 = Parent,Stateno != 3021
id = 6881

[State 3021]
type = DestroySelf
trigger1 = Parent,Stateno != 3021

[State 23021]
type = BindToParent
trigger1 = 1
ignorehitpause = 1



[Statedef 3500]
type    = S
movetype= A
physics = N
juggle = 0;  = 4
velset = 0,0
anim = 3500
ctrl = 0
sprpriority = 2
facep2 = 1

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 17
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 17
Time = 60
;anim =-1;s3012
pos = 14,-85
sound = S8889,0
poweradd = -1000
movetime= 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
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
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
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



[State 0, ChangeState]
type = ChangeState
trigger1 = time= 75
value = 3501
ctrl = 0


[Statedef 3501]
type    = S
movetype= A
physics = N
juggle = 0;  = 4
velset = 0,0
anim = 3501
ctrl = 0
sprpriority = 2
facep2 = 1

[State 0, VarRandom]
type = VarRandom
triggerall = time < 240
trigger1 = timemod = 3,1
v = 40
range = 0,19

[State 0, PlaySnd]
type = PlaySnd
triggerall = time < 240
trigger1 = timemod = 3,1
value = 0,0



[State 0, Projectile]
type = Projectile
triggerall = time < 240
trigger1 = timemod = 3,1
ProjID = 3510
projanim = 3510 + var(40)
projhitanim = 3510 + var(40)
projremanim = 3510 + var(40)
projcancelanim = 3510 + var(40)
projscale = 1,1
projremove = 0
projremovetime = -1
velocity = 12+floor(random/500),-3+floor(random/500)
remvelocity = 0,0
accel = 0,0.2
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 340
projstagebound = 340
projheightbound = -240
offset = -230,-100-floor(random/10)
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 9,2
pausetime = 5,5
sparkno = 0
sparkxy = 20,0
hitsound = s1,8
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -6,0
air.velocity = -3,0
sprpriority = 1
p1getp2facing = 0
fall = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 245
value = 0,2

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 245
v = 40
range = 0,2

[State 0, Helper]
type = Helper
trigger1 = time = 245
helpertype = normal ;player
name = "senti"
ID = 3550
stateno = 3550
pos = -250,-50
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3505
ID =  3505
pos = 0,0
postype = left;,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 200
ownpal = 1
removeongethit = 1
ontop = 1
scale = 1.3,1.3

[State 0, ChangeState]
type = ChangeState
trigger1 = time= 300
value = 3502
ctrl = 0


[Statedef 3502]
type    = S
movetype= I
physics = N
juggle = 0;  = 4
velset = 0,0
anim = 3502
ctrl = 0
sprpriority = 2
facep2 = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3505

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3550]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
velset = 12,0
anim = 3550 + root,var(40)
ctrl = 0
sprpriority = 2
facep2 = 1

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = A, HA
damage = 80,5
guardflag = MA
pausetime = 0,0
hitsound = S32720,0
guardsound = 6,0
sparkno = -1
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3,-8
guard.velocity = -5
air.velocity = -4,8
fall =1
getpower = 0,0


 [State 0, Explod]
type = Explod
trigger1 = movehit && numexplod(3560)=0
anim = 3560
ID = 3560
pos = 0,-1*(enemynear,pos y)
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1.5,1.5
sprpriority = 50
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  movehit
trigger2 = time> 150
;ignorehitpause =
;persistent =

;--------------------------------------

[Statedef 3600]
type    = A
movetype= A
physics = N
juggle = 0;  = 1
velset = 0,0
anim = 3600
ctrl = 0
sprpriority = 2
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S50,0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3601
ID = 3601
pos = 0,-90
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermove = 9999
pausemove = 9999
scale = 1,1
sprpriority = 80
shadow = 80,80,80
ownpal = 0
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
value = S4,3

[State 0, Explod]
type = Explod
trigger1 = animelem = 10
anim = 3602
ID = 3602
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
supermove = 9999
pausemove = 9999
scale = 1,1
sprpriority = 80
shadow = 80,80,80
ownpal = 0
removeongethit = 1
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = animelem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = animelem = 4
Time = 60
;anim =-1;s3012
pos = 11,-136
sound = S8889,0
poweradd = -1000
movetime= 60


[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
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
triggerall = !numhelper(40003)
trigger1 = time = 5
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
triggerall = !numhelper(40004)
trigger1 = time = 5
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

[State 0, HitOverride]
type = HitOverride
trigger1 = time > 40
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3680
time = 1

;------------End of Hyper Effects

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3601
ctrl = 0


[Statedef 3601]
type    = A
movetype= A
physics = N
juggle = 0;  = 1
anim = 3603
ctrl = 0
sprpriority = 2
;facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall= prevstateno !=3690
trigger1 = time = 0
value = S100,0


[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = (gametime%6)=0 ;&& var(21)=1
time = 50
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1

[state 1101, twister]
type = afterimage
trigger1 = timemod=20,1
time = 20
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 8
FrameGap = 2


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3690
time = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall= prevstateno !=3690
trigger1 = time = 0
value = 3603

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3602)>0
trigger1 = time = 0
id = 3602

[State 0, VelSet]
type = VelSet
trigger1 = time = 7 &&  prevstateno !=3690
trigger2 = time = 3 &&  prevstateno =3690
x = 20

[State 220, HitDef]
type = HitDef
trigger1 = timemod = 4,0
attr = S,HA
damage = 28,4
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,0
sparkno = 3
sparkxy = -15, -85
hitsound = s4,9
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -7,-4
air.hittime = 10
air.velocity = -12,-1.6
envshake.time = 7
envshake.ampl = 3
fall = 1
getpower = 0

[State 0, Explod]
type = null;Explod
triggerall = numexplod(3606)=0
trigger1 = animelem = 3
anim = 3606
ID = 3606
pos = 100,-80
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
supermove = 9999
pausemove = 9999
scale = 1,1
sprpriority = 80
shadow = 0,0,0
ownpal = 1
removeongethit = 1



[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3602
ctrl = 0


[Statedef 3602]
type    = S
movetype= I
physics = S
juggle = 0;  = 1
anim = 3605
ctrl = 0
sprpriority = 2
;facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S50,0

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3606)>0
trigger1 = time = 0
id = 3606

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 3604
ID = 3604
pos = 0,-70
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermove = 9999
pausemove = 9999
scale = 1,1
sprpriority = 80
shadow = 80,80,80
ownpal = 0
removeongethit = 0




[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 3690]
type    = S
movetype= H
juggle = 0;  = 1
ctrl = 0
sprpriority = 2

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time=0 ;&& var(21)=1
time = 5
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -20;floor(gethitvar/2)
kill = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 3601
ctrl = 0

[Statedef 3680]
type    = S
movetype= H
juggle = 0;  = 1
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S50,0

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time=0 ;&& var(21)=1
time = 5
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -50;floor(gethitvar/2)
kill = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 1
value = 5100
