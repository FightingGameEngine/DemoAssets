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

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 170,0

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
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

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 175,0

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
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

[State 0, ChangeState]
type = ChangeState
trigger1 =  numexplod(3301)>0
value = 189
ctrl = 0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 2) / 1000)

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
range = 0,1

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 10
value = S180,0
volume = 255
channel = 5

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 1
value = S180,1
volume = 255
channel = 5

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,180]
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

[State 182, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 1
value = S180,2
volume = 0
volume = 255
channel = 5

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 24
value = S180,3
volume = 255
channel = 5

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

;-----------------------
; Winpose # Alternate
[Statedef 189]
type = S
ctrl = 0
anim = 189
velset = 0,0

[state 189]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 189,0]
type = PlaySnd
trigger1 = Time = 10
value = 3200,0

[State 189,1]
type = AssertSpecial
trigger1 = Time = [0,110]
flag = RoundNotOver

;-----------------------
;
[Statedef 19171]
type = S
movetype = I
physics = N
ctrl = 0
anim = 0
velset = 0,0
spriority = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 100
flag = Intro
;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, 2]
type = ChangeState
triggerall = time = 0
trigger1 = enemynear, name = "BastionBoss"
trigger2 = enemynear, name = "helibonus"
value = 19171

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191+ ((Random * 3) / 1000)     ; change the 1 to however many intros you have

;-------------------------------------------------------------------------------
; Intro #1

[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 191, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 14
value = S190,0
volume = 255
channel = 5

[State 191, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 14
value = S190,1
volume = 255
channel = 5

[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

;-------------------------------------------------------------------------------
; Intro #2

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, EnvShake]
type = EnvShake
trigger1 = AnimElem = 36
time = 78
ampl = 3
freq = 108

[State 192, PlaySnd]
type = PlaySnd
trigger1 = animelem = 20
value = S3100,0
volume = 255
channel = 5

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,170]
flag = Intro

;-------------------------------------------------------------------------------
; Intro #3

[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 0,1

[State 193, PlaySnd]
type = PlaySnd
triggerall = Var(6) = 0
trigger1 = time = 1
value = S194,0
volume = 255
channel = 3

[State 193, PlaySnd]
type = PlaySnd
triggerall = Var(6) = 1
trigger1 = time = 1
value = S194,1
volume = 255
channel = 3

[State 193, StopSnd]
type = StopSnd
trigger1 = time = 400
channel = 3

[State 193, EnvShake]
type = EnvShake
trigger1 = AnimElem = 16
time = 78
ampl = 3
freq = 108

[State 193, 1]
type = Playsnd
trigger1 = AnimElem = 16
value = 30,0
channel = 4

[State 193, Explod]
type = Explod
trigger1 = animelem = 1
anim = 194
ID = 194
pos = 0,0
postype = p1
removetime = 337
scale = 1,1
sprpriority = 10
ontop = -10

[State 193, Explod]
type = Explod
trigger1 = animelem = 16
anim = 1150
ID = 193
pos = 0,10
postype = p1
removetime = 120
scale = 1,1
sprpriority = 10
ontop = -10

[State 193, Explod]
type = Explod
trigger1 = animelem = 16
anim = 1202
ID = 193
pos = -50,10
postype = p1
facing = 1
removetime = 21
scale = 1,1
sprpriority = 10
ontop = 1

[State 193, Explod]
type = Explod
trigger1 = animelem = 16
anim = 1202
ID = 193
pos = 50,10
postype = p1
facing = -1
removetime = 21
scale = 1,1
sprpriority = -10
ontop = 1

[State 193, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 370
value = S190,2
volume = 255
channel = 5

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 365
value = S190,3
volume = 255
channel = 5

[State 193, 2]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = Intro

;---------------------------------------------------------------------------
; Taunt
[StateDef 195]
type    = S
movetype= H
physics = S
juggle  = 4
ctrl = 0
anim = 195
sprpriority = 2

[State 195, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S195,0
volume = 255
channel = 0

[State 195, 1]
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
juggle  = 4
ctrl = 0
anim = 200
poweradd = 10
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 12
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -70
hitsound = S172,10
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 9
ground.velocity = -4
air.type = Low
air.hittime = 20
air.velocity = -6,0

[State 220, back to stance]
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
juggle  = 4
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 35
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15,15
sparkno = 1
sparkxy = -10,-70
;guard.sparkno = 8430
hitsound = S172,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
air.type = Low
air.hittime = 15
air.velocity = -6,-5


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
juggle  = 4
ctrl = 0
anim = 220
poweradd = 30
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 40
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -90
;guard.sparkno = 8430
hitsound = S172,8
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3
air.type = Low
air.hittime = 18
air.velocity = -6,-7
fall = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 230
poweradd = 15
sprpriority = 2

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 1
sparkxy = -10, -10
;guard.sparkno = 8430
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

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
juggle  = 4
ctrl = 0
anim = 240
poweradd = 35
sprpriority = 2

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-60
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -5,0


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
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 75
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10, -70
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,0
air.type = Low
air.hittime = 5
air.velocity = -7,0
fall= 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 400
poweradd = 15
sprpriority = 2

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = S172,10
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0


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
juggle  = 4
ctrl = 0
anim = 410
poweradd = 35
sprpriority = 2

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 35
animtype = Medium
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-53
;guard.sparkno = 8430
hitsound = S172,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3,0
air.type = Low
air.hittime = 5
air.velocity = -5,0


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
juggle  = 4
ctrl = 0
anim = 420
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
sparkno = 2
priority = 4, Hit
sparkxy = -5, -38
hitsound = S172,8
guardsound = 6,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-13

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
juggle  = 4
ctrl = 0
anim = 430
poweradd = 15
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
sparkxy = -10, -20
;guard.sparkno = 8430
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0


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
juggle  = 4
ctrl = 0
anim = 440
poweradd = 35
sprpriority = 2

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 40
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-10
;guard.sparkno = 8430
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

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
juggle  = 4
ctrl = 0
anim = 450
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 10
y = 0

[State 450, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 80
animtype = HARD
hitflag = M
guardflag = L
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10, -70
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = trip
ground.velocity = -2.5, -4
guard.slidetime = 11
guard.hittime = 24
guard.velocity = -10
fall = 1
fall.recover = 0
air.type = Low
air.hittime = 5
air.velocity = -4,3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 51201
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 600
poweradd = 15
sprpriority = 2

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -93
;guard.sparkno = 8430
hitsound = S172,10
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -6
air.fall = 0
air.velocity = 0, -10.5

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
juggle  = 4
ctrl = 0
anim = 610
poweradd = 35
sprpriority = 2

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
trigger1 = AnimElem = 2
attr = A,NA
damage = 40
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -10,-78
;guard.sparkno = 8430
hitsound = S172,9
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -7.5

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
juggle  = 4
ctrl = 0
anim = 620
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0


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
trigger1 = time = 1
attr = A,NA
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = S172,8
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.hittime = 25
air.fall = 1
fall= 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1



;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 630
poweradd = 15
sprpriority = 2

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
trigger1 = AnimElem = 3
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -75
;guard.sparkno = 8430
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = 0, -10.5
air.hittime = 25

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
juggle  = 4
ctrl = 0
anim = 640
poweradd = 35
sprpriority = 2

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
trigger1 = AnimElem = 2
attr = A,NA
damage = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -10,-75
;guard.sparkno = 8430
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -7.5
air.hittime = 25

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
juggle  = 4
ctrl = 0
anim = 650
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA
damage = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10, -33
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
fall = 1

[State 0, VelAdd]
type = VelAdd
triggerall = command = "holddown"
trigger1 = animelem = 3
x = 0
y = 15

[State 650, ChangeState]
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


;hyper coisas
;----- begin of Hyper Effects Helpers-----
;;;;;###################################################################################

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


;-------------------------------------------------------------------------------
;Throw

[Statedef 800]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = -2

[State 800, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0
volume = 0

[State 800]
type = HitDef
trigger1 = hitcount < 1
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 810       ;On success, changes to state 810
p2stateno = 820       ;If hit, p2 changes to state 820
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S3,1
id = 800

[State 800]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 810, SprPriority]
type = SprPriority
trigger1 = animelem = 1 || AnimTime = 0
trigger2 = animelem = 2 || AnimTime = 0
trigger3 = animelem = 3 || AnimTime = 0
value = -4

[State 810, SprPriority]
type = SprPriority
trigger1 = animelem = 4 || AnimTime = 0
trigger2 = animelem = 5 || AnimTime = 0
trigger3 = animelem = 6 || AnimTime = 0
value = 1


[State 810]
type = Helper
trigger1 = Time = 0
stateno = 6810
id = 6810

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 97,-130

[State 810];Bind 2
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 87,-160

[State 810];Bind 3
type = TargetBind
trigger1 = AnimElemNo(0) = 3 || AnimTime = 0
pos = 90,-150

[State 810];Bind 4
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 0,3

[State 810];Bind 5
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = -7,5

[State 810];Bind 6
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = 0,3

[State 810]
type = PlaySnd
trigger1 = AnimElem = 3
value = 800,0

[State 810]
type = PlaySnd
trigger1 = AnimElem = 4
value = 172,12

[State 810]
type = EnvShake
trigger1 = AnimElem = 4
time = 8

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 8400
ID = 8400
pos = 0,0
postype = p2
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 8401
ID = 8401
pos = 0,0
postype = p2
removetime = -2
scale = 1,1
sprpriority = -10
ownpal = 1
removeongethit = 0

[State 1100, Rock Ground]
type = Explod
trigger1 = animelem = 4
anim = 1150
ID = 1150
pos = 20,5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
shadow = 50,50,50
ownpal = 1
removeongethit = 0

[State 810]
type = Explod
trigger1 = AnimElem = 4
anim = 2
ontop = 1
pos = 10,0
ownpal = 1

[State 810]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 73
value = 0,3

[State 810]
type = TargetState
trigger1 = Time = 73
value = 821

[State 810]
type = ChangeState
trigger1 = Time = 73
value = 811
ctrl = 0


[State 810]
type = ChangeState
trigger1 = !NumTarget(800)
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Throw

[Statedef 811]
type    = S
movetype= A
physics = N
anim = 811
poweradd = 0
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 810, SprPriority]
type = SprPriority
trigger1 = animelem = 1 || AnimTime = 0
trigger2 = animelem = 2 || AnimTime = 0
value = -4

[State 810, SprPriority]
type = SprPriority
trigger1 = animelem = 3 || AnimTime = 0
trigger2 = animelem = 4 || AnimTime = 0
value = 1

[State 811];Bind 7
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 97,-130

[State 811];Bind 8
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 87,-160

[State 811];Bind 9
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = -63,-100

[State 811]
type = PlaySnd
trigger1 = AnimElem = 3
value = 220,0

[State 811]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -50

[State 811]
type = TargetState
trigger1 = AnimElem = 3, = 1
value = 823

[State 811]
type = ChangeState
trigger1 = AnimElem = 3, = 1
value = 813
ctrl = 0


[State 811]
type = ChangeState
trigger1 = !NumTarget(800)
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Throw End

[Statedef 813]
type    = S
movetype= I
physics = N
;anim = 50
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2


[State 813]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -2

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
type = Turn
trigger1 = facing = enemynear,facing

[State 820, SprPriority]
type = SprPriority
trigger1 = animelem = 3 || AnimTime = 0
value = 1

[State 820, SprPriority]
type = SprPriority
trigger1 = animelem = 4 || AnimTime = 0
trigger2 = animelem = 5 || AnimTime = 0
trigger3 = animelem = 6 || AnimTime = 0
value = -1

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
sprpriority = -2

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
type = Turn
trigger1 = facing = enemynear,facing


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

[State 823]
type = Turn
trigger1 = Time = 0

[State 823]
type = ChangeAnim2
Trigger1 = Time = 0
value = 823

[State 823]
type = VelSet
trigger1 = Time = 0
x = -7
y = -7

[State 823] ;Gravity
type = VelAdd
trigger1 = 1
y = .4


[State 823]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,0

[State 823] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground



;---------------------------------------------------------------------------
;Thrown

[Statedef 824]
type    = S
movetype= H
physics = N
velset = -7,0

[State 824]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 1,0

[State 824]
type = VelSet
trigger1 = BackEdgeBodyDist < 15
trigger2 = FrontEdgeBodyDist < 15
x = 0

[State 823]
type = SelfState
trigger1 = Time = 120
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Wall Smack
[Statedef 825]
type = A
movetype = H
physics = N
;velset = 0,0


[State 825, 4]
type = ChangeAnim2
trigger1 = time = 0
trigger1 = Vel Y = 0
value = 827


[State 825, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 825, 6]
type = VelSet
trigger1 = time = 0
x = ifelse(Vel X < 0,3,-3)
y = -5



[State 825, 7]
type = VelAdd
trigger1 = time >= 0
y = .39


[State 825, 8]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;-------------------------------------------------------------------------
;Hit Ground By Throw
[Statedef 826]
type = A
movetype = H
physics = N
velset = 0,0

[State 826, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 826, 6]
type = VelSet
trigger1 = time = 0
x = 2.6

[State 826, 7]
type = VelAdd
trigger1 = time >= 0
y = .39

[State 826, 8]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;-------------------------------------------------------------------------
;Wall Smack
[Statedef 827]
type = A
movetype = H
physics = N

[State 827, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 827, 7]
type = VelAdd
trigger1 = time >= 0
y = .39


[State 827, 8]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;Throw Body
[Statedef 6810]
type = S
movetype = I
physics =N
anim = 6810
ctrl = 0
sprpriority = -10
velset = 0,0

[State 6810]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 6810]
type = Turn
trigger1 = Parent,Facing != Facing

[State 6810]
type = DestroySelf
trigger1 = parent,stateno != 810

[State 6810]
type = BindToParent
trigger1 = 1

;--------------------------------------------------------------------------------------------
; Guard Push (stand)
[Statedef 7610]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 7610
sprpriority = 0
facep2 = 1

[State 7610, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 7610, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 7610, Width]
type = Width
trigger1 = 1
value = 10,0

[State 7610, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 23


[State 7610, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 30

[State 7610, PlaySnd 2]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 7610, Spark]
type = Explod
trigger1 = AnimElem = 2;Time = 0
anim = F7020
postype = p1
pos = 31,-77
ownpal = 1
vel = 0,0
scale = 0.5,0.5
ignorehitpause = 1
sprpriority = 5

[State 7610, Guard Push Helper]
type = Helper
trigger1 = AnimElem = 2;Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 7611
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 7610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Push (Helper)

[Statedef 7611]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = Parent,Anim
sprpriority = -4


[State 7611, PlayerPush]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 7611, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 7611, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 25

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 15

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 7611, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 10

[State 7611, DestroySelf]
type = DestroySelf
trigger1 = Time >= 14


