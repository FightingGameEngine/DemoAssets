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

;;Claw Long Range
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 1

[State 1260]
type = Explod
trigger1 = AnimElem = 3
anim = 63
ownpal = 1
pos = 20,0
postype = p1
sprpriority = 10

[State 1260]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 7
value = 200,0


[State 1260]
type = VelSet
trigger1 = AnimElem = 3
x = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,3

[State 1260]
type = VelAdd
triggerall = Vel X > 0
trigger1 = AnimElem = 5, >= 0
x = -0.3


[State 1260]
type = HitDef
attr = S, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80
animtype = Hard
priority  = 3, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-40
hitsound   = S172,8
guardsound = 6,0
sparkno = 3
ground.type = Low
ground.slidetime = 10
ground.hittime  = 25
ground.velocity = 3,-9
air.velocity = 3,-9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
palfx.time = 1
palfx.add = 256,256,256


[State 1260]
type = ChangeAnim
trigger1 = MoveContact
value = 1001
ignorehitpause = 0
persistent = 0


[State 1260]
type = Explod
trigger1 = AnimElem = 4
anim = 21244
sprpriority = 5
ownpal = 1
removeongethit = 1
bindtime = -1

[State 1260]
type = Helper
trigger1 = MoveHIT;Contact
stateno = 21240
id = 21240
name = "Slash"
ownpal = 1
persistent = 0
pos = 0,-30

;[State 1260]
;type = VarAdd
;trigger1 = !MoveContact && AnimElem = 5, >= 0
;var(9) = 1
;ignorehitpause = 1
;persistent = 0

[State 1260]
type = ChangeState
trigger1 = AnimTime = 0; && StateType != A
value = 0
ctrl = 1


;Claw Effect
[Statedef 21240]
type = S
movetype = A
physics =N
anim = 9999
ctrl = 0
sprpriority = 4
velset = 0,0

[State 21240]
type = Explod
trigger1 = Time = 0
anim = 21242
sprpriority = 4
removetime = 16
ownpal = 1

[State 21240]
type = Explod
trigger1 = Time = 0
anim = 21243
sprpriority = 5
removetime = 16
ownpal = 1


[State 21240]
type = Explod
trigger1 = Time = 16
anim = 21241
sprpriority = 5
ownpal = 1

[State 21240]
type = DestroySelf
trigger1 = Time = 16



;------------------------------------------------------------------------------------------------------------
;Claw Effect
[Statedef 21241]
type = S
movetype = A
physics =N
anim = 9999
ctrl = 0
sprpriority = 4
velset = 0,0

[State 21241]
type = Explod
trigger1 = Time = 0
anim = 21245
sprpriority = 4
removetime = 16
ownpal = 1


[State 21241]
type = Explod
trigger1 = Time = 0
anim = 21246
sprpriority = 5
removetime = 16
ownpal = 1


[State 21241]
type = Explod
trigger1 = Time = 16
anim = 21247
sprpriority = 5
ownpal = 1


[State 21241]
type = DestroySelf
trigger1 = Time = 16

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

;------------------------------
; Rock Throw
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S172,7

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1100,1

[State 1100, Rock Ground]
type = Explod
trigger1 = time = 0
anim = 1150
ID = 1150
pos = 20,5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1100, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Rock"
ID = 1150
stateno = 1150
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------------------------
;P2 state - Dizzy

[Statedef 1121]
type    = S
movetype= H
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
;anim = 5300
ctrl = 0
sprpriority = 2

[State 1121, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1121, Turn]
type = Turn
triggerall = facing = enemynear,facing
trigger1 = time = 1

[State 1121, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5300)
trigger1 = Anim !=5300
value = 5300

[State 1121, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5300)
trigger1 = Anim !=5010
value = 5010

[State 1121, VelSet]
type = VelSet
trigger1 = 1
x = 0

[State 1121, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[State 1121, SelfState]
type = SelfState
trigger1 = time = 90
value = 0
ctrl = 1

;------------------------------
; Rocks to be Thrown
[StateDef 1150]
type = S
movetype = A
physics = N
anim = 1151
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1150, posset]
type = PosSet
triggerall = anim != 1152
trigger1 = parent, anim = 1100
trigger1 = parent, animelem >= 8
y = -140

[State 1150, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1152
trigger1 = parent, anim = 1100
trigger1 = parent, animelem >= 8
value = 1152

[State 1150, VelSet]
type = VelSet
trigger1 = anim = 1152
x = 12
y = 3

[State 1150, HitDef]
type = HitDef
triggerall = parent, var(25) = 0
trigger1 = time = 0
attr = S, SP
damage = 80,5
guardflag = MA
pausetime = 0,12
hitsound = S1100,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
p2stateno = 1121

[State 1150, HitDef]
type = HitDef
triggerall = parent, var(25) != 0
trigger1 = time = 0
attr = S, SP
damage = 80,5
guardflag = MA
pausetime = 0,12
hitsound = S1100,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
fall = 1
air.fall = 1
p2stateno = 1121

[State 1150, ParentVarSet]
type = ParentVarSet
trigger1 =  movehit
v = 25
value = 1

[State 1150, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1155
trigger1 = movecontact
trigger2 = anim = 1151
trigger2 = parent, movetype = H
value = 1155

[State 1150, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0

[State 1150, PosSet]
type = PosSet
trigger1 = movecontact
x = enemynear, pos x

[State 1150, Explod]
type = Explod
triggerall = numexplod(1155) = 0
trigger1 = movecontact
anim = 1155
ID = 1155
pos = 0, -50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 1150, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 1151
time = 1

[State 1150, DestroySelf]
type = DestroySelf
trigger1 = time > 200
trigger2 = anim = 1155
trigger2 = animtime = 0

;------------------------------
; Rocks to be Thrown
[StateDef 1151]
type = S
movetype = A
physics = N
anim = 1155
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1151, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 12

[State 1150, DestroySelf]
type = DestroySelf
trigger1 = time > 12

;-------------------------------------------------------------------------------
;Earthquake

[Statedef 1200]
type = S
movetype= A
physics = S
juggle  = 1
poweradd = 60
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
time = 78
ampl = 2
freq = 118

[State 1200, 1]
type = Playsnd
trigger1 = AnimElem = 4
value = 172,2
channel = 5

[State 1200, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 30,0
channel = 4

[State 1200, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1202
ID = 1200
pos = 100,10
postype = p1
removetime = 21
scale = 1,1
sprpriority = 10
ontop = 1

[State 1200, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1202
ID = 1200
pos = 150,0
postype = p1
removetime = 21
scale = 0.9,0.8
sprpriority = -10
ontop = 0

[State 1200, blast]
type = Helper
trigger1 = AnimElem = 3
ID =1201
stateno =1201
postype = p1
pos = 105,10
name = "Rift"
ownpal = 1

[State 1200, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,SA
damage = 52
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -70
hitsound = S2,2
guardsound = 3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 9
ground.velocity = -4
air.type = Low
air.hittime = 20
air.velocity = -6,-2

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
;Earthquake Rise

[Statedef 1201]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 1202
velset = 0,0
sprpriority = 1

[State 1200, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 78
ampl = 2
freq = 118

[State 1201, 1]
type = Projectile
trigger1 = time = 0
projanim = 1201
projhitanim = 1205
projcancelanim = 1205
projhits = 3
projsprpriority = -1
offset = 0,0
velocity = 2,0
attr = S, SP
damage = 15,3
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = S2,0
guardsound = 3,0
ground.type = High
ground.slidetime = 3
ground.hittime = 1
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1201, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=1200


;---------------------------------------------------------------------------------------------
;throw special
[StateDef 1300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 1300
velset = 0,0
sprpriority = 10

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 3
value = 1300,0

[State 1300]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1310
p2stateno = 1320
SprPriority = 10
guard.dist = 0
fall = 1
hitsound = S1,9
id = 1300
guardsound = S4,0
guard.sparkno = S8430
sparkxy = -10,-60
getpower = 0
kill = 0

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1310]
type    = S
movetype= A
physics = N
anim = 1310
sprpriority = 10

[State 1310, SprPriority]
type = SprPriority
trigger1 = Time = 1
value = 10

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,5

[State 1310, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 8
value = 172,8

[State 1310, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 6
value = -45

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 100,-40

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70,-65

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50,-95

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -5,-129

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -95,-160

[State 1310, SprPriority]
type = SprPriority
trigger1 = animelem = 2
value = -1

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = -70,-190

[State 1310, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1310, TargetState]
type = TargetState
trigger1 = AnimElem = 7
value = 1330

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 5
freq = 20
ampl = -2

[State 1310, ChangeState]
type = ChangeState
trigger1 = enemynear, stateno = 1340
value = 1315
ctrl = 0

[State 1310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1315]
type    = C
movetype= A
physics = C
anim = 1315
velset = 0,0
sprpriority = -1
juggle = 0

[State 1315, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = 200,0

[State 1315, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 4
attr = S, HA
guardflag = MA
getpower = 0,0
givepower = 0,0
SprPriority = -5
animtype = light
air.animtype = light
damage = 3
pausetime = 2,2
sparkno = -1
hitsound = S172,8
guardsound = 6,0
guard.sparkno = 0
sparkxy = -40,0
ground.type = High
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
kill =0
p2stateno = 1340

[State 1315, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3206
ID = 1317
pos = 10,-5
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1315, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3206
ID = 1317
pos = -20,-5
postype = p1
facing = -1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1315, TargetBind]
type = TargetBind
trigger1 = animelem = 1
pos = 0,0

[State 1315, ChangeState]
type = ChangeState
trigger1 = time > 30
value =  1316
ctrl = 0

[Statedef 1316]
type    = C
movetype= A
physics = C
anim = 1316
velset = 0,0
sprpriority = 1
juggle = 0

[State 1316, SprPriority]
type = SprPriority
trigger1 = animelem = 1
value = -1

[State 1316, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,6

[State 1316, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
guardflag = MA
getpower = 0,0
givepower = 0,0
SprPriority = -5
animtype = light
air.animtype = light
damage = 10
pausetime = 0,0
sparkno = 1
sparkxy = -40,0
hitsound = S172,8
guardsound = 6,0
ground.type = High
ground.slide = 20
ground.hit = 20
air.hittime = 20
hittime = 20
ground.velocity = -8,-2
air.velocity = -8,-2
kill =1
fall = 1

[State 1316, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =  11
ctrl = 1

[Statedef 1320]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 1320, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1320, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1320

[State 1320, SelfState]
type = SelfState
trigger1 = enemynear, name = "Abomination" && enemynear, stateno != 1310
value = 5100
ctrl = 0

[Statedef 1330]
type    = A
movetype= A
physics = N
velset = 0,3
poweradd = 0
sprpriority = 1

[State 1330, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 1330

[State 1330, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -10
Y = 40

[State 1330, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.3

[State 1330, LifeAdd]
type = LifeAdd
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = -40
kill = 0

[State 1330, SelfState]
type = changestate
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 1340
ctrl = 0

[Statedef 1340]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 0
sprpriority = 1

[State 1340, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 1340, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 1340
