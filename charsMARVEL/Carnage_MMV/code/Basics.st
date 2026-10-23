;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Lose by Time Over

[Statedef 170]
type = S
ctrl = 0
anim = 171
velset = 0,0

[State 170]
type = PosSet
trigger1 = Time = 0
y = 0



[State 170]
type = NotHitBy
trigger1 = 1
value = SCA


;---------------------------------------------------------------------------
; Lose

[Statedef 172]
type = S
ctrl = 0
velset = 0,0
anim = 172


[State 172]
type = PosSet
trigger1 = Time = 0
y = 0


[State 172]
type = NotHitBy
trigger1 = 1
value = SCA

[State 172]
type = CtrlSet
trigger1 = Time = 120
value = 1

;--------------------------------------------------------------------------------------------------------

[Statedef 173]
type = S
ctrl = 0
velset = 0,0
anim = 9800



[State 173]
type = PosSet
trigger1 = Time = 0
y = 0


[State 173]
type = PlaySnd
trigger1 = Time = 0
value = 170,0

[State 173]
type = NotHitBy
trigger1 = 1
value = SCA

[State 173]
type = CtrlSet
trigger1 = Time = 120
value = 1


;---------------------------------------------------------------------------
; DRAWGAME (Time over)
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;---------------------------------------------------------------------------
; Win state decider

[Statedef 180]
type = S
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 180, 0]
type = PosSet
trigger1 = Time = 0
y = 0


[State 180]
type = Width
trigger1 = Time = 0
value = 50,50


[State 180]
type = ChangeState
trigger1 = Time = 1
;trigger1 = WinTime
value = 181


;[State 180]
;type = ChangeState
;trigger1 = Time >= 1
;trigger1 = WinKO
;value = 181+random%2

;---------------------------------------------------------------------------
; Win pose 1 - Time Over

[Statedef 189]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 189]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =2
value = 8600,2
volume = 50

[State 189]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 11

[State 181]
type = AssertSpecial
trigger1 = Time < 200
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 1 - Win KO

[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =2
value = 8600,2
volume = 50



[State 189]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 11

[State 181]
type = AssertSpecial
trigger1 = Time < 200
flag = roundnotover


;---------------------------------------------------------------------------
; Win pose 2- Win KO

[Statedef 182]
type = S
ctrl = 0
physics = N
anim = 182
sprpriority = 0
;facep2 = 1
velset = 0,0

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1540, 1

[State 182]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover


;------------------------------------------------------------------------------------------------------------
;Win Helper (win 2)
[Statedef 2182]
type = S
ctrl = 0
physics = N
anim = 192
sprpriority = 0
;facep2 = 1
velset = 0,0

[State 2182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 2182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 2182]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1540, 1

[State 2182]
type = AssertSpecial
trigger1 = Time < 300
flag = roundnotover

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 40
sprpriority = 2



[State 200, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0



[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = high
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = 60
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
;---------------------------------------------------------------------------
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220
poweradd = 80
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,1
animtype = back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = 40
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = low
ground.slidetime = 14
ground.hittime  = 18
ground.velocity = -4
airguard.velocity = -10,-.8
air.type = high
air.velocity = -4,-3
air.hittime = 15
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 230, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 60
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=250
poweradd= 80
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = S1100,3
guardsound = S8000,6
ground.type = trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = trip
air.hittime = 5
air.velocity = -5,0
envshake.time = 7
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = 40
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = 1100,2
volume = 50




[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 30
ground.hittime  = 14
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = 60

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1


[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
damage = 72,1
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = up
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-12
envshake.time = 7
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 430
poweradd = 20
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,1
animtype = Light
hitflag = MAF
guardflag = MA
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 430, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 440
poweradd = 40
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,1
animtype = Medium
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 450
poweradd = 60
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 72,1
animtype = up
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = low;trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-8
air.type = Low
air.hittime = 5
air.velocity = -2,-8
envshake.time = 7
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1

[State 450, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = 40
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-5
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Punch
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 60
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-20
guard.sparkno = s8001
hitsound = S1100,5
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 610, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Punch
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
poweradd=80
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2


[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = 0,-20
guard.sparkno = s8001
hitsound = S1100,3
guardsound = S8000,6
ground.type = trip
air.type = trip
ground.slidetime = 15
ground.hittime  = 20
air.hittime = 25
ground.velocity = -9
air.velocity = -7,17
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 620, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Light Kick
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
poweradd = 40
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 630, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Medium Kick
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
poweradd = 60
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-20
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 640, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Jumping Strong Kick
;---------------------------------------------------------------------------
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd=85
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-20
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = trip
air.type = trip
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 810       ;On success, KFM changes to state 810
p2stateno = 820       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 810, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8600, 0

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 5
volume = 255

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 8600, 1

[State 0, Helper]
type = Helper
trigger1 =  AnimElem = 3
helpertype = normal ;player
name =  "blood"
ID =   8500
stateno = 8500
pos = -60,-90
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
;size.xscale =
;size.yscale =
;size.ground.back =
;size.ground.front =
;size.air.back =
;size.air.front =
;size.height =
;size.proj.doscale =
;size.head.pos = ,
;size.mid.pos = ,
;size.shadowoffset =
;ignorehitpause =
;persistent =



[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = - 95
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 3
value = 100
;ignorehitpause =
;persistent =



[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50, 0
time = 100

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 2
pos = 15,0
time = 100

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos = 20, 0
time = 100

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 4
pos = 47, -30
time = 100

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 47, -30
time = 20




[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;P2 damage
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=10

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 821, 1] ;Gravity
type = Velset
Trigger1 = time > 20
y = -4
x = -2

;[State 820, 1]
;type = Changestate
;Trigger1 = time = 50
;value = 821

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
Trigger1 = time = 40
;trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 2.8,-40
poweradd = 40


[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -60
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;END


;------------------------------------------------------------

[Statedef 900]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 900
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 2     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 910       ;On success, KFM changes to state 810
p2stateno = 920       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 910]
type    = S
movetype= A
physics = N
anim = 910
poweradd = 60
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 =  1
x = 0
y = 0
;ignorehitpause =
;persistent =

 [State 0, Helper]
type = Helper
trigger1 =  AnimElem = 4
helpertype = normal ;player
name =  "blood"
ID =   8500
stateno = 8500
pos = 10,-80
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = 8600,2
volume = 50

[State 810, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8600, 0

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 5
volume = 255

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 8600, 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = - 95
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 3
value = 100
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50, 0
time = 100

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 2
edge = 48,-20
time = 100

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos = 46, -30
time = 100

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 4
edge = 44,-40
time = 100

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 5
pos = 42, -60
time = 10



[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 920]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 920

[State 821, 1] ;Gravity
type = Velset
Trigger1 = time > 30
y = -4
x = -6

;[State 820, 1]
;type = Changestate
;Trigger1 = time = 50
;value = 821

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
Trigger1 = time = 40
;trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 921]
type    = A
movetype= H
physics = N
velset = -10,-40
poweradd = 40


[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -60
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;END
