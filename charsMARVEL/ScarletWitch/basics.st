; States file for {character} -- Basics
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
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 171, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 1) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 181, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S180,1+random%4
channel = 0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 1) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0
sprpriority = 8

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,5

[State 191, Explod]
type = Explod
trigger1 = time = 0
anim = 199
ID = 199
pos = -10,-66
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = -6
ownpal = 1
removeongethit = 1

[State 181, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S180,10+random%3

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, ChangeAnim]
type = Changestate
trigger1 = animtime = 0
value = 0

;Taunt
[StateDef 195]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 195
sprpriority = 2

[State 195, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S180,5

[State 195, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = ifelse(var(30)=1,0,15)
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 30
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -15, -75
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -3
air.type = Low
air.hittime = 20
air.velocity = -3,-2
getpower = ifelse(var(30)=1,0,1.2)

[State 200, Reality Gem X Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality X"
id = 270
postype = P1
pos = 0,0
stateno = 270
ownpal = 1

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = ifelse(var(30)=1,0,35)
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-75
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.type = Low
air.hittime = 15
air.velocity = -3,-2
getpower = ifelse(var(30)=1,0,3.8)

[State 210, Reality Gem Y Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality Y"
id = 280
postype = P1
pos = -15,0
stateno = 280
ownpal = 1

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220
poweradd = ifelse(var(30)=1,0,55)
sprpriority = 2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 80,5
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = 2
;guard.sparkno = S6004
sparkxy = -10, -55; (enemynear,pos y)
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
getpower = ifelse(var(30)=1,0,5.5)

[State 220, Reality Gem Z Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality Z"
id = 290
postype = P1
pos = 48,-16
stateno = 290
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "220"
ID = 221
stateno = 221
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 221]
type = A
movetype = A
physics = N
anim = 221
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 65*facing
y = parent, Pos Y - 60

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 220

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = ifelse(var(30)=1,0,15)
sprpriority = 2

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -15, -10
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -2,-2
getpower = ifelse(var(30)=1,0,1.2)

[State 230, Reality Gem X Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality X"
id = 270
postype = P1
pos = 0,0
stateno = 275
ownpal = 1

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = ifelse(var(30)=1,0,40)
sprpriority = -10

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-75
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -2,-2
getpower = ifelse(var(30)=1,0,3.8)

[State 240, Reality Gem B Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality Y"
id = 280
postype = P1
pos = -15,-96
stateno = 285
ownpal = 1

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 250
poweradd = ifelse(var(30)=1,0,55)
sprpriority = -10
velset = 0,0

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -85
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -7,-2
air.type = Low
air.hittime = 5
air.velocity = -8,-3
envshake.time = 7
envshake.ampl = 4
fall= 1
air.fall = 1
getpower = ifelse(var(30)=1,0,5.5)

[State 250, Reality Gem C Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality C"
id = 290
postype = P1
pos = 48,-16
stateno = 295
ownpal = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Reality X

[Statedef 270]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 8999
sprpriority = -5

[State 270, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 0,0
time = -1

[State 270, Reality Gem X Helper 1]
type = Helper
trigger1 = Time = 0
name = "Reality X 1"
id = 271
postype = P1
pos = 38,-14
stateno = 271
ownpal = 1

[State 270, Reality Gem X Helper 2]
type = Helper
trigger1 = Time = 31
name = "Reality X 2"
id = 271
postype = P1
pos = 14,-27
stateno = 272
ownpal = 1

[State 270, Reality Gem X Helper 3]
type = Helper
trigger1 = Time = 63
name = "Reality X 3"
id = 271
postype = P1
pos = 26,-4
stateno = 273
ownpal = 1

[State DestroySelf]
type = DestroySelf
trigger1 = (Time >= 76) && (parent, NumProjID(270) = 0)

;---------------------------------------------------------------------------
; Reality X 1 (fireball)

[Statedef 271]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 8120
sprpriority = 3

[State 271, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 38,-14
time = -1

[State 271, Projectile]
type = Projectile
trigger1 = AnimTime = 0
projid = 270
projanim = 8121
projhitanim = 8122
projremovetime = 36
velocity = 1.4
accel = 0.28
projpriority = 1
offset = 0,0
attr = S, HP
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,8
sparkno = 3
sparkxy = 10,-48
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = -5,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = 120,-10,-250
palfx.sinadd = 50,40,0,12
palfx.color = 0
getpower = 0

[State 271, PlaySnd]
type = PlaySnd
trigger1 = Time = 4
value = 21,5

[State 271, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality X 2 (fireball)

[Statedef 272]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 8120
sprpriority = 3

[State 272, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 14,-27
time = -1

[State 272, Projectile]
type = Projectile
trigger1 = AnimTime = 0
projid = 270
projanim = 8121
projhitanim = 8122
projremovetime = 36
velocity = 1.4
accel = 0.28
projpriority = 1
offset = 0,0
attr = S, HP
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,8
sparkno = 3
sparkxy = 10,-48
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = -5,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = 120,-10,-250
palfx.sinadd = 50,40,0,12
palfx.color = 0
getpower = 0

[State 272, PlaySnd]
type = PlaySnd
trigger1 = Time = 4
value = 21,5

[State 272, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality X 3 (fireball)

[Statedef 273]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 8120
sprpriority = 3

[State 273, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 26,-4
time = -1

[State 273, Projectile]
type = Projectile
trigger1 = AnimTime = 0
projid = 270
projanim = 8121
projhitanim = 8122
projremovetime = 36
velocity = 1.4
accel = 0.28
projpriority = 1
offset = 0,0
attr = S, HP
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,8
sparkno = 3
sparkxy = 10,-48
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = -5,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = 120,-10,-250
palfx.sinadd = 50,40,0,12
palfx.color = 0
getpower = 0

[State 273, PlaySnd]
type = PlaySnd
trigger1 = Time = 4
value = 21,5

[State 273, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality A

[Statedef 275]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 8999
sprpriority = -5

[State 275, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 0,0
time = -1

[State 275, Reality Gem X Helper 1]
type = Helper
trigger1 = Time = 0
name = "Reality X 1"
id = 271
postype = P1
pos = 38,31
stateno = 276
ownpal = 1

[State 275, Reality Gem X Helper 2]
type = Helper
trigger1 = Time = 31
name = "Reality X 2"
id = 271
postype = P1
pos = 14,18
stateno = 277
ownpal = 1

[State 275, Reality Gem X Helper 3]
type = Helper
trigger1 = Time = 63
name = "Reality X 3"
id = 271
postype = P1
pos = 26,41
stateno = 278
ownpal = 1

[State DestroySelf]
type = DestroySelf
trigger1 = (Time >= 76) && (parent, NumProjID(270) = 0)

;---------------------------------------------------------------------------
; Reality A 1 (fireball)

[Statedef 276]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 8120
sprpriority = 3

[State 276, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 38,31
time = -1

[State 276, Projectile]
type = Projectile
trigger1 = AnimTime = 0
projid = 270
projanim = 8121
projhitanim = 8122
projremovetime = 36
velocity = 1.4
accel = 0.28
projpriority = 1
offset = 0,0
attr = S, HP
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,8
sparkno = 3
sparkxy = 10,-48
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = -5,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = 120,-10,-250
palfx.sinadd = 50,40,0,12
palfx.color = 0
getpower = 0

[State 276, PlaySnd]
type = PlaySnd
trigger1 = Time = 4
value = 21,5

[State 276, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality A 2 (fireball)

[Statedef 277]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 8120
sprpriority = 3

[State 277, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 14,18
time = -1

[State 277, Projectile]
type = Projectile
trigger1 = AnimTime = 0
projid = 270
projanim = 8121
projhitanim = 8122
projremovetime = 36
velocity = 1.4
accel = 0.28
projpriority = 1
offset = 0,0
attr = S, HP
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,8
sparkno = 3
sparkxy = 10,-48
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = -5,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = 120,-10,-250
palfx.sinadd = 50,40,0,12
palfx.color = 0
getpower = 0

[State 277, PlaySnd]
type = PlaySnd
trigger1 = Time = 4
value = 21,5

[State 277, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality A 3 (fireball)

[Statedef 278]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 8120
sprpriority = 3

[State 278, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 26,41
time = -1

[State 278, Projectile]
type = Projectile
trigger1 = AnimTime = 0
projid = 270
projanim = 8121
projhitanim = 8122
projremovetime = 36
velocity = 1.4
accel = 0.28
projpriority = 1
offset = 0,0
attr = S, HP
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,8
sparkno = 3
sparkxy = 10,-48
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = -5,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = 120,-10,-250
palfx.sinadd = 50,40,0,12
palfx.color = 0
getpower = 0

[State 278, PlaySnd]
type = PlaySnd
trigger1 = Time = 4
value = 21,5

[State 278, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality Gem Y (ice top)

[Statedef 280]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 8125
sprpriority = 5

[State 280, Falling Ice Helper]
type = Helper
trigger1 = Time = 0
name = "Reality Y"
id = 280
postype = P1
pos = 0,0
stateno = 281
ownpal = 1

[State 280, Repeat Helper]
type = Helper
trigger1 = (Time = 8) && (parent, NumHelper(280) <= 8)
name = "Reality Y"
id = 280
postype = P1
pos = 46,0
stateno = 280
ownpal = 1

[State 280, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = 21,6

[State 280, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality Gem Y (falling ice)

[Statedef 281]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 8126
sprpriority = 5

[State 281, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(2) >= 1
y = 4

[State 281, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,1
sparkno = 3
sparkxy = -5,-70
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-6
guard.velocity = -4
air.type = High
air.velocity = -2,-5
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
yaccel = .49
palfx.time = 20
palfx.add = -255,-20,140
palfx.color = 0
getpower = 0

[State 281, Ice Explod 1]
type = Explod
trigger1 = (MoveHit = 1) && (NumExplod(8175) < 3)
anim = 8175
id = 8175
postype = P2
pos = 4,10
random = 30,10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State 281, Ice Explod 2]
type = Explod
trigger1 = (MoveHit = 1) && (NumExplod(8175) < 3)
anim = 8176
id = 8175
postype = P2
pos = 4,-20
random = 30,10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State 281, Ice Explod 3]
type = Explod
trigger1 = (MoveHit = 1) && (NumExplod(8175) < 3)
anim = 8177
id = 8175
postype = P2
pos = 4,40
random = 30,10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State 281, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 281, ChangeState]
type = ChangeState
trigger1 = (Pos Y > 56) || (Time >= 49) || (MoveContact = 1)
value = 282

;---------------------------------------------------------------------------
; Reality Gem Y (ice crumble)

[Statedef 282]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 8127
sprpriority = 5

[State 282, PosAdd 1]
type = PosAdd
trigger1 = (Time = 0) && (PrevStateNo = 286)
y = 147

[State 282, PosAdd 2]
type = PosAdd
trigger1 = (Time >= 1) && (PrevStateNo = 286)
y = -1

[State 282, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality Gem B (ice top)

[Statedef 285]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 8128
sprpriority = 5

[State 285, Rising Ice Helper]
type = Helper
trigger1 = Time = 0
name = "Reality Y"
id = 280
postype = P1
pos = 0,0
stateno = 286
ownpal = 1

[State 285, Repeat Helper]
type = Helper
trigger1 = (Time = 8) && (parent, NumHelper(280) <= 8)
name = "Reality Y"
id = 280
postype = P1
pos = 46,0
stateno = 285
ownpal = 1

[State 285, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = 21,6

[State 285, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality Gem B (rising ice)

[Statedef 286]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 8129
sprpriority = 5

[State 286, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(2) >= 1
y = -4

[State 286, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage = 30,5
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,1
sparkno = 3
sparkxy = -5,30
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-6
guard.velocity = -3
air.type = High
air.velocity = -2,-5
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
yaccel = .49
palfx.time = 20
palfx.add = -255,-20,140
palfx.color = 0
getpower = 0

[State 286, Ice Explod 1]
type = Explod
trigger1 = (MoveHit = 1) && (NumExplod(8175) < 3)
anim = 8175
id = 8175
postype = P2
pos = 4,10
random = 30,10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State 286, Ice Explod 2]
type = Explod
trigger1 = (MoveHit = 1) && (NumExplod(8175) < 3)
anim = 8176
id = 8175
postype = P2
pos = 4,-20
random = 30,10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State 286, Ice Explod 3]
type = Explod
trigger1 = (MoveHit = 1) && (NumExplod(8175) < 3)
anim = 8177
id = 8175
postype = P2
pos = 4,40
random = 30,10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State 286, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 286, ChangeState]
type = ChangeState
trigger1 = (MoveContact = 1) || (Time >= 49)
value = 282

;---------------------------------------------------------------------------
; Reality Z

[Statedef 290]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 8130
sprpriority = 5

[State 290, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 48,-16
time = -1

[State 290, Reality Gem Z Helper 1]
type = Helper
trigger1 = AnimTime = 0
name = "Reality Z"
id = 290
postype = P1
pos = 0,0
stateno = 291
ownpal = 1

[State 290, Reality Gem Z Helper 2]
type = Helper
trigger1 = AnimTime = 0
name = "Reality Z"
id = 290
postype = P1
pos = 0,0
stateno = 292
ownpal = 1

[State 290, Reality Gem Z Helper 3]
type = Helper
trigger1 = AnimTime = 0
name = "Reality Z"
id = 290
postype = P1
pos = 0,0
stateno = 293
ownpal = 1

[State 290, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Reality Z (fireball 1)

[Statedef 291]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 8131
sprpriority = 5

[State 291, VelAdd Initial]
type = VelAdd
trigger1 = (Time <= 34) && (Vel X <= 4)
x = 0.2

[State 291, VelAdd Y 1]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist Y <= 0) && (Vel Y >= -4)
y = -0.4

[State 291, VelAdd Y 2]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist Y >= 1) && (Vel Y <= 4)
y = 0.4

[State 291, VelAdd X 1]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist X <= -32) && (Vel X >= -4)
x = -0.4

[State 291, VelAdd X 2]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist X >= -31) && (Vel X <= 4)
x = 0.4

[State 291, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage = 50,10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = 3
sparkxy = 10,-48
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,0
guard.velocity = -7
air.type = High
air.velocity = -8,-1
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = -255,-20,140
palfx.sinadd = 0,80,100,12
palfx.color = 0
getpower = 0

[State 291, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 291, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 21,7

[State 291, Electricity Explod 1]
type = Explod
trigger1 = (MoveHit = 1) && (parent, NumExplod(8180) < 2)
anim = 8180
id = 8180
postype = P2
pos = 0,-10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State 291, Electricity Explod 2]
type = Explod
trigger1 = (MoveHit = 1) && (parent, NumExplod(8180) < 2)
anim = 8181
id = 8180
postype = P2
pos = 0,-30
facing = -1
ownpal = 1
bindtime = -1
sprpriority = -1

[State 291, DestroySelf]
type = DestroySelf
trigger1 = (MoveContact = 1) || (FrontEdgeBodyDist <= -80) || (BackEdgeBodyDist <= -80)

;---------------------------------------------------------------------------
; Reality Z (fireball 2)

[Statedef 292]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 8131
sprpriority = 5

[State 292, VelAdd Initial]
type = VelAdd
trigger1 = (Time <= 34) && (Vel X <= 4) && (Vel Y >= -4)
x = 0.3
y = -0.5

[State 292, VelAdd Y 1]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist Y <= 0) && (Vel Y >= -4)
y = -0.4

[State 292, VelAdd Y 2]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist Y >= 1) && (Vel Y <= 4)
y = 0.4

[State 292, VelAdd X 1]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist X <= -32) && (Vel X >= -4)
x = -0.4

[State 292, VelAdd X 2]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist X >= -31) && (Vel X <= 4)
x = 0.4

[State 292, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage = 50,10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = 3
sparkxy = 10,-48
hitsound = S20,5
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,0
guard.velocity = -7
air.type = High
air.velocity = -8,-1
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = -255,-20,140
palfx.sinadd = 0,80,100,12
palfx.color = 0
getpower = 0

[State 292, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 292, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 21,7

[State 292, Electricity Explod 1]
type = Explod
trigger1 = (MoveHit = 1) && (parent, NumExplod(8181) < 2)
anim = 8183
id = 8181
postype = P2
pos = -10,-10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = -1

[State 292, DestroySelf]
type = DestroySelf
trigger1 = (MoveContact = 1) || (FrontEdgeBodyDist <= -80) || (BackEdgeBodyDist <= -80)

;---------------------------------------------------------------------------
; Reality Z (fireball 3)

[Statedef 293]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 8131
sprpriority = 5

[State 293, VelAdd Initial]
type = VelAdd
trigger1 = (Time <= 34) && (Vel X <= 4) && (Vel Y <= 4)
x = 0.3
y = 0.5

[State 293, VelAdd Y 1]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist Y <= 0) && (Vel Y >= -4)
y = -0.4

[State 293, VelAdd Y 2]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist Y >= 1) && (Vel Y <= 4)
y = 0.4

[State 293, VelAdd X 1]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist X <= -32) && (Vel X >= -4)
x = -0.4

[State 293, VelAdd X 2]
type = VelAdd
triggerall = Time >= 35
trigger1 = (P2BodyDist X >= -31) && (Vel X <= 4)
x = 0.4

[State 292, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage = 50,10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = 3
guard.sparkno = S8021
sparkxy = 10,-48
hitsound = S20,5
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,0
guard.velocity = -7
air.type = High
air.velocity = -8,-1
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = -255,-20,140
palfx.sinadd = 0,80,100,12
palfx.color = 0
getpower = 0

[State 293, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 293, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 21,7

[State 293, Electricity Explod 3]
type = Explod
trigger1 = (MoveHit = 1) && (parent, NumExplod(8181) < 2)
anim = 8182
id = 8181
postype = P2
pos = -16,26
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State 293, DestroySelf]
type = DestroySelf
trigger1 = (MoveContact = 1) || (FrontEdgeBodyDist <= -80) || (BackEdgeBodyDist <= -80)

;---------------------------------------------------------------------------
; Reality C

[Statedef 295]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
anim = 8132
sprpriority = 5

[State 295, BindToParent]
type = BindToParent
trigger1 = 1
facing = 1
pos = 48,-16
time = -1

[State 295, Projectile 1]
type = Projectile
trigger1 = Time = 16
projid = 295
projanim = 8131
projhitanim = 8131
velocity = 0.5
accel = 0.5
projpriority = 1
projheightbound = -250, 100
offset = 0,0
attr = S, HP
damage = 40,10
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,5
sparkno = S8016
guard.sparkno = S8021
sparkxy = 10,-48
hitsound = S20,5
guardsound = S20,4
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,0
guard.velocity = -7
air.type = High
air.velocity = -8,-1
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = -255,-20,140
palfx.sinadd = 0,80,100,12
palfx.color = 0
getpower = 0

[State 295, Projectile 2]
type = Projectile
trigger1 = Time = 16
projid = 295
projanim = 8131
projhitanim = 8131
velocity = 0.5,-0.5
accel = 0.3,-0.3
projpriority = 1
projheightbound = -250, 100
offset = 0,0
attr = S, HP
damage = 40,10
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,5
sparkno = S8016
guard.sparkno = S8021
sparkxy = 10,-48
hitsound = S20,5
guardsound = S20,4
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,0
guard.velocity = -7
air.type = High
air.velocity = -8,-1
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = -255,-20,140
palfx.sinadd = 0,80,100,12
palfx.color = 0
getpower = 0

[State 295, Projectile 3]
type = Projectile
trigger1 = Time = 16
projid = 295
projanim = 8131
projhitanim = 8131
velocity = 0,-0.5
accel = 0,-0.5
projpriority = 1
projheightbound = -250, 100
offset = 0,0
attr = S, HP
damage = 40,10
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,5
sparkno = S8016
guard.sparkno = S8021
sparkxy = 10,-48
hitsound = S20,5
guardsound = S20,4
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,0
guard.velocity = -7
air.type = High
air.velocity = -8,-1
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = -255,-20,140
palfx.sinadd = 0,80,100,12
palfx.color = 0
getpower = 0

[State 295, Projectile 4]
type = Projectile
trigger1 = Time = 16
projid = 295
projanim = 8131
projhitanim = 8131
velocity = 0.5,0.5
accel = 0.3,0.3
projpriority = 1
projheightbound = -250, 100
offset = 0,0
attr = S, HP
damage = 40,10
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,5
sparkno = S8016
guard.sparkno = S8021
sparkxy = 10,-48
hitsound = S20,5
guardsound = S20,4
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,0
guard.velocity = -7
air.type = High
air.velocity = -8,-1
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = -255,-20,140
palfx.sinadd = 0,80,100,12
palfx.color = 0
getpower = 0

[State 295, Projectile 5]
type = Projectile
trigger1 = Time = 16
projid = 295
projanim = 8131
projhitanim = 8131
velocity = 0,0.5
accel = 0,0.5
projpriority = 1
projheightbound = -250, 100
offset = 0,0
attr = S, HP
damage = 40,10
animtype = Light
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 0,5
sparkno = S8016
guard.sparkno = S8021
sparkxy = 10,-48
hitsound = S20,5
guardsound = S20,4
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,0
guard.velocity = -7
air.type = High
air.velocity = -8,-1
airguard.velocity = -4,-1
ground.cornerpush.veloff = 0
palfx.time = 12
palfx.add = -255,-20,140
palfx.sinadd = 0,80,100,12
palfx.color = 0
getpower = 0

[State 295, PlaySnd 1]
type = PlaySnd
trigger1 = Time = 16
value = 21,7

[State 295, DestroySelf]
type = DestroySelf
trigger1 = (Time >= 20) && (parent, NumProjID(295) = 0)

;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = ifelse(var(30)=1,0,15)
sprpriority = 2

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
getpower = ifelse(var(30)=1,0,1.2)

[State 400, Reality Gem X Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality X"
id = 270
postype = P1
pos = 0,0
stateno = 270
ownpal = 1

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = ifelse(var(30)=1,0,35)
sprpriority = 2

[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 45
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
getpower = ifelse(var(30)=1,0,3.8)

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, Reality Gem Y Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality Y"
id = 280
postype = P1
pos = -15,0
stateno = 280
ownpal = 1

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 420
poweradd = ifelse(var(30)=1,0,55)
sprpriority = 6

[State 420, swoosh]
type = PlaySnd
trigger1 = animelem = 5
value = 0,2

[State 420, HitDef]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage = 45
priority = 3, hit
guardflag = L
pausetime = 12,12;
sparkno = 2
sparkxy = -5, -90
hitsound = 5,2
guardsound = 6,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-12
;p2stateno = 5060
;p2getp1state = 0
getpower = ifelse(var(30)=1,0,5.5)

[State 420, Reality Gem Z Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality Z"
id = 290
postype = P1
pos = 48,-16
stateno = 290
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 =  animelem = 3
anim = 421
ID = 421
pos = -10,-70
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 10
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 =  animelem = 3
anim = 422
ID = 422
pos = 20,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 5
removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 430
poweradd = ifelse(var(30)=1,0,15)
sprpriority = 2

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 20
animtype = Light
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -10, -5
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
air.type = Low
air.hittime = 3
air.velocity = -1,1
getpower = ifelse(var(30)=1,0,1.2)

[State 430, Reality Gem X Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality X"
id = 270
postype = P1
pos = 0,0
stateno = 275
ownpal = 1

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 440
poweradd = ifelse(var(30)=1,0,35)
sprpriority = 2

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 35
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-20
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-2
air.type = Low
air.hittime = 15
air.velocity = -1,-2.5
getpower = ifelse(var(30)=1,0,3.8)

[State 440, Reality Gem B Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality Y"
id = 280
postype = P1
pos = -15,-96
stateno = 285
ownpal = 1

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 450
poweradd = ifelse(var(30)=1,0,55)
sprpriority = 2

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 60
animtype = HARD
guardflag = L
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = trip
ground.velocity = -5, -5
guard.slidetime = 11
guard.hittime = 24
guard.velocity = -10
fall = 1
fall.recover = 0
air.type = Low
air.hittime = 5
air.velocity = -4,3
envshake.time = 7
envshake.ampl = 4
getpower = ifelse(var(30)=1,0,5.5)

[State 450, Reality Gem C Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality C"
id = 290
postype = P1
pos = 48,-16
stateno = 295
ownpal = 1

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = ifelse(var(30)=1,0,15)
sprpriority = 2

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 0
sparkxy = -10, -75
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -6
air.fall = 0
air.velocity = 0, -8.5
getpower = ifelse(var(30)=1,0,1.2)

[State 600, Reality Gem X Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality X"
id = 270
postype = P1
pos = 0,0
stateno = 270
ownpal = 1

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = ifelse(var(30)=1,0,35)
sprpriority = 2

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 35
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2,8
sparkno = 1
sparkxy = -10,-60
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -3.5
getpower = ifelse(var(30)=1,0,3.8)

[State 610, Reality Gem Y Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality Y"
id = 280
postype = P1
pos = -15,0
stateno = 280
ownpal = 1

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
poweradd = ifelse(var(30)=1,0,55)
sprpriority = 2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 630, 4]
type = HitDef
trigger1 = time = 0
attr = A, NA
hitflag = MAF
guardflag = HA
pausetime = 10,10
damage = 85
animtype = hard
sparkno = 2
priority= 4,hit
sparkxy = -5, -64
hitsound = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -8.5
air.velocity = -9, 9
guard.slidetime = 6
guard.hittime = 6
guard.velocity = -5.4
air.fall = 1
fall = 1
fall.recover = 0
envshake.time = 7
envshake.ampl = 4
getpower = ifelse(var(30)=1,0,5.5)

[State 620, Reality Gem Z Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality Z"
id = 290
postype = P1
pos = 48,-16
stateno = 290
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "620"
ID = 621
stateno = 621
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5


[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1



[Statedef 621]
type = A
movetype = A
physics = N
anim = 221
velset = 0,0
sprpriority = 99

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 35*facing
y = parent, Pos Y - 90

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10



[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 620




;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
poweradd = ifelse(var(30)=1,0,15)
sprpriority = 2

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9;8,8
sparkno = 0
sparkxy = -10, -73
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = 0, -5.5
air.hittime = 25
getpower = ifelse(var(30)=1,0,1.2)

[State 630, Reality Gem X Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality X"
id = 270
postype = P1
pos = 0,0
stateno = 275
ownpal = 1

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
poweradd = ifelse(var(30)=1,0,35)
sprpriority = 2

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 45
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12;8,8
sparkno = 1
sparkxy = -10,-53
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -3.5
air.hittime = 25
getpower = ifelse(var(30)=1,0,3.8)

[State 640, Reality Gem B Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality Y"
id = 280
postype = P1
pos = -15,-96
stateno = 285
ownpal = 1

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd = ifelse(var(30)=1,0,55)
sprpriority = 2

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 85
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
envshake.time = 7
envshake.ampl = 4
fall = 1
getpower = ifelse(var(30)=1,0,5.5)

[State 650, Reality Gem C Helper]
type = Helper
triggerall = Var(30) = 1
trigger1 = (Time = 1) && (NumHelper(270) = 0) && (NumHelper(280) = 0) && (NumHelper(290) = 0)
name = "Reality C"
id = 290
postype = P1
pos = 48,-16
stateno = 295
ownpal = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


 ;Throw 1
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 2
value = 0,0

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse(command="holdfwd",1,-1)
p2facing = 1;ifelse(command="holdfwd",1,-1)
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 2

[State 810, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = 1
id = -1
pos = 30,-30

 [State 0, Explod]
type = Explod
triggerall = numexplod(811) =0
trigger1 = time = 0
anim = 815
ID = 811
pos = 0,-90
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 80
scale = 1,1
sprpriority = 10
removeongethit = 1

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 2
value = -7

[State 810, TargetState]
type = TargetState
trigger1 = time = 80
value = 830



[State 801, ChangeState]
type = ChangeState
trigger1 = time = 80
value = 812
ctrl = 0

[Statedef 812]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 811
sprpriority = 0

[State 812, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, Turn]
type = null;Turn
trigger1 = time = 0

[State 816, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(4)=0
value = S8,2

[State 801, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,-1.1
sprpriority = 0

[State 0, PosAdd]
type = PosAdd
trigger1 =  time = 0
y = -50

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820


[Statedef 830]
type    = A
movetype= H
physics = N
velset = -17,-3
poweradd = 50

[State 0, Turn]
type = null;Turn
trigger1 = time = 0


[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 830

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 45

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

;throw cabeçada

 ;Throw 1
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse(Command = "holdfwd",1,-1)
p2facing = 1
p1stateno = 860
p2stateno = 870
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80


[State 800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 860]
type    = S
movetype= A
physics = N
anim = 860
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,1

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,-4
air.type = Low
air.hittime = 5
air.velocity = -4,-2
fall= 1
air.fall = 1



[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 870]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 870


[State 801, ChangeState]
type = selfState
trigger1 = Time >= 100
value = 0
ctrl = 1


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50

[StateDef 949]
type = A
movetype = I
physics = A
ctrl = 1
sprpriority = 0

[State 0, Explod]
type = Explod
triggerall = numexplod(970) =0
trigger1 = time = 0
anim = 950
ID = 970
pos = -50,-100
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 10
removeongethit = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(971) =0
trigger1 = time = 0
anim = 950
ID = 971
pos = 30,-68
facing= -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -10
removeongethit = 1


[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = -0.5

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
triggerall = anim != 949
trigger1 = (Time = 0)
value = 949

[State 0, VelSet]
type = VelSet
trigger1 = command != "holdfwd" && command != "holdback"
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = command = "holdback"
x = -3

[State 0, VelSet]
type = VelSet
trigger1 = command = "holdfwd"
x = 3

[State 0, ChangeState]
type = ChangeState
trigger1 =command != "holdup"
value = 948


;======================================================
;Avengers Hyper Helpers================================
;======================================================
[Statedef 40001]
anim = 9999

[State 40001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

[State 40001, Background]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
trigger1 = root, stateno !=[3000,4999]
value = stateno+1

[Statedef 40002]
anim = 9999

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 1500,1
volume = 200

[State 40002, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40002, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--AvX Portrait-----
[Statedef 40003]
anim = 9999

[State 40003, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40003, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40003, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40003, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1


;------------------------
[Statedef 832]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 10,0
ctrl = 0
anim = 888
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,2


[State 832, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 832, 2]
type = VelSet
trigger1 = time = 15
x = 0

[State 832, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 832, 4]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 832, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 832, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 831, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
; Medium Backward Recovery Roll

[Statedef 855]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = -10,0
ctrl = 0
anim = 889
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,2


[State 855, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 855, 2]
type = VelSet
trigger1 = time = 15
x = 0

[State 855, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 855, 4]
type = MakeDust
trigger1 = Time >= 0
pos = 16,0
spacing = 6

[State 855, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 855, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 831, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
;Guard Push
[Statedef 6300]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 1111
sprpriority = 2

[State 6300, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6300, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6300, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6300, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6300, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6300, a6]
type = Explod
trigger1 = Time = 0
anim = F7020
postype = p1
pos = 33,-65
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7
scale = .5,.5

[State 6300, a7]
type = PlaySnd
trigger1 = Time = 0
value = 4,0
volume = 255
channel = 1

[State 6300, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Guard Push (Helper)
[Statedef 6350]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 6350
sprpriority = -4

[State 6350, a1]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 6350, a2]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 6350, a3]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 6350, a4]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 6350, a5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6350, a6]
type = DestroySelf
trigger1 = Time >= 18
