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

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 3,-0.4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 171,2

[State 0, VelSet]
type = VelSet
trigger1 = pos y < -100
y = 0
;ignorehitpause =
;persistent =


[State 0, Explod]
type = Explod
triggerall = timemod = 3,1
trigger1 = 1
anim =  1105
ID =  1105
pos = 0,-71
postype = p1  ;p2,front,back,left,right
vel = -1+(random/300),(random/500)
accel = 0,0.35
random = 0,0
removetime = 35
scale = .25,.25
sprpriority = -15
ownpal = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
trigger2 = var(41) <= 0
v = 41
value = 30

[State 0, VarAdd]
type = VarAdd
trigger1 = timemod = 2,1
v = 41
value = -1


[State 0, VelSet]
type = VelSet
trigger1 = var(41) < 15
x = 2


[State 0, VelSet]
type = VelSet
trigger1 = var(41) > 14
x = -2




[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,320]
flag = RoundNotOver

[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 172,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 15
value = 171,3

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 182
ID = 182
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 14
ID = 182
scale = .54,.54

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 16
ID = 182
scale = .58,.58

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 18
ID = 182
scale = .62,.62

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 20
ID = 182
scale = .66,.66

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 22
ID = 182
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 24
ID = 182
scale = .74,.74

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 26
ID = 182
scale = .78,.78

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 28
ID = 182
scale = .82,.82

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 30
ID = 182
scale = .86,.86

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 32
ID = 182
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 34
ID = 182
scale = .92,.92

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 36
ID = 182
scale = .94,.94

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 38
ID = 182
scale = .96,.96

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 40
ID = 182
scale = .98,.98

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =time = 42
ID = 182
scale = 1,1




[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,220]
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
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = A
ctrl = 0
anim = 190
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 171,9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 76
value = 172,2
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 191
ID = 191
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 0
shadow = 255,255,255
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 76
anim = 192
ID = 192
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = -15
ownpal = 0
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 81
ID = 191
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 82
ID = 191
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 83
ID = 191
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 84
ID = 191
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 85
ID = 191
scale = .5,.5

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 86
ID = 191
scale = .4,.4

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 87
ID = 191
scale = .3,.3

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 87
ID = 191
scale = .2,.2

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 89
ID = 191
scale = .1,.1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 90
ID = 191
scale = .05,.05

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 130
ID = 191
scale = .05,.05

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 132
ID = 191
scale = .1,.1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 134
ID = 191
scale = .15,.15

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 136
ID = 191
scale = .2,.2

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 138
ID = 191
scale = .25,.25

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 140
ID = 191
scale = .3,.3

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 142
ID = 191
scale = .35,.35

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 144
ID = 191
scale = .4,.4

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 146
ID = 191
scale = .45,.45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 148
ID = 191
scale = .5,.5



[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0
trigger1 = anim != 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = time < 154
flag = Intro


[Statedef 192]
type = A
ctrl = 0
anim = 190
velset = 0,0


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 193
ID = 193
pos = -150,-60
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 3,0
removetime = 50
scale = .25,.25
sprpriority = -2
ownpal = 0
shadow = 255,255,255
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 194
ID = 194
pos = -145,-70
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 2.9,-0.1
removetime = 250
scale = 1,1
sprpriority = 2
ownpal = 1
shadow = 255,255,255
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 40
value = 171,8

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 50
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = time < 150
flag = Intro



; Stand Light Punch
[StateDef 195]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 195
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 1.5

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 23
x = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 171,4


[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 200
poweradd = 15
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 4
x = -0.4


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 15
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -1, -72
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -3,-2

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
physics = N
juggle  = 1
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 5

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 5
x = -0.6




[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 30
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 9,9
sparkno = 1
sparkxy = -1,-73
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
physics = N
juggle  = 1
ctrl = 0
anim = 220
poweradd = 55
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 221
ID = 221
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 10
removeongethit = 1
ignorehitpause = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,0

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 7
value = 171,11

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 6

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 11
x = -0.6


[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 60
animtype = High
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -1, -72
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -4,-3
air.type = Low
air.hittime = 5
air.velocity = -6,-3



[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 230
poweradd = 15
sprpriority = 2


[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 2

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 4
x = -0.2


[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -1, -50
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
physics = N
juggle  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = 2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 5

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 5
x = -0.3


[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 30
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 9,9
sparkno = 1
sparkxy = -1,-67
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -2,-2


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
physics = N
juggle  = 1
ctrl = 0
anim = 250
poweradd = 55
sprpriority = 2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 171,12

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 6

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 8
x = -0.4


[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 55
animtype = High
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -1, -60
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -4,-2

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
juggle  = 1
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
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -1, -35
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1,0
air.type = Low
air.hittime = 3
air.velocity = -1,0


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
damage = 45
animtype = Medium
guardflag = M
hitflag = MAF
priority = 2, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -1,-30
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 16
ground.velocity = -1.3,0
air.type = Low
air.hittime = 5
air.velocity = -1,0

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
poweradd = 55
sprpriority = 2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 172,2

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 421
ID = 421
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .5,.5
sprpriority = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 210, swoosh]
type = PlaySnd
trigger1 = time = 11
value = 171,11

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 7
ID = 421
scale = .55,.55

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 421
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 421
scale = .65,.65

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 11
ID = 421
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 12
ID = 421
scale = .75,.75

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 13
ID = 421
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 14
ID = 421
scale = .85,.85

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 15
ID = 421
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 16
ID = 421
scale = .95,.95

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 17
ID = 421
scale = 1,1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 28
ID = 421
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 29
ID = 421
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 31
ID = 421
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 33
ID = 421
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 35
ID = 421
scale = .55,.55





[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
priority = 3, Hit
sparkno = 2
sparkxy = -7, -88
hitsound = S171,8
guardsound = S3,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  =  30
air.hittime  =  30
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = 0,-12

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
priority = 2, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -7, -5
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
damage = 35
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 2, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -6,-30
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
poweradd = 55
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 451
ID = 451
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .5,.5
sprpriority = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 0
ignorehitpause = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 4
value = 172,2

[State 210, swoosh]
type = PlaySnd
trigger1 = time = 12
value = 171,12



[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 451
scale = .55,.55

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 5
ID = 451
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 451
scale = .65,.65

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 7
ID = 451
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 451
scale = .75,.75

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 451
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 10
ID = 451
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 11
ID = 451
scale = 1,1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 20
ID = 451
scale = .95,.95

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 21
ID = 451
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 22
ID = 451
scale = .85,.85

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 23
ID = 451
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 24
ID = 451
scale = .75,.75

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 25
ID = 451
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 26
ID = 451
scale = .65,.65

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 27
ID = 451
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 28
ID = 451
scale = .55,.55

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 29
ID = 451
scale = .5,.5

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 12
value = 0,2

[State 450, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 55
animtype = HARD
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -20
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = trip
ground.velocity = -2, -4
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
damage = 8
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
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
air.velocity = 0, -6

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
poweradd = 35
sprpriority = 2

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 20
animtype = medium
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 12,12;8,8
sparkno = 1
sparkxy = -10,-65
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -5.5

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
poweradd = 55
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,11


[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0


[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 55
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -10,-70
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -3
air.fall = 1
air.velocity = -3,3;-4,5


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
juggle  = 1
ctrl = 0
anim = 630
poweradd = 15
sprpriority = 2

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 =time = 0
attr = A,NA
damage = 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 9,9;8,8
sparkno = 0
sparkxy = -10, -23
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
poweradd = 35
sprpriority = 2

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 22
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 12,12;8,8
sparkno = 1
sparkxy = -10,-60
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -6.5
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
juggle  = 1
ctrl = 0
anim = 650
poweradd = 55
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,12

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 50
animtype = High
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -4
air.velocity = -4,2
air.fall = 1
air.hittime = 25
fall = 1

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
p1facing = ifelse(Command = "holdfwd",1,-1)
p2facing = -1
p1stateno = 810
p2stateno = 820
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

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 809
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 810
ID = 810
pos = 0,-24
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 10
ontop = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 810
scale = .55,.55

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 7
ID = 810
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 810
scale = .65,.65

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 810
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 10
ID = 810
scale = .75,.75

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 11
ID = 810
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 12
ID = 810
scale = .85,.85

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 13
ID = 810
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 14
ID = 810
scale = .95,.95
    ;9991-8382 jeovah...
[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 15
ID = 810
scale = 1,1

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 15
value = 3,1

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 35
value = 171,11

[State 810, TargetBind]
type = TargetBind
trigger1 = time = 0
pos = 37,0

[State 810, TargetBind]
type = TargetBind
trigger1 = time = 26
pos = -5,-65

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 58
value = 172,2

[State 0, VelSet]
type = VelSet
trigger1 = time = 40
x = -2

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 810
scale = .95,.95

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 60
ID = 810
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 62
ID = 810
scale = .85,.85

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 64
ID = 810
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 66
ID = 810
scale = .75,.75

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 68
ID = 810
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 70
ID = 810
scale = .65,.65

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 72
ID = 810
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 74
ID = 810
scale = .55,.55

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 76
ID = 810
scale = .5,.5

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 33
value = 0,3


[State 810, TargetState]
type = TargetState
trigger1 = time = 33
value = 830

[State 810, PowerAdd]
type = PowerAdd
trigger1 = time = 33
value = 50

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 33
value = -70

[State 801, ChangeState]
type = turn
trigger1 = time = 78

[State 801, ChangeState]
type = ChangeState
trigger1 = time = 78
value = 0
ctrl = 1

[Statedef 820]
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
value = 820


[Statedef 830]
type    = A
movetype= H
physics = N
velset = -9,-5
poweradd = 50

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) ;&& (!SelfAnimExist(5060));Not if hit off ground anim
value = 830

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 40

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
flag = nobardisplay

[State 3000, BGPalfx]
Type = BGPalfx
Trigger1 = 1 ;time = [0, 170]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State 40001, Tile #1-7]
type = Explod
trigger1 = time = 0
trigger1 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = 60
pausemovetime = -1
supermovetime = -1
scale = 1.2,0.7
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root,movetype!=A;root, stateno !=[3000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

;3005

;[State 40001, Comic]
;type = ChangeState
;trigger1 = root, stateno =3005
;value = stateno+1

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
type = null;Explod
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
pos = 0,abs((240*var(0))-80)
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
triggerall = parent,anim != 3120
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
triggerall = parent,anim != 3120
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

;--------
[State 40001, P1 PORTRAIT]
type = Explod
triggerall = parent,anim = 3120
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 156079
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
triggerall = parent,anim = 3120
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 156079
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
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
; Medium Foward Recovery Roll

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
trigger1 = AnimTime = 0
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
trigger1 = AnimTime = 0
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

