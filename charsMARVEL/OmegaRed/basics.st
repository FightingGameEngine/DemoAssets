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
anim = 175
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 121,19

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

[state 175]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 121,15

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
value = 181 + ((Random * 4) / 1000)     ; change the 1 to however many winposes you have

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
value = 121,6

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 0

[state 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, Explod]
type = Explod
trigger1 = animelem = 3, =6
anim = 184
sprpriority = 2

[State 182]
type = PlaySnd
trigger1 = AnimElem = 3, >= 6
trigger1 = AnimElem = 13, < 0
trigger1 = Time%7 = 0
value = 182,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 121,5

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,200]
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

[State 183,0]
type = PlaySnd
trigger1 = Time = 0
value = 121,18

[State 183,1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[Statedef 184]
type = S
ctrl = 0
anim = 180
velset = 0,0

[state 184]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 184,0]
type = PlaySnd
trigger1 = Time = 0
value = 121,0

[State 184,1]
type = AssertSpecial
trigger1 = Time = [0,200]
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
trigger1 = Time = 1
value = 191 + ((Random * 5) / 1000)     ; change the 1 to however many intros you have


;-----------------------
; Intro #1
[Statedef 194]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 184,0]
type = PlaySnd
trigger1 = Time = 0
value = 121,7

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

; Intro #1
[Statedef 195]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 184,0]
type = PlaySnd
trigger1 = Time = 0
value = 121,8


[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 184,0]
type = PlaySnd
trigger1 = Time = 0
value = 121,9


[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro


; Intro #1
[Statedef 192]
type = S
ctrl = 0
anim = 199
velset = 0,0
sprpriority = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 180
flag = noshadow

[State 184,0]
type = PlaySnd
trigger1 = animelem = 13
value = 0,2

[State 184,0]
type = PlaySnd
trigger1 = animelem = 12
value = 121,11

[State 184,0]
type = PlaySnd
trigger1 = animelem = 12
value = 121,17

[State 192, Explod] ;hit spark
type = Explod
trigger1 = animelem = 15
anim = F1
ID = 1980
pos = -55,-80
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 13
scale = 1,1
sprpriority = 5

[State 192, Explod] ;capsula
type = Explod
trigger1 = Time = 0
anim = 198
ID = 198
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 237
scale = 1,1
sprpriority = 2

[State 192, Explod];vidro
type = Explod
trigger1 = Time = 0
anim = 197
ID = 197
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 237
scale = 1,1
sprpriority = 1

[State 192, Explod] ;porta1
type = Explod
trigger1 = Time = 0
anim = 201
ID = 201
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 170
scale = 1,1
sprpriority = 2

[State 192, Explod] ;porta2
type = Explod
trigger1 = Time = 170
anim = 201
ID = 201
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 67
scale = 1,1
sprpriority = -2

[State 184,0]
type = PlaySnd
trigger1 = Time = 100
value = 9,1

[State 192, Explod] ;fumaça1
type = Explod
trigger1 = Time = 120
anim = 202
ID = 202
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 40
scale = 1,1
sprpriority = 2

;[State 192, Explod] ;fumaça2
;type = Explod
;trigger1 = Time = 175
;anim = 202
;ID = 202
;pos = 0,0
;postype = p1
;facing = 1
;vfacing = 1
;bindtime = 1
;removetime = 62
;scale = 1,1
;sprpriority = -2


[State 192, Explod] ;fundo
type = Explod
trigger1 = Time = 0
anim = 196
ID = 196
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 242
scale = 1,1
sprpriority = -4

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro



; Intro helicptero
[Statedef 193]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 184,0]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 80
value = 121,13

[State 184,0]
type = PlaySnd
trigger1 = Time = 40
value = 121,12

[State 184,0]
type = PlaySnd
trigger1 = Time = 148
value = 121,14


[State 192, 1]
type = Explod
trigger1 = time = 0
Removetime = 80
anim = 192
postype = Back
pos = 0,0
sprpriority = -2
bindtime = -1

[State 192, 1]
type = Explod
trigger1 = time = 0
Removetime = 184
anim = 193
postype = Back
pos = 0,0
sprpriority = -4
bindtime = -1

[State 192, 1]
type = Explod
trigger1 = time = 0
Removetime = 184
anim = 190
postype = Back
pos = 0,0
sprpriority = -3
bindtime = -1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro

; Taunt

[Statedef 199]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = 100


[State 195]
type = PlaySnd
trigger1 = Time = 0
value = 121,4
channel = -1


[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
juggle = 4
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 30
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-60
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
juggle = 4
movetype = A
physics = S
velset = 0,0
poweradd = 40

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 121, 10

[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-70
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11



[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
juggle = 4
movetype = A
physics = S
velset = 0,0
poweradd = 50

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 121, 2;10,11

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 80
guardflag = MA
pausetime = 10,10
hitsound = 5,3
guardsound = 6,0
priority = 4, Hit
sparkno = 2
sparkxy = 0,-76
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
juggle = 4
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-49
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
juggle = 4
movetype = A
physics = S
velset = 0,0
poweradd = 40

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 45
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 5,3
guardsound = 6,0
sparkno = 1
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
juggle = 4
movetype = A
physics = S
velset = 0,0
poweradd = 50

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 121, 11

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 75
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = 5,4
guardsound = 6,0
sparkno = 2
sparkxy = -40,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8
fall=1
air.fall=1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
juggle = 4
movetype = A
physics = C
velset = 0,0
poweradd = 20

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
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 5,-35
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
juggle = 4
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 50

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
trigger1 = Time = 0
attr = C, NA
damage = 65
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 5,3
guardsound = 6,0
sparkno = 1
sparkxy = 10,-90
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
juggle = 4
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 50

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 121, 2;10,11

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 182]
type = PlaySnd
trigger1 = Time%7 = 0
value = 182,0

[State 420, HitDef]
type = HitDef
triggerall = time < 48
trigger1 = animelem = 5 || animelem = 6 || animelem = 7
trigger2 = animelem = 8 || animelem = 9 || animelem = 10
trigger3 = animelem = 11 || animelem = 12 || animelem = 13
trigger4 = animelem = 14 || animelem = 15 || animelem = 16
attr = C, NA
damage = 4
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 1,1
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = -15, (-40-random/30)
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-0.1
fall = 1

;[State 420, Explod]
;type = Explod
;trigger1 = AnimElem = 1
;anim = 455
;ID = 455
;pos = 0,0
;postype = p1
;facing = 1
;vfacing = 1
;bindtime = 1
;;removetime = -2
;;sprpriority = 2
;ontop = 1
;removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
juggle = 4
movetype = A
physics = C
velset = 0,0
poweradd = 15

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
trigger1 = Time = 0
attr = C, NA
damage = 22
hitflag = MAFD
priority = 3, Hit
guardflag = L
pausetime = 8,8
hitsound = 5,2
guardsound = 6,0
sparkno = 0
sparkxy = 5,-5
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
juggle = 4
movetype = A
physics = C
velset = 0,0
poweradd = 30

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
trigger1 = Time = 0
attr = C, NA
damage = 30
hitflag = MAFD
priority = 3, Hit
guardflag = L
pausetime = 9,9
hitsound = 5,3
guardsound = 6,0
sparkno = 1
sparkxy = 10,-5
animtype = Medium
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -6,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
;Crouch Strong Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 450
sprpriority = 2


[State 450, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2


[State 450, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 320,0


[State 450]
type = Helper
trigger1 = AnimElem = 5
stateno = 451
pos = 140,0


[State 450]
type = Explod
trigger1 = AnimElem = 4
anim = 452
ontop = 1
removeongethit = 1
pos = -30,10
ignorehitpause = 0

[State 450]
type = Explod
trigger1 = AnimElem = 4
anim = 452
sprpriority = 3
pos = -10,0
removeongethit = 1
ignorehitpause = 0

[State 450]
type = Explod
trigger1 = AnimElem = 5
anim = 452
ontop = 1
removeongethit = 1
pos = 125,10
ignorehitpause = 0

[State 450]
type = Explod
trigger1 = AnimElem = 5
anim = 452
sprpriority = -2
pos = 147,1
removeongethit = 1
ignorehitpause = 0

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Crouch Strong Kick Coil
[Statedef 451]
type    = C
movetype= A
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
anim = 451
sprpriority = 2



[State 451, 1]
type = HitBy
trigger1 = 1
value = SCA,AP


[State 451]
type = HitOverride
trigger1 = 1
stateno = 452
attr = SCA,AP
slot = 0
time = -1

[State 521, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 220,0

[State 451, 2]
type = HitDef
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = C, NA
animtype = Hard
damage    = 60
hitflag = MAFD
guardflag = L
pausetime = 0,7
sparkno = 2
priority = 3, Hit
sparkxy = -10,-80
hitsound   = 5,4
guardsound =6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -7
air.velocity = -7
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 451]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,Stateno != 450


;---------------------------------------------------------------------------
;Crouch Strong Kick Coil End
[Statedef 452]
type    = C
movetype= I
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
sprpriority = 2



[State 452]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
;Crouch Strong Kick V2
[Statedef 460]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 450
sprpriority = 2


[State 460, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2


[State 460, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 320,0


[State 460]
type = Helper
trigger1 = AnimElem = 5
stateno = 461
pos = 220,0

[State 450]
type = Explod
trigger1 = AnimElem = 4
anim = 452
ontop = 1
removeongethit = 1
pos = -30,10
ignorehitpause = 0

[State 450]
type = Explod
trigger1 = AnimElem = 4
anim = 452
sprpriority = 3
pos = -10,0
removeongethit = 1
ignorehitpause = 0

[State 450]
type = Explod
trigger1 = AnimElem = 5
anim = 452
ontop = 1
removeongethit = 1
pos = 207,10
ignorehitpause = 0

[State 450]
type = Explod
trigger1 = AnimElem = 5
anim = 452
sprpriority = -2
pos = 230,1
removeongethit = 1
ignorehitpause = 0

[State 460]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Crouch Strong Kick Coil
[Statedef 461]
type    = C
movetype= A
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
anim = 451
sprpriority = 2


[State 461, 1]
type = HitBy
trigger1 = 1
value = SCA,AP


[State 461]
type = HitOverride
trigger1 = 1
stateno = 452
attr = SCA,AP
slot = 0
time = -1

[State 461, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 220,0

[State 451, 2]
type = HitDef
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = C, NA
animtype = Hard
damage    = 60
hitflag = MAFD
guardflag = L
pausetime = 0,7
sparkno = 2
priority = 3, Hit
sparkxy = -10,-80
hitsound   = 5,4
guardsound =6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -7
air.velocity = -7
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0


[State 461]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,Stateno != 460


;---------------------------------------------------------------------------
;Crouch Strong Kick V3
[Statedef 470]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 450
sprpriority = 2


[State 470, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2


[State 470, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 320,0


[State 470]
type = Helper
trigger1 = AnimElem = 5
stateno = 471
pos = 80,0

[State 450]
type = Explod
trigger1 = AnimElem = 4
anim = 452
ontop = 1
removeongethit = 1
pos = -30,10
ignorehitpause = 0

[State 450]
type = Explod
trigger1 = AnimElem = 4
anim = 452
sprpriority = 3
pos = -10,0
removeongethit = 1
ignorehitpause = 0

[State 450]
type = Explod
trigger1 = AnimElem = 5
anim = 452
ontop = 1
removeongethit = 1
pos = 65,10
ignorehitpause = 0

[State 450]
type = Explod
trigger1 = AnimElem = 5
anim = 452
sprpriority = -2
pos = 87,1
removeongethit = 1
ignorehitpause = 0

[State 470]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Crouch Strong Kick Coil
[Statedef 471]
type    = C
movetype= A
physics = N
juggle  = 4
ctrl = 0
velset = 0,0
anim = 451
sprpriority = 2


[State 471, 1]
type = HitBy
trigger1 = 1
value = SCA,AP


[State 471]
type = HitOverride
trigger1 = 1
stateno = 452
attr = SCA,AP
slot = 0
time = -1

[State 471, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 220,0

[State 451, 2]
type = HitDef
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = C, NA
animtype = Hard
damage    = 60
hitflag = MAFD
guardflag = L
pausetime = 0,7
sparkno = 2
priority = 3, Hit
sparkxy = -10,-80
hitsound   = 5,4
guardsound =6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -7
air.velocity = -7
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0


[State 471]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,Stateno != 470


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
juggle = 4
poweradd = 20
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 601
sprpriority = 1
bindtime = -1

[State 182]
type = PlaySnd
trigger1 = Time%7 = 0
value = 182,0

[State 600, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
attr = A, NA
damage = 9
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4,8
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-40
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
juggle = 4
physics = A
poweradd = 45

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
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 4,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
juggle = 4
physics = A
poweradd = 60

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 121, 10

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
trigger1 = animelem = 3 ||animelem = 4 || animelem = 5
trigger2 = animelem = 6 ||animelem = 7 || animelem = 8
trigger3 = animelem = 9 ||animelem = 10
attr = A, NA
damage = 9
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,8
hitsound = 5,1
sparkno = 2
guardsound = 6,0
sparkxy = -5,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
fall = 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
juggle = 4
physics = A
poweradd = 22

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
trigger1 = Time = 0
attr = A, NA
damage = 22
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,2
guardsound = 6,2
sparkxy = 0,-38
sparkno = 0
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3


[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
juggle = 4
poweradd = 50

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
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,3
guardsound = 6,0
sparkno = 1
sparkxy = 0,-38
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
juggle = 4
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 121, 11

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 80
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
hitsound = 5,4
guardsound = 6,0
sparkxy = -20,-30
sparkno = 2
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState]
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
trigger1 = time = 0
value = 3,1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 100,-60

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 100,-60

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 10,-80

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 10,-80

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -70

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 5
value = 830



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
velset = -20,-12
poweradd = 50

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060));Not if hit off ground anim
value = 830

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 20

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
