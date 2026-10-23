;------------------------------------------------------------------------------
;----------------------------[ Special Moves ]---------------------------------
;------------------------------------------------------------------------------
; Telekinetic Hold ;------------------------------
; Telekinesis
[StateDef 1000]
type = S
movetype = A
physics = S
juggle = 8
anim = 3000
ctrl = 0
velset = 0,0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S900,0

[State 1011, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1015
ID = 8002
pos = -25,-105
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 12,1
removetime = -1
scale = 1,1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "beam"
ID = 1010
pos = -12,-85
postype = p1
stateno = 1010
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = p2stateno = 1012
value = 1011

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0 & NumHelper(1010) = 0
value = 1020

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Telekinesis - beam helper state
[StateDef 1010]
type = A
movetype = A
physics = C
juggle = 10
anim = 1010
ctrl = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 1
value = S999,5
volume = 255
channel = 4

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X - (12 * parent, facing)
y = parent, Pos Y - 85

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1

[State 1010, hitdef]
type = HitDef
triggerall = parent,var(24) = 0
trigger1 = time = 0
attr = S,ST
hitflag = MAF
guardflag = MA
animtype = Up
air.animtype = Up
fall.animtype = Medium
damage = 40,5
guardflag = MA
pausetime = 6,12
hitsound = S999,4
guardsound = S6,0
sparkno = S9992
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 64,0,0
p2stateno = 1012
fall.recover = 0
fall = 1
air.fall = 1

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, Anim != 3000

;-------------------------------------------------------------------
; Telekinesis - P1
[StateDef 1011]
type = S
movetype = A
physics = S
anim = 1011

[State 1010, PlaySnd]
type = PlaySnd
trigger1 =  time % 95 = 0
value = S5,12
volume = 255
channel = 4

[State 0, Turn]
type = Turn
trigger1 = p2bodydist X < -75
ignorehitpause = 1

[State 1011, ChangeState]
type = ChangeState
trigger1 = var(59) != 0
value = 1050
ctrl = 0

[State 1106, Explod]
type = Explod
trigger1 = time % 2 = 0
anim = 1013
pos = -2,-20
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 50,60
removetime = 16
pausemovetime = 0
scale = .5,.5
sprpriority = (Random%8)
ownpal = 1

[State 1106, Explod]
type = Explod
trigger1 = time % 5 = 0
anim = 1013
pos = 0, -50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 75,70
removetime = 16
pausemovetime = 0
scale = .5,.5
sprpriority = (Random%8)
ownpal = 1

[State 1106, Explod]
type = Explod
trigger1 = time % 3 = 0
anim = 1013
pos = 2,-80
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 40,50
removetime = 16
pausemovetime = 0
scale = .5,.5
sprpriority = (Random%8)
ownpal = 1

[State 1011, VarSet]
type = VarSet
trigger1 = time = 0
v = 24
value = 1

[State 1011, Explod]
type = Explod
trigger1 = time = 0
anim = 1016
ID = 8001
pos = 4,-98
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
removetime = 36
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "x"
value = 1020
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "y"
value = 10110
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "z"
value = 10130
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "a"
value = 1020
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "b"
value = 10120
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "c"
value = 10130
ctrl = 0

[State 1011, changestate]
type = ChangeState
trigger1 = p2stateno != 1012
value = 1020
ctrl = 0

;-------------------------------------------------------------------
; Telekinesis (Crush) - P1
[StateDef 10110]
type = S
movetype = A
physics = S
anim = 10110
facep2 = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 4

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S5,13
volume = 255

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 2
time = 14
ampl = 12
freq = 120

[State 1011, changestate]
type = ChangeState
trigger1 = !animtime
value = 1020
ctrl = 0

;------------------------------
; Telekinesis - P2 Crush
[StateDef 10111]
type = A
movetype = H
physics = N
facep2 = 1

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 21
value = -31
kill = 1
absolute = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 21
value = -500

[State 1012, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 10120

[State 1012, Changestate]
type = ChangeState
triggerall = anim = 10120
trigger1 = !animtime
value = 5050
ctrl = 0

;-------------------------------------------------------------------
; Telekinesis (Sling) - P1
[StateDef 10120]
type = S
movetype = A
physics = S
anim = 10110
facep2 = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 4

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = S5,16
volume = 255

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S5,14
volume = 255

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 2
time = 14
ampl = 12
freq = 120

[State 1011, changestate]
type = ChangeState
trigger1 = !animtime
value = 1020
ctrl = 0

;------------------------------
; Telekinesis - P2 Sling
[StateDef 10121]
type = A
movetype = A
physics = N
facep2 = 1

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 1012, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 10121

[State 0, VelSet]
type = VelSet
triggerall = time < 21
trigger1 = p2bodydist X > 80
x = 15
y = 0

[State 0, VelSet]
type = VelSet
triggerall = time < 21
trigger1 = p2bodydist X <= 50
x = 5
y = 0

[State 0, VelSet]
type = VelSet
triggerall = time < 21
trigger1 = p2bodydist X <= 30
x = 3.5
y = 0

[State 0, VelSet]
type = VelSet
triggerall = time < 21
trigger1 = p2bodydist X <= 15
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 21
x = -12.7

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 21
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N
ignorehitpause = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 21
value = -84
kill = 1
absolute = 1

[State 230, 4]
type = HitDef
trigger1 = Time = 0
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -2
attr = A, SP
damage = 62
animtype = Back
fall = 1
hitflag = MAFD
guardflag = HA
affectteam = F
pausetime = 0,0
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = S5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -3,-4.3
air.velocity = -2.5,4.5
down.bounce = 1
down.velocity = -2,-5.3
fall.yvelocity = -5.2
p2facing = 1
envshake.time = 10
envshake.ampl = 6

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 45
statetype = A       ;S,A,C,L
movetype = H        ;I,A,H
physics = A         ;A,C,S,N

[State 1012, Changestate]
type = ChangeState
triggerall = anim = 10121
trigger1 = vel Y > 3
value = 5050
ctrl = 0

;-------------------------------------------------------------------
; Telekinesis (Fling) - P1
[StateDef 10130]
type = S
movetype = A
physics = S
anim = 10110
facep2 = 1

[State 1012, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 4

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = S5,16
volume = 255

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = S5,14
volume = 255

[State 1011, changestate]
type = ChangeState
trigger1 = !animtime
value = 1020
ctrl = 0

;------------------------------
; Telekinesis - P2 Fling (pt 1)
[StateDef 10131]
type = A
movetype = H
physics = N
facep2 = 1

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 1012, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 10121

[State 0, VelSet]
type = VelSet
triggerall = time < 21
trigger1 = p2bodydist X > 80
x = 15
y = 0

[State 0, VelSet]
type = VelSet
triggerall = time < 21
trigger1 = p2bodydist X <= 50
x = 5
y = 0

[State 0, VelSet]
type = VelSet
triggerall = time < 21
trigger1 = p2bodydist X <= 30
x = 3.5
y = 0

[State 0, VelSet]
type = VelSet
triggerall = time < 21
trigger1 = p2bodydist X <= 15
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 21
x = -14.7

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 21
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N
ignorehitpause = 1

[State 1012, Changestate]
type = ChangeState
trigger1 = time = 22
value = 10132
ctrl = 0

;------------------
; Telekinesis - P2 Fling (pt 2)
[Statedef 10132]
type    = A
movetype= H
physics = N

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 10133

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

[State 1026, Hit ground]
type = SelfState
trigger1 = time >= 200
value = 5035

;------------------
; Telekinesis - P2 Fling (pt 3)
[Statedef 10133]
type    = A
movetype= H
physics = N

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -150
kill = 1
absolute = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 2
time = 14
ampl = 12
freq = 120

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F5,4

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0 || time >= 5
value = 10134

;------------------
; Telekinesis - P2 Fling (pt 4)
[Statedef 10134]
type    = A
movetype= H
physics = A

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 6
y = -5

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

; [State 0, 2]
; type = Gravity
; trigger1 = 1

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 1028, Anim 5060] ;Coming down - normal
type = SelfState
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = !animtime
value = 5050
; 
[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------------------
; Telekinesis - P2 Hold
[StateDef 1012]
type = S
movetype = H
physics = S
facep2 = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = -1
add = 0,-200,0
mul = 256,256,256
sinadd = 40,80,40,17
invertall = 0
color = 97

[State 0, Turn]
type = Turn
trigger1 = p2bodydist X < -74
ignorehitpause = 1

[State 1012, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1012

[State 1012, PosSet]
type = PosSet
trigger1 = time = 0
y = -20

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holdfwd"
x = -3

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holdback"
x = 3

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holdup"
y = -3

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holddown"
y = 3

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command != "holdback"
trigger1 = enemynear, command != "holdfwd"
trigger2 = backedgedist <=0
trigger2 = enemynear, command != "holdback"
trigger3 = frontedgedist <=0
trigger3 = enemynear, command != "holdfwd"
x = 0

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command != "holddown"
trigger1 = enemynear, command != "holdup"
trigger2 = pos Y < -200
trigger2 = enemynear, command != "holddown"
trigger3 = pos y >= 0
trigger3 = enemynear, command != "holdup"
y = 0

[State 1012, Changestate]
type = ChangeState
triggerall = enemynear, var(59) = 0
trigger1 = time = 375
trigger2 = enemynear, command = "x"
trigger3 = enemynear, command = "a"
value = 1013
ctrl = 0

[State 1012, Changestate]
type = ChangeState
triggerall = enemynear, var(59) = 0
trigger1 = enemynear, command = "y"
value = 10111
ctrl = 0

[State 1012, Changestate]
type = ChangeState
triggerall = enemynear, var(59) = 0
trigger1 = enemynear, command = "b"
value = 10121
ctrl = 0

[State 1012, Changestate]
type = ChangeState
triggerall = enemynear, var(59) = 0
trigger1 = enemynear, command = "z"
trigger2 = enemynear, command = "c"
value = 10131
ctrl = 0

[State 1012, PosAdd]
type = PosAdd
triggerall = enemynear, var(59) != 0
trigger1 = p2dist x > 80
x = 3

[State 1012, VelSet]
type = VelSet
trigger1 = enemynear, var(59) != 0
y = 0

[State 1012, Changestate]
type = ChangeState
triggerall = enemynear, var(59) != 0
trigger1 = time = 375
value = 1013
ctrl = 0

;------------------------------
; Telekinesis - P2 released
[StateDef 1013]
type = A
movetype = H
physics = A

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 1013, Selfstate]
type = SelfState
trigger1 = time = 1
value = 5050
ctrl = 0

;------------------------------
; Telekinesis - end
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1020

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 0
channel = 4

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Telekinesis - P1 (AI STATE ONLY)
[StateDef 1050]
type = S
movetype = A
physics = S
anim = 1011

[State 1050, VarSet]
type = VarSet
trigger1 = time = 0
v = 24
value = 1

[State 1050, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 8002

[State 1050, Explod]
type = Explod
trigger1 = time = 0
anim = 1016
ID = 8001
pos = -5,-0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1050, Explod]
type = Explod
trigger1 = time = 0
anim = 1016
ID = 8001
pos = 50,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 999
removetime = -1
scale = .5,.5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1050, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1050, changestate]
type = ChangeState
trigger1 = p2stateno != 1012
value = 1020
ctrl = 0

;------------------------------
;---------------------------------------------------------------------------
; Empathy
[statedef 1100]
type    = s
movetype= a
physics = s
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1100

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim =  11001
ID = 1100
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 7
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[state 1100, 1]
type = hitdef
trigger1 = time = 0
attr = s, st
hitflag = m-
priority = 1, miss
sparkno = -1
sprpriority = 1
p1facing = 1;ifelse (command = "holdfwd", -1, 1)
p2facing = 1
p1stateno = 11001
p2stateno = 11002
;fall = 1

[State 11001, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 2
value = S999,6
volume = 255
channel = 4

[state 1100, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;------------------------------------------------------------------------------
; Attack Bubble
[statedef 11001]
type = s
movetype= a
physics = s
juggle  = 1
velset = 0,0
ctrl = 0
anim = 11000
poweradd = 20
sprpriority = 2

[State 11001, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 900,0

[State 11001, 0]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,0

[state 11001, 1]
type = explod
trigger1 = animelem = 1
anim = 11001
pos = 0,-10
postype = p2
sprpriority = 3

[state 11001, 2]
type = hitdef
trigger1 = animelem = 4
attr = S, NA
damage = 55
animtype = back
guardflag = MA
pausetime = 11,11
sparkno = 3
sparkxy = -30, -70
hitsound = S8000,2
guardsound = S8500,0
ground.type = high
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = -9,-4
guard.velocity = -10
air.type = high
air.velocity = -8,-4
air.hittime = 18
p2facing = 1
envshake.time = 5
envshake.ampl = 2

[state 11001, end]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;stunned opponent
[statedef 11002]
type    = s
movetype = h
physics = s
ctrl = 0

[state -10,1 ]
type = changeanim
trigger1 = selfanimexist(5300) && time = 0
value = 5300

[state -10,1 ]
type = changeanim2
trigger1 = !selfanimexist(5300) && time = 0
value = 6115

[state -10, 1]
type = selfstate
trigger1 = time = 150
value = 5000

;------------------------------------------------------------------------------
; psychic spikes - light
[statedef 1103]
type = s
movetype = a
physics = s
juggle = 1
poweradd = 60
ctrl = 0
velset = 0,0
anim = 1105
sprpriority = 2

[State 1000, Helper Speed]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = ifelse(var(20)=1,15,200),ifelse(var(20)=1,1,0)
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 201, 0
channel = 1

[State 1000, Projectile]
type = Helper
triggerall = var(20) = 1
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1106
ID = 1106
name = "TK Shot"
posType = P1
pos = 34,-85
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[state 1103, 2]
type = projectile
triggerall = var(20) = 0
triggerall = numproj < 3
trigger1 = animelem = 4
projid = 1103
projanim = 1103
projhitanim = 1104
projsprpriority = 7
projscale = 1,1
offset = 75,-85
velocity = 3.5,0
attr = a, sp
damage = 62
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[State 1000, Helper Speed]
type = VarSet
trigger1 = !AnimTime
var(10) = 0

[state 1103, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; psychic spikes - medium
[statedef 1104]
type = s
movetype = a
physics = s
juggle = 1
poweradd = 60
ctrl = 0
velset = 0,0
anim = 1105
sprpriority = 2

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = ifelse(var(20)=1,15,200),ifelse(var(20)=1,1,0)
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 201, 0
channel = 1

[State 1000, Projectile]
type = Helper
triggerall = var(20) = 1
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1106
ID = 1106
name = "TK Shot"
posType = P1
pos = 34,-85
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[state 1103, 2]
type = projectile
triggerall = var(20) = 0
triggerall = numproj < 3
trigger1 = animelem = 4
projid = 1103
projanim = 1103
projhitanim = 1104
projsprpriority = 7
projscale = 1,1
offset = 75,-85
velocity = 4.5,0
attr = a, sp
damage = 62
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[State 1000, Helper Speed]
type = VarSet
trigger1 = !AnimTime
var(10) = 0

[state 1103, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; psychic spikes - hard
[statedef 1105]
type = s
movetype = a
physics = s
juggle = 1
poweradd = 60
ctrl = 0
velset = 0,0
anim = 1105
sprpriority = 2

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 2

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = ifelse(var(20)=1,15,200),ifelse(var(20)=1,1,0)
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 201, 0
channel = 1

[State 1000, Projectile]
type = Helper
triggerall = var(20) = 1
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1106
ID = 1106
name = "TK Shot"
posType = P1
pos = 34,-85
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[state 1103, 2]
type = projectile
triggerall = var(20) = 0
triggerall = numproj < 3
trigger1 = animelem = 4
projid = 1103
projanim = 1103
projhitanim = 1104
projsprpriority = 7
projscale = 1,1
offset = 75,-85
velocity = 7,0
attr = a, sp
damage = 62
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[State 1000, Helper Speed]
type = VarSet
trigger1 = !AnimTime
var(10) = 0

[state 1105, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; EX psychic spikes
[statedef 11060]
type = s
movetype = a
physics = s
juggle = 1
poweradd = -500
ctrl = 0
velset = 0,0
anim = 1105
sprpriority = 2

[State -2]
type = Afterimage
trigger1 = time = 0
trans = add
paladd = 120,40,0
PalContrast = 200,180,0
PalBright = 50,30,0
palpostbright = 80,0,0
time    =  1
length  = 50
TimeGap = 1
FrameGap = 1
persistent = 1

[State 7000, Shield]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 7002
ID = 7002
name = "Pulse"
postype = p1
pos = 0,-78
bindtime = 1
ownpal = 1
facing = 1
ignorehitpause = 1
persistent = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 20; * var(9)
add = 150,50,150
sinAdd= 100,100,100,25

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 20    ;fv = 10
value = 0

[State 1000, Trans]
type = PlaySnd
trigger1 = !Time
value = s8888,0

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15,ifelse(random,15,16)
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 201, 0
channel = 1

[state 1103, 2]
type = projectile
trigger1 = animelem = 4
projid = 1103
projanim = 1103
projhitanim = 1104
projsprpriority = 7
projscale = 1,1
offset = 75,-85
velocity = 4.5,-1.4
attr = a, sp
damage = 62
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[state 1103, 2]
type = projectile
trigger1 = animelem = 4
projid = 1103
projanim = 1103
projhitanim = 1104
projsprpriority = 7
projscale = 1,1
offset = 75,-85
velocity = 5.5,0
attr = a, sp
damage = 62
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[state 1103, 2]
type = projectile
trigger1 = animelem = 4
projid = 1103
projanim = 1103
projhitanim = 1104
projsprpriority = 7
projscale = 1,1
offset = 75,-85
velocity = 4.5,1.4
attr = a, sp
damage = 62
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[State 1000, Helper Speed]
type = VarSet
trigger1 = !AnimTime
var(10) = 0

[state 1103, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; air psychic spikes - light
[statedef 1110]
type = a
movetype= a
physics = a
juggle  = 0
;velset = 0,0
ctrl = 0
anim = 1110
poweradd = 20
sprpriority = 2

[State 0, PosFreeze]
type = PosFreeze
trigger1 = animelem = 1
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 1
y = -1

[state 1110]
type = varset
trigger1 = time = 0 && var(59)>=1
v = 10
value = 2

[state 1110]
type = varset
trigger1 = !time
v = 50
value = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = ifelse(var(20)=1,15,200),ifelse(var(20)=1,1,0)
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 201, 0
channel = 1

[State 1000, Projectile]
type = Helper
triggerall = var(20) = 1
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1116
ID = 1116
name = "TK Shot"
posType = P1
pos = 43,-74
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[state 1103, 2]
type = projectile
triggerall = var(20) = 0
triggerall = numproj < 3
trigger1 = animelem = 2
projid = 1111
hitflag = MAFD
projanim = 1111
projhitanim = 1112
projsprpriority = 7
projscale = 1,1
offset = 75,-85
velocity = 2.5,2.5
attr = a, sp
damage = 62
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
down.velocity = -2.5, 0
air.juggle = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 2
x = -1.7
y = -4.3

[state 1110, end]
type = changestate
trigger1 = animtime = 0
value = 948
ctrl = 1

;------------------------------------------------------------------------------
; air psychic spikes - medium
[statedef 1111]
type = a
movetype= a
physics = a
juggle  = 0
;velset = 0,0
ctrl = 0
anim = 1110
poweradd = 20
sprpriority = 2

[State 0, PosFreeze]
type = PosFreeze
trigger1 = animelem = 1
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 1
y = -1

[state 1110]
type = varset
trigger1 = time = 0 && var(59)>=1
v = 10
value = 2

[state 1110]
type = varset
trigger1 = !time
v = 50
value = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = ifelse(var(20)=1,15,200),ifelse(var(20)=1,1,0)
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 201, 0
channel = 1

[State 1000, Projectile]
type = Helper
triggerall = var(20) = 1
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1116
ID = 1116
name = "TK Shot"
posType = P1
pos = 43,-74
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[state 1103, 2]
type = projectile
triggerall = var(20) = 0
triggerall = numproj < 3
trigger1 = animelem = 2
projid = 1111
hitflag = MAFD
projanim = 1111
projhitanim = 1112
projsprpriority = 7
projscale = 1,1
offset = 75,-85
velocity = 3.5,3.5
attr = a, sp
damage = 62
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
down.velocity = -2.5, 0
air.juggle = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 2
x = -3
y = -5.3

[state 1110, end]
type = changestate
trigger1 = animtime = 0
value = 948
ctrl = 1

[state 1111, end]
type = changestate
trigger1 = animtime = 0
value = 948
ctrl = 1

;------------------------------------------------------------------------------
; air psychic spikes - hard
[statedef 1112]
type = a
movetype= a
physics = a
juggle  = 0
;velset = 0,0
ctrl = 0
anim = 1110
poweradd = 20
sprpriority = 2

[State 0, PosFreeze]
type = PosFreeze
trigger1 = animelem = 1
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 1
y = -1

[state 1110]
type = varset
trigger1 = time = 0 && var(59)>=1
v = 10
value = 2

[state 1110]
type = varset
trigger1 = !time
v = 50
value = 2

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = ifelse(var(20)=1,15,200),ifelse(var(20)=1,1,0)
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 201, 0
channel = 1

[State 1000, Projectile]
type = Helper
triggerall = var(20) = 1
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1116
ID = 1116
name = "TK Shot"
posType = P1
pos = 43,-74
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[state 1103, 2]
type = projectile
triggerall = var(20) = 0
triggerall = numproj < 3
trigger1 = animelem = 2
projid = 1111
hitflag = MAFD
projanim = 1111
projhitanim = 1112
projsprpriority = 7
projscale = 1,1
offset = 75,-85
velocity = 5,5
attr = a, sp
damage = 62
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,6
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
down.velocity = -2.5, 0
air.juggle = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 2
x = -3
y = -5.3

[state 1110, end]
type = changestate
trigger1 = animtime = 0
value = 948
ctrl = 1

[state 1111, end]
type = changestate
trigger1 = animtime = 0
value = 948
ctrl = 1

;--------------------------------------------------------------
[statedef 1102]
type = s
movetype = a
physics = s
ctrl = 0
velset = 0,0

[state 1102, 1]
type = changeanim
triggerall = prevstateno != 9000
trigger1 = time = 0
value = 5400

[state 1100, changestate]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1


;------------------------------------------------------------------------------
; TK Wave A
[statedef 1200]
type    = U
movetype= a
physics = n
juggle  = 36
velset = 0,0
anim = 3200
ctrl = 0
sprpriority = 2

[state 1200]
type = helper
trigger1 = time%12 = 0 && time < 10
stateno = 1201
id = 1200
ownpal = 1
postype = back
pos = 170+random%240,random%50

[state 1200]
type = playsnd
trigger1 = animelem = 1
value = 900,0
channel= 3

[state 1200]
type = playsnd
trigger1 = animelem = 3
value = 1200,0
channel= 5

[state 1200]
type = changestate
trigger1 = time = 110
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; TK Wave B
[statedef 1202]
type    = U
movetype= a
physics = n
juggle  = 36
velset = 0,0
anim = 3200
ctrl = 0
sprpriority = 2

[state 1200]
type = helper
trigger1 = time%6 = 0 && time < 10
stateno = 1201
id = 1200
ownpal = 1
postype = back
pos = 60+random%240,random%50

[state 1200]
type = playsnd
trigger1 = animelem = 1
value = 900,0
channel= 3

[state 1200]
type = playsnd
trigger1 = animelem = 3
value = 1200,1
channel= 5

[state 1200]
type = changestate
trigger1 = time = 110
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; TK Wave C
[statedef 1204]
type    = U
movetype= a
physics = n
juggle  = 36
velset = 0,0
anim = 3200
ctrl = 0
sprpriority = 2

[state 1200]
type = helper
trigger1 = time%4 = 0 && time < 10
stateno = 1201
id = 1200
ownpal = 1
postype = back
pos = 10+random%240,random%50

[state 1200]
type = playsnd
trigger1 = animelem = 1
value = 900,0
channel= 3

[state 1200]
type = playsnd
trigger1 = animelem = 3
value = 1200,2
channel= 5

[state 1200]
type = changestate
trigger1 = time = 110
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Telekinesis 2
[statedef 1201]
type = a
movetype = i
physics = n
anim = 3205+random%1
ctrl = 0
sprpriority = 3
velset = 0,-3-random%4
hitcountpersist = 1

[State 1201, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 1
value = S999,1
volume = 255
channel = 4

[state 1201]
type = velset
trigger1 = screenpos y < 0
x = (p2dist x)*0.03
y = (p2dist y)*0.03
persistent = 0

[state 1201]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 1201]
type = statetypeset
trigger1 = vel x != 0
movetype = a
persistent = 0

[state 1201]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1201]
type = hitdef
attr = s, sp
trigger1 = 1
damage = 30,3
animtype = Hard
priority  = 5, hit
guarDFlag = ma
hitflag = mafd
pausetime = 7,7
sparkxy = 5,0
hitsound   = S5,7
guardsound = S6,0
sparkno = -1
guard.sparkno = -1
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -9
air.velocity = -9
getpower = ifelse(movehit,40,15),ifelse(movehit,40,0)
sprpriority = 3
envshake.time = 10
envshake.ampl = 8

[State 1011, Hit Spark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8011)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
facing = -1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1010, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
trigger2 = pos y > 150
value = 1205
ignoreHitPause = 1

[State 1010, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1206
ignoreHitPause = 1

[state 1201]
type = Destroyself
trigger1 = movecontact
trigger2 = pos y > 150
trigger3 = time = 240

;TK Wave Hit
[Statedef 1205]
type = A
movetype = A
physics = N
anim = 3206
ctrl = 0
velSet = 0,0
sprpriority = 3
moveHitPersist = 1

[State 1015, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 1015, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1015, End]
type = ChangeState
trigger1 = !AnimTime
value = 1206
ignorehitpause = 1

;Wait
[StateDef 1206]
type = A
physics = N
moveType = I
anim = -1
ctrl = 0
velSet = 0,0

[State 1016, DestroySelf]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target, HitShakeOver)
ignorehitpause = 1

;------------------------------------------------------------------------------
; Teleport
[Statedef 1300]
type = S
movetype = I
physics = N
anim = 1300
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 2
facep2 = 0

[State 1500, Button Detect]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "Teleport_C", 2, ifelse(command = "Teleport_A", 1, 0))
; 
[State 1500, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
value = 0
; 
[State 1500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
trigger1 = ((Command = "holda") + (Command = "holdb") + (Command = "holdc") < 2)
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1
ignorehitpause = 1
; 
[State 1500, Trans: Fade Out]
type = Trans
trigger1 = AnimElemTime(3) = [0, 10]
trans = AddAlpha
alpha = (256 -25 * (AnimElemTime(3))), (25 * (AnimElemTime(3)))
; 
[State 1500, Trans: Fade In]
type = Trans
trigger1 = AnimElemTime(5) = [0, 10]
trans = AddAlpha
alpha = (25 * (AnimElemTime(5))), (256 -25 * (AnimElemTime(5)))

[State 1500, Voice]
type = PlaySnd
triggerall = var(20) = 0
trigger1 = AnimElem = 2
value = s210, 0
channel = 23

[State 1500, Voice]
type = PlaySnd
triggerall = var(20) = 1
trigger1 = AnimElem = 2
value = s15, 7
channel = 23

[State 1500, Snd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 5
value = 210, 1

[State 1500, Vel]
type = VelSet
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
x =  ifelse(var(10) = 2, 20, ifelse(var(10) = 1, -20, 0))

[State 1500, Vel]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1500, Turn]
type = Turn
trigger1 = AnimElem = 5 && P2Dist X < 0

[State 1500, FX]
type = Helper
trigger1 = AnimElem = 3
helpertype = Normal
stateno = 1305
ID = 1305
name = "Teleport FX"
postype = P1
ownpal = 1

[State 1500, FX]
type = Helper
trigger1 = AnimElem = 5
helpertype = Normal
stateno = 1306
ID = 1305
name = "Teleport FX"
postype = P1
pos = 60, 0
ownpal = 1

[State 1500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------------------------------------------------------
; Phoenix Trap
[statedef 1400]
type = s
movetype = a
physics = s
juggle = 1
poweradd = 60
ctrl = 0
velset = 0,0
anim = 1400
sprpriority = 2

[State 1500, Button Detect]
type = varset
trigger1 = !time
var(11) = ifelse(command = "holdz", 2, ifelse(command = "holdy", 1, 0))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = s15,10
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 220, 1
channel = 0

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3300, 3
channel = 1

[State 0, PalFX]
type = PalFX
trigger1 = AnimElem = 4
time = 10
add = 256,110,10
sinAdd= -110,-55,-5,38

[State 1000, Projectile Light]
type = Helper
trigger1 = AnimElem = 4
trigger1 = var(11) = 0
helperType = Normal
stateNo = 1401
ID = 1401
name = "Trap"
posType = P1
pos = ifelse(command="holdfwd",180,ifelse(command="holdback",40,110)),0
size.xScale = 0.6
size.yScale = 0.2
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1000, Projectile Medium]
type = Helper
trigger1 = AnimElem = 4
trigger1 = var(11) = 1
helperType = Normal
stateNo = 1401
ID = 1401
name = "Trap"
posType = P1
pos = 35,-133
size.xScale = 0.5
size.yScale = 1
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1000, Projectile Medium]
type = Helper
trigger1 = AnimElem = 4
trigger1 = var(11) = 2
helperType = Normal
stateNo = 1401
ID = 1401
name = "Trap"
posType = P1
pos = 47,-33
size.xScale = 0.5
size.yScale = .75
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1


[State 1400, Pulse]
type = helper
trigger1 = AnimElem = 4
helpertype = normal
stateno = 1405
ID = 1405
name = "Pulse"
postype = p1
pos = 0,8
bindtime = 1
ownpal = 1
facing = 1
ignorehitpause = 1
persistent = 0


[state 1103, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Light/Medium Phoenix Upper
[Statedef 1500]
type = S
movetype = A
physics = S
anim = 1500
ctrl = 0
velset = 0,0
poweradd = 70
sprpriority = 2
facep2 = 1

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s5,9
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15, 0
channel = 23

[State 1106, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1108
ID = 1108
pos = 40,-46
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1, 1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1106, Explod]
type = Explod
trigger1 = animelem = 3
trigger2 = animelem = 4
anim = 1108
pos = 7,-135
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,2
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .8, .8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1200, StateTypeSet: Air, No Phys]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = A

[State 1200, Muteki]
type = Nothitby
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 1050, Pos]
type = PosAdd
trigger1 = AnimElem = 2
x = 2

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 3
y = -6.5

[State 1100, Velocity]
type = VelAdd
trigger1 = time = 9
x = -0.48
persistent = 1

[State 1100, VelSet]
type = VelSet
trigger1 = time = 16
x = 0

[State 420, 4]
type = HitDef
trigger1 = !MoveContact
trigger1 = animelem = 2
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
damage = 75
fall = 1
pausetime = 8,8
guard.pausetime = 8,8
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 17
air.hittime = 12
guard.ctrltime = 11
ground.velocity = -3, -10.5
guard.velocity = -5
air.velocity = -3,-5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 35,35
givepower = 35, 35
yaccel = .5
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Air Hit]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = A, SA
damage = 100
priority = 4, hit
animtype = Hard
getpower = 70
givepower = 35, 35
guardflag = MA
hitflag = MAF
pausetime = 12,12
guard.pausetime = 12,12
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -2.16, -8.81
air.velocity = -2.16, -8.81
guard.velocity = -8
airguard.velocity = -6, -4
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
fall.recover = 0
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1500
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 1200, End]
type = ChangeState
trigger1 = time = 21
;trigger1 = vel y <= 0
value = 1501

;--------------------------------------------------------------------------
; Hard Phoenix Upper
[Statedef 1510]
type = S
movetype = A
physics = S
anim = 1500
ctrl = 0
velset = 0,0
poweradd = 70
sprpriority = 2
facep2 = 1

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s5,9
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15,0
channel = 23

[State 1106, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1108
ID = 1108
pos = 40,-46
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1, 1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 1106, Explod]
type = Explod
trigger1 = animelem = 3
trigger2 = animelem = 4
anim = 1108
pos = 7,-135
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,2
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .8, .8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 1200, StateTypeSet: Air, No Phys]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = A

[State 1200, Muteki]
type = Nothitby
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 1050, Pos]
type = PosAdd
trigger1 = AnimElem = 2
x = 2

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 5
y = -10.5

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = 0.47

[State 1100, Velocity]
type = VelAdd
trigger1 = time = 9
x = -2.48
persistent = 1

[State 1100, VelSet]
type = VelSet
trigger1 = time = 16
x = 0

[State 0, VarAdd]
type = VarAdd
triggerall = movehit&&movecontact; &&numtarget
trigger1 = 1
v = 38
value = 1
ignorehitpause = 1

[State 420, 4]
type = HitDef
trigger1 = animelem = 2
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
damage = 85
fall = 1
pausetime = 8,8
guard.pausetime = 8,8
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 17
air.hittime = 12
guard.ctrltime = 11
ground.velocity = -3, -11.5
guard.velocity = -5
air.velocity = -3,-8.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 35,35
givepower = 35, 35
yaccel = .5
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Air Hit]
type = HitDef
;triggerall = var(38) < 3
trigger1 = animelem = 3
;trigger2 = animelem = 4
attr = A, SA
damage = 85
priority = 4, hit
animtype = Hard
getpower = 50
givepower = 35, 35
guardflag = MA
hitflag = MAF
pausetime = 12,12
guard.pausetime = 12,12
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -2.16, -10.81
air.velocity = -2.16, -10.81
guard.velocity = -8
airguard.velocity = -6, -4
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
fall.recover = 0
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1510
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 1200, End]
type = ChangeState
trigger1 = time = 21
;trigger1 = vel y <= 0
value = 1501

;--------------------------------------------------------------------------
; EX Phoenix Upper
[Statedef 1520]
type = S
movetype = A
physics = S
anim = 1500
ctrl = 0
velset = 0,0
poweradd = -500
sprpriority = 2
facep2 = 1

[State -2]
type = Afterimage
trigger1 = var(20) = 1
trans = add
paladd = 120,40,0
PalContrast = 200,180,0
PalBright = 50,30,0
palpostbright = 80,0,0
time    =  -1
length  = 50
TimeGap = 1
FrameGap = 1
persistent = 1

[State 7000, Shield]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 7001
ID = 7001
name = "Pulse"
postype = p1
pos = 0,-45
bindtime = 1
ownpal = 1
facing = 1
ignorehitpause = 1
persistent = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 20; * var(9)
add = 150,150,50
sinAdd= 100,100,100,25

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 20    ;fv = 10
value = 1

[State 1000, Trans]
type = PlaySnd
trigger1 = !Time
value = s3300,3

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s5,9
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15,13
channel = 23

[State 1106, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1108
ID = 1108
pos = 40,-46
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1, 1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1106, Explod]
type = Explod
trigger1 = animelem = 3
trigger2 = animelem = 4
anim = 1108
pos = 7,-135
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,2
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .8, .8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 1200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = A

[State 1200, Muteki]
type = Nothitby
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 1050, Pos]
type = PosAdd
trigger1 = AnimElem = 2
x = 2

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 10
y = -14.5

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = 0.67

[State 1100, Velocity]
type = VelAdd
trigger1 = time = 9
x = -7.48
persistent = 1

[State 1100, VelSet]
type = VelSet
trigger1 = time = 19
x = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1520
trigger2 = (target,movetype=H)
v = 38
value = 1
ignorehitpause = 1

[State 420, 4]
type = HitDef
trigger1 = animelem = 2
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
damage = 110
fall = 1
pausetime = 8,8
guard.pausetime = 8,8
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 17
air.hittime = 12
guard.ctrltime = 11
ground.velocity = -3, -14.5
guard.velocity = -5
air.velocity = -3,-8.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 35,35
givepower = 35, 35
yaccel = .5
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Air Hit]
type = HitDef
;triggerall = var(38) < 4
trigger1 = animelem = 4
attr = A, SA
damage = 30
priority = 4, hit
animtype = Hard
getpower = 30
givepower = 35, 35
guardflag = MA
hitflag = MAF
pausetime = 8,8
guard.pausetime = 12,12
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -2.16, -13.81
air.velocity = -1.16, -7.81
guard.velocity = -8
airguard.velocity = -6, -4
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
fall.recover = 0
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1520
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 1200, End]
type = ChangeState
trigger1 = time = 21
;trigger1 = vel y <= 0
value = 1501

;----------------------------------------------------------
;Landing
[Statedef 1501]
type = A
movetype = I
physics = A
ctrl = 0
anim = 1501
velset = 0, 0

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 38    ;fv = 10
value = 0
ignorehitpause = 1


; [State 1100, VelAdd]
; type = VelAdd
; trigger1 = pos y < 0
; y = 0.47

[State 1100, VelSet]
type = VelSet
trigger1 = pos y >= 0
y = 0

[State 1201, On Ground]
type = Posset
trigger1 = pos y >= 0
Y = 0

[State 1201, Land Snd]
type = PlaySnd
trigger1 = Time = 1
value = 52,0

; [State 1201, Landing Dust Explod]
; type = Explod
; trigger1 = !Time
; anim = 8102
; sprpriority = -3
; postype = P1
; scale = 0.5,0.5
; pauseMoveTime = -1
; superMoveTime = -1
; ownPal = 1
; 
[State 1201, End]
type = ChangeState
trigger1 = pos y >=0
value = 11
ctrl = 1

;---------------------------------------------------------------
; Mirror Image
[statedef 1600]
type = s
movetype = a
physics = s
juggle = 1
poweradd = 60
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2

[State 1500, Button Detect]
type = varset
triggerall = command = "holdx"
trigger1 = time = 0
var(10) = 0

[State 1500, Button Detect]
type = varset
triggerall = command = "holdy"
trigger1 = time = 0
var(10) = 1

[State 1500, Button Detect]
type = varset
triggerall = command = "holdz"
trigger1 = time = 0
var(10) = 2

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = S220,0
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 210, 1
channel = 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1601
ID = 1601
name = "TK Shot"
posType = P1
pos = 0,0
size.xScale = 1
size.yScale = 1
keyctrl = 0
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1000, Helper Speed]
type = VarSet
trigger1 = !AnimTime
var(11) = 0

[state 1103, 4]
type = changestate
trigger1 = time = 40
value = 0
ctrl = 1

;---------------------------------------------------------------
; EX Mirror Image
[statedef 1610]
type = s
movetype = a
physics = s
juggle = 1
poweradd = -500
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2

[State -2]
type = Afterimage
trigger1 = time = 0
trans = add
paladd = 120,40,0
PalContrast = 200,180,0
PalBright = 50,30,0
palpostbright = 80,0,0
time    =  1
length  = 50
TimeGap = 1
FrameGap = 1
persistent = 1

[State 7000, Shield]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 7002
ID = 7002
name = "Pulse"
postype = p1
pos = 0,-78
bindtime = 1
ownpal = 1
facing = 1
ignorehitpause = 1
persistent = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 20; * var(9)
add = 150,50,150
sinAdd= 100,100,100,25

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 20    ;fv = 10
value = 0

[State 1000, Trans]
type = PlaySnd
trigger1 = !Time
value = s8888,0

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15,15
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 210, 1
channel = 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1602
ID = 1602
name = "EX Mirror Image"
posType = P1
pos = 0,0
size.xScale = 1
size.yScale = 1
keyctrl = 0
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1000, Helper Speed]
type = VarSet
trigger1 = !AnimTime
var(11) = 0

[state 1103, 4]
type = changestate
trigger1 = time = 40
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Firebird Stance (Forward)
[Statedef 1700]
type = A
movetype = A
physics = N
anim = 1600
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 2
facep2 = 1

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s3300,3
channel = 0

[State 3300, Explod Phoenix]
type = Explod
trigger1 = animelem = 2
anim = 3301
ID = 3301
pos = 0,-16
postype = p1
bindtime = 17
removetime = 32
pausemovetime = 9999
supermovetime = 9999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = animelem = 2
value = s15,11
channel = 23

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 2
time = 20; * var(9)
add = 150,150,50
sinAdd= 100,100,100,25

[State 1106, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1108
pos = -4,-54
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 30
pausemovetime = 0
scale = .8, 1.8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1200, StateTypeSet: Air, No Phys]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1200, Muteki]
type = Nothitby
trigger1 = AnimElemTime(1) < 0
time = 1
value = SCA

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 5.5
y = -6.5

[State 1100, Velocity]
type = VelAdd
trigger1 = time > 13 && time < 28
x = -0.4
persistent = 1

[State 1100, Velocity]
type = VelAdd
trigger1 = time > 13 && time < 35
y = 0.52
persistent = 1

[State 1100, VelSet]
type = VelSet
trigger1 = time = 28
x = 0

[State 1100, VelSet]
type = VelSet
trigger1 = time = 36
y = 2.1

[State 1100, VelSet]
type = VelSet
trigger1 = time > 36
trigger1 = pos Y >= 0
y = 0

[State 1100, PosSet]
type = PosSet
trigger1 = time > 36
trigger1 = pos Y >= 0
y = 0

[State 420, 4]
type = HitDef
trigger1 = !MoveContact
trigger1 = time = 0
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
damage = 75
fall = 1
pausetime = 0,0
guard.pausetime = 8,8
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 17
air.hittime = 12
guard.ctrltime = 11
ground.velocity = -3, -12.5
guard.velocity = -5
air.velocity = -3,-8.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 35,35
givepower = 35, 35
yaccel = .5
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1700
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

; Firebird to Phoenix Shot--------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "x"
value = 1110
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "y"
value = 1111
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "z"
value = 1112
ctrl = 0

;Firebird to Flare Kick------------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "a"
value = 1710
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "b"
value = 1711
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "c"
value = 1712
ctrl = 0

; Firebird to Phoenix Shot--------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdx"
value = 1720
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdy"
value = 1720
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdz"
value = 1720
ctrl = 0

; Firebird to Firebird Punch--------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holdfwd"
trigger1 = command = "holdx"
value = 1800
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holdfwd"
trigger1 = command = "holdy"
value = 1810
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holdfwd"
trigger1 = command = "holdz"
value = 1820
ctrl = 0

; Firebird to Teleport--------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holda"
value = 1730
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdb"
value = 1730
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdc"
value = 1730
ctrl = 0

;---------------------------------------

[State 1200, End]
type = ChangeState
trigger1 = time >= 10
trigger1 = pos Y = 0
;trigger1 = vel y <= 0
value = 52

[state 1110, end]
type = changestate
trigger1 = time = 100
trigger1 = Pos Y < 16
value = 50
ctrl = 1

;--------------------------------------------------------------------------
; Firebird Stance (Backward)
[Statedef 1701]
type = A
movetype = A
physics = N
anim = 1600
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 2
facep2 = 1

[State 3300, Explod Phoenix]
type = Explod
trigger1 = animelem = 2
anim = 3301
ID = 3301
pos = 0,-16
postype = p1
bindtime = 17
removetime = 32
pausemovetime = 9999
supermovetime = 9999
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s3300,3
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = animelem = 2
value = s15,11
channel = 23

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 2
time = 20; * var(9)
add = 150,150,50
sinAdd= 100,100,100,25

[State 1106, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1108
pos = -4,-54
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 30
pausemovetime = 0
scale = .8, 1.8
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1200, StateTypeSet: Air, No Phys]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1200, Muteki]
type = Nothitby
trigger1 = AnimElemTime(1) < 0
time = 1
value = SCA

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -5.5
y = -6.5

[State 1100, Velocity]
type = VelAdd
trigger1 = time > 13 && time < 28
x = 0.4
persistent = 1

[State 1100, Velocity]
type = VelAdd
trigger1 = time > 13 && time < 35
y = 0.52
persistent = 1

[State 1100, VelSet]
type = VelSet
trigger1 = time = 28
x = 0

[State 1100, VelSet]
type = VelSet
trigger1 = time = 36
y = 2.1

[State 1100, VelSet]
type = VelSet
trigger1 = time > 36
trigger1 = pos Y >= 0
y = 0

[State 1100, PosSet]
type = PosSet
trigger1 = time > 36
trigger1 = pos Y >= 0
y = 0

[State 420, 4]
type = HitDef
trigger1 = !MoveContact
trigger1 = time = 0
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
damage = 75
fall = 1
pausetime = 0,0
guard.pausetime = 8,8
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 17
air.hittime = 12
guard.ctrltime = 11
ground.velocity = -3, -12.5
guard.velocity = -5
air.velocity = -3,-8.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 35,35
givepower = 35, 35
yaccel = .5
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1700
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

; Firebird to Phoenix Shot--------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "x"
value = 1110
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "y"
value = 1111
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "z"
value = 1112
ctrl = 0

;Firebird to Flare Kick------------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "a"
value = 1710
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "b"
value = 1711
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "c"
value = 1712
ctrl = 0

; Firebird to Phoenix Shot--------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdx"
value = 1720
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdy"
value = 1720
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdz"
value = 1720
ctrl = 0

; Firebird to Firebird Punch--------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holdfwd"
trigger1 = command = "holdx"
value = 1800
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holdfwd"
trigger1 = command = "holdy"
value = 1810
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holdfwd"
trigger1 = command = "holdz"
value = 1820
ctrl = 0

; Firebird to Teleport--------------
[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holda"
value = 1730
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdb"
value = 1730
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
triggerall = time > 14
triggerall = pos Y < 15
trigger1 = command = "holddown"
trigger1 = command = "holdc"
value = 1730
ctrl = 0

;---------------------------------------

[State 1200, End]
type = ChangeState
trigger1 = time >= 10
trigger1 = pos Y = 0
;trigger1 = vel y <= 0
value = 52

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 99
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N

[state 1110, end]
type = changestate
trigger1 = time = 100
trigger1 = Pos Y < 16
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Firebird Kick (light)
[statedef 1710]
type    = a
movetype= a
physics = n
velset = 0,0
poweradd= 20
ctrl = 0
anim = 1610

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s3300,3

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s5,9

[State 0, Voice]
type = PlaySnd
trigger1 = time = 0
value = s15,2
channel = 23
volume = 500

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 2
time = 20; * var(9)
add = 150,150,50
sinAdd= 100,100,100,25

[State 1106, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1108
pos = -4,-54
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 30
pausemovetime = 0
scale = 1.8, 1.8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 6.7
y = 2.5

[State 3151, FX]
type = helper
triggerall = animelem = 2
trigger1 = !numhelper(653)
helpertype = normal
stateno = 653
ID = 653
name = "Phoenix Kick FX"
postype = p1
size.xscale = (0.5 * const(size.xscale))
size.yscale = (0.5 * const(size.yscale))
ownpal = 1
ignorehitpause = 1

[State 630, 2]
type = HitDef
trigger1 = Time = 0
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -60
attr = A, SA
damage = 50
animtype = Heavy
fall = 1
hitflag = MAFD
guardflag = HA
pausetime = 9,9
sparkno = -1 + 0 * (var(33) := 8013)
hitsound = S201,1
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5
air.velocity = -2.5,-3.5
p2facing = 1
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1710
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I
physics = A

[State 1100, VelSet]
type = VelSet
trigger1 = pos Y >= 0
y = 0

[State 1100, PosSet]
type = PosSet
trigger1 = pos Y >= 0
y = 0

[State 1200, End]
type = ChangeState
trigger1 = !animtime
trigger1 = pos Y = 0
trigger2 = animtime
trigger2 = Pos Y = 0
value = 52

;---------------------------------------------------------------------------
; Firebird Kick (Med)
[statedef 1711]
type    = a
movetype= a
physics = n
velset = 0,0
poweradd= 20
ctrl = 0
anim = 1610

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s3300,3

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s5,9

[State 0, Voice]
type = PlaySnd
trigger1 = time = 0
value = s15,2
channel = 23
volume = 500

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 2
time = 20; * var(9)
add = 150,150,50
sinAdd= 100,100,100,25

[State 1106, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1108
pos = -4,-54
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 30
pausemovetime = 0
scale = 1.8, 1.8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 8.7
y = 2.5

[State 3151, FX]
type = helper
triggerall = animelem = 2
trigger1 = !numhelper(653)
helpertype = normal
stateno = 653
ID = 653
name = "Phoenix Kick FX"
postype = p1
size.xscale = (0.5 * const(size.xscale))
size.yscale = (0.5 * const(size.yscale))
ownpal = 1
ignorehitpause = 1

[State 630, 2]
type = HitDef
trigger1 = Time = 0
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -60
attr = A, SA
damage = 75
animtype = Heavy
fall = 1
hitflag = MAFD
guardflag = HA
pausetime = 9,9
sparkno = -1 + 0 * (var(33) := 8013)
hitsound = S201,1
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5
air.velocity = -2.5,-3.5
p2facing = 1
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1710
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I
physics = A

[State 1100, VelSet]
type = VelSet
trigger1 = pos Y >= 0
y = 0

[State 1100, PosSet]
type = PosSet
trigger1 = pos Y >= 0
y = 0

[State 1200, End]
type = ChangeState
trigger1 = !animtime
trigger1 = pos Y = 0
trigger2 = animtime
trigger2 = Pos Y = 0
value = 52

;---------------------------------------------------------------------------
; Firebird Kick (Heavy)
[statedef 1712]
type    = a
movetype= a
physics = n
velset = 0,0
poweradd= 20
ctrl = 0
anim = 1610

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s3300,3

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s5,9

[State 0, Voice]
type = PlaySnd
trigger1 = time = 0
value = s15,2
channel = 23
volume = 500

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 2
time = 20; * var(9)
add = 150,150,50
sinAdd= 100,100,100,25

[State 1106, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1108
pos = -4,-54
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 30
pausemovetime = 0
scale = 1.8, 1.8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 15.7
y = 2.5

[State 3151, FX]
type = helper
triggerall = animelem = 2
trigger1 = !numhelper(653)
helpertype = normal
stateno = 653
ID = 653
name = "Phoenix Kick FX"
postype = p1
size.xscale = (0.5 * const(size.xscale))
size.yscale = (0.5 * const(size.yscale))
ownpal = 1
ignorehitpause = 1

[State 630, 2]
type = HitDef
trigger1 = Time % 4 = 0
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -60
attr = A, SA
damage = 40
animtype = Heavy
fall = 1
hitflag = MAFD
guardflag = HA
pausetime = 9,9
sparkno = -1 + 0 * (var(33) := 8013)
hitsound = S201,1
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5
air.velocity = -2.5,-3.5
p2facing = 1
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1710
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
movetype = I
physics = A

[State 1100, VelSet]
type = VelSet
trigger1 = pos Y >= 0
y = 0

[State 1100, PosSet]
type = PosSet
trigger1 = pos Y >= 0
y = 0

[State 1200, End]
type = ChangeState
trigger1 = !animtime
trigger1 = pos Y = 0
trigger2 = animtime
trigger2 = Pos Y = 0
value = 52

;------------------------------------------------------------------------------
; Firebird Pillar
[statedef 1720]
type = a
movetype= a
physics = a
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1620
poweradd = 0
sprpriority = 2

[State 0, PosFreeze]
type = PosFreeze
trigger1 = animelem = 1
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 1
y = -1

[state 1110]
type = varset
trigger1 = time = 0
trigger1 = command = "holdx"
v = 10
value = 0

[state 1110]
type = varset
trigger1 = time = 0
trigger1 = command = "holdy"
v = 10
value = 1

[state 1110]
type = varset
trigger1 = time = 0
trigger1 = command = "holdz"
v = 10
value = 2

[state 1110]
type = varset
trigger1 = !time
v = 50
value = 2

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = s15,1
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = s5,11

[State 1000, Projectile]
type = Helper
trigger1 = var(10) = 0
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1721
ID = 1721
name = "Pillar"
posType = p1
pos = 35,50
size.xScale = 0.8
size.yScale = 0.8
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1000, Projectile]
type = Helper
trigger1 = var(10) = 1
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1721
ID = 1721
name = "Pillar"
posType = p1
pos = 105,50
size.xScale = 0.8
size.yScale = 0.8
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1000, Projectile]
type = Helper
trigger1 = var(10) = 2
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1721
ID = 1721
name = "Pillar"
posType = p1
pos = 175,50
size.xScale = 0.8
size.yScale = 0.8
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = animelem = 2
value = 255,255,255
time = 3
ignorehitpause =1

[State 0, VelSet]
type = VelSet
trigger1 = Animelem = 2
x = -3
y = -5.3

[state 1111, end]
type = changestate
trigger1 = animtime = 0
value = 948
ctrl = 1

[State 1100, VelSet]
type = VelSet
trigger1 = pos Y >= 0
y = 0

[State 1100, PosSet]
type = PosSet
trigger1 = pos Y >= 0
y = 0

[State 1200, End]
type = ChangeState
trigger1 = !animtime
trigger1 = pos Y = 0
trigger2 = animtime
trigger2 = Pos Y = 0
value = 52

;------------------------------------------------------------------------------
; Firebird Teleport
[Statedef 1730]
type = A
movetype = I
physics = N
anim = 1630
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 2
facep2 = 0

[State 1500, Button Detect]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "holdc", 2, ifelse(command = "holda", 1, 0))
;
[State 1500, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
value = 0
;
[State 1500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
trigger1 = ((Command = "holda") + (Command = "holdb") + (Command = "holdc") < 2)
trigger2 = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
value = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT
time = 1
ignorehitpause = 1
;
[State 1500, Trans: Fade Out]
type = Trans
trigger1 = AnimElemTime(3) = [0, 10]
trans = AddAlpha
alpha = (256 -25 * (AnimElemTime(3))), (25 * (AnimElemTime(3)))
;
[State 1500, Trans: Fade In]
type = Trans
trigger1 = AnimElemTime(5) = [0, 10]
trans = AddAlpha
alpha = (25 * (AnimElemTime(5))), (256 -25 * (AnimElemTime(5)))

[State 1500, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = s15, 7
channel = 23

[State 1500, Snd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 5
value = 210, 1

[State 1500, Vel]
type = VelSet
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
x =  ifelse(var(10) = 2, 20, ifelse(var(10) = 1, -20, 0))

[State 1500, Vel]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1500, Turn]
type = Turn
trigger1 = AnimElem = 5 && P2Dist X < 0

[State 1500, FX]
type = Helper
trigger1 = AnimElem = 3
helpertype = Normal
stateno = 1305
ID = 1305
name = "Teleport FX"
postype = P1
ownpal = 1

[State 1500, FX]
type = Helper
trigger1 = AnimElem = 5
helpertype = Normal
stateno = 1306
ID = 1305
name = "Teleport FX"
postype = P1
pos = 60, 0
ownpal = 1

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 4
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
statetype = S

[State 1500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Light Firebird Punch
[statedef 1800]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1800
poweradd = 20
sprpriority = 2

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15, 0
channel = 23

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 4
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = s5,9
volume = 255

[State 0, VelSet]
type = VelSet
trigger1 = time = 5
x = 4.5
y = -2.4

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 4 && time < 31
y = ifelse(vel y>=0,0,.14)

[State 3151, FX]
type = helper
triggerall = animelem = 2
trigger1 = !numhelper(654)
helpertype = normal
stateno = 654
ID = 654
name = "Firebird Punch FX"
postype = p1
size.xscale = (0.5 * const(size.xscale))
size.yscale = (0.5 * const(size.yscale))
ownpal = 1
ignorehitpause = 1

[State 630, 2]
type = HitDef
trigger1 = Time = 0
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -92
attr = A, SA
damage = 75
animtype = Heavy
fall = 1
hitflag = MAFD
guardflag = HA
pausetime = 9,9
sparkno = -1 + 0 * (var(33) := 8013)
hitsound = S201,1
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5, -2.5
air.velocity = -2.5,-3.5
p2facing = 1
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1800
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N

[state 220, end]
type = changestate
triggerall = time > 30
trigger1 = pos Y >= 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Medium Firebird Punch
[statedef 1810]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1800
poweradd = 20
sprpriority = 2

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15, 0
channel = 23

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 4
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = s5,9
volume = 255

[State 0, VelSet]
type = VelSet
trigger1 = time = 5
x = 6.5
y = -2.4

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 4 && time < 31
y = ifelse(vel y>=0,0,.14)

[State 3151, FX]
type = helper
triggerall = animelem = 2
trigger1 = !numhelper(654)
helpertype = normal
stateno = 654
ID = 654
name = "Firebird Punch FX"
postype = p1
size.xscale = (0.5 * const(size.xscale))
size.yscale = (0.5 * const(size.yscale))
ownpal = 1
ignorehitpause = 1

[State 630, 2]
type = HitDef
trigger1 = Time = 0
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -92
attr = A, SA
damage = 95
animtype = Heavy
fall = 1
hitflag = MAFD
guardflag = HA
pausetime = 9,9
sparkno = -1 + 0 * (var(33) := 8013)
hitsound = S201,1
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5, -3.5
air.velocity = -2.5,-3.5
p2facing = 1
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1810
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N

[state 220, end]
type = changestate
triggerall = time > 30
trigger1 = pos Y >= 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Heavy Firebird Punch
[statedef 1820]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1800
poweradd = 20
sprpriority = 2

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15, 0
channel = 23

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 4
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = s5,9
volume = 255

[State 0, VelSet]
type = VelSet
trigger1 = time = 5
x = 8.5
y = -2.4

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 4 && time < 31
y = ifelse(vel y>=0,0,.14)

[State 3151, FX]
type = helper
triggerall = animelem = 2
trigger1 = !numhelper(654)
helpertype = normal
stateno = 654
ID = 654
name = "Firebird Punch FX"
postype = p1
size.xscale = (0.5 * const(size.xscale))
size.yscale = (0.5 * const(size.yscale))
ownpal = 1
ignorehitpause = 1

[State 630, 2]
type = HitDef
trigger1 = Time = 0
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -92
attr = A, SA
damage = 110
animtype = Heavy
fall = 1
hitflag = MAFD
guardflag = HA
pausetime = 9,9
sparkno = -1 + 0 * (var(33) := 8013)
hitsound = S201,1
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5, -3.5
air.velocity = -2.5,-3.5
p2facing = 1
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1820
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N

[state 220, end]
type = changestate
triggerall = time > 30
trigger1 = pos Y >= 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; EX Firebird Punch
[statedef 1830]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1801
poweradd = -500
sprpriority = 2

[State -2]
type = Afterimage
trigger1 = var(20) = 1
trans = add
paladd = 120,40,0
PalContrast = 200,180,0
PalBright = 50,30,0
palpostbright = 80,0,0
time    =  -1
length  = 50
TimeGap = 1
FrameGap = 1
persistent = 1

[State 7000, Shield]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 7001
ID = 7001
name = "Pulse"
postype = p1
pos = 0,-78
bindtime = 1
ownpal = 1
facing = 1
ignorehitpause = 1
persistent = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 20; * var(9)
add = 150,150,50
sinAdd= 100,100,100,25

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 20    ;fv = 10
value = 1

[State 1000, Trans]
type = PlaySnd
trigger1 = !Time
value = s3300,3

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15,13
channel = 23

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = s5,9
volume = 255

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 4
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 0, VelSet]
type = VelSet
trigger1 = time = 5
x = 9.5
y = -1.4

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 4 && time < 26
y = ifelse(vel y>=0,0,.04)

[State 3151, FX]
type = helper
triggerall = animelem = 2
trigger1 = !numhelper(654)
helpertype = normal
stateno = 654
ID = 654
name = "Firebird Punch FX"
postype = p1
size.xscale = (0.5 * const(size.xscale))
size.yscale = (0.5 * const(size.yscale))
ownpal = 1
ignorehitpause = 1

[State 630, 2]
type = HitDef
trigger1 = Time % 4 = 0
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -92
attr = A, SA
damage = 40
animtype = Heavy
fall = 1
hitflag = MAFD
guardflag = HA
pausetime = 6,6
sparkno = -1 + 0 * (var(33) := 8013)
hitsound = S201,1
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -6.5, -3.5
air.velocity = -6.5,-3.5
p2facing = 1
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 1830
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N

[state 220, end]
type = changestate
triggerall = time > 25
trigger1 = pos Y >= 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Psychosis
[statedef 1900]
type = s
movetype = a
physics = s
juggle = 1
poweradd = 60
ctrl = 0
velset = 0,0
anim = 1011
sprpriority = 2

[State 1000, Helper Speed]
type = VarSet
trigger1 = !Time
var(10) = ifelse(command="holdz",2,ifelse(command="holdx",0,1))

[State 1000, Helper Speed]
type = VarSet
trigger1 = !Time
var(11) = 1

[State 1000, Voice]
type = PlaySnd
trigger1 = time = 0
value = s250,0
channel = 23

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = time = 5
value = s250,1
channel = 1

[State 1000, Projectile]
type = Helper
trigger1 = time = 5
helperType = Normal
stateNo = 1901
ID = 1901
name = "Psychosis"
posType = P1
pos = ifelse(var(10)=0,60,ifelse(var(10)=2,200,130)),const(size.head.pos.y)
size.xScale = 0.55
size.yScale = 0.55
keyctrl = 0
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1000, Helper Speed]
type = VarSet
trigger1 = !AnimTime
var(10) = 0

[state 1103, 4]
type = changestate
trigger1 = time = 35
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; EX Psychosis
[statedef 1910]
type = s
movetype = a
physics = s
juggle = 1
poweradd = -500
ctrl = 0
velset = 0,0
anim = 1910
sprpriority = 2

[State -2]
type = Afterimage
trigger1 = time = 0
trans = add
paladd = 120,40,0
PalContrast = 200,180,0
PalBright = 50,30,0
palpostbright = 80,0,0
time    =  1
length  = 50
TimeGap = 1
FrameGap = 1
persistent = 1

[State 7000, Shield]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 7002
ID = 7002
name = "Pulse"
postype = p1
pos = 0,-78
bindtime = 1
ownpal = 1
facing = 1
ignorehitpause = 1
persistent = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 20; * var(9)
add = 150,50,150
sinAdd= 100,100,100,25

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 20    ;fv = 10
value = 0

[State 1000, Trans]
type = PlaySnd
trigger1 = !Time
value = s8888,0

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s15,15
channel = 23

[State 1000, Helper Speed]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1000, Helper Speed]
type = VarSet
trigger1 = !Time
var(11) = 1

[State 1000, Blast Snd]
type = PlaySnd
trigger1 = animelem = 4
value = s250,1
channel = 1

[State 1011, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1911
pos = 25,const(size.head.pos.y)
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
removetime = 17
scale = .8,.8
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, Projectile]
type = Helper
trigger1 = animelem = 4
helperType = Normal
stateNo = 1901
ID = 1901
name = "Psychosis"
posType = P1
pos = 75,const(size.head.pos.y)
size.xScale = 0.55
size.yScale = 0.55
keyctrl = 0
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1000, Helper Speed]
type = VarSet
trigger1 = animelem = 19
var(10) = 0

[state 1103, 4]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;-----------------------------------------------------
;Power Charge
[Statedef 780]
type = S
physics = S
movetype= I
anim = ifelse(var(20)=1,7800,780)
ctrl = 0
velset = 0,0

[State 820, PowerAdd]
type = PowerAdd
triggerall = var(20) = 0
trigger1 = 1
value =2*((time+20)/30)

[State 820, PowerAdd]
type = PowerAdd
triggerall = var(20) = 1
trigger1 = 1
value = 4

[State 820, Voice]
type = Playsnd
triggerall = var(20) = 0
trigger1 = AnimElem = 1
value = 11,1
channel = 23

[State 820, Voice]
type = Playsnd
triggerall = var(20) = 1
trigger1 = AnimElem = 1
value = 15,6
channel = 23

[State 820, Charge Sound]
type = Playsnd
trigger1 = AnimElem = 1
value = 999,0
channel = 2

[State 0, EnvShake]
type = EnvShake
triggerall = var(20) = 1
trigger1 = time % 9 = 0
time = 10
freq = 60
ampl = 3
phase = 80
ignorehitpause = 1

[State 1106, Floor Flame]
type = Explod
triggerall = var(20) = 1
trigger1 = time % 10 = 0
anim = 1108
pos = -11,3
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 15,0
removetime = -2
pausemovetime = 0
scale = 1.7, .3
sprpriority = -999
ownpal = 1

[State 1106, Explod]
type = Explod
triggerall = var(20) = 1
trigger1 = time % 5 = 0
anim = 1108
pos = -15,-100
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,-0.3
random = 50,20
removetime = -2
pausemovetime = 0
scale = .6, .6
sprpriority = (Random%8)
ownpal = 1

[State 1106, Explod]
type = Explod
triggerall = var(20) = 1
trigger1 = time % 5 = 0
anim = 1108
pos = -15,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,-0.5
random = 50,50
removetime = -2
pausemovetime = 0
scale = .8, .8
sprpriority = (Random%8)
ownpal = 1

[State 1106, Explod]
type = Explod
triggerall = var(20) = 1
trigger1 = time % 5 = 0
anim = 1108
pos = -15,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,-0.62
random = 50,5
removetime = -2
pausemovetime = 0
scale = 1, 1
sprpriority = (Random%8)
ownpal = 1

[State 780, flash]
type = palfx
triggerall = var(20) = 0
trigger1 = time % 20 = 0
time = 20; * var(9)
add = 150,50,150
sinAdd= 100,100,100,25

[state 3100]
type = explod
triggerall = var(20) = 0
trigger1 = time % 11 = 0
anim = 11001
postype = p1
pos = -4, -75
removetime = 7
ownpal = 1
scale = .4, .4
ignorehitpause = 1
ontop = 1

[State 820, Anim]
type = ChangeState
triggerall = time >=20
trigger1 = (Command != "holdz" || Command != "holdc" || (power >= 3000))
trigger2 = power >=3000
value = 781
persistent = 0

;----------------------------------------------------------------------------
; Power Charge End
[Statedef 781]
type = S
physics = S
movetype = I
anim = ifelse(var(20)=1,7810,781)
velset = 0,0
ctrl = 0

[State 781, Stopsnd]
type = stopsnd
trigger1 = !time
channel = 2

[State 0, EnvShake]
type = EnvShake
triggerall = var(20) = 1
trigger1 = 1
time = 1
freq = 80
ampl = 7
phase = 100
ignorehitpause = 1

[State 781, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
