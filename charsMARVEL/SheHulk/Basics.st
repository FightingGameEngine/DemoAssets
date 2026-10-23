;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Lose by Time Over

[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170]
type = PosSet
trigger1 = Time = 0
y = 0

[State 170]
type = PlaySnd
trigger1 = Time = 0
value = 170,0

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA

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

[State 175]
type = PlaySnd
trigger1 = Time = 0
value = 175,0

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
value = 181 +random%3

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

[State 181, VarSet]
type = VarRandom
trigger1 = time =0
v = 2
range = 0,2

[State 181, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 0
value = 180,0
channel = 4

[State 181, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 1
value = 180,1
channel = 4

[State 181, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 2
value = 180,2
channel = 4

[State 181]
type = AssertSpecial
trigger1 = Time < 190
flag = roundnotover


;---------------------------------------------------------------------------
; Win pose 2- Win KO

[Statedef 182]
type = S
ctrl = 0
physics = N
anim = 182
sprpriority = 0
velset = 0,0

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 182, VarSet]
type = VarRandom
trigger1 = time =0
v = 2
range = 0,2

[State 182, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 0
value = 180,3
channel = 4

[State 182, 3]
type = PlaySnd
trigger1 = animelem = 8
triggerall = Var(2) = 1
value = 180,4
channel = 4

[State 182, 3]
type = PlaySnd
trigger1 = animelem = 7
triggerall = Var(2) = 2
value = 180,5
channel = 4


[State 182]
type = AssertSpecial
trigger1 = Time < 250
flag = roundnotover


;------------------------------------------------------------------------------------------------------------
; Win pose 3 - Win KO

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

[State 183, VarSet]
type = VarRandom
trigger1 = time =0
v = 2
range = 0,1

[State 183, 3]
type = null;PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 0
value = 180,6
channel = 4

[State 183, 3]
type = PlaySnd
trigger1 = animelem = 2
triggerall = Var(2) = 1
value = 180,7
channel = 4


[State 183]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover


;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------

;Introductions

[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,300

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,100]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [101,200]
value = 192

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [201,300]
value = 193

;-----------------------------
;Intro1

[Statedef 191]
type = S
movetype = I
physics = N
ctrl = 0
anim = 191
velset = 0,0
spriority = 0

[State 192, Explod]
type = Explod
trigger1 = animelem = 3
anim = 197
ID = 197
pos = -10,-120
postype = p1
bindtime = 2
vel = 0,0
removetime = -2
scale = 1.25,2.25
sprpriority = 20
ontop = 1

[State 191, VarSet]
type = VarRandom
trigger1 = time =0
v = 2
range = 0,4

[State 191, 3]
type = PlaySnd
trigger1 = animelem = 3
value = 8400,2
channel = 1

[State 191, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 0
value = 190,5
channel = 4

[State 191, 3]
type = PlaySnd
trigger1 = animelem = 2
triggerall = Var(2) = 1
value = 190,6
channel = 4

[State 191, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 2
value = 190,7
channel = 4

[State 191, 3]
type = PlaySnd
trigger1 = animelem = 2
triggerall = Var(2) = 3
value = 190,8
channel = 4

[State 192, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 4
value = 190,9
channel = 4

[State 191, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "Suitcase"
ID = 198
stateno = 198
pos = 0,-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 191, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "Suit"
ID = 199
stateno = 199
pos = 0,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
ontop = 1

[State 191, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;-------------------------------------------------------------------------------
;-----------------------------
;Intro1

[Statedef 192]
type = S
movetype = I
physics = N
ctrl = 0
anim = 192
velset = 0,0
spriority = 0

[State 192, Explod]
type = Explod
trigger1 = animelem = 4
anim = 197
ID = 197
pos = -10,-120
postype = p1
bindtime = 2
vel = 0,0
removetime = -2
scale = 1.25,2.25
sprpriority = 20
ontop = 1

[State 192, VarSet]
type = VarRandom
trigger1 = time =0
v = 2
range = 0,4

[State 192, 3]
type = PlaySnd
trigger1 = animelem = 4
value = 8400,2
channel = 1

[State 192, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 0
value = 190,0
channel = 4

[State 192, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 1
value = 190,1
channel = 4

[State 192, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 2
value = 190,2
channel = 4

[State 192, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 3
value = 190,3
channel = 4

[State 192, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 4
value = 190,4
channel = 4

[State 192, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "Suitcase"
ID = 198
stateno = 198
pos = 0,-50
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 192, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal
name = "Suit"
ID = 199
stateno = 199
pos = 0,-70
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
ontop = 1

[State 192, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;-------------------------------------------------------------------------------

[Statedef 193]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 193, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 193, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1112, Explod]
type = Explod
trigger1 = AnimElem=3
anim = 1107
ID = 1112
pos = 32,13
postype = p1
bindtime = 1
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = 0.50,0.50
sprpriority = -1
ownpal = 1
removeongethit = 0

[State 193, 3]
type = PlaySnd
trigger1 = animelem = 1
value = 1900,0
channel = 3

[State 193, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 8200, 0
channel = 5

[State 193, 3]
type = PlaySnd
trigger1 = animelem = 6
value = 1900,1
channel = 4

[State 193, 3]
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

[State 195, VarSet]
type = VarRandom
trigger1 = time =0
v = 2
range = 0,4

[State 195, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 0
value = 195,0
channel = 4

[State 195, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 1
value = 195,1
channel = 4

[State 195, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 2
value = 195,2
channel = 4

[State 195, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 3
value = 195,3
channel = 4

[State 195, 3]
type = PlaySnd
trigger1 = animelem = 1
triggerall = Var(2) = 4
value = 195,4
channel = 4

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
;Suitcase
[Statedef 198]
type = A
movetype = I
physics = S
ctrl = 0
anim = 198
velset = 0,0

[State 198, 3]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 5
value = 8400,0
channel = 2

[State 198, SprPriority]
type = SprPriority
trigger1 =animelem = 3
value = 1

[State 198, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = ,NA,SA,HA,NT,ST,HT
time = -1

[State 198, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,AP; SCA,AA,AT,AP
slot = 1
stateno = 1207
time = -1

[State 198, VelSet]
type = VelSet
trigger1 = time = 0
x = -16
y = -2

[State 198, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <= -15
trigger2 = time = 30

;-------------------------------------------------------------------------------
;Suit Dress
[Statedef 199]
type = A
movetype = I
physics = S
ctrl = 0
anim = 199
velset = 0,0
sprpriority = 99

[State 199, 3]
type = PlaySnd
trigger1 = animelem = 1
value = 1900,2
channel = 5

[State 199, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = ,NA,SA,HA,NT,ST,HT
time = -1

[State 199, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,AP
slot = 1
stateno = 1207
time = -1

[State 199, VelSet]
type = VelSet
trigger1 = time = 0
x = -25
y = 0;-1.5

[State 199, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <= -15
trigger2 = time = 30

;-----------------------------

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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 200, 0
channel = 4

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,0
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
poweradd = 40
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 210, 0
channel = 4

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,0
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
juggle  = 4
ctrl = 0
anim = 220
poweradd = 60
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 220, 0
channel = 4

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,0
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
ground.velocity = -12,0
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 2
envshake.ampl = 2
air.fall = 1

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

[State 230, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 10

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 230, 0
channel = 4

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,0
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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 240, 0
channel = 4

[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,0
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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 250, 0
channel = 4

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,0
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
air.velocity = -4,-7
envshake.time = 2
envshake.ampl = 2
fall=1

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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 200, 0
channel = 4

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

[State 410, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 10

[State 410, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = 20

[State 410, PosAdd]
type = PosAdd
trigger1 = animelem = 5
x = 10

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 210, 0
channel = 4

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,0
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
juggle = 4
poweradd = 60

[State 420, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 8400, 2

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 220, 0
channel = 4

[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 72,0
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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 230, 0
channel = 4

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,0
animtype = Light
hitflag = MAF
guardflag = LA
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

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 240, 0
channel = 4

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,0
animtype = Medium
hitflag = MAF
guardflag = LA
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

[State 0, VelSet]
type = VelSet
trigger1 = time > 3
trigger1 = time <= 16
x = 1.5
y = 0

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 250, 0
channel = 4

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA,
damage = 72,0
animtype = High
hitflag = MAF,
guardflag = LA
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -3,0
air.type = low
air.fall = 1
air.hittime = 5
air.velocity = -3,0

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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 200, 0
channel = 4

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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 210, 0
channel = 4

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,0
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

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 220, 0
channel = 4

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,0
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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 230, 0
channel = 4

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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 240, 0
channel = 4

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,0
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

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 250, 0
channel = 4

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,0
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
air.velocity = -6,9
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
p2facing = 1
facep2 = 1
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = S8600,0
volume = 255
channel = 5

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sparkxy = -13, -72
hitsound = S1,16
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = ifelse (command = "holdfwd", 801, 802)
p2stateno = ifelse (command = "holdfwd", 805, 807)
numhits = 0
guard.dist = 0
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
velset = 0,0
sprpriority = -1

[State 801, SprPriority]
type = SprPriority
trigger1 = animelem = 2 
value = 2

[State 801, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 800, 0
channel = 4

[State 801, 0]
type = NotHitBy
trigger1 = animelemtime(6)<0
value = SCA
time = 1

[State 801, Width]
type = Width
trigger1 = animelemtime(6)<0
edge = 30,30

[State 801, TargetBind]
type = TargetBind
trigger1 = AnimElem=1
pos = 49,-69

[State 801, TargetBind]
type = TargetBind
trigger1 = AnimElem=2
pos = 30, -132

[State 801, SprPriority]
type = SprPriority
trigger1 = animelem = 3 
value = -1

[State 801, TargetBind]
type = TargetBind
trigger1 = AnimElem=3
pos = 23, -126

[State 801, TargetBind]
type = TargetBind
trigger1 = AnimElem=4
pos = 22, -127

[State 801, TargetBind]
type = TargetBind
trigger1 = AnimElem=5
pos = 86, -40 

[State 801, LifeAdd]
type = TargetLifeAdd
trigger1 = animelem=5
value = -100

[State 801, 9]
type = TargetState
trigger1 = time = 40
value = 806

[State 801, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------
[Statedef 802]
type = S
movetype = A
physics = S
anim = 802
velset = 0,0
sprpriority = -1

[State 802, SprPriority]
type = SprPriority
trigger1 = animelem = 2 
value = 2


[State 802, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 800, 0
channel = 4

[State 802, 0]
type = NotHitBy
trigger1 = animelemtime(6)<0
value = SCA
time = 1

[State 802, Width]
type = Width
trigger1 = animelemtime(6)<0
edge = 30,30

[State 802, TargetBind]
type = TargetBind
trigger1 = AnimElem=1
pos = 49,-69

[State 802, TargetBind]
type = TargetBind
trigger1 = AnimElem=2
pos = 30, -132

[State 802, SprPriority]
type = SprPriority
trigger1 = animelem = 3 
value = -1

[State 802, TargetBind]
type = TargetBind
trigger1 = AnimElem=3
pos = 23, -126

[State 802, Turn]
type = Turn
trigger1 = time = 23

[State 802, TargetBind]
type = TargetBind
trigger1 = time = 23
pos = 23, -126

[State 802, TargetBind]
type = TargetBind
trigger1 = AnimElem=4
pos = 22, -127

[State 802, TargetBind]
type = TargetBind
trigger1 = AnimElem=5
pos = 86, -40

[State 802, LifeAdd]
type = TargetLifeAdd
trigger1 = animelem=5
value = -100

[State 802, 9]
type = TargetState
trigger1 = time = 31
value = 806

[State 802, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Thrown
[Statedef 805]
type    = A
movetype= H
physics = N
velset = 0,0

[State 805, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time||Anim != 805
value = 805

[State 805, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 805, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

;---------------------------------------------------------------------------
[Statedef 806]
type    = A
movetype= H
physics = N
velset = -1.25, 8

[State 806, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 10
freq = 100
ampl = -5
phase = 10


[State 806, hitground]
type=selfstate
trigger1= vel y > 0 && pos y >= 0
value=5110

;---------------------------------------------------------------------------
; Thrown
[Statedef 807]
type    = A
movetype= H
physics = N
velset = 0,0

[State 807, ChangeAnim2]
type = ChangeAnim2
trigger1 = !time||Anim != 807
value = 807

[State 807, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 807, Turn]
type = Turn
trigger1 = time = 23

[State 807, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

;---------------------------------------------------------------------------
[Statedef 808]
type    = A
movetype= H
physics = N
velset = -1.25, 8

[State 807, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 10
freq = 100
ampl = -5
phase = 10

[State 808, hitground]
type=selfstate
trigger1= vel y > 0 && pos y >= 0
value=5110

;---------------------------------------------------------------------------