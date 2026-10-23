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
value = S7,1
volume=255

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
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

;[State 175,0]
;type = PlaySnd
;trigger1 = Time = 0
;value = 6,2

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
; Winpose #1 - Trash Talk
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
value = 6,1 + ((Random * 2) / 1000)
volume = 255

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,175]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Should Have Run Away
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

;"Should have run away" Talk
[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,4
volume = 255

;Bamf! Helper
[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

;Bamf! Sound Effect
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S9,2

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver

;-----------------------
; Winpose #3 - Onward to Adventure!
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 0, Helper]
type = Helper
trigger1 = animelem = 13
helpertype = normal ;player
stateno = 1010
pos = -90,0
postype = p1    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,5
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = S9,2

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,150]
flag = RoundNotOver

;-----------------------
; Winpose #4 - Need Help?
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[state 184]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 184,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,3
volume = 255

[State 184,1]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 3) / 1000)  ;change the 1 to however many intros you have

;-----------------------
; Intro #1 - Cloak Intro
[Statedef 191]
type = S
ctrl = 0
anim = 190
;velset = 0,0

[State 0, 2]
type = AssertSpecial
trigger1 = time = [0, 150]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = time = 20
value = S4,1 + ((Random * 2) / 1000)  ;change the 1 to however many intros you have
volume = 255

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 194
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 191
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -7,-4
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Intro #2 - Priest Transformation
[Statedef 192]
type = S
ctrl = 0
anim = 192
;velset = 0,0

[State 0, 2]
type = AssertSpecial
trigger1 = time = [0, 200]
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S4,3
volume = 255

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Intro #3 - Bamf! Appear
[Statedef 193]
type = S
ctrl = 0
anim = 193
;velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0, 250]
flag = intro

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, Helper]
type = Helper
trigger1 = time = 56
helpertype = normal ;player
stateno = 1010
pos = 0,-80
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Bamf PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S9,2

[State 0, landing sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = S4,6
volume = 255

[State 0, Explod]
type = Explod
trigger1 = time = 70
anim = 60
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2

[State 600, EndState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Intro #4 - Prof. X
[Statedef 194]
type = S
ctrl = 0
anim = 0

[State 0, 2]
type = AssertSpecial
trigger1 = time = [0, 225]
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 4,4
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 175
value = 4,5
volume = 255

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 275
value = 0

;---------------------------------------------------------------------------
;Taunt - Praying
[StateDef 195]
anim = 195
ctrl = 0
type = C

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S11,1 + ((Random * 3) / 1000)
volume = 255

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
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-75
animtype = Light
ground.type = High
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -1
guard.velocity = -0.5
air.velocity = -2,-2

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
movetype = A
physics = S
juggle = 4
velset = 0,0
poweradd = 35

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -2
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
type = S
movetype = A
juggle = 4
physics = S
velset = 0,0
poweradd = 65

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 65
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = 5,2
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

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
hitsound = 5,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-50
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
movetype = A
juggle = 4
physics = S
velset = 0,0
poweradd = 45

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
damage = 45
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
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
movetype = A
juggle= 4
physics = S
velset = 0,0
poweradd = 75

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
damage = 75
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = 5,2
guardsound = 6,0
sparkno = 2
sparkxy = 0,-50
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8

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
movetype = A
physics = C
juggle = 4
velset = 0,0
poweradd = 20

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 30
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
hitsound = 5,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-40
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1
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
poweradd = 45

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 45
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-10
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -10
air.velocity = -3,-5

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
type = C
movetype = A
juggle = 4
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 40
guardflag = L
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkno = 2
sparkxy = 0,-40
animtype = UP
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
ontop = 1
removeongethit = 1

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
movetype = A
juggle= 4
physics = C
velset = 0,0
poweradd = 25

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 20
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 6,6
hitsound = 5,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-15
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
movetype = A
physics = C
juggle = 4
velset = 0,0
poweradd = 30

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 45
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-30
animtype = Hard
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,-2

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
movetype = A
juggle = 4
physics = C
velset = 0,0
poweradd = 25

[State 0, Explod]
type = Explod
;triggerall= vel x !=0
trigger1= time = 1
anim = 918
ID = 918
pos = 20,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, VelSet]
type = VelSet
trigger1 = time = 4
x = 20
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 12
x = 5
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 14
x = 0
y = 0

[State 450, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
hitflag = M
damage = 75
guardflag = L
priority = 3, Hit
pausetime = 10,10
hitsound = 5,2
guardsound = 6,0
sparkno = 2
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

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
juggle = 4
type = A
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = 5,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

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

[State 610, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 45
guardflag = MA
priority = 3, Hit
hitflag = MAF
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-50
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

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
juggle = 4
type = A
movetype = A
physics = A
poweradd = 75

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 620, hitdef]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 80
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,10
sparkno = 2
sparkxy = -10,-40
hitsound = 5,2
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,5
ground.cornerpush.veloff = -30
air.velocity = -8,10
air.fall = 1
guard.kill = 0

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
juggle = 4
type = A
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 22
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = 5,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-40
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

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
juggle = 4
type = A
movetype = A
physics = A
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = A, NA
damage = 65
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-40
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

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
juggle= 4
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 650, hitdef]
type = HitDef
trigger1 = animelem = 6
attr = A, NA
damage = 80
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10,-40
hitsound = 5,2
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,5
ground.cornerpush.veloff = -30
air.velocity = -8,10
air.fall = 1
guard.kill = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;===============================================================================
;Throws Ahead

;===============================================================================
;TELEPORT THROW
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 801

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 0, 1]
type = HitDef
trigger1 = animelem = 2
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
hitsound = S3,1
p2facing = 1
p1stateno = 801
p2stateno = 802
sprpriority = 1

[State 0, EndState]
type = ChangeState
trigger1 = (MoveContact = 0) && (AnimTime = 0)
value = 0
ctrl = 1

;Opponent has been grabbed (start throwing animation)
[Statedef 801]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,1
volume = 20

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1
time = 30
pos = 10,0

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1 && facing = 1
time = 34
pos = 40,60

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1 && facing = -1
time = 34
pos = 40,60

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[state 0, 2]
type = posadd
trigger1 = time = 15
x = -80
y = -150

[State 0, TargetState]
type = TargetState
trigger1 = time = 35
value = 5050

[State 0, EndState]
type = ChangeState
trigger1 = time = 35
value = 803
ctrl = 1

;Character Being Thrown
[Statedef 802]
type    = S
movetype= H
physics = N
sprpriority = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 1
value = 1000

[State 0, VelSet]
type = VelSet
trigger1 = enemy, stateno = 3300
x = 0
y = 0

[State 0, SelfState]
type = SelfState
triggerall = enemy, stateno != [3300, 3340]
trigger1 = (enemy, stateno != [800,801])
value = 5000


;Kick Them to the ground!
[StateDef 803]
anim = 800
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, hitdef]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 80
guardflag = HA
priority = 4
pausetime = 8, 10
sparkno = 2
sparkxy = -10,-40
hitsound = 5,2
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,5
ground.cornerpush.veloff = -30
air.velocity = -8,10
getpower = 35,5
givepower = 25, 15
air.fall = 1
guard.kill = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;===============================================================================
; Tail Throw
;===============================================================================
;Begin Grabbing Opponent
[Statedef 850]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 850
juggle  = 0
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 850, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 850, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NT
hitflag = M
priority = 5, Miss
ground.type = low
sparkno = -1
hitsound = -1
guardsound = 6,0
pausetime = 0,20
;p2facing = 1
p1stateno = 851
p2stateno = 852
snap = 50,0
sprpriority = 1

[State 850, ChangeState]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Tail Whip Throw Motion
[Statedef 851]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 5
anim = 851

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 851, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,1
persistent = 0

[State 851, PlaySnd]
type = PlaySnd
trigger1 = time = 12
value = S0,2
freqmul = 0.5

[State 851, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 851, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = -25,0

[State 851, TargetBind]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = -30,-15

[State 851, TargetBind]
type = targetstate
trigger1 = animelem = 3
value = 853

[State 851, ChangeState]
type = ChangeState
trigger1 = backedgedist <= 0 && animtime = 0 && Target,Vel X > -10
value = 101
ctrl = 1

[State 851, ChangeState]
type = ChangeState
trigger1 = backedgedist > 0 && animtime = 0
value = 0
ctrl = 1


;Character Being Thrown
[Statedef 852]
type    = S
movetype= H
physics = S
velset  = 0,0
anim = 852

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 852

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 0, Turn]
type = Turn
trigger1 = animelem = 1
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
[Statedef 853]
type    = A
movetype= H
physics = A
velset = -10,-5

[State 853, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 853

[State 853, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 853, SelfState]
type = SelfState
trigger1 = command = "recovery" && time <= 8
value = 854
ignorehitpause = 1
persistent = 0

[State 853, LifeAdd]
type = LifeAdd
trigger1 = time = 10
trigger2 = backedgedist <= 0
value = ceil(-100-random/20)

[State 853, SelfState]
type = SelfState
trigger1 = time >= 10
trigger2 = backedgedist <= 0
value = 5050

;---------------------------------------------------------------------------
[Statedef 854]
type    = S
movetype= I
physics = S
velset = -2,-3

[State 854, SelfState]
type = SelfState
trigger1 = time = 0
value = 5210
ctrl = 0

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

;---------------------------------------------------------------------------
; Triangle Jump
[Statedef 7730]
type = A
movetype = I
physics = N
anim = 7730
;velset = -2*Vel X,-7
ctrl = 1
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1430,0

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
trigger1 = command != "holdfwd" && time > 10
x = 6
y = -5

;[State 0, VelSet]
;type = VelSet
;trigger1 = command = "holdup"
;y = -3

;[State 0, VelSet]
;type = VelSet
;trigger1 = command = "holddown"
;y = 3

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = command = "holdup" && anim !=  7732
;value =7732

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = command = "holddown" && anim !=  7733
;value =7733

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = command != "holddown" && command != "holdup"
;value =7730

[State 0, VelSet]
type = VelSet
trigger1 = anim = 7730
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -1*(backedgebodydist)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 =  vel x != 0
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N

[State 600, EndState]
type = Changeanim
trigger1 =  vel x != 0
value = 7735
ctrl = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 7735
x = 6
y = -9

[State 600, EndState]
type = ChangeState
trigger1 = anim = 7735
trigger2 = (pos y > -5); && prevstateno != 105
value = 50
ctrl = 1

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

;------- End of Hyper effects helpers

