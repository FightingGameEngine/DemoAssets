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

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 171,18
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
anim = 175
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 171,18
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
value = 181 + !matchover + ((Random * 4) / 1000)
    ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,-11

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3111
ID = 3111
pos = 0,0
postype = left
facing = 1
vfacing = 1
bindtime = 1
removetime = 80
sprpriority = 10

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 8,0
channel = 0

[State 175,0]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = time = 490
value = 172,0
channel = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 189
ID = 189
pos = 0,0
postype = back
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
sprpriority = 3
ontop = 1

[State 0, Explod] ;wonderman
type = Explod
trigger1 = animelem = 3
anim = 188
ID = 188
pos = 136,217
postype = back
facing = 1
vfacing = 1
bindtime = 1
removetime = -1
sprpriority = 4
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 180
value = 171,11
channel = 2

[State 3000, portraitBG]
type = Explod
trigger1 = animelem = 3 && numexplod(1888)=0
anim = 187
ID = 1888
pos = -5,-5
postype = back
bindtime = -1
removetime = -1
supermove = 999
pausemovetime = 999
sprpriority = 999999
ownpal = 1
ontop = 1
scale = 1.5,1.5

[State 3200, assertspecial]
type = assertspecial
trigger1 = time > 120
flag = noBG
flag2 = noFG
ignorehitpause = 1


[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,520]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 183
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,9
channel = 0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,380]
flag = RoundNotOver

; Winpose #2 - Mission accomplished
[Statedef 183]
type = S
ctrl = 0
anim = 184
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,5
channel = 0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,380]
flag = RoundNotOver

; Winpose #2 - Mission accomplished
[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,13
channel = 0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,380]
flag = RoundNotOver

; Winpose #2 - Mission accomplished
[Statedef 185]
type = S
ctrl = 0
anim = 184
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,10
channel = 0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,380]
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
value = 191 + ((Random * 4) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 54
value = 8,1
channel = 10

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

; Intro #1
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 172,0
channel = 10

[State 3000, 9]
type = Helper
trigger1 = time = 0
name = "Wave 1-2"
ID = 1920
stateno = 1920
postype = back
pos = 0, 45;240; - var(7)
ownpal = 1
facing = 1
size.xscale = 1; (float)
size.yscale =2.5;(float)

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

[Statedef 1920]
type = S
physics = N
movetype = I
velset = 0, 0
sprpriority = 2
anim = 176

[State 3010, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, 2]
type = PosAdd
trigger1 = BackEdgeDist > 0
trigger2 = BackEdgeDist < 0
x = -(Backedgedist + 40)

[State 3010, 3]
type = DestroySelf
trigger1 = animtime=0;parent, Var(5) = 0

; Intro #1
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 8,0
channel = 10

[State 182,0]
type = PlaySnd
trigger1 = animelem = 11
value = 2,2


[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 11
time = 20
freq = 320
ampl = -5

[State 0, Explod]
type = Explod
trigger1 = animelem = 11
anim = 662
ID = 662
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = -50


[State 0, Explod]
type = Explod
trigger1 = animelem = 11
anim = 8400
ID = 8400
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 11
anim = 8401
ID = 8401
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = -52
ownpal = 1
removeongethit = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

; Intro #1
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 171,4
channel = 10

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

[StateDef 195]
anim = 195
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,20

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
juggle = 0; = 4
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
trigger1 = time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 30
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-99
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
juggle = 0; = 4
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,1

[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 50
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-95
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

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
juggle = 0; = 4
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,2

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 85
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 11,11
hitsound = 5,4
guardsound = 6,0
sparkno = 2
sparkxy = 0,-50
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
fall = 1
air.fall = 1

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
juggle = 0; = 4
type = S
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
attr = S, NA   
air.cornerpush.veloff = -20
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-70
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
juggle = 0; = 4
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 45

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 50
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 5,3
guardsound = 6,0
sparkno = 1
sparkxy = 0,-75
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
juggle = 0; = 4
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,3

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 80
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
hitsound = 5,4
guardsound = 6,0
sparkno = 2
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8
fall = 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
juggle = 0; = 4
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

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
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-50
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-2

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
type = C
juggle = 0; = 4
movetype = A
physics = C
velset = 0,0
poweradd = 45

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,2

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = MA
hitflag = MAF
priority = 3, Hit
sparkno = 1
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkxy = 0,-40
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-2

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
juggle = 0; = 4
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 50

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,3

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12;L10,10
hitsound = 5,4
guardsound = S3,0
sparkno = 2
sparkxy = 0,-70
animtype = Heavy
ground.type = Low
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
anim = 430
ctrl = 0
type = C
juggle = 0; = 4
movetype = A
physics = C
velset = 0,0
poweradd = 25

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
damage = 25
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,0
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
juggle = 0; = 4
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,1

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
damage = 35
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkxy = 0,0
sparkno = 1
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -3
air.velocity = -1,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
juggle = 0; = 4
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,3

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
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 75
guardflag = L
pausetime = 11,11
hitsound = 5,4
guardsound = 6,0
sparkno = 0
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
fall = 1
air.fall = 1

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
juggle = 0; = 4
movetype = A
physics = A
poweradd = 25

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
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkxy = 0,-70
sparkno = 0
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = 0,(vel y)

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
juggle = 0; = 4
type = A
movetype = A
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
hitsound = 5,3
guardsound = 6,0
sparkxy = 0,-70
animtype = Medium
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = 0,(vel y)

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
juggle = 0; = 4
type = A
movetype = A
physics = A
poweradd = 70

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,0

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
trigger1 = Time = 0
attr = A, NA
damage = 80
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = 5,4
guardsound = 6,0
sparkno = 2
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,3
fall = 1
air.fall = 1

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
juggle = 0; = 4
movetype = A
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
pausetime = 4,8
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-50
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = 0,(vel y)

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
juggle = 0; = 4
movetype = A
physics = A
poweradd = 40

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
damage = 50
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 5,1
guardsound = 6,0
sparkxy = 0,-50
sparkno = 1
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.type = High
air.velocity = 0,(vel y)

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
juggle = 0; = 4
type = A
movetype = A
physics = A
poweradd = 70

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,1

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
trigger1 = Time = 0
attr = A, NA
damage = 70
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = 5,1
guardsound = 6,1
sparkno = 2
sparkxy = 0,-30
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,3
fall = 1
air.fall = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


; Air Hard Kick
[StateDef 660]
anim = 660
ctrl = 0
type = A
movetype = A
physics = N
poweradd = 92

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 175,4

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 8018]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1


[State 8018]
type = VelSet
trigger1 = animelem = 1
x = 10
y = -4

[State 8018]
type = VelSet
trigger1 = animelem = 2
x = 10
y = -4

[State 8018]
type = VelSet
trigger1 = Time > 6
x = 5
y = 10


[State 8018]
type = VelAdd
trigger1 = Time > 6
y = 0.4


[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 80
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,8
hitsound = 5,4
guardsound = 6,0
sparkno = 2
sparkxy = -10,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -1,5
guard.velocity = -2
air.velocity = -1,15
fall = 1
air.fall = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = pos y > 0
value = 661

[StateDef 661]
anim = 661
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 2,2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8400
ID = 8400
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8401
ID = 8401
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = -52
ownpal = 1
removeongethit = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 320
ampl = -5


[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0



[State 650, ChangeState]
type = ChangeState
trigger1 = animtime = 0
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
trigger2 = parent,stateno= 3010


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


;======================================================
;X-Men Hyper Helpers================================
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
anim = 41501
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
anim = 41561
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


;Throw 1
[Statedef 800]
type    = S
movetype= A
physics = S
juggle = 0;  = 0
velset = 0,0
anim = 800
ctrl = 0
sprpriority = 0



[State 800, Hitdef]
type = HitDef
Trigger1 = Time = 1
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = S3, 1
sprpriority = 0
p1facing = ifelse(Command = "holdback",-1,1)
p2facing = 1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall = 1


[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------
;Throw 1 - P1
[Statedef 810]
type = A
movetype = I
physics = N
anim = 810
poweradd = 60
velset = 0, 0
sprpriority = 0
ctrl = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,1

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 50, -90
time = -1

[State 0, VelAdd]
type = VelAdd
trigger1 =  time > 0 && vel x < 40
x = 1.5

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
y = -1
;ignorehitpause =
;persistent =


;[State 0, ScreenBound]
;type = ScreenBound
;trigger1 = 1
;value = 0
;movecamera = 15,0
;ignorehitpause =


[State 0, TargetState]
type = TargetState
trigger1 = frontEdgeBodyDist < 50
value = 830 ;uhu


[State 810, Change State]
type = ChangeState
trigger1 = frontEdgeBodyDist < 50
value = 840
ctrl = 0

;------------------------
;Throw 1 - P2
[Statedef 820]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0
poweradd = 80
sprpriority = -2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time < 20
value = 0
movecamera = 150,0
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time >= 20
value = 0
movecamera = 0,0

[State 820, Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 820



[Statedef 840]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
velset = 0,0
anim = 840
ctrl = 0
sprpriority = 0
facep2 = 1

[State 220, 4]
type = HitDef
trigger1 = time = 0
attr = S, NA   
air.cornerpush.veloff = -20
hitflag = MAF
guardflag = MA
animtype = Hard
pausetime = 9, 9
priority = 5, Miss
damage = 100
sparkno = 3
sparkxy = -10, -66
hitsound = s2,2
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 24
ground.velocity = -16, -8
guard.slidetime = 13
guard.hittime = 31
guard.velocity = -10
air.velocity = -10, -8
air.hittime = 45
;p2stateno = 221
fall.recovertime = 40
air.fall = 1
fall = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20, -20
time = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 320
ampl = -5

[State 810, Change State]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1


;------------------------
[Statedef 830]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 50


;[State 816, ChangeAnim]
;type = ChangeAnim
;trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
;value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0); && (!SelfAnimExist(5060));Not if hit off ground anim
value = 830

[State 816, SelfState]
type = SelfState
trigger1 = time > 15
value = 5100
ctrl = 0

;--------------------------------------------------------------------------------------------
; Guard Push (stand)
[Statedef 7610]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 7610
sprpriority = 0
facep2 = 1

[State 7610, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 7610, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 7610, Width]
type = Width
trigger1 = 1
value = 10,0

[State 7610, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 23


[State 7610, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 30

[State 7610, PlaySnd 2]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 7610, Spark]
type = Explod
trigger1 = AnimElem = 2;Time = 0
anim = 7020
postype = p1
pos = 31,-77
ownpal = 1
vel = 0,0
scale = 0.5,0.5
ignorehitpause = 1
sprpriority = 5

[State 7610, Guard Push Helper]
type = Helper
trigger1 = AnimElem = 2;Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 7611
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 7610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Push (Helper)

[Statedef 7611]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = Parent,Anim
sprpriority = -4


[State 7611, PlayerPush]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 7611, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 7611, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 25

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 15

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 7611, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 10

[State 7611, DestroySelf]
type = DestroySelf
trigger1 = Time >= 14

