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
value = 171,5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -20

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[state 175]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 171,5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -20

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4
[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[state 175]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[state 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 172,1

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,160]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 172,0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = RoundNotOver


[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = -15,0
sprpriority = 0

[state 183]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
value = 171,11

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,8


[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
trigger2 = animelem = 4
x = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 15

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 184
ID = 184
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 1
ownpal = 1
removeongethit = 1

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver


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
trigger1 = Time = 0
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = -14,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,11

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = floor(pos x)

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 300

[State 0, PlaySnd]
type = PlaySnd
triggerall = vel x != 0
trigger1 = pos x <= var(41)
value = 172,3

[State 0, VelSet]
type = VelSet
triggerall = vel x != 0
trigger1 = pos x <= var(41)
x = 0
y = 0

[State 0, PosSet]
type = PosSet
triggerall = pos x != var(41)
trigger1 = vel x = 0
x = var(41)

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = time != 0
triggerall = anim != 0
trigger1 = pos x = var(41)
value = 0


[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro


; Intro #1
[Statedef 192]
type = A
ctrl = 0
anim = 192
physics = N
velset = 0,14

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,11

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 20
FrameGap = 4

;[State 0, ScreenBound]
;type = ScreenBound
;trigger1 = 1
;value = 0
;movecamera = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = floor(pos x)

[State 0, PosAdd]
type = Posadd
trigger1 = time = 0
x = -200
y = -400

[State 0, PlaySnd]
type = PlaySnd
triggerall = vel y != 0
trigger1 = pos y >= 0;var(41)
value = 172,4

[State 0, VelSet]
type = VelSet
triggerall = vel y != 0
trigger1 = pos y >= 0;var(41)
x = 0
y = 0

[State 0, PosSet]
type = PosSet
triggerall = pos x != var(41)
trigger1 = vel y = 0
x = var(41)
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = time != 0
triggerall = anim != 196 && anim != 0
trigger1 = pos x = var(41)
value = 196

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim !=0
triggerall = anim = 196
trigger1 = animtime = 0
value = 0


[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

[StateDef 195]
type    = S
movetype= I
physics = S
juggle  = 4
ctrl = 0
anim = 195
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,4



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
physics = S
juggle  = 4
ctrl = 0
anim = 200
poweradd = 15
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 15
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
sparkno = 0
sparkxy = -10, -80
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 9
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -6,0

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
juggle  = 4
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = animelem = 6
value = 0,1


[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
attr = S,NA
damage = 19
animtype = High
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,4
sparkno = 2
sparkxy = -20, -90
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
air.type = Low
air.hittime = 18
air.velocity = -6,-7


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
juggle  = 2
ctrl = 0
anim = 220
poweradd = 55
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 15

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 171,8


[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 65
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2
sparkxy = -20, -90
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10
air.type = Low
air.hittime = 18
air.velocity = -6,-7
fall= 1
air.fall = 1

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
damage = 18
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
sparkno = 1
sparkxy = -10, -30
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
poweradd = 40
sprpriority = 2

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1



[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 42
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 1
sparkxy = -10,-80
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime = 15
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
physics = N
juggle  = 4
ctrl = 0
anim = 250
poweradd = 55
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 0


[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 8,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 171,8

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 74
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -10, -80
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

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
sparkno = 0
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = 5,0
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

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 1
sparkxy = -10,-53
;guard.sparkno = 8430
hitsound = 5,1
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

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 10

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = C, NA
damage = 60
guardflag = L
pausetime = 8,8
sparkno = 2
priority = 4, Hit
sparkxy = -15, -68
hitsound = S2,0
guardsound = S3,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

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

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 20
animtype = Light
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 6,6
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

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 45
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 7,7
sparkno = 1
sparkxy = -10,-5
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



;y = 0
;ignorehitpause =
;persistent =


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
trigger1 = time = 0
attr = C,NA
damage = 80
animtype = HARD
hitflag = M
guardflag = L
priority = 4, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -10, -60
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
value = 11
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

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
sparkno = 0
sparkxy = -10, -93
;guard.sparkno = 8430
hitsound = 5,0
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
pausetime = 7,7
sparkno = 1
sparkxy = -10,-78
;guard.sparkno = 8430
hitsound = 5,1
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
damage = 65
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = 5,4
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
trigger1 = AnimElem = 1
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
sparkno = 0
sparkxy = -10, -63
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
trigger1 = AnimElem = 3
attr = A,NA
damage = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = 1
sparkxy = -10,-68
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
trigger1 = AnimElem = 2
attr = A,NA
damage = 75
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -10, -75
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

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


; Air Medium Punch
[StateDef 660]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 660
poweradd = 35
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod= 5,1
value = 0,0

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = -0.2

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = timemod = 4,1
attr = A,NA
damage = 5,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 1,1
sparkno = 1
sparkxy = -10,-78
;guard.sparkno = 8430
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = -2, -4



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

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
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
anim = 810
sprpriority = 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 800,0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 52,0


[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 55,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 65,-85

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 55,-75

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -10,-80

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -15,-82

[State 0, VelSet]
type = VelSet
trigger1 =  AnimElem = 6
x = -18;8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 171,11

[State 0, VelSet]
type = VelSet
trigger1 =  AnimElem = 7
x = 0



[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 6
value = 830


[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 8600,0

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 6
value = 50

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -80

[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

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
velset = -10,-1
poweradd = 50

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
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
;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
