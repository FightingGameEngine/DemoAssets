;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Lose by Time Over

[Statedef 170]
type = S
ctrl = 0
anim = 176
velset = 0,0

[State 170]
type = PosSet
trigger1 = Time = 0
y = 0

[State 170, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S175,0
volume = 255
channel = 5

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA

[State 170]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover
;---------------------------------------------------------------------------
; Lose

[Statedef 172]
type = S
ctrl = 0
velset = 0,0
anim = 176

[State 170, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S175,0
volume = 255
channel = 5

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

[State 172]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

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

[State 175, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S179,1
volume = 255
channel = 5

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
trigger1 = Time >= 1
trigger1 = WinTime
value = 181


[State 180]
type = ChangeState
trigger1 = Time >= 1
trigger1 = WinKO
value = 181+random%4

;---------------------------------------------------------------------------
; Win pose 1 - Win KO

[Statedef 181]
type = S
ctrl = 0
physics = N
anim = 183
sprpriority = 0
;facep2 = 1
velset = 0,0

[State 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 181]
type = PlaySnd
trigger1 = AnimElem = 1
value = 180,3

[State 181]
type = AssertSpecial
trigger1 = Time < 100
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

[State 182, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S180,0
volume = 255
channel = 5

[State 181, VelSet]
type = VelSet
trigger1 = animelem = 12
x = -1.25
y = -1.25

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182, Explod]
type = Explod
trigger1 = timemod = 8,1
anim = 1102
ID = 1102
pos = 0,5
postype = p1
scale = 1.75,1.25
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 182]
type = AssertSpecial
trigger1 = Time < 250
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 3- Win KO

[Statedef 183]
type = S
ctrl = 0
anim = 181
velset = -3,-2
sprpriority = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 11,3

[State 183, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 7
y = -2

[State 183, VelSet]
type = VelSet
trigger1 = animelem = 14
x = 7
y = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S180,2
volume = 255
channel = 5

[State 183]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 183, Explod]
type = Explod
trigger1 = timemod = 3,1
anim = 1102
ID = 1102
pos = 20,5
postype = p1
scale = 1.75,1.25
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 0

[State 183]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 4- Win KO

[Statedef 184]
type = S
ctrl = 0
physics = N
anim = 195
sprpriority = 0
;facep2 = 1
velset = 0,0

[State 184]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 184]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 184]
type = PlaySnd
trigger1 = AnimElem = 1
value = 179, 1

[State 184]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Intro decider
;---------------------------------------------------------------------------------------------
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 4) / 1000)

;---------------------------------------------------------------------------
; Intro 1
;---------------------------------------------------------------------------
[Statedef 191]
type = S
ctrl = 0
physics = N
anim = 183
sprpriority = 0
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 191, 2]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 191, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190,2

[State 191,end]
type = AssertSpecial
trigger1 = Time < 100
flag = roundnotover

;---------------------------------------------------------------------------
; Intro 2
;---------------------------------------------------------------------------

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0
sprpriority = 7

[State 192, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 192, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S190,1
volume = 255
channel = 5

[State 192, rock stub]
type = Explod
trigger1 = time = 0
anim = 191
ID = 192
pos = -20,10
postype = p1
facing = 1
vfacing = 1
bindtime = 80
vel = 0,0
accel = 0,0
removetime = 80
supermove = 99999
pausemove = 99999
scale = 1.5,1
sprpriority = 7
ontop = 1
ownpal = 1

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro 3
;---------------------------------------------------------------------------
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 192, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S190,0
volume = 255
channel = 5

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

 ;---------------------------------------------------------------------------
; Intro 4
;---------------------------------------------------------------------------
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 192, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S190,3
volume = 255
channel = 5

[State 194, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt
;---------------------------------------------------------------------------
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S195,0
volume = 255
channel = 5

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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
poweradd = 20
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
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1

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
velset = 2,0
poweradd = 40
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
velset = 5,0
poweradd = 60
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 7050,0

[State 220, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 40
freq = 10
ampl = -1

[State 220, Explod]
type = Explod
trigger1 = animelem = 4
anim = 622
ID = 622
pos = 80,-65
scale = 1.5,1.5
postype = p1
removetime = 8
sprpriority = 1

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
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
animtype = Heavy
ground.type = Trip
ground.slidetime = 41
ground.hittime  = 25
ground.velocity = -14,1
guard.velocity = -8
air.velocity = -17,-2
envshake.time = 7
envshake.ampl = 4

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
poweradd = 20
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
poweradd = 40
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
poweradd= 60
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
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 7
envshake.ampl = 4

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

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

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
ground.type = Low
ground.slidetime = 20
ground.hittime  = 14
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
type = C
movetype = A
physics = C
velset = 0,0
anim = 420
ctrl = 0
juggle = 1
poweradd = 60

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 420, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
damage = 45
priority = 4, hit
guardflag = L
pausetime = 9,9
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
air.velocity = -2,-11
fall=1

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
velset = 7,0

[State 440, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0
y = 0

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

[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
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

[State 450, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 10
y = 0


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
animtype = High
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
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -10,0
envshake.time = 7
envshake.ampl = 4

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
poweradd = 20
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
poweradd = 40
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
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

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
poweradd=60
sprpriority = 2

[State 620, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 7050,0

[State 620, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 40
freq = 10
ampl = -1

[State 620, Explod]
type = Explod
trigger1 = animelem = 4
anim = 622
ID = 622
pos = 85,-35
scale = 1.5,1.5
postype = p1
removetime = 10
sprpriority = 78

[State 620, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
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
poweradd = 20
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

[State 630, End]
type = ChangeState
trigger1 = AnimTime = 30
value = 51;70
ctrl = 1

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
poweradd = 40
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
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

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
poweradd=60
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
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4

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
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

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
fall = 1
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

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 12,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 10,-50

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 40,-90

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 5
value = 830

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 1000,1

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 4
value = 35

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -35

[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 840
ctrl = 1

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

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
velset = 10,-10
poweradd = 35

[State 830, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060))
value = 5060

[State 830, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060))
value = 830

[State 830, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 40

[State 830, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 830, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

;---------------------------------------------------------------------------
; Throw Vibration blast
[Statedef 840]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 1002
ctrl = 0
sprpriority = 2

[State 840, Turn]
type = Turn
trigger1 = Animelem = 1

[State 840, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,4
channel = 1

[State 840, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 11,10
channel = 3


[State 840, blast]
type = Helper
trigger1 = AnimElem = 3
ID = 841
stateno = 841
postype = p1
pos = 20,-100
name = "Blast"
ownpal = 1


[State 840, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;V blast
[Statedef 841]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1301
sprpriority = 9
hitcountpersist = 1
poweradd = ifelse(var(15) = 1, 0, 40)

[State 200, a]
type = ChangeAnim
trigger1 = var(15) = 1
value = Anim + 0
persistent = 0

[State 841, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 841, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 50,-110

[State 840, 1]
type = Playsnd
trigger1 = AnimElem = 8
value = 8000,4
channel = 2

[State 841, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 841, 4]
type = hitdef
trigger1 = Animelem = 5
trigger2 = Animelem = 7
trigger3 = Animelem = 9
trigger4 = Animelem = 11
attr = S,HA
damage = 35,3
getpower = 20
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8022
guard.sparkno = S8001
hitsound = s8000,2
guardsound = 6,0
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5,-3
guard.velocity = -5
air.type = Low
air.velocity = -10,-6
air.juggle = 5
fall.animtype = Hard
fall = 1
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 841, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root, stateno !=840
