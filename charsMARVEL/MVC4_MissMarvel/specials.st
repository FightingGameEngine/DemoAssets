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
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 174,1


[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "missi"
ID = 1010
stateno = 1010
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1001
ID =  1001
pos = 55,-65
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1



[State 1000, changestate]
type = ChangeState
trigger1 = time > 100
trigger2 = time >  10 && numhelper(1010)=0
value = 1001
ctrl = 0

[StateDef 1001]
type = S
movetype = I
physics = S
anim = 1009
ctrl = 0
velset = 0,0
poweradd = 0

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 1010]
type = A
movetype = A
physics = N
anim = 1010
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 55*facing
y = parent, Pos Y - 65

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
trigger1 = time = 0
attr = S, SP
damage = 90,5
guardflag = MA
pausetime = 6,6
hitsound = s2,2
guardsound = s3,0
sparkno = S1002
;guard.sparkno = S6004
sparkxy = -20, 0; (enemynear,pos y)
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
fall = 1
envshake.time = 6
envshake.ampl = 3


[State 1010, VarSet]
type = ParentVarSet
triggerall = fvar(26)!=1
trigger1 = movecontact
fv = 26
value = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1000

; Special 1
[StateDef 1050]
type = A
movetype = A
physics = A
anim = 1050
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, VelAdd]
type = VelAdd
trigger1 = time < 42
y = -0.47

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1001
ID =  1001
pos = 65,-85
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 174,1


[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "missi"
ID = 1055
stateno = 1055
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 1000, changestate]
type = ChangeState
trigger1 = time > 100
trigger2 = time >  10 && numhelper(1055)=0
value = 1051
ctrl = 0

[StateDef 1051]
type = A
movetype = I
physics = A
anim = 1051
ctrl = 0
poweradd = 0

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1



[Statedef 1055]
type = A
movetype = A
physics = N
anim = 1010
velset = 0,0
sprpriority = 99



[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 65*facing
y = parent, Pos Y - 85

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
trigger1 = time = 0
attr = S, SP
damage = 90,5
guardflag = MA
pausetime = 6,6
hitsound = s2,2
guardsound = s3,0
sparkno = S1002
;guard.sparkno = S6004
sparkxy = -20, 0; (enemynear,pos y)
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
fall = 1
envshake.time = 6
envshake.ampl = 3

[State 1055, VarSet]
type = ParentVarSet
triggerall = fvar(26)!=1
trigger1 = movecontact
fv = 26
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1050


[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,6


[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "missi"
ID = 1110
stateno = 1110
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .8
size.yscale = .8

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1101
ID =  1101
pos = -12,-75
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1101
ID =  1101
pos = 50,-104
postype = p1  ;p2,front,back,left,right
bindtime = -1
facing = 1
vfacing = -1
removetime = 8
scale = 0.9,0.9
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 1



[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 1110]
type = A
movetype = A
physics = N
anim = 1102
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 55*facing
y = parent, Pos Y - 25

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
triggerall = parent,fvar(30)<2
trigger1 = time = 0
attr = S, SP
damage = 80,5
guardflag = MA
pausetime = 6,6
hitsound = s2,2
guardsound = s3,0
sparkno = S1103
;guard.sparkno = S6004
sparkxy = -20, -70; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10,-10
guard.velocity = -3
air.velocity = -10,-10
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
envshake.time = 6
envshake.ampl = 3
p2stateno = 5045
;p2getp1state = 0

[State 1110, VarSet]
type = ParentVarSet
triggerall = fvar(26)!=1
trigger1 = movecontact
fv = 26
value = 1

[State 0, VarSet]
type = ParentVarSet
trigger1 = fvar(30) = 0
fv = 30
value = 2

[State 0, VarSet]
type = ParentVarSet
trigger1 = fvar(30) = 1
fv = 30
value = 3

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
;trigger2 = parent, anim != 1100



[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "anti_y"
v = 41
value = 2


[State 0, VarSet]
type = VarSet
triggerall = command = "anti_x"
trigger1 = time = 0
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "anti_z"
trigger2 = var(59)
v = 41
value = 4


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,SA
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,4
sparkno = 2
sparkxy = -15, -85
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -2,-8
air.type = Low
air.hittime = 20
air.velocity = -2,-7

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1201
ctrl = 0


[StateDef 1201]
type = A
movetype = A
physics = N
anim = 1201
ctrl = 0
velset = 2,-10
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 1 + var(41)
y = -8 - var(41)


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,SA
damage = 100,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 2
sparkxy = -15, -95
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -3,-5
air.type = Low
air.hittime = 20
air.velocity = -3,-5
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 1
y = 0.5




[State 0, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = vel y >= 0;animtime = 0
value = 1202
ctrl = 0



[StateDef 1202]
type = A
movetype = I
physics = N
anim = 1202
ctrl = 0
poweradd = 0



[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1

;-------------------------------------------------------------------------------
[StateDef 1300]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
poweradd = 80

 [State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 13
trigger2 = time = 20
value = 172,7


[State 0, Helper]
type = Helper
trigger1 = time = 13
trigger2 = time = 20 && (enemynear,stateno!= [5100,5120])
helpertype = normal ;player
name = "bomba"
ID = 1310
stateno = 1310
pos = -5,-111
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1301
ID =  1301
pos = -18,-103
postype = p1
bindtime = -1
removetime = 4
scale = .5,.5
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1301
ID =  1301
pos = 25,-103
postype = p1
bindtime = -1
removetime = 4
scale = .5,.5
sprpriority = 5
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
[Statedef 1310]
type = A
movetype = A
physics = N
;anim = 1301
;velset = 2,-2
sprpriority = 99

[State 1311, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 1301
value = 1301

[State 1310, Turn]
type = Turn
trigger1 = facing != parent,facing

[State 1310, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1310, VelSet]
type = VelSet
trigger1 = time < 25
x = 0
y = 0

[State 1310, VelAdd]
type = VelAdd
triggerall = time > 25
triggerall = time < 35
triggerall = vel x > -3
trigger1 =  facing*(pos x) > facing*(parent,pos x + 10)
x = -0.3

[State 1310, VelAdd]
type = VelAdd
triggerall = time > 25
triggerall = time < 35
triggerall = vel x < 3
trigger1 =  facing*(pos x) < facing*(parent,pos x - 10)
x = 0.3

[State 1310, VelAdd]
type = VelAdd
triggerall = time > 25
triggerall = time < 35
triggerall = vel y > -3
trigger1 =  pos y > parent,pos y - 46
y = -0.3

[State 1310, VelAdd]
type = VelAdd
triggerall = time > 25
triggerall = time < 35
triggerall = vel y < 3
trigger1 =  pos y < parent,pos y - 59
y = 0.3

[State 1310, VelAdd]
type = VelAdd
triggerall = time > 35
triggerall = vel x > -3
trigger1 =  facing*(pos x) >facing*(parent,pos x + 60)
x = -0.3

[State 1310, VelAdd]
type = VelAdd
triggerall = time > 35
triggerall = vel x < 3
trigger1 =  facing*(pos x) < facing*(parent,pos x - 40)
x = 0.3


[State 1310, VelAdd]
type = VelAdd
triggerall = time > 35
triggerall = vel y > -3
trigger1 =  pos y > parent,pos y - 30
y = -0.3

[State 1310, VelAdd]
type = VelAdd
triggerall = time > 35
triggerall = vel y < 3
trigger1 =  pos y < parent,pos y - 100
y = 0.3

[State 1310, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1310, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 1310, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 45,5
hitflag = MAF
guardflag = MA
pausetime = 6,6
hitsound = S2,0
guardsound = s3,0
sparkno = 1
;guard.sparkno = S6004
sparkxy = -20, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0,0
guard.velocity = -5
air.velocity = 0,0
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 3
envshake.ampl = 3

[State 1310, VarSet]
type = ParentVarSet
triggerall = fvar(26)!=1
trigger1 = movecontact
fv = 26
value = 1

[State 1310, ChangeState]
type = ChangeState
triggerall = Parent,var(31) = 0
trigger1 = p2stateno = 5110
value = 1311
ctrl = 0

[State 1310, DestroySelf]
type = DestroySelf
trigger1 = movehit
trigger2 = parent, lose
trigger3 = parent, win
trigger4 = parent, movetype = H

;-------------------------------------------------------------------------------
[Statedef 1311]
type = A
movetype = A
physics = N
;anim = 1301
;velset = 2,-2
sprpriority = 99

[State 1311, ParentVarSet]
type = ParentVarSet
trigger1 = Parent,var(31)!=1
v = 31
value = 1

[State 1311, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 1301
value = 1301

[State 1311, Turn]
type = Turn
trigger1 = facing != parent,facing

[State 1311, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1311, VelAdd]
type = VelAdd
triggerall = vel x > -4
trigger1 =  facing*(pos x) > facing*(parent,pos x + 10)
x = -0.4

[State 1311, VelAdd]
type = VelAdd
triggerall = vel x < 4
trigger1 =  facing*(pos x) < facing*(parent,pos x - 10)
x = 0.4


[State 1311, VelAdd]
type = VelAdd
triggerall = vel y > -4
trigger1 =  pos y > parent,pos y - 46
y = -0.4

[State 1311, VelAdd]
type = VelAdd
triggerall = vel y < 4
trigger1 =  pos y < parent,pos y - 59
y = 0.4
;;-
[State 1311, VelAdd]
type = VelAdd
triggerall = vel x > -4
trigger1 =  facing*(pos x) >facing*(parent,pos x + 60)
x = -0.4

[State 1311, VelAdd]
type = VelAdd
triggerall = vel x < 4
trigger1 =  facing*(pos x) < facing*(parent,pos x - 40)
x = 0.4


[State 1311, VelAdd]
type = VelAdd
triggerall = vel y > -4
trigger1 =  pos y > parent,pos y - 30
y = -0.4

[State 1311, VelAdd]
type = VelAdd
triggerall = vel y < 4
trigger1 =  pos y < parent,pos y - 100
y = 0.4

[State 1311, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1311, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 1311, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
damage = 45,5
hitflag = MAFD
guardflag = MA
pausetime = 6,6
hitsound = S2,0
guardsound = s3,0
sparkno = 1
;guard.sparkno = S6004
sparkxy = -20, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0,0
guard.velocity = -5
air.velocity = 0,0
down.velocity = 0,-5
down.bounce = -5
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 3
envshake.ampl = 3
p2stateno = 5130
;p2getp1state = 0

[State 1311, VarSet]
type = ParentVarSet
triggerall = fvar(26)!=1
trigger1 = movecontact
fv = 26
value = 1

[State 1311, ChangeState]
type = ChangeState
trigger1 = enemynear, movetype!=H
value = 1310
ctrl = 0

[State 1311, DestroySelf]
type = DestroySelf
trigger1 = movehit
trigger2 = parent, lose
trigger3 = parent, win
trigger4 = parent, movetype = H

;-------------------------------------------------------------------------------
[StateDef 1400]
type = S
movetype = A
physics = S
anim = 1400
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "B_F_x"
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "B_F_y"
v = 41
value = 2

[State 0, VarSet]
type = VarSet
triggerall = command = "B_F_z"
trigger1 = time = 0
trigger2 = var(59)
v = 41
value = 4

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
value = 1401
ctrl = 0

[StateDef 1401]
type = S
movetype = A
physics = N
anim = 1401
ctrl = 0
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1402
ID = 1402
pos = 100,-63
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermove
pausemove
scale = .5,.5
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 8 + var(41)

[State 200, HitDef]
type = HitDef
triggerall = var(32) = 0
trigger1 = time=0
attr = S,SA
damage = 90
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 2
sparkxy = -15, -55
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -5,-9
air.type = Low
air.hittime = 20
air.velocity = -5,-7
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 0, VarSet]
type = VarSet
trigger1 = movehit
v = 32
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1= time = 10 + 3*var(41)
value = 1402
ctrl = 0


[StateDef 1402]
type = S
movetype = A
physics = N
anim = 1403
ctrl = 0
velset = var(41),0
poweradd = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
value = 0
ctrl = 1

[StateDef 1450]
type = A
movetype = A
physics = N
anim = 1450
ctrl = 0
velset = 0,0
poweradd = 80

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "B_F_x"
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "B_F_y"
v = 41
value = 2

[State 0, VarSet]
type = VarSet
triggerall = command = "B_F_z"
trigger1 = time = 0
trigger2 = var(59)
v = 41
value = 4

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
value = 1451
ctrl = 0

[StateDef 1451]
type = A
movetype = A
physics = N
anim = 1401
ctrl = 0
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1402
ID = 1402
pos = 100,-63
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermove
pausemove
scale = .5,.5
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 8 + var(41)

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,SA
damage = 90
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 2
sparkxy = -15, -55
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -5,2
air.type = Low
air.hittime = 20
air.velocity = -5,2
envshake.time = 7
envshake.ampl = 4
fall = 1


[State 0, ChangeState]
type = ChangeState
trigger1= time = 10 + 3*var(41)
value = 1452
ctrl = 0


[StateDef 1452]
type = A
movetype = A
physics = N
anim = 1451
ctrl = 0
velset = var(41),0
poweradd = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
value = 948
ctrl = 1








