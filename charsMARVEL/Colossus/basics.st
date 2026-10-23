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
value = 171,11

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
value = 171,11

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
value = 171,1

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
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
trigger1 = Time = 10
value = 171,13

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,80]
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

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time = 10
time = 10
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 171,5

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,80]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0
anim = 9999

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 171,9


[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = animelem = 12
time = 10
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1


[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[Statedef 192]
type = A
ctrl = 0
anim = 48
velset = 0,14

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 105,1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = -300

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro


[State 3000, End]
type = ChangeState
trigger1 = pos y > 20;70
value = 199
ctrl = 0

[Statedef 199]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 32720,0
channel= -1

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = animelem = 12
time = 10
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1

[State 191, 1]
type = PlaySnd
trigger1 = animelem = 12
value = 171,6

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8400
ID = 8400
sprpriority = 10

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8401
ID = 8401
sprpriority = -10


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 100
ampl = -4


[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[StateDef 195]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
sprpriority = 2

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 195

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 171,0

[State 210, 1]
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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 15)


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 200

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -70
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 9
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -6,0



[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "x"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=1
value = 201
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=0
value = 0
ctrl = 1

;-------
; Stand Light Punch
[StateDef 201]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
poweradd = 10
sprpriority = 2

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 201

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 20
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
ground.velocity = -2
air.type = Low
air.hittime = 20
air.velocity = -6,0


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "x"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=1
value = 200
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=0
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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 35)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 210

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 21

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = -10


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
pausetime = 9,9
sparkno = 1
sparkxy = -10,-60
;guard.sparkno = 8430
hitsound = 5,1
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
sprpriority = 1
poweradd = ifelse(PrevStateNo = 9000, 0, 45)

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time = 10
time = 10
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 220

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,12
channel= -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 221
ID = 221
pos = 120,-70
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =


[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 85,2
animtype = High
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -85
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -12,-3
air.type = Low
air.hittime = 18
air.velocity = -12,-4
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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 15)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 230

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 1
x = 35

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
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
sparkno = 1
sparkxy = -10, -70
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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 40)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 240

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1


[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 45
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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 55)

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time = 10
time = 10
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 250


[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,12

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = High
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 7,7
sparkno = 2
sparkxy = -10, -80
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 15)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 400

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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 35)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 410

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 18

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
priority = 3, Hit
pausetime = 10,10
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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 55)

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time = 10
time = 10
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 420

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 30

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = -27


[State 420, swoosh]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,12
channel= -1

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = C, NA
damage = 73
guardflag = L
priority = 4, Hit
pausetime = 9,9
sparkno = 2
sparkxy = -5, -38
hitsound = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 15)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 430

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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 35)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 440

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
sprpriority = 2
poweradd = ifelse(PrevStateNo = 9000, 0, 55)

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time = 10
time = 10
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 450

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
damage = 85
animtype = HARD
hitflag = M
guardflag = L
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10, -20
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
pausetime = 8,8
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
damage = 45
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
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

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time = 10
time = 10
add = 20,20,40
color = 128
sinadd = 60,60,80,10
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
trigger1 = time = 1
attr = A,NA
damage = 80
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
pausetime = 8,8
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
trigger1 = time= 0
attr = A,NA
damage = 45
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -10,-55
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
sparkno = 1
sparkxy = -10, -50
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

; Air Hard Punch
[StateDef 660]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 660
poweradd = 55
sprpriority = 2

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = time = 10
time = 20
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 171,12
channel = -1

[State 0, VelAdd]
type = VelAdd
trigger1 =  vel y > -1
y = -0.3



[State 620, HitDef]
type = HitDef
trigger1 = time = 1
attr = A,NA
damage = 110,10
animtype = High
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 13,13
sparkno = 2
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -14,-4
air.velocity = -14,10
air.hittime = 25
air.fall = 1
fall= 1

[State 620, ChangeState]
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
value = 8400,2

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
fall.damage = 10


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
sprpriority = 2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 7730,0

[State 650, grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 650, grunt]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60,-60

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70,-80

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 70,-100

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 40,-95

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 5
value = 830




[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -75

[State 0, EnvShake]
type = EnvShake
trigger1 =  AnimElem = 5
time = 15
freq = 60
ampl = -4
phase = 90
;ignorehitpause =
;persistent =


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
velset = -12,-4
poweradd = 50

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) ;&& (!SelfAnimExist(5060));Not if hit off ground anim
value = 830

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 100
x = -50

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0
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
trigger1 = root, movetype != A ;stateno !=[3000,4999]
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
;---------------------------------------------------
; Super Armor State
[Statedef 9000]
type = U
movetype = H

[State 4500, PalfX]
type = PalFX
trigger1 = time = 1
add = 100,100,100
mul = 256,256,256
time = 3
ignorehitpause = 1

[State 4500, PalfX]
type = PalFX
trigger1 = time = 5
add = 100,100,100
mul = 256,256,256
time = 3
ignorehitpause = 1

[State 9000, a]
type = VarSet
trigger1 = time = 0
v = 16
value = 1

[State 9000, b]
type = VarSet
trigger1 = time <= 0
v = 13
value = AnimElemNo(0)
ignorehitpause = 1

[State 9000, 1]
type = VarSet
trigger1 = time = 0
v = 12
value = var(4)

[State 9000, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 9000, VarSet]
type = VarSet
trigger1 = Life <= 0
v = 7
value = 1

[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Life <= 0
value = ifelse(StateType = A, 5020,5000)

[State 9000, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = var(13)

[State 9000, End]
type = ChangeState ; &&
triggerall= Life > 0
trigger1 = time >= floor(gethitvar(hittime) * 0.8)
value = var(5)
ctrl = var(6)

[State 9000, End]
type = ChangeState ; &&
triggerall= Life > 0
trigger1 = time > 15
value = 0
ctrl = 1





