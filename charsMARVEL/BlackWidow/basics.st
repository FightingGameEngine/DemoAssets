; States file for {character} -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  37: Freeze Bullet Counter
;  38: Blaze Bullet Counter
;  39: Electric Bullet Counter
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

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 170,0

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[state 175]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 175,0
Channel = 0

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

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)

;-----------------------
; Winpose #1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[state 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,2

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S180,0
Channel = 0

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 4
value = S180,5
channel = 0

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 2
trigger1 = time = 4
value = S180,6
Channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 172,6
Channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 54
value = 172,7
Channel = 0

[State 191, Explod]
type = Explod
trigger1 = time= 54
anim = 1002
ID = 1002
pos = 10,-76
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 0.5,0.5
sprpriority = 90
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 14001,0
Channel = 0

[State 191, Explod]
type = Explod
trigger1 = animelem = 7
anim = 8065
ID = 8065
pos = -10,-96
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 2.5,2.5
sprpriority = 99
ontop = 1

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver

;-----------------------
; Winpose #2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S180,1
Channel = 0

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 4
value = S180,3
Channel = 0


[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver

[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[state 183]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 183, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,2

[State 183, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S180,2
Channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 4
value = S180,4
Channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 2
trigger1 = time = 4
value = S180,7
Channel = 0

[State 183,1]
type = AssertSpecial
trigger1 = Time = [0,120]
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
value = 191 + ((Random * 4) / 1000)     ; change the 1 to however many intros you have

;-------------------------------------------------------------------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0
sprpriority = 4

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 190,3
Channel = 20

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 60
value = 190,4
Channel = 20

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 60
value = 190,1
channel = 1

[State 191, Explod]
type = Explod
triggerall = anim = 191
trigger1 = animelem = 13
anim = 196
ID = 196
scale = 1,1
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ontop = 1

[State 191, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim != 0
value = 0


[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

;-------------------------------------------------------------------------------

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 190,7
Channel = 20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 100
value = 172,10
Channel = 20

[State 191, Explod]
type = Explod
triggerall = anim = 192
trigger1 = animelem = 2
anim = 190
ID = 190
scale = .5,.75
pos = -5,-55
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ontop = 1

[State 191, Explod]
type = Explod
triggerall = anim = 192
trigger1 = animelem = 5
anim = 190
ID = 190
scale = .15,.15
pos = -5,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ontop = 1

[State 191, Explod]
type = Explod
triggerall = anim = 192
trigger1 = animelem = 2
anim = 193
ID = 193
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ontop = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim != 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

;-------------------------------------------------------------------------------

[Statedef 193]
type = S
ctrl = 0
anim = 194
velset = 0,0
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 194
trigger1 = animelem = 1
value = 190,0
Channel = 20

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 194
trigger1 = animelem = 3
value = 172,1
Channel = 20

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 194
trigger1 = animelem = 8
value = 190,5
Channel = 20

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim != 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

;-------------------------------------------------------------------------------
[Statedef 194]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 190,6
Channel = 20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 100
value = 172,10
Channel = 20

[State 194, Explod]
type = Explod
triggerall = anim = 197
trigger1 = animelem = 2
anim = 190
ID = 190
scale = .5,.75
pos = -5,-55
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ontop = 1

[State 194, Explod]
type = Explod
triggerall = anim = 197
trigger1 = animelem = 5
anim = 190
ID = 190
scale = .15,.15
pos = -5,-60
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ontop = 1

[State 194, Explod]
type = Explod
triggerall = anim = 197
trigger1 = animelem = 2
anim = 198
ID = 198
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ontop = 0

[State 194, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim != 0
value = 0

[State 194, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

;-----------------------------------------------------------------------------
;Taunt

[StateDef 195]
anim = 195
ctrl = 0
type = S
movetype = I
physics = S
velset = 0,0

[State 195, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,4

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S195,0
channel = 5

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 4
value = S195,1
channel = 5

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 2
trigger1 = time = 4
value = S195,2
channel = 5

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 3
trigger1 = time = 4
value = S195,3
channel = 5

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 4
trigger1 = time = 4
value = S195,4
channel = 5


[State 195, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
Juggle = 3
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
pausetime = 10,10
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-88
animtype = Light
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-3


[State 0, VarSet]
type = null;VarSet
triggerall = time > 2
trigger1 = command = "x"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
triggerall = time > 2
trigger1 = command = "x"
;trigger1 = Animelem = 3 && var(41)=1
value = 201
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0; && var(41)=0
value = 0
ctrl = 1

; Stand xtra Punch
[StateDef 201]
anim = 201
ctrl = 0
type = S
Juggle = 1
movetype = A
physics = S
velset = 0,0
poweradd = 40

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
pausetime = 10,10
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-88
animtype = Light
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-3

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
Juggle = 3
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 4

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 11,2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
air.cornerpush.veloff = -20
damage = 40
guardflag = MA
pausetime = 15,15
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-75
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
Juggle = 3
movetype = A
physics = S
velset = 0,0
poweradd = 50

[State 220, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 6

[State 220, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 6

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 11,3

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA
air.cornerpush.veloff = -20
damage = 50
guardflag = MA
pausetime = 10,10
hitsound = 5,3
priority = 4, Hit
hitflag = MAF
guardsound = 6,0
sparkno = 2
sparkxy = 0,-82
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

 [State 220, 1]
type = null;Explod
trigger1 = AnimElem = 4
anim = 222
ID = 222
pos = 12,-35
postype = p1
bindtime = 999
scale= .5,.5
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1



[State 220, VarSet]
type = null;VarSet
triggerall = time > 5
trigger1 = command = "z"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
triggerall = movehit
trigger1 = command = "z"
;trigger1 = AnimTime = 0 && var(41)=1
value = 221
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 ;&& var(41)=0
value = 0
ctrl = 1

; Stand Hard Punch Follower
[StateDef 221]
anim = 221
ctrl = 0
type = S
Juggle = 3
movetype = A
physics = S
velset = 0,0
poweradd = 40

[State 221,1 ]
type = Explod
trigger1 = AnimElem = 3
anim = 223
ID = 421
pos = 12,-60
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 221, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 5

[State 221, HitDef]
type = HitDef
trigger1 =time = 0
attr = S, NA
air.cornerpush.veloff = -20
damage = 40
guardflag = MA
pausetime = 10,10
hitsound = S2,2
priority = 4, Hit
hitflag = MAF
guardsound = 6,0
sparkno = 2
sparkxy = 0,-50
animtype = hard  ;light,medium,hard,back,up,diagup
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -5
air.velocity = -4,8
;fall = 1
;air.fall =1


[State 221, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
Juggle = 3
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
pausetime = 8,8
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = -10,-70
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
Juggle = 3
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 11,2

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
air.cornerpush.veloff = -20
damage = 45
guardflag = MA
pausetime = 9,9
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-85
animtype = Medium
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
Juggle = 3
movetype = A
physics = S
velset = 0,0
poweradd = 60

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 11,3

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
air.cornerpush.veloff = -20
damage = 40
guardflag = MA
pausetime = 8,8
priority = 4, Hit
hitflag = MAF
hitsound = 5,3
guardsound = 6,0
sparkno = 2
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -4,-4
guard.velocity = -4
air.velocity = -4,-8
;fall= 1
;air.fall= 1

[State 0, VarSet]
type = VarSet
trigger1 = command = "z"
v = 41
value = 1

[State 250, back to stance]
type = ChangeState
trigger1 = animelem =  4  && var(41)=1
value = 251
ctrl = 0

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 251]
anim = 451
ctrl = 0
type = S
Juggle = 3
movetype = A
physics = S
velset = 0,0
poweradd = 0

[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 2
v = 40
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 172,0

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 1003
ID = 1003
pos = 7,-93
postype = p1
bindtime = 999
removetime = -2
sprpriority = -5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 1001
projanim = 1001
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
velocity = 18,0
offset = 7,-93
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,6
air.velocity = -6,6
fall = 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
Juggle = 3
movetype = A
physics = C
velset = 0,0
poweradd = 30

[State 0, PosAdd]
type = Posadd
triggerall = time = 0
trigger1 = prevstateno = 1300
x = 50


[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 10
guardflag = MA
pausetime = 8,8
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-25
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -2
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
Juggle = 3
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 0, PosAdd]
type = Posadd
triggerall = time = 0
trigger1 = prevstateno = 1300
x = 50

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 40
guardflag = MA
pausetime = 9,9
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-35
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -10
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
Juggle = 3
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 0, PosAdd]
type = Posadd
triggerall = time = 0
trigger1 = prevstateno = 1300
x = 50

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 50
guardflag = L
pausetime = 12,12;L8,8
hitsound = 5,2
priority = 3, Hit
guardsound = 6,0
sparkno = 2
sparkxy = 0,-110
animtype = Up
ground.type = Low
ground.slidetime = 45
ground.hittime  = 45
ground.velocity = 0,-12.5
guard.velocity = -5
air.velocity = 0,-11.25
p2stateno = 5060
;p2getp1state = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
Juggle = 4
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 0, PosAdd]
type = Posadd
triggerall = time = 0
trigger1 = prevstateno = 1300
x = 50

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
guardflag = L
pausetime = 8,8
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-15
animtype = Light
ground.type = Low
ground.slidetime = 8
ground.hittime  = 17
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
Juggle = 4
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 0, PosAdd]
type = Posadd
triggerall = time = 0
trigger1 = prevstateno = 1300
x = 50

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-20
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,0
guard.velocity = -2
air.velocity = -6,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
Juggle = 3
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 0, PosAdd]
type = Posadd
triggerall = time = 0
trigger1 = prevstateno = 1300
x = 50

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 50
guardflag = L
pausetime = 10,10
priority = 4, Hit
hitflag = M
hitsound = 5,1
guardsound = 6,0
sparkno = 2
sparkxy = 0,-10
animtype = Heavy
ground.type = Trip
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1,-5
guard.velocity = -4
air.velocity = -1,-5


[State 0, VarSet]
type = VarSet
trigger1 = command = "z"
v = 41
value = 1

[State 250, back to stance]
type = ChangeState
trigger1 = animelem =  7  && var(41)=1
value = 451
ctrl = 0


[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[StateDef 451]
anim = 451
ctrl = 0
type = C
Juggle = 3
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 2
v = 40
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 172,0

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 1003
ID = 1003
pos = 43,-71
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 1001
projanim = 1001
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
velocity = 18,0
offset = 43,-71
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,2
air.velocity = -6,6
fall = 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
Juggle = 3
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 15
guardflag = MA
pausetime = 4,4
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,((vel y)-.2)
yaccel=.65

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
Juggle = 3
movetype = A
physics = A
poweradd = 65

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = MA
pausetime = 6,6
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,((vel y)-.2)
yaccel=.65

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
Juggle = 3
movetype = A
physics = A
poweradd = 96

[State 620, explod]; fixed by L.
type = Explod
trigger1 = AnimElem = 2
anim = 621
ID = 621
pos = 5,-21
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause=1

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 70
guardflag = MA
pausetime = 8,8
hitsound = S172,3
priority = 3, Hit
hitflag = MAF
guardsound = 6,0
sparkno = 2
sparkxy = 0,-40
animtype = Heavy
ground.type = High
air.velocity = -18,11
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -24
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -25
airguard.cornerpush.veloff = 0
airguard.ctrltime = 2
airguard.velocity = -10,1
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
air.hittime  = 30
air.fall = 1
fall.recover = 0
fall.envshake.time = 6
fall.envshake.ampl = -10
yaccel=.65

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
Juggle = 3
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 12
guardflag = MA
pausetime = 4,4
priority = 3, Hit
hitflag = MAF
hitsound = 5,2
guardsound = 6,0
sparkno = 0
sparkxy = 0,-45
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,((vel y)-.2)
yaccel=.65

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
Juggle = 3
type = A
movetype = A
physics = A
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = MA
pausetime = 6,6
priority = 3, Hit
hitflag = MAF
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-55
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,((vel y)-.2)
yaccel=.65

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
Juggle = 3
type = A
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = MA
pausetime = 8,8
priority = 3, Hit
hitflag = MAF
hitsound = 5,3
guardsound = 6,0
sparkno = 2
sparkxy = 0,-55
animtype = Heavy
ground.type = High
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.type = low
air.velocity = -18,11
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -24
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -25
airguard.cornerpush.veloff = 0
airguard.ctrltime = 2
airguard.velocity = -10,1
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
air.hittime  = 30
air.fall = 1
fall.recover = 0
fall.envshake.time = 6
fall.envshake.ampl = -10


[State 0, VarSet]
type = VarSet
trigger1 = command = "z"
v = 41
value = 1

[State 250, back to stance]
type = ChangeState
trigger1 = animelem =  5  && var(41)=1
value = 651
ctrl = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


[StateDef 651]
anim = 651
ctrl = 0
type = A
movetype = A
Juggle = 3
physics = A
poweradd = 10

[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 1
v = 40
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,0

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 1003
ID = 1003
pos = 52,-85
postype = p1
bindtime = 999
removetime = -2
sprpriority = -5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1001
projanim = 1001
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
velocity = 18,0
offset = 52,-85
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,8
air.velocity = -6,8
fall = 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1
;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


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


;---------------------------------------------------------------------------
; Toss
[Statedef 800]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 0

[State 800]
type = HitDef
trigger1 = hitcount < 1
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = ifelse(command = "holdfwd",1,-1)
p2facing = 1
p1stateno = 810       ;On success, changes to state 840
p2stateno = 820       ;If hit, p2 changes to state 850
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S800,1
id = 800

[State 800]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Toss
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 810, Turn]
type = null;Turn
trigger1 = time =0

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = -59,-67 ;0,-67

[State 810];Bind 2
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = -59,-68

[State 810];Bind 3
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = -58,-69

[State 810];Bind 4
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 51,-17

[State 810]
type = PlaySnd
trigger1 = AnimElem = 3
value = 800,0

[State 810]
type = VelSet
trigger1 = AnimElem = 3
y = -3

[State 810]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 810]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0


[State 810]
type = TargetState
trigger1 = AnimElemNo(0) = 4
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 821

[State 810]
type = ChangeState
trigger1 = AnimElemNo(0) = 4
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 811

[State 810]
type = ChangeState
trigger1 = !NumTarget(800)
value = 0+635*(StateType != A)
ctrl = 1



;---------------------------------------------------------------------------
; Toss

[Statedef 811]
type    = S
movetype= A
physics = N
anim = 811
poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 811];Bind 1
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 41,-7

[State 811];Bind 2
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 42,0

[State 811];Bind 3
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 42,0

[State 811];Bind 4
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 42,0

[state 811]
type = Explod
trigger1 = AnimElem = 1
anim = 7052
id = 7052
sprpriority = -4
ownpal = 1
pos = 42,0

[State 811]
type = EnvShake
trigger1 = AnimElem = 1
time = 12

[State 811]
type = TargetState
trigger1 = Time = 12
value = 829

[State 811]
type = ChangeState
trigger1 = Time = 12
value = 813

[State 811]
type = ChangeState
trigger1 = !NumTarget(800)
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Toss End

[Statedef 813]
type    = A
movetype= I
physics = A
juggle  = 0
;velset = -3,-7
ctrl = 0
sprpriority = 0

[State 813, Turn]
type = null;Turn
trigger1 = time =0

[State 813]
type = PlayerPush
trigger1 = Time < 20
value = 0

[State 811]
type = VelSet
trigger1 = Time = 0
x = -2
y = -7

[State 813]
type = ChangeAnim
trigger1 = Time = 0
value = 810
elem = 5

[State 813]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0


;---------------------------------------------------------------------------
;Thrown

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1

[State 820, LifeAdd]
type = LifeAdd
trigger1 = Time = 21
value = -90
absolute = 1

[State 820]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 820]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 820]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 820]
type = DestroySelf
trigger1 = ishelper



;---------------------------------------------------------------------------
;Thrown

[Statedef 821]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1

[State 821]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0



[State 821]
type = ChangeAnim2
trigger1 = Time = 0
value = 821

[State 821]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 821]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
;Thrown

[Statedef 823]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -2

[State 823]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0



[State 823]
type = ChangeAnim2
trigger1 = Time = 0
value = 803

[State 823]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 823]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
;Thrown

[Statedef 825]
type    = A
movetype= H
physics = N
velset = 0,9
poweradd = 60
sprpriority = 4

[State 825] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 825]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,0

[State 825] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
;Thrown

[Statedef 827]
type    = A
movetype= H
physics = N
velset = -11,-10
poweradd = 60

[State 827]
type = ChangeAnim2
Trigger1 = Time = 0
value = 803

[State 827] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 827]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,0

[State 827] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;Thrown

[Statedef 828]
type    = A
movetype= H
physics = N
velset = 0,17
poweradd = 60

[State 828]
type = ChangeAnim2
Trigger1 = Time = 0
value = 803

[State 828] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 828]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,0

[State 828] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 829 ;Hit ground

;---------------------------------------------------------------------------
;Thrown

[Statedef 829]
type    = A
movetype= H
physics = N
poweradd = 60

[State 829]
type = ChangeAnim2
trigger1 = Time = 0
value = 803

[State 829]
type = VelSet
trigger1 = Time = 0
x = -5
y = -7

[State 829] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 829]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;End of throw

;---------------------------------------------------------------------------

; Air Dash Grapple
[Statedef 880]
type    = A
physics = N
anim = 880
sprpriority = 0
velset = 0,0
ctrl = 1


[State 880, VarSet];
type = VarSet
trigger1 =!time 
v = 27    ;fv = 10
value = 1
ignorehitpause =1 
[State 880 grapple sound];Loganir: added a proper sound for it
type = PlaySnd
trigger1 = !Time
value = 7777,0



[State 880]
type = Playsnd
trigger1 = AnimElem = 18
value = 0,6

[State 880]
type = PlaySnd
trigger1 = AnimElem = 23
value = 0,2

[State 880]
type = PosAdd
trigger1 = AnimElem = 13
x = 17
y = 1

[State 880]
type = PosAdd
trigger1 = AnimElem = 14
x = 12
y = 2

[State 880]
type = PosAdd
trigger1 = AnimElem = 15
x = 15
y = 3

[State 880]
type = PosAdd
trigger1 = AnimElem = 16
x = 14
y = 4

[State 880]
type = PosAdd
trigger1 = AnimElem = 17
x = 15
y = 3

[State 880]
type = PosAdd
trigger1 = AnimElem = 18
x = 16
y = 2

[State 880]
type = PosAdd
trigger1 = AnimElem = 19
x = 19
y = 1

[State 880]
type = PosAdd
trigger1 = AnimElem = 20
x = 32
y = 0

[State 880]
type = PosAdd
trigger1 = AnimElem = 21
x = 23
y = -3

[State 880]
type = PosAdd
trigger1 = AnimElem = 22
x = 21
y = -5

[State 880]
type = PosAdd
trigger1 = AnimElem = 23
x = 20
y = -10

[State 880]
type = PosAdd
trigger1 = AnimElem = 24
x = 18
y = -10

[State 880]
type = PosAdd
trigger1 = AnimElem = 25
x = 24
y = 3

[State 880]
type = ChangeState
trigger1 = AnimElem = 25
value = 881
persistent = 0

;----------------------------------------------------------
[Statedef 881]
type    = A
movetype= A
physics = A
juggle  = 10
ctrl = 1
anim = 881
sprpriority = 2
velset = 4,-4


[State 881, ChangeState]
type = ChangeState
trigger1 = animelem= 8
value = 948
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
anim = 6300
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


;----------------------------[2002 UM MAX2 BG]----------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

;[State 40001, Tile #1-7]
;type = Explod
;triggerall = !numexplod(15600)
;trigger1 = !time
;anim = 15600
;ID = 15600
;pos = 0,0
;postype = left  ;p2,front,back,left,right
;removetime = 10
;pausemovetime = -1
;supermovetime = -1
;scale = 1.1,1.1
;sprpriority = -20
;ownpal = 1
;ignorehitpause = 1
;bindtime = -1
;persistent = 0

[State 40001, Tile #1-7]
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
scale = 1.1,1.1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root, stateno !=[3000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0
volume = 200

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
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

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1
