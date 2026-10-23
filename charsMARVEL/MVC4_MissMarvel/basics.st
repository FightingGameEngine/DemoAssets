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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 171,14
channel = 0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

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

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 171,14
channel = 0

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
value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 41
range = 0,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 0
trigger1 = time = 5
value = 171,13
channel = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 1
trigger1 = time = 5
value = 171,2
channel = 1

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,15
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 25
value = 172,3
channel = 1
volume = 30
channel = 1

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

[State 0, ChangeState]
type = ChangeState
trigger1 = p2name = "Deadpool"
trigger2 = p2name = "Captain America"
value = 193
ctrl = 0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 3) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0
sprpriority = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 171,9

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 2
value = 172,9
channel = 1



[State 192, 2]             
type = AssertSpecial
trigger1 = time < 200
flag = Intro

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0
sprpriority = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 171,16

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 22
value = 172,9
channel = 1



[State 192, 2]
type = AssertSpecial
trigger1 = time < 200
flag = Intro

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

[Statedef 193]
type = S
ctrl = 0
anim = 192
velset = 0,0
sprpriority = 8

[State 0, PlaySnd]
type = PlaySnd
triggerall = p2name = "Captain America"
trigger1 = time = 1
value = 178,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = p2name = "Deadpool"
trigger1 = time = 1
value = 178,2


[State 0, VarRandom]
type = VarRandom
triggerall = p2name != "Deadpool"
triggerall = p2name != "Captain America"
trigger1 = time = 0
v = 41
range = 1,3

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 1
trigger1 = time = 5
value = 178,3

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 2
trigger1 = time = 5
value = 178,4

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(41) = 3
trigger1 = time = 5
value = 178,5



[State 192, 2]
type = AssertSpecial
trigger1 = time < 200
flag = Intro

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0


; Stand Light Punch
[StateDef 195]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 195
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,3


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
juggle = 0;  = 1
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
air.cornerpush.veloff = -20
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
juggle = 0;  = 1
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,0

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1


[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
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
juggle = 0;  = 1
ctrl = 0
anim = 220
poweradd = 55
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,1

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 610, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 75
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,9
sparkno = 2
sparkxy = -10,-70
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9
air.velocity = -7, -3.5
envshake.time = 7
envshake.ampl = 4
fall = 1

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
juggle = 0;  = 1
ctrl = 0
anim = 230
poweradd = 15
sprpriority = 2


[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 1
value = 0,0


[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -15, -95
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
physics = S
juggle = 0;  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = -10

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,0

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
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
juggle = 0;  = 4
ctrl = 0
anim = 250
poweradd = 55
sprpriority = -10
velset = 0,0

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,1

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -60
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
juggle = 0;  = 1
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
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 7,7
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
juggle = 0;  = 1
ctrl = 0
anim = 410
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,0

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
sparkno = 1
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


[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1


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
juggle = 0;  = 2
ctrl = 0
anim = 420
poweradd = 55
sprpriority = 6

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 177,1

[State 420, swoosh]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 400, HitDef]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage = 45
priority = 3, hit
hitflag = MAF
guardflag = MA
pausetime = 12,12;L4,4
sparkno = 2
sparkxy = -5, -90
hitsound = s2,2
guardsound = s3,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = 0,-11
p2stateno = 5060
;p2getp1state = 0




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
juggle = 0;  = 2
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
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 7,7
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
juggle = 0;  = 2
ctrl = 0
anim = 450
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,0


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
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -10,-10
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
juggle = 0;  = 2
ctrl = 0
anim = 440
poweradd = 55
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,1

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
hitflag = M
guardflag = L
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -35
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
juggle = 0;  = 1
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
air.velocity = 0,((vel y)-.2)

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
juggle = 0;  = 1
ctrl = 0
anim = 610
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,0

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
sparkxy = -10,-80
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0,((vel y)-.2)

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
juggle = 0;  = 1
ctrl = 0
anim = 620
poweradd = 55
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,1

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 1
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
sparkxy = -5, -40
hitsound = 5,2
guardsound = 6,0
ground.type = high
hitsound = s2,2
guardsound = s3,0
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

[State 600, ChangeState]
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
juggle = 0;  = 1
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
trigger1 = time = 0
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9;8,8
sparkno = 0
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = 0,-3
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
juggle = 0;  = 1
ctrl = 0
anim = 640
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,0

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
sparkxy = -10,-63
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0,((vel y)-.2)
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
juggle = 0;  = 1
ctrl = 0
anim = 650
poweradd = 55
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 177,1


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
sparkxy = -10, -33
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
juggle = 0;  = 0
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
p1facing = ifelse(Command = "holdback",-1,1)
p2facing = ifelse(Command = "holdback",-1,1)
p1stateno = ifelse(Command = "holdback",811,810)
p2stateno = ifelse(Command = "holdback",831,820)
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
anim = 810
sprpriority = 2

[State 810, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 172,9

[State 810, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 178,0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = 175,2


[State 810, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,1

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 30,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 20,-70

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50,-103

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = 5

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 7
value = 5


[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 14
value = -70

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 14
value = 830

[State 810, Explod]
type = Explod
trigger1 = animelem = 14
anim = 811
ID = 811
pos = 50,-103
postype = p1
removetime = -2
bindtime = 1
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 0


[State 810, EnvShake]
type = EnvShake
trigger1 =  AnimElem = 14
time = 10
freq = 40
ampl = -4
phase = 40


[State 810, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 811]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 2

[State 811, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 172,9

[State 811, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 178,0

[State 811, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = 175,2


[State 811, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,1

[State 811, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 30,0

[State 811, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 20,-70

[State 811, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50,-103

[State 811, SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = 5

[State 811, SprPriority]
type = SprPriority
trigger1 = AnimElem = 7
value = 5


[State 811, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 14
value = -70

[State 811, TargetState]
type = TargetState
trigger1 = AnimElem = 14
value = 832

[State 811, Explod]
type = Explod
trigger1 = animelem = 14
anim = 811
ID = 811
pos = 50,-103
postype = p1
removetime = -2
bindtime = 1
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 0


[State 811, EnvShake]
type = EnvShake
trigger1 =  AnimElem = 14
time = 10
freq = 40
ampl = -4
phase = 40


[State 811, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 820, Turn]
type = Turn
trigger1 = time = 0

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820


[Statedef 830]
type    = A
movetype= H
physics = N
velset = 17,-3
poweradd = 50

[State 830, PalFX]
type = PalFX
trigger1 = time = 0
time = 10
mul = 256,156,56
sinadd = 210,110,10,50
color = 256

[State 830, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 830

[State 830, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 45

[State 830, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 830, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

[Statedef 831]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 831, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 831, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820


[Statedef 832]
type    = A
movetype= H
physics = N
velset = 17,-3
poweradd = 50

[State 832, PalFX]
type = PalFX
trigger1 = time = 0
time = 10
mul = 256,156,56
sinadd = 210,110,10,50
color = 256

[State 832, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 830

[State 832, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 45

[State 832, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 832, SelfState]
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
juggle = 0;  = 0
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
air.cornerpush.veloff = -20
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

[StateDef 949]
type = A
movetype = I
physics = A
ctrl = 1
sprpriority = 0

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
anim = 41500
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
value = S1500,1
volume = 200

[State 40002, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 41560
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
anim = 41550;15605
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
removeongethit = 1

[State 40003, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 41551;15606
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
removeongethit = 1

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
removeongethit = 1

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
removeongethit = 1

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

;-------------------------------------------------------------------------------
; Pause Menu

[StateDef 40500]
Type = S
Ctrl = 0
Anim = 9999

[State 40500, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(0) = %d"
params = var(0)

[State 40500, VarSet]
type = VarSet
trigger1 = time = 0
v = 0
value = 1

[State 40500, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 9999
value = 9999

[State 40500, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 40500, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9999

[State 40500]
type = ChangeState
triggerall = Parent,command != "Taunt"
triggerall = ailevel = 0
trigger1 = Parent,Alive
trigger1 = RoundState = 2
trigger1 = Command = "Pause"
trigger1 = Parent,Command = "Pause"
value = 40501

;-------------------------------------------------------------------------------
[StateDef 40501]
type = S
ctrl = 0

[State 40501, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Pause Detector"
ID = 40505
stateno = 40505

[State 40501, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S40500,2

[State 40501, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(0) = %d"
params = var(0)

[State 40501, NoFG]
Type = AssertSpecial
Trigger1 = 1
flag = nofg
flag2 = nobardisplay
flag3 = nomusic

[State 40502, PlaySnd]
type = PlaySnd
trigger1 = command = "Down"
trigger2 = command = "Up"
value = S40500,0

[State 40501, VarSet]
type = Varadd
trigger1 = command = "Down"
v = 0
value = 1

[State 40501, VarSet]
type = Varadd
trigger1 = command = "Up"
v = 0
value = -1

[State 40501, VarSet]
type = Varset
triggerall = var(0) > 3
trigger1 = command = "Down"
v = 0
value = 1

[State 40501, VarSet]
type = Varset
triggerall = var(0) < 1
trigger1 = command = "Up"
v = 0
value = 3

[State 40501, Explod]
type = Explod
trigger1 = numexplod(40500) = 0
anim = 40500
ID = 40500
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 9999
ontop = 0
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 40501, Explod]
type = Explod
triggerall = var(0) = 1
trigger1 = numexplod(40501) = 0
anim = 40501
ID = 40501
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 9999
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 40501, Explod]
type = Explod
triggerall = var(0) = 2
trigger1 = numexplod(40502) = 0
anim = 40502
ID = 40502
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 9999
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 40501, Explod]
type = Explod
triggerall = var(0) = 3
trigger1 = numexplod(40503) = 0
anim = 40503
ID = 40503
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 9999
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = var(0)!= 1
id = 40501
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = var(0)!= 2
id = 40502
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = var(0)!= 3
id = 40503
ignorehitpause = 1

[State 40501, Pause]
type = Pause
trigger1 = 1
time = 10
moveTime = 10

[State 40501]
type = ChangeState
trigger1 = Time >= 6 && Command = "Pause"
trigger2 = ailevel != 0
value = 40502

;-------------------------------------------------------------------------------
[StateDef 40502]
type = S
ctrl = 0

[State 40502, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S40500,1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 40500
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 40501
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 40502
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 40503
ignorehitpause = 1

[State 40502]
type = Pause
trigger1 = Time = 0
time = 0

[State 40502]
type = BGPalFX
trigger1 = Time = 0
time = 1

[State 40502]
type = ChangeState
trigger1 = Time = 1
value = 40500

;-------------------------------------------------------------------------------
[StateDef 40505]
Type = S
Ctrl = 0
Anim = 9999

[State 40505, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 40501
ignorehitpause = 1


;-----------------------
; Medium Foward Recovery Roll

[Statedef 832]
type    = C
movetype= I
physics = N
juggle = 0;  = 0
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
juggle = 0;  = 0
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

