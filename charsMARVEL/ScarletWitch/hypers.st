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
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0
poweradd = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S180,17

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1000,17
channel = 21


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 6
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 6
Time = 60
;anim =-1;s3012
pos = 15,-55
sound = S10,0
poweradd = -1000
darken = 0



[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
trigger1 = time = 2
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
trigger1 = time = 2
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

; end DCvM stuff

[State 0, Helper]
type = Helper
triggerall = numhelper(3010) = 0
trigger1 = time = 10
helpertype = normal ;player
name = "hex"
ID = 3010
stateno = 3010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = time > 60
value = 3001
ctrl = 0

[StateDef 3001]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 3001
velset = 0,0
poweradd = 0

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 3010]
type = A
movetype = A
physics = N
anim = 3010
velset = 0,0
poweradd = 0

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X - 10*facing
y = parent, Pos Y - 68

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 30

[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
damage = 7,2
guardflag = MA
pausetime = 0,1
hitsound = S7,1
guardsound = S171,4
sparkno = s3011
;guard.sparkno = S6004
sparkxy = -20, -25+floor(random/15); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -2,0
guard.velocity = -5
air.velocity = -2,-0.3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
envshake.time = 2
envshake.ampl = 2
getpower = 0

[State 3000, VarSet]
type = ParentVarSet
trigger1 = movecontact
fv = 27
value = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, anim != 3000

;----animal begin
[StateDef 3100]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0
poweradd = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S180,15

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S1000,10

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 5
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 5
Time = 60
;anim =-1;s3012
pos = -15,-95
sound = S10,0
poweradd = -1000
darken = 0



[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
trigger1 = time = 2
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
trigger1 = time = 2
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

; end DCvM stuff

[State 0, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal ;player
name = "hex animal"
ID = 3110
stateno = 3110
pos = 20,-80
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 0, VarRandom]
type = VarRandom
trigger1 = time= 0
v = 48
range = 0,5

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 3110]
type = A
movetype = A
physics = N
juggle = 9
anim = 1001
velset = 7,0
sprpriority = 99
poweradd = 0


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
attr = S, HP
damage = 200,5
guardflag = MA
pausetime = 6,6
hitsound = S7,1
guardsound = S171,4
sparkno = -1
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
p1stateno = 3149
p2stateno = 3140
envshake.time = 6
envshake.ampl = 3
getpower = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 50

; Special 1
[StateDef 3140]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim != 3145
movetype = I

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3145
movetype = A

[State 0, Turn]
type = Turn
trigger1 = p2bodydist x < 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3140

[State 0, VelAdd]
type = posset
trigger1 = time = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = command != "holdback" && command != "holdfwd"
trigger2 = anim = 3145
x = 0

;var(48)
;0 - urso
;1 - lagartixa
;2 - tartaruga
;3 - pato
;4 - coelho
;5 - cobra
[State 0, VelSet]
type = VelSet
triggerall = anim != 3145
triggerall = enemynear,var(48) = 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 1.2*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 3145
triggerall = enemynear,var(48) = 1
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 3*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 3145
triggerall = enemynear,var(48) = 2
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 0.5*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 3145
triggerall = enemynear,var(48) = 3
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 2*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 3145
triggerall = enemynear,var(48) = 4
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 3.5*(ifelse(command="holdback",-1,1))

[State 0, VelSet]
type = VelSet
triggerall = anim != 3145
triggerall = enemynear,var(48) = 5
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
x = 1.7*(ifelse(command="holdback",-1,1))

[State 0, ChangeAnim]
type = ChangeAnim2
triggerall = anim != 3145
triggerall = enemynear,var(48) = 5
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
value = 3145

[State 0, ChangeAnim]
type = ChangeAnim2
triggerall = anim = 3145
triggerall = enemynear,var(48) = 5
trigger1 = animtime = 0
value = 3146

[State 200, HitDef]
type = HitDef
triggerall = anim = 3145
trigger1 = animelem = 2
attr = S,HA
damage = 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 0,0
sparkno = 0
sparkxy = -15, -10
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 9
ground.velocity = -2
air.type = Low
air.hittime = 20
air.velocity = -1,-2
getpower = 0


[State 1000, changestate]
type = selfState
trigger1 = time = 400
value = 11
ctrl = 1

[StateDef 3149]
type = S
movetype = I
physics = N
ctrl = 0
velset = 0,0
poweradd = 0
anim = 3149

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,20

[State 3000, VarSet]
type = ParentVarSet
trigger1 = 1
fv = 27
value = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(1002) = 0
trigger1 = time = 0
anim = 1002
ID =  1002
pos = 0,-40
postype = p2
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 190
ownpal = 1
removeongethit = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 99


[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = enemynear, Pos X ;+ 55*facing
y = enemynear, Pos Y ;- 25



[State 1000, changestate]
type = changeState
trigger1 = time = 23
value = 3150; + var(48)
ctrl = 0

[StateDef 3150]
type = A
movetype = I
physics = N
anim = 3150 + parent,var(48)
ctrl = 0
velset = 0,0
poweradd = 0

[State 0, Turn]
type = Turn
trigger1 =facing = enemynear,facing
;ignorehitpause =
;persistent =


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 99

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3185
triggerall = anim != 3150 + parent,var(48)
trigger1 = enemynear, vel x = 0
value = 3150 + parent,var(48)

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3185
triggerall = anim != 3160 + parent,var(48)
trigger1 = enemynear, vel x > 0
value = 3160 + parent,var(48)

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3185
triggerall = anim != 3170 + parent,var(48)
trigger1 = enemynear, vel x < 0
value = 3170 + parent,var(48)

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3185 && parent,var(48) = 5
trigger1 = enemynear,anim = 3145
value = 3185

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3185
trigger1 = animtime = 0
value = 3155


[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = enemynear, Pos X ;+ 55*facing
y = enemynear, Pos Y ;- 25

[State 0, ChangeState]
type = destroyself
trigger1 = enemynear,stateno != 3140





;----animal end

;32
[StateDef 3200]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 0,0
sprpriority = 5
poweradd = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S180,16

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1000,18

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = time = 100
value = S1000,19

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3201
ID = 3201
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 194
scale = 1,1
sprpriority = -44
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 0, Explod]
type = null;Explod
trigger1 = time = 10
anim = 3205
ID = 3205
pos = 0,10;-50
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 190
scale = 1,.75
sprpriority = 6
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 3207
ID = 3207
pos = 2,15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 190
scale = 1,1
sprpriority = 18
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3200, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 40,5
guardflag = MA
pausetime = 0,0
hitsound = 2,2
guardsound = 3,0
sparkno = 2
sparkxy = -15, -75
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -8,-6
guard.velocity = -5
air.velocity = -8,-6
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 0
envshake.time = 2
envshake.ampl = 2
getpower = 0
persistent = 1

[State 0, PalFX]
type = PalFX
trigger1 = time = 10
trigger2 = time = 50
trigger3 = time = 90
trigger4 = time = 130
trigger5 = time = 170
time = 40
mul = 206,56,206
sinadd = 120,10,120,10
invertall = 0
color = 256





;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 2
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0



[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
trigger1 = time = 2
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
trigger1 = time = 2
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

; end DCvM stuff
[State 0, LifeAdd]
type = LifeAdd
trigger1 = timemod = 2,1
value = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = time = 200
value = 0
ctrl = 1






;3100
[StateDef 3300]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 3300
velset = 0,0
sprpriority = 5
poweradd = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S180,14

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1000,16

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 2
Time = 60
;anim =-1;s3012
pos = 15,-75
sound = S10,0
poweradd = -1000
darken = 0



[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 2
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
trigger1 = time = 2
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

[State 3300, sense bar]
type = Explod
trigger1 = animelem = 2
anim = 3309
id = 3309
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State -3, sense bar]
type = Explod
triggerall = animelem = 2
trigger1 = numexplod(3302)=0
anim = 3302
id = 3302
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 3300, VarSet]
type = VarSet
trigger1 = animelem = 2
v = 30
value = 1

[State 3300, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
