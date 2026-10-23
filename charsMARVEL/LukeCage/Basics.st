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
channel = 0

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
channel = 0

[State 189]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover
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


;---------------------------------------------------------------------------
; Win pose 1- Win KO  (you lose small fry)

[Statedef 181]
type = S
ctrl = 0
physics = N
anim = 181
sprpriority = 0
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
trigger1 = AnimElem = 5
value = 180, 2
channel = 0

[State 181]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 2 - Win KO (guess I WIN!)

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


[State 182]
type = PlaySnd
trigger1 = AnimElem = 5
value = 180, 0
channel = 0

[State 182]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;------------------------------------------------------------------------------------------------------------
; Win pose 3 - Win KO (anyboby want some)

[Statedef 183]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 183]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 183]
type = PlaySnd
trigger1 = AnimElem = 8
value = 180, 3
channel = 0

[State 183]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;------------------------------------------------------------------------------------------------------------
; Win pose 4 - Win KO (next time run away)

[Statedef 184]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 184]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 184]
type = PlaySnd
trigger1 = AnimElem = 5
value = 180, 4
channel = 0

[State 184]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;------------------------------------------------------------------------------------------------------------
; Win pose 5 - Win KO  (hardly worth my time)

[Statedef 185]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 0

[State 185]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 185]
type = PlaySnd
trigger1 = AnimElem = 1
value = 180, 5
channel = 0

[State 185]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;------------------------------------------------------------------------------------------------------------
; Win pose 6 - Win KO (that how its done)

[Statedef 186]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 186]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 186]
type = PlaySnd
trigger1 = AnimElem = 5
value = 180, 6
channel = 0

[State 186]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;------------------------------------------------------------------------------------------------------------
; Win pose 7 - Win KO (keep getting better)

[Statedef 187]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 187]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 187]
type = PlaySnd
trigger1 = AnimElem = 5
value = 180, 7
channel = 0

[State 187]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover

;------------------------------------------------------------------------------------------------------------
; Win pose 8 - Win KO (musta hurt reAL BAD)

[Statedef 188]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 0

[State 188]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 188]
type = PlaySnd
trigger1 = AnimElem = 2
value = 180, 1
channel = 0

[State 188]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover


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
range = 1,600

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

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190, 5
channel = 20

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190, 1
channel = 20

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0


;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 190, 0
channel = 20

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 190, 2
channel = 20

[State 194, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 196]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 196, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190, 3
channel = 20

[State 196, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 196, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 197]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 197, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 190, 4
channel = 20

[State 197, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 197, 3] ;Change to stand state when done
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

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, 2]
type = PlaySnd
trigger1 = AnimElem = 13
value = 195, 3

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
air.cornerpush.veloff = -20
damage = 28,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = 0;s8002
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-3
envshake.time = 1
envshake.ampl = 1
;p2getp1state = 1


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
air.cornerpush.veloff = -20
damage = 45,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1;s8022
sparkxy = -15,-79
;guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-3
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
air.cornerpush.veloff = -20
damage = 70,0
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -30,-79
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-4
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
air.cornerpush.veloff = -20
damage = 28,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = 0;s8002
sparkxy = -15,-65
;guard.sparkno = s8001
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
air.cornerpush.veloff = -20
damage = 45,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1;s8022
sparkxy = -15,-79
;guard.sparkno = s8001
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
air.cornerpush.veloff = -20
damage = 70,0
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-79
;guard.sparkno = s8001
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
damage = 28,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = 0;s8002
sparkxy = -15,-59
;guard.sparkno = s8001
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
damage = 45,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1;s8022
sparkxy = -15,-59
;guard.sparkno = s8001
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
trigger1 = time = 0
attr = C, NA
damage = 66,0
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = 2
sparkxy = -15,-59
hitsound = s8000,2
guardsound = 6,0
animtype = Heavy
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
air.hittime = 20
guard.velocity = -5
ground.velocity = 0,-12.5
air.velocity = 0,-11.25
;p2stateno = 5060
;p2getp1state = 0

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
damage = 28,0
animtype = Light
hitflag = MAF
guardflag = MA
priority = 2, Hit
pausetime = 8,8
sparkno = 0;s8002
sparkxy = -15,-10
;guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
air.cornerpush.veloff = -10

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
damage = 45,0
animtype = Medium
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 10,10
sparkno = 1;s8022
sparkxy = -15,-59
;guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
air.cornerpush.veloff = -10

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
damage = 65,0
animtype = High
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-59
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = low;trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
fall = 1
air.cornerpush.veloff = -10

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
damage = 28,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = 0;s8002
sparkxy = -15,-49
;guard.sparkno = s8001
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
damage = 45,0
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1;s8022
sparkxy = -15,-49
;guard.sparkno = s8001
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
triggerall = var(30) = 0
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 65,0
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = 0,-59
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
air.hittime = 25
ground.velocity = -9
air.velocity = -13,-4
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0
p2stateno = 5045
p2getp1state = 0

[State 620, HitDef]
type = HitDef
triggerall = var(30) != 0
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 65,0
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = 0,-59
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
air.hittime = 25
ground.velocity = -9
air.velocity = -11,-1
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0

[State 620, VarSet]
type = VarSet
trigger1 = movecontact
v = 30
value = 1

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
damage = 28,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = 0;s8002
sparkxy = -15,-49
;guard.sparkno = s8001
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
damage = 45,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1;1;s8022
sparkxy = -15,-49
;guard.sparkno = s8001
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
damage = 65,0
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = 2;s8222
sparkxy = -15,-59
;guard.sparkno = s8001
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

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;------------------------------------------------------------------------
;Eating Pavement
;------------------------------------------------------------------------
[Statedef 800]
type     = S
movetype = A
physics  = S
juggle   = 0
velset   = 0,0
poweradd = 50
ctrl     = 0
anim     =1400
sprpriority = 2

[State 800, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 1400

[State 800, 1]
type = NotHitBy
triggerall = time = 0
trigger1 = animelemtime(4) <=  0
value = SCA,AA,AP
ignorehitpause=1

[State 800, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 1000,3
channel = 0

[State 800, 4]
type = HitDef
trigger1 = Time = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p2sprpriority = 0
p1facing = ifelse(command="holdfwd",1,-1)
p2facing = ifelse(command="holdfwd",1,-1)
p1stateno = 805
p2stateno = 806
guard.dist = 0
hitsound   = S8000,5
fall = 1
fall.recover = 0
id = 1400
down.bounce = 0

[State 800, end]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------
;Pavement attack
[Statedef 805]
type     = S
movetype = A
physics  = N
anim = 1405
sprpriority =  -1

[State 805, 1]
type = null;Turn
trigger1 = Animtime = 0

[State 805, 2]
type = SprPriority
trigger1 =  AnimElem = 5||AnimElem = 11|AnimElem = 17
value = 2

[State 805, 3]
type = SprPriority
trigger1 =  AnimElem = 6||AnimElem = 12|AnimElem = 18
value = -1

[State 805, 4]
type = Width
trigger1 = 1
value = 32,32

[State 805, 5]
type = TargetState
trigger1 = time = 0
value = 806

[State 805, 6]
type = TargetBind
trigger1 =  AnimElem = 1
pos = 60,0
postype = P1
time = -1

[State 805, 7]
type = TargetBind
trigger1 =  AnimElem = 4
trigger2 =  AnimElem = 10
trigger3 =  AnimElem = 16
pos = -10,-100
postype = P1
time = -1

[State 805, 8]
type = TargetBind
trigger1 = AnimElem = 5
trigger2 =  AnimElem = 11
trigger3 =  AnimElem = 17
pos = -30,-80
postype = P1
time = -1

[State 805, 9]
type = TargetBind
trigger1 = AnimElem = 6
trigger2 =  AnimElem = 12
trigger3 =  AnimElem = 18
pos = 0,-120
postype = P1
time = -1

[State 805, 10]
type = TargetBind
trigger1 =  AnimElem = 7
trigger2 =  AnimElem = 13
trigger3 =  AnimElem = 19
pos = 80,0
postype = P1
time = -1

[State 805, TargetDrop]
type = TargetDrop
trigger1 = Animelem = 22

[State 805, 26]
type = TargetState
trigger1 = AnimElem = 20
value = 807

[State 805, 14]
type = TargetLifeAdd
trigger1 = AnimElem = 7||AnimElem = 13||AnimElem = 19
value = -25

[State 805, 15]
type = PlaySnd
trigger1 = animelem = 7||AnimElem = 13||AnimElem = 19
value = 1000,2
channel = 0

[State 805, 15]
type = PlaySnd
trigger1 = animelem = 3
value = 195,1
channel = 5

[State 805, 16]
type = EnvShake
trigger1 = animelem = 7||AnimElem = 13||AnimElem = 19
time = 20
freq = 60
ampl = -4
phase = 90
ignorehitpause = 1

[State 805, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------

[Statedef 806]
type     = S
movetype = H
velset   = 0,0
sprpriority = 2

[State 806, 1]
type = ChangeAnim2
Trigger1 = time = 0
value = 1406

[State 806, 2]
type = ScreenBound
trigger1 = 1
movecamera = 0,0

;------------------------------------------------------------------------

[Statedef 807]
type     = A
movetype = H
physics  = S
velset = 0,0;7,-3

[State 807, 1]
type = LifeAdd
trigger1 = Time = 0
value = -50

[State 807, end]
type = selfstate
trigger1 = time = 0;Vel Y > 0&&Pos Y >= 0
value = 5110




;----------------------------[hyper ports UM MAX2 BG]----------------------------------
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
