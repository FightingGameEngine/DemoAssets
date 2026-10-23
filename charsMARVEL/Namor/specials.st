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
sprpriority = 0
poweradd = 60

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 2
value = 173,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1001
ID = 1001
pos = 10,10
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 2
removeongethit = 1
;ignorehitpause =
;persistent =

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 6
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 6
value = 173,1



[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 1002
ID = 1002
pos = 60,-90
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 2
removeongethit = 1


; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 50


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 12

[State 1010, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage =60,10
guardflag = MA
pausetime = 0,0
hitsound = 5,1
guardsound = 6,0
sparkno = 2
sparkxy = 0, -90
animtype = Heavy
ground.type = High
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -2
guard.velocity = -5
air.velocity = -5,8
kill = 1
guard.kill = 1
palfx.time = 25
palfx.add = 0,0,150
p2stateno = 1111

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 1100]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1100

[State 1100, grunt]
type = PlaySnd
trigger1 = animelem = 1
value = 173,0

[State 1100, grunt]
type = PlaySnd
trigger1 = animelem = 6
value = 173,1

[State 1100, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1102
ID = 1102
pos = 10,-10
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 2
removeongethit = 1

[State 1100, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Raio Reto"
ID = 1101
stateno = 1101
pos = 50,-65
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 1100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1101]
type = A
movetype = A
physics = N
anim = 1101
velset = 0,0
sprpriority = 2

[State 1101, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1101, HitDef]
type = HitDef
triggerall = parent, fvar(29) = 0
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Trainingroom"
trigger1 = timemod= 3,1
attr = S, SA
damage = 10
hitflag = MADF
guardflag = MA
pausetime = 0,0
hitsound = 5,1
guardsound = 6,0
sparkno = -1
sparkxy = -30,0
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
guard.velocity = -5
air.velocity = -2,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 25
palfx.add = 0,0,150
p2stateno = 1111

[State 1101, HitDef]
type = HitDef
triggerall = parent, fvar(29) = 0
triggerall = enemynear, name = "Prime Sentinels" || enemynear, name = "helibonus" || enemynear, name = "Trainingroom"
trigger1 = timemod= 3,1
attr = S, SA
damage = 10
hitflag = MADF
guardflag = MA
pausetime = 0,0
hitsound = 5,1
guardsound = 6,0
sparkno = -1
sparkxy = -30,0
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
guard.velocity = -5
air.velocity = -2,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 25
palfx.add = 0,0,150

[State 1101, ParentVarSet];Special Attack
type = ParentVarSet
trigger1 = fvar(26) != 1
trigger1 = movecontact
fv = 26
value = 1

[State 1101, ParentVarSet];OTG Attack
type = ParentVarSet
trigger1 = fvar(29) != 1
trigger1 = movecontact
fv = 29
value = 1

[State 1101, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, movetype = H;anim != 1100

[Statedef 1111]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002
velset = 0,0

[State 1111, Electrocuted FXs]
type = PalFX
trigger1 = Time % 4
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 128,128,1
mul = 256,256,256

[State 1111, Electrocuted FXs]
type = PalFX
trigger1 = Time % 6
trigger1 = !AnimExist(7696)
time = 1
color = 64
invertall = 1
add = 1,1,128
mul = 256,256,256

[State 1111, Electrocuted_Anim]
type = ChangeAnim
trigger1 = AnimExist(7696)
trigger1 = Anim != 7696
value = 7696

[State 1111, 6]
type = SelfState
trigger1 = Time = 60
value = 5100

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


;super soco
[Statedef 1600]
type    = A
movetype= A
physics = N
juggle = 0;  = 1
velset = 0,0
anim = 1600
poweradd= 80
ctrl = 0
sprpriority = 0
facep2 = 1

[State 1600,grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,1

[State 1600, dash]
type = PlaySnd
trigger1 = animelem = 3
value = 8,0


[State 1600]
type = VelSet
trigger1 = AnimElem = 3
x = 11
y = -1

[State 1600, ChangeState]
type = ChangeState
triggerall =  time > 10
trigger1 = p2bodydist X < 30 ;|| pos y > -6
value =  1601

[State 1600, ChangeState]
type = ChangeState
trigger1 =  time > 140
value =  948
ctrl = 1

[Statedef 1601]
type    = U
movetype= A
physics = N
juggle = 0;  = 1
ctrl = 0
anim = 1601
sprpriority = 0

[State 1601, VarSet]
type = VarSet
trigger1 = movecontact
v = 5
value = 1

[State 1601,0]
type = PlaySnd
trigger1 = time = 0
value = 175,0

[State 1601, grunt]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 1601]
type = HitDef
triggerall = var(5) = 0
trigger1 = !movecontact
attr = A, SA
animtype  = Hard
damage    = 150
guardflag = HA
pausetime = 5,7;0,17;7,10
sparkno = 2
sparkxy = -50,-80;+floor(P2Dist Y)
hitsound   = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 30
air.hittime = 45
ground.velocity = -15,-10
air.velocity = -15,-10
fall = 1
air.fall = 1
fall.recover =0
p2stateno = 5045
;p2getp1state = 0

[State 1601]
type = PosSet
trigger1 =  pos y > 0
y = 0

[State 1601]
type = ChangeState
trigger1 = pos y = 0
value = 0
ctrl = 1

[State 1601]
type = ChangeState
trigger1 = animtime = 0 && pos y < 0
value = 948
ctrl = 1



[StateDef 1200]
type = A
movetype = A
physics = N
anim = 1200
poweradd= 60
ctrl = 0
velset = 0,0
sprpriority = 0

[State 1200,0]
type = PlaySnd
trigger1 = animelem = 5
value = 175,4

[State 1200, grunt]
type = PlaySnd
trigger1 = animelem = 5
value = 8,0


[State 1200, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 5
y = -8


[State 1200, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 1
y = -2

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage = 36
guardflag = MA
pausetime = 0,0
hitsound = 5,3
guardsound = 6,0
sparkno = 2
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 2,-8
guard.velocity = -5
air.velocity = -1,-8
p1stateno = 1201
p2stateno = 1202

[State 1200, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

[StateDef 1210]
type = A
movetype = A
physics = N
anim = 1200
poweradd= 60
ctrl = 0
velset = 0,0
sprpriority = 0


[State 1210, grunt]
type = PlaySnd
trigger1 = animelem = 5
value = 8,0


[State 1210, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 8
y = -6


[State 1210, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 1
y = -2

[State 1210, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage = 36
guardflag = MA
pausetime = 0,0
hitsound = 5,3
guardsound = 6,0
sparkno = 2
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 2,-8
guard.velocity = -5
air.velocity = -1,-8
p1stateno = 1201
p2stateno = 1202

[State 1210, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

[StateDef 1220]
type = A
movetype = A
physics = N
anim = 1200
ctrl = 0
velset = 0,0
poweradd= 60
sprpriority = 0


[State 1220, grunt]
type = PlaySnd
trigger1 = animelem = 5
value = 8,0


[State 1220, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 8
y = -4


[State 1220, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 1
y = -2

[State 1220, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage = 36
guardflag = MA
pausetime = 0,0
hitsound = 5,3
guardsound = 6,0
sparkno = 2
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 2,-8
guard.velocity = -5
air.velocity = -1,-8
p1stateno = 1201
p2stateno = 1202

[State 1220, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

[Statedef 1201]
type    = S
movetype= A
physics = N
anim = 1210
sprpriority = 0

[State 1201, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
y = 0


[State 1201, grunt]
type = PlaySnd
trigger1 = time = 0
value = 3,1

[State 1201, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 1201, grunt]
type = PlaySnd
trigger1 = AnimElem = 11
value = 8,0

[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50,-110
time = 4


[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,-70
time = 4


[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 10,-120
time = 4


[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 4
pos = 10,-125
time = 4

[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 5
pos = 10,-110
time = 4

[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 6
pos = 50,-140
time = 10

[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 7
pos = 40,-110
time = 4

[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 8
pos = 25,-120
time = 4

[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 9
pos = 10,-130
time = 4

[State 1201, Bind 2]
type = TargetBind
trigger1 = AnimElem = 10
pos = -30,-130
time = 4



[State 1201, TargetState]
type = TargetState
trigger1 = AnimElem = 11
value = 1203

[State 1201, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -90

[State 1201, a]
type = Turn
trigger1 = !AnimTime
persistent = 0

[State 1201, State End]
type = ChangeState
trigger1 = !AnimTime
value = 948
ctrl = 1

[Statedef 1202]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1202, SelfState]
type = SelfState
trigger1 = enemynear, name= "Namor"
trigger1 = enemynear,stateno != 1201
value = 5100
ctrl = 1

[State 1202, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 1220

;---------------------------------------------------------------------------------------------
;P2
[Statedef 1203]
type    = A
movetype= H
physics = N
velset = 0,18
sprpriority = 2



[State 1203, Turn]
type = Turn
trigger1 = Vel Y > 0
trigger1 = pos Y >= 0

[State 1203, grunt]
type = PlaySnd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 2,2

[State 1203, LifeAdd]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = -20
kill = 1


[State 1203, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20
freq = 320
ampl = -5

[State 1203, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
