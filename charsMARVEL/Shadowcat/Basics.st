;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Lose by Time Over

[Statedef 170]
type = S
ctrl = 0
anim = 175
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
anim = 175


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
value = 181+random%4

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


[State 189]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1540, 2

[State 189]
type = AssertSpecial
trigger1 = Time < 90
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

[State 181, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S22,2
volume = 250
channel = 5

[State 181]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1540, 2

[State 181]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 2

[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 0

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S18,2
volume = 250
channel = 5

[State 182, 4]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Lockheed"
facing = 1
pos = -165,-184
postype = p1
stateno = 187

[State 182]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;Fly In
[Statedef 187]
type = A
movetype = I
anim = 198
velset = 0,3
sprpriority = -5

[state 187, 1]
type = PosAdd
trigger1 = Time = 0
y = -9

[state 187, 1]
type = VelAdd
trigger1 = Vel X < 5
x = .4

[state 187, 1]
type = VelAdd
trigger1 = Vel Y > 4
y = -2

[State 187, Change]
type = ChangeState
trigger1 = Time = 40
value = 188

;Lockheed On Shoulder
[Statedef 188]
type = S
movetype = I
anim = 199
sprpriority = -5

[State 188, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 188]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 3

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

[State 183, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S19,0
volume = 50
channel = 2

[State 183, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S22,1
volume = 250
channel = 5

[State 183]
type = AssertSpecial
trigger1 = Time < 150
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 4

[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0
sprpriority = -1

[State 184]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 184, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S19,0
volume = 250
channel = 5

[State 184, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S18,1
volume = 250
channel = 5

[State 184, 4]
type = Helper
trigger1 = Time = 130
helpertype = normal
name = "Lockheed"
facing = 1
pos = -155,-194
postype = p1
stateno = 187

[State 184]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;Fly In
[Statedef 185]
type = A
movetype = I
anim = 198
velset = 0,3
sprpriority = 5

[state 185, 1]
type = PosAdd
trigger1 = Time = 0
y = -9

[state 185, 1]
type = VelAdd
trigger1 = Vel X < 5
x = .4

[state 185, 1]
type = VelAdd
trigger1 = Vel Y > 4
y = -2

[State 185, Change]
type = ChangeState
trigger1 = Time = 40
value = 188


;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Intro decider
;---------------------------------------------------------------------------------------------
;Introductions

[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 1,400

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [1,100]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [101,200]
value = 196

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [201,300]
value = 193

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [301,400]
value = 194

;---------------------------------------------------------------------------
; Intro 1
;---------------------------------------------------------------------------

[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S12,3
volume = 250
channel = 5

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro 2
;---------------------------------------------------------------------------

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S17,6
volume = 250
channel = 5

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro 2b
;---------------------------------------------------------------------------
[Statedef 196]
type = S
movetype = I
physics = N
ctrl = 0
anim = 196
velset = 0,0
sprpriority = 2

[State 196, VarSet]
type = VarRandom
trigger1 = time =0
v = 1
range = 6,8

[State 196, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 196, 4]
type = Helper
trigger1 = Time = 0
helpertype = normal
name = "Lockheed"
facing = 1
pos = 15,-75
postype = p1
stateno = 197

[State 196, ChangeState]
type = ChangeState
trigger1 = AnimTime = 110
value = 192

[State 196]
type = destroyself
trigger1 = stateno = 196

;Lockheed Intro
[Statedef 197]
type = S
movetype = I
anim = 197
sprpriority = -5

[State 197, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S6000,2
volume = 250
channel = 5

[State 197, Change]
type = ChangeState
trigger1 = Time = 50
value = 198

;Leave shoulder
[Statedef 198]
type = A
movetype = I
anim = 198
velset = 0,0
sprpriority = -5

[state 198, 1]
type = PosAdd
trigger1 = Time = 0
y = -9

[state 198, 1]
type = VelAdd
trigger1 = Vel X < 4
x = .4

[state 198, 1]
type = VelAdd
trigger1 = Vel Y > -1
y = -.2

[state 198, 2]
type = DestroySelf
trigger1 = Time = 100


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

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S17,5
volume = 250
channel = 5

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

[State 194, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S22,0
volume = 250
channel = 5

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
trigger1 = animelem = 1
value = S17,4
volume = 250
channel = 1

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
pausetime = 8,10
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
pausetime = 9,10
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
pausetime = 10,10
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
pausetime = 8,10
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
pausetime = 9,10
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
hitflag = MA
priority = 4, Hit
pausetime = 5,5
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
pausetime = 8,10
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
damage = 36,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
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
trigger1 = !movehit
trigger1 = !moveguarded
attr = C, NA
damage = 52,3
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,-10
guard.velocity = -5
air.velocity = -3,-10

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
hitflag = MA
guardflag = MA
priority = 2, Hit
pausetime = 8,10
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

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 42,1
animtype = Medium
hitflag = MA
guardflag = MA
priority = 3, Hit
pausetime = 9,10
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
damage = 62,1
animtype = High
hitflag = MA
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,-5
air.type = High
air.hittime = 8
air.velocity = -3,-12
;fall=1

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
pausetime = 8,8
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
pausetime = 8,8
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
pausetime = 8,8
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
pausetime = 8,8
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Trip
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0

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
fall = ifelse(PalNo > 6, 0, 1)
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
pos = 45,-5

State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40,0

State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 45,-5

State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 40,0

State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 45,-5

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 50,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 10,-50

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 40,-90

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 9
value = 820

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 1000,1

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 9
value = 35

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 9
value = -105

[State 810, ChangeState]
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
velset = 4.8,-7
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
;---------------------------------------------------------------------------
; throw kick
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 850
poweradd = 60
ctrl = 0
sprpriority = 0

[State 850, Hitdef]
type = HitDef
Trigger1 = Time = 1
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = S3, 1
sprpriority = 0
p1facing =  1
p2facing = 1
p1stateno = 860
p2stateno = 870
guard.dist = 0
fall = 1

[State 1100, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Pirouette
[Statedef 860]
type = S
movetype = I
physics = N
anim = 1110
poweradd = 60
velset = 3, 0
sprpriority = 1
ctrl = 0

[State 860, Change State]
type = ChangeState
trigger1 = animelem = 7
value = 880
ctrl = 0

;---------------------------------------------------------------------------
; P2 state
[Statedef 870]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0
poweradd = 60
sprpriority = 2


[State 870, Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 870
;---------------------------------------------------------------------------
; Strike
[Statedef 880]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1130
poweradd= 10
ctrl = 0
sprpriority = 0
facep2 = 0

[State 880, Turn]
type = Turn
trigger1 = time = 0

[State 880, 4]
type = HitDef
trigger1 = time = 0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
pausetime = 9, 9
priority = 5, Miss
damage = 60
sparkno = 3
sparkxy = -10, -66
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 24
ground.velocity = -16, -8
guard.slidetime = 13
guard.hittime = 31
guard.velocity = -10
air.velocity = -10, -8
air.hittime = 45
fall.recovertime = 40
air.fall = 1
fall = 1

[State 880, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20, -20
time = 1

[State 880, Change State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;END
