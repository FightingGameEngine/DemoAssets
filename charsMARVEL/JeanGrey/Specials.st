;------------------------------------------------------------------------------
;----------------------------[ special moves ]---------------------------------
;------------------------------------------------------------------------------
; Telekinetic Hold ;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
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
; Special 1 -- beam helper state
[StateDef 1010]
type = A
movetype = A
physics = C
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
sparkno = 2;S9992
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

;------------------------------
; Special 1 - P1
[StateDef 1011]
type = S
movetype = A
physics = S
anim = 1011

[State 1011, ChangeState]
type = ChangeState
trigger1 = var(59) != 0
value = 1050
ctrl = 0

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
value = 200
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "y"
value = 210
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "z"
value = 220
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "a"
value = 230
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "b"
value = 240
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = command = "c"
value = 250
ctrl = 0

[State 1011, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1011, changestate]
type = ChangeState
trigger1 = p2stateno != 1012
value = 1020
ctrl = 0

;------------------------------
; Special 1 - P2
[StateDef 1012]
type = S
movetype = H
physics = S

[State 1012, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 1012

[State 1012, PosSet]
type = PosSet
trigger1 = time = 0
y = -80

[State 1012, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holdfwd"
x = -5

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holdback"
x = 5

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holdup"
y = -5

[State 1012, VelSet]
type = VelSet
triggerall = enemynear, stateno = 1011
trigger1 = enemynear, command = "holddown"
y = 5

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
trigger1 = time = 70
trigger2 = enemynear, command = "x"
trigger3 = enemynear, command = "y"
trigger4 = enemynear, command = "z"
trigger5 = enemynear, command = "a"
trigger6 = enemynear, command = "b"
trigger7 = enemynear, command = "c"
value = 1013
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
trigger1 = time = 70
value = 1013
ctrl = 0

;------------------------------
; Special 1 - P2 released
[StateDef 1013]
type = S
movetype = H
physics = N

[State 1013, Gravity]
type = Gravity
trigger1 = 1

[State 1013, HitFallSet]
type = HitFallSet
trigger1 = time = 0
value = 1

[State 1013, ChangeAnim2]
type = ChangeAnim2
trigger1 = anim!= 1012
value = 1012

[State 1013, VelSet]
type = VelSet
trigger1 = time = 0
x = -5
y = 25

[State 1013, Selfstate]
type = SelfState
trigger1 = pos y >= -20
value = 5100
ctrl = 1

;------------------------------
; Special 1 - end
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1020

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Special 1 - P1 (AI STATE ONLY)
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
;
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

[state 1103]
type = varset
trigger1 = time = 0 && var(59)>=1
v = 10
value = 2

[state 1103, playsnd]
type = playsnd
trigger1 = animelem = 1
value = 999,0
channel = 4
volume = 255

[state 1103, 2]
type = projectile
trigger1 = animelem = 2
projid = 1105
projanim = 1106
projhitanim = 1107
projsprpriority = 7
projscale = 0.85,0.85
offset = 95,-85
velocity = 6.5, 1.5
velocity = 3.5
attr = a, sp
damage = 50
animtype = light
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 0,-15
sparkno = 3
sparkxy = -10,-5
hitsound = S999,3
guardsound = S999,2
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

[state 1104]
type = varset
trigger1 = time = 0 && var(59)>=1
v = 10
value = 2

[state 1104, playsnd]
type = playsnd
trigger1 = animelem = 2
value = 0,0
channel = 1

[state 1104, 2]
type = projectile
trigger1 = animelem = 2
projid = 1105
projanim = 1106
projhitanim = 1107
projsprpriority = 7
offset = 95,-85
velocity = 5.5,0
attr = a, sp
damage = 55
animtype = medium
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 0,-15
sparkno = 3
sparkxy = -10,-5
hitsound = S999,3
guardsound = S999,2
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

[state 1104, 4]
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

[state 1105]
type = varset
trigger1 = time = 0 && var(59)>=1
v = 10
value = 2

[state 1105, playsnd]
type = playsnd
trigger1 = animelem = 2
value = 0,0
channel = 1

[state 1105, 2]
type = projectile
trigger1 = animelem = 2
projid = 1105
projanim = 1106
projhitanim = 1107
projsprpriority = 7
projscale = 1.25,1.25
offset = 95,-85
velocity = 4.5,-0.9
attr = a, sp
damage = 60
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 0,-15
sparkno = 3
sparkxy = -10,-5
hitsound = S999,3
guardsound = S999,2
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

[state 1105, 4]
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

[state 1110]
type = varset
trigger1 = time = 0 && var(59)>=1
v = 10
value = 2

[state 1110, playsnd]
type = playsnd
trigger1 = animelem = 2
value = 0,0
channel = 1

[state 1110, 2]
type = projectile
trigger1 = animelem = 2
projid = 1110
projanim = 1111
projhitanim = 1112
projsprpriority = 7
offset = 48,-97
velocity = 3.5,4.0
attr = a, sp
damage = 50
animtype = light
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,0
sparkno = 3
sparkxy = -10,5
hitsound = S999,3
guardsound = S999,2
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
p2facing = 1
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

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

[state 1111]
type = varset
trigger1 = time = 0 && var(59)>=1
v = 10
value = 2

[state 1111, playsnd]
type = playsnd
trigger1 = animelem = 2
value = 0,0
channel = 1

[state 1111, 2]
type = projectile
trigger1 = animelem = 2
projid = 1110
projanim = 1111
projhitanim = 1112
projsprpriority = 7
offset = 48,-97
velocity = 4.5,2.5
attr = a, sp
damage = 55
animtype = medium
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,0
sparkno = 3
sparkxy = -10,5
hitsound = S999,3
guardsound = S999,2
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
p2facing = 1
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

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

[state 1112]
type = varset
trigger1 = time = 0 && var(59)>=1
v = 10
value = 2

[state 1112, playsnd]
type = playsnd
trigger1 = animelem = 2
value = 0,0
channel = 1

[state 1112, 2]
type = projectile
trigger1 = animelem = 2
projid = 1110
projanim = 1106
projhitanim = 1107
projsprpriority = 7
offset = 48,-97
velocity = 5.5,1
attr = a, sp
damage = 60
animtype = hard
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,0
sparkno = 3
sparkxy = -10,5
hitsound = S999,3
guardsound = S999,2
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
p2facing = 1
palfx.time = 40
palfx.add = 172,-19, 204
palfx.mul = 338,189,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 215

[state 1112, end]
type = changestate
trigger1 = animtime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
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
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 30,3
animtype = Light
priority  = 5, hit
guarDFlag = ma
hitflag = mafd
pausetime = 7,7
sparkxy = 5,0
hitsound   = S5,3
guardsound = S6,0
sparkno = 3
guard.sparkno = s8430
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -9
air.velocity = -9
getpower = ifelse(movehit,40,15),ifelse(movehit,40,0)
sprpriority = 3
envshake.time = 5
envshake.ampl = 3

[state 1201]
type = Destroyself
trigger1 = movecontact
trigger2 = pos y > 150
trigger3 = time = 240


