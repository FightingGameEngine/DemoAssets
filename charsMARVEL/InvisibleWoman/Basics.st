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
trigger1 = Time >= 1
trigger1 = WinTime
value = 181


[State 180]
type = ChangeState
trigger1 = Time >= 1
trigger1 = WinKO
value = 181+random%8

;----------
-----------------------------------------------------------------
; Win pose 1 - disapear =(easy to see)

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


[State 181]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500, 2

[State 181]
type = AssertSpecial
trigger1 = Time < 140
flag = roundnotover


;---------------------------------------------------------------------------
; Win pose 2 - walk back =(look at that)

[Statedef 182]
type = S
ctrl = 0
physics = N
anim = 182
sprpriority = 0
;facep2 = 1
velset = -2,0


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
trigger1 = AnimElem = 2
value = 1500, 4

[State 182]
type = AssertSpecial
trigger1 = Time < 140
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 3 -  speak =(Ok ...what now?)

[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0
sprpriority = 0

[State 183]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 183]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500, 9

[State 183]
type = AssertSpecial
trigger1 = Time < 140
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 4 - speak =(Thats fantastic!)

[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0
sprpriority = 0

[State 184]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 184]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500, 1

[State 184]
type = AssertSpecial
trigger1 = Time < 140
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 5 - speak =(Oh ...much better!)

[Statedef 185]
type = S
ctrl = 0
anim = 183
velset = 0,0
sprpriority = 0

[State 185]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 185]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500, 5

[State 185]
type = AssertSpecial
trigger1 = Time < 140
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 6 - speak =(And ...stay down!)

[Statedef 186]
type = S
ctrl = 0
anim = 183
velset = 0,0
sprpriority = 0

[State 186]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 186]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1500, 7

[State 186]
type = AssertSpecial
trigger1 = Time < 140
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 7 - speak =(What ..no applause?)

[Statedef 187]
type = S
ctrl = 0
anim = 183
velset = 0,0
sprpriority = 0

[State 187]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 187]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500, 3

[State 187]
type = AssertSpecial
trigger1 = Time < 140
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 8 - speak disapear =(Better next time)

[Statedef 188]
type = S
ctrl = 0
anim = 184
velset = 0,0
sprpriority = 0

[State 188]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 188]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500, 0

[State 188]
type = AssertSpecial
trigger1 = Time < 200
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
; Introduction
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Introductions

[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,600

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [1,100]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [101,200]
value = 192

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [201,300]
value = 193

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [301,400]
value = 194

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [401,500]
value = 196

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [501,600]
value = 197

;---------------------------------------------------------------------------------------------
;Intro 1        ;Appear and Speech = (Here we go again)
[Statedef 191]
type = S
movetype = I
physics = N
ctrl = 0
anim = 190
velset = 0,0
spriority = 0

[State 0, VarSet]
type = VarRandom
trigger1 = time =0
v = 1
range = 6,8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 20
value = 1600,1
channel = 5


[State 190, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------------------------
;Intro 2   ;Appear and Speech = (Lets's See what you can do!)
[Statedef 192]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192]
type = PlaySnd
trigger1 = AnimElem = 22
value = 1600, 6

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;Intro 3      ;Appear and Speech = (This shouldn't take long)
[Statedef 193]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193]
type = PlaySnd
trigger1 = AnimElem = 22
value = 1600, 7

[State 193, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------------------------
;Intro 4     ;Appear and Speech = (You could just surrender)
[Statedef 194]
type = S
movetype = I
physics = N
ctrl = 0
anim = 190
velset = 0,0
spriority = 0

[State 0, VarSet]
type = VarRandom
trigger1 = time =0
v = 1
range = 6,8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19
value = 1600,9
channel = 5


[State 194, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------------------------
;Intro 5        ;Walk and Speech = (This should be fun)
[Statedef 196]
type = S
movetype = I
physics = N
ctrl = 0
anim = 191
velset = 0,0
spriority = 0

[State 0, VarSet]
type = VarRandom
trigger1 = time =0
v = 1
range = 6,8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 1600,3
channel = 5


[State 196, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------------------------
;Intro 6        ; Walk and Speech = (This should be intresting)
[Statedef 197]
type = S
movetype = I
physics = N
ctrl = 0
anim = 191
velset = 0,0
spriority = 0

[State 0, VarSet]
type = VarRandom
trigger1 = time =0
v = 1
range = 6,8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 1600,0
channel = 5


[State 197, ChangeState]
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
triggerall = var(24) = 0
triggerall = var(25) = 0
trigger1 = animelem = 5
value = S1600,11
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 195, PlaySnd]
type = PlaySnd
triggerall = var(25) = 1
triggerall = var(24) = 0
trigger1 = animelem = 1
value = S1600,12
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 195, PlaySnd]
type = PlaySnd
triggerall = var(24) = 1
triggerall = var(25) = 0
trigger1 = animelem = 2
value = S1600,13
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0




[State 195, PlaySnd]
type = PlaySnd
trigger1 = animelem = 15
value = S8,1
volume = 0
channel = -1
freqmul = 4.7
loop = 0
pan = 0

[State 195, PlaySnd]
type = PlaySnd
trigger1 = animelem = 16
value = S8,1
volume = 0
channel = -1
freqmul = 4.5
loop = 0
pan = 0

[State 195, PlaySnd]
type = PlaySnd
trigger1 = animelem = 17
value = S8,1
volume = 0
channel = -1
freqmul = 4.3
loop = 0
pan = 0

[State 195, PlaySnd]
type = PlaySnd
trigger1 = animelem = 18
value = S8,1
volume = 0
channel = -1
freqmul = 4.3
loop = 0
pan = 0

[State 195, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19
value = S8,1
volume = 0
channel = -1
freqmul = 4.3
loop = 0
pan = 0


[State 195, PosAdd]
type = PosAdd
trigger1 = Animelem = 19
x = 200
y = 0

[State 195, Turn]
type = Turn
trigger1 = animelem = 19


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

[State 200, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 210, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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
poweradd = 60
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
animtype = High
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
envshake.time = 2
envshake.ampl = 2
fall=1

[State 220, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 230, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 240, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 220, HitDef]
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
envshake.time = 2
envshake.ampl = 2
fall=1

[State 250, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 400, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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
ground.type = High
ground.slidetime = 30
ground.hittime  = 14
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0

[State 410, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = 60

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

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
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-12

[State 420, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = addd

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

[State 430, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 440, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 450, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 600, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 610, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 620, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 630, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 640, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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

[State 650, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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
;Kung Fu Throw - Throwing the opponent
; Description: In this state, KFM throws the opponent by binding him to
;     various offsets based on his current frame of animation. For
;     example, [State 810, Bind 1] binds the opponent to an offset of
;     28 pixels in front of KFM. That puts him around where KFM's hand
;     is at. Is is important to keep the opponent bound using a
;     TargetBind controller at all times, until you let him go. This
;     is especially important if your player has a Clsn2 box that
;     allows him to get hit while throwing someone. Each time a player
;     gets hit, all his bound targets will be set to a fall state. If
;     the opponent is not bound, then he may get stuck in his thrown
;     state when his attacker is knocked out of the throw halfway.
; Notes: There is a TargetLifeAdd controller to decrease the opponent's
;     life, and a TargetState controller to change his state to a
;     falling state when KFM lets go of him.
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60

; Here a variable, var(2), is used to remember whether or not the
; player was holding forward at the start of the state. This variable
; is checked later on to turn KFM around if necessary.
[State 810, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 28, 0

[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 58, 0

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 47, 0

[State 810, holdfwd - Turn 6] ;If was holding fwd before, turn now
type = Turn
trigger1 = var(2)
trigger1 = AnimElem = 6

[State 810, holdfwd - Pos 6] ;If was holding fwd before, move a little
type = PosAdd
trigger1 = var(2)
trigger1 = AnimElem = 6
x = -37

[State 810, holdfwd - Turn Target 6] ;If was holding fwd before, turn target too
type = TargetFacing
trigger1 = var(2)
trigger1 = AnimElem = 6
value = -1

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 41, -60

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 25, -75

[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 15, -90

[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -5, -96

[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -14, -90

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = -50, -50

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -78

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 11
value = 821

[State 810, Turn 12]
type = Turn
trigger1 = AnimElem = 12

[State 810, Pos 15]
type = PosAdd
trigger1 = AnimElem = 15
x = -10

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 810, Invisibility Effect]
type = AfterImage
trigger1 = var(24) = 1
time = 25
length = 25
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

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
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 840]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 840
sprpriority = 2

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents KFM from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 840, 1]
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
p1stateno = 850       ;On success, KFM changes to state 810
p2stateno = 860       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 840, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
; Description: In this state, KFM throws the opponent by binding him to
;     various offsets based on his current frame of animation. For
;     example, [State 810, Bind 1] binds the opponent to an offset of
;     28 pixels in front of KFM. That puts him around where KFM's hand
;     is at. Is is important to keep the opponent bound using a
;     TargetBind controller at all times, until you let him go. This
;     is especially important if your player has a Clsn2 box that
;     allows him to get hit while throwing someone. Each time a player
;     gets hit, all his bound targets will be set to a fall state. If
;     the opponent is not bound, then he may get stuck in his thrown
;     state when his attacker is knocked out of the throw halfway.
; Notes: There is a TargetLifeAdd controller to decrease the opponent's
;     life, and a TargetState controller to change his state to a
;     falling state when KFM lets go of him.
[Statedef 850]
type    = S
movetype= A
physics = N
anim = 850
poweradd = 60

; Here a variable, var(2), is used to remember whether or not the
; player was holding forward at the start of the state. This variable
; is checked later on to turn KFM around if necessary.
[State 850, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 850, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1

[State 850, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1600, 10

[State 850, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 28, 0

[State 850, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 850, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 58, 0

[State 850, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 47, 0

[State 850, holdfwd - Turn 6] ;If was holding fwd before, turn now
type = Turn
trigger1 = var(2)
trigger1 = AnimElem = 6

[State 850, holdfwd - Pos 6] ;If was holding fwd before, move a little
type = PosAdd
trigger1 = var(2)
trigger1 = AnimElem = 6
x = -37

[State 850, holdfwd - Turn Target 6] ;If was holding fwd before, turn target too
type = TargetFacing
trigger1 = var(2)
trigger1 = AnimElem = 6
value = -1

[State 850, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 41, -60

[State 850, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 25, -75

[State 850, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 15, -90

[State 850, Bind 9]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -5, -96

[State 850, Bind 10]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -14, -90

[State 850, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = -50, -50

[State 850, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -78

[State 850, Throw 11]
type = TargetState
trigger1 = AnimElem = 11
value = 821

[State 850, Turn 12]
type = Turn
trigger1 = AnimElem = 12

[State 850, Pos 15]
type = PosAdd
trigger1 = AnimElem = 15
x = -10

[State 850, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1001
ID = 1001
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = 70
vel = 0,10
accel = 0,0
random = 0,0
removetime = 70
scale = 1,1
sprpriority = 1
ontop = 1
shadow = 0,0,100
ownpal = 0
removeongethit = 0
;ignorehitpause =
persistent = 1

[State 850, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
[Statedef 860]
type    = A
movetype= H
physics = N
velset = 0,0

[State 860, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 860

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
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
velset = 2.8,-7
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
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
