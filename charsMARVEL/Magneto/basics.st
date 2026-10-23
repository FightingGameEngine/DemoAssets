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
sprpriority = 0


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
sprpriority = 0

[state 175]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

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
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

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
value = 182,2
channel = 0

[State 182,0]
type = PlaySnd
trigger1 = animelem = 12
value = 3,1
channel = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 12
anim = 1
ID = 181
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 1
ownpal = 1
removeongethit = 1

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,320]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 182,3
channel = 0

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

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 193,0
channel = 1

[State 182,0]
type = PlaySnd
trigger1 = Time = 30
value = 192,0
channel = 2

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,300]
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
value = 191 + ((Random * 3) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 192
velset = 0,0


[State 182,0]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 9
trigger3 = animelem = 15
trigger4 = animelem = 20
trigger5 = animelem = 25
trigger6 = animelem = 30
trigger7 = animelem = 35
trigger8 = animelem = 41
value = 3,1
channel = 10

[State 0, Explod]
type = Explod
trigger1 = animelem = 41
anim = 1
ID = 191
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
sprpriority = 1
ownpal = 1
removeongethit = 1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro


[Statedef 192]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 182,4
channel = 10

[State 182,0]
type = PlaySnd
trigger1 = animelem= 16
value = 193,0
channel = 10
channel = 10

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 && anim != 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro


[Statedef 193]
type = S
physics = N
ctrl = 0
anim = 198
velset = 0,0

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 105,1
channel = 10

[State 182,0]
type = PlaySnd
trigger1 = Time = 30
value = 182,6
channel = 10

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = -300

[State 0, VelSet]
type = VelSet
trigger1 = time= 0
y = 2

[State 0, VelSet]
type = VelSet
trigger1 = pos y >= 0
y = 0


[State 0, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall =time> 0
trigger1 = pos y = 0 && anim != 0
value = 0

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro



;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
juggle = 0; = 4
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 200,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA   
air.cornerpush.veloff = -20
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,4
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
movetype = A
juggle = 0; = 4
physics = S
velset = 0,0
poweradd = 50

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value =210,0

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 210,1

[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkno = 1
sparkxy = 0,-110
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
type = S
juggle = 0; = 4
movetype = A
physics = S
velset = 0,0
poweradd = 75

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 220,1

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 4
value = 220,0

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA   
air.cornerpush.veloff = -20
damage = 65
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 11,11
hitsound = 5,1
guardsound = 6,0
sparkno = 2
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,-2
guard.velocity = -5
air.velocity = -4,8
fall = 1

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
movetype = A
physics = S
juggle = 0; = 4
velset = 0,0
poweradd = 20

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,4
guardsound = 6,0
sparkno = 0
sparkxy = 0,-30
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
physics = S
velset = 0,0
juggle = 0; = 4
poweradd = 50

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1


[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 30
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
movetype = A
juggle = 0; = 4
physics = S
velset = 0,0
poweradd = 70

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 250, grunt]
type = PlaySnd
trigger1 = animelem = 4
value = 0,2

[State 250, HitDef]
type = HitDef
triggerall = var(38) = 0
trigger1 = animelem = 2
attr = S, NA   
air.cornerpush.veloff = -20
damage = 30
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
hitsound = 5,2
guardsound = 6,0
sparkno = 2
sparkxy = -20,-80
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = 0,-8
guard.velocity = -4
air.velocity = 0,-8

[State 250, HitDef]
type = HitDef
triggerall = var(38) = 1
trigger1 = animelem = 2
attr = S, NA
air.cornerpush.veloff = -20
damage = 30
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6,6
hitsound = 5,2
guardsound = 6,0
sparkno = 2
sparkxy = -20,-80
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = 0,-1
guard.velocity = -4
air.velocity = 0,-1

[State 250, HitDef]
type = HitDef
triggerall = var(38) = 0
trigger1 = animelem = 6
attr = S, NA   
air.cornerpush.veloff = -20
damage = 30
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
hitsound = 5,1
guardsound = 6,0
sparkno = 2
sparkxy = -20,-120
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -9,-6
guard.velocity = -4
air.velocity = -9,-8
fall = 1
p2stateno = 5045
;p2getp1state = 0

[State 250, HitDef]
type = HitDef
triggerall = var(38) = 1
trigger1 = animelem = 6
attr = S, NA
air.cornerpush.veloff = -20
damage = 30
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
hitsound = 5,1
guardsound = 6,0
sparkno = 2
sparkxy = -20,-120
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -9,6
guard.velocity = -4
air.velocity = -9,8
fall = 1

[State 250, VarSet]
type = VarSet
trigger1 = animelemtime(6)=0
v = 38
value = 1

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
juggle = 0;= 4
physics = C
velset = 0,0
poweradd = 20

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0


[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 8,8
hitsound = 5,4
sparkno = 0
guardsound = 6,0
sparkxy = 0,-40
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
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 50
juggle = 0; = 4

[State 182,0]
type = PlaySnd
trigger1 = animelem = 3
value = 410,0

[State 410]
type = Helper
trigger1 = AnimElem = 3
stateno = 6410
id = 6410
ownpal = 1
pos = 30,0

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Magnetic Pulse
[Statedef 6410]
type = C
movetype = A
physics = N
anim = 6410
juggle = 0;=4
ctrl = 0
sprpriority = 1
velset = 5,0
hitcountpersist = 1


[State 6410]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 6410]
type = ChangeState
trigger1 = Time = 57
value = 21363

[State 6410]
type = HitDef
attr = C, NP
trigger1 = Time = 0
damage = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0,5
sparkno = 1 ; ---------------spark no
sparkxy = -10,-20
hitsound   = 5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 35
ground.velocity = -3,-2
air.velocity = -3,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 1

[State 6410]
type = DestroySelf
trigger1 = Time = 24

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
juggle = 0; = 2
velset = 0,0
poweradd = 50

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 410,1

[State 420, HitDef]
type = HitDef
triggerall = var(39)<2
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12;L8,8
hitsound = 5,1
guardsound = 6,0
sparkno = 2
sparkxy = 0,-40
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-13
guard.velocity = -5
air.velocity = 0,-12
p2stateno = 5060
;p2getp1state = 0

[State 420, Varadd]
type = Varadd
trigger1 = animelemtime(3) = 0
v = 39
value = 1

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
juggle = 0; = 4
physics = C
velset = 0,0
poweradd = 20

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
sparkxy = 0,0
sparkno = 0
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
velset = 0,0
poweradd = 40
juggle = 0; = 4

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

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
sparkno = 1
guardsound = 6,0
sparkxy = 0,0
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2,-2
guard.velocity = -3
air.velocity = -2,-1

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
physics = C
velset = 0,0
poweradd = 55
juggle = 0;= 4

[State 520]
type = VelSet
trigger1 = Time = 7
x = 27

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 710,0

[State 520]
type = Explod
trigger1 = Time >= 7
trigger1 = Time < 22
trigger1 = Time%7 = 0
anim = 6100
pos = 0,0

[State 520]
type = Explod
trigger1 = Time >= 7
trigger1 = Time < 22
trigger1 = Time%4 = 0
anim = 7107
pos = -20,0
sprpriority = 5


[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 65
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 11,11
hitsound = 5,1
guardsound = 6,0
sparkno = 2
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 450]
type = ChangeState
trigger1 = Time = 30
value = 451
ctrl = 0

;Crouch Strong Kick End
[Statedef 451]
type    = C
movetype= I
physics = C
juggle = 0;  = 4
ctrl = 0
velset = 0,0
anim = 451
sprpriority = 2

[State 521]
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
movetype = A
physics = A
poweradd = 25
juggle = 0;= 3

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,4
guardsound = 6,0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,((vel y)-.2)

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
physics = A
poweradd = 45
juggle = 0; = 3

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,((vel y)-.2)

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
physics = A
poweradd = 70
juggle = 0; = 3

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 220,1
channel = -1

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
hitsound = 5,1
guardsound = 6,0
sparkxy = 0,-70
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
physics = A
poweradd = 22
juggle = 0; = 3

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0


[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 22
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = 5,3
guardsound = 6,0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,((vel y)-.2)

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
poweradd = 50
juggle = 0; = 3

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1


[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = 5,2
guardsound = 6,0
sparkxy = -10,-90
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,((vel y)-.2)

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
physics = A
poweradd = 60
juggle = 0;= 3

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 220,1
channel = -1

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
hitsound = 5,1
guardsound = 6,0
sparkxy = 0,-30
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
fall=1

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

[State 101, Turn]
type = Turn
trigger1 = enemynear,movetype = H
trigger1 = p2dist x < -10

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

;-------------------------------------------------------------------------------
[Statedef 9020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 9020, Anim] ;Custom animation
type = null;ChangeAnim2
trigger1 = 1
value = 5012


[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim ;2
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)


[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type



[State 5050, 2] ; anim for trip
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(groundtype) = 3
trigger1 = SelfAnimExist(5070)
value = 5070


[State 9020, State]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9020, State]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9020, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 9030

;----------------------------------------------------------------------
; Hit by - flying through the air
; (a custom gethit state)
[Statedef 9030]
type    = A
movetype= H
physics = N


[State 9030]
type = AfterImage
trigger1 = Time = 5
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 0

[State 9030]
type = AfterImageTime
trigger1 = 1
time = 2

[State 9030, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 9030, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9030, No scroll]
type = null;ScreenBound
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 0,1

[State 9030, Hit wall]
type = ChangeState
;triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 9027


[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050
trigger2 = Anim != 5070

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0


[State 5050, 2] ;Coming down anim for trip
type = ChangeAnim
trigger1 = anim = 5070
trigger1 = Vel Y >= 0
trigger1 = SelfAnimExist(anim-10) || SelfAnimExist(5071)
value = ifelse(SelfAnimExist(5071),5071,anim-10)
persistent = 0


[State 5035, 3]
type = null;ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 5040 ;HITA_RECOV

[State 5050, 4] ;Recover near ground
type = null;SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = 1;Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 5050, 5]; Recover in mid air
type = null;ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 9030, Hit ground]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5071]), 0, 25)
value = 5100 ;HIT_BOUNCE

;-----------------------------------------------------------------------------------------------------
; Hit by  - hit wall
; (a custom gethit state)
[Statedef 9027]
type    = A
movetype= H
physics = N

[State 9027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 9027]
type = EnvShake
trigger1 = time = 0
time = 30
freq = 100
ampl = -10
phase = 10

[State 9027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 9027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 9027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 9027, Spark]
type = null;Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 9027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 825

[State 9027, Sound]
type = null;PlaySnd
trigger1 = Time = 0
value = F7,0

[State 9027, State]
type = ChangeState
trigger1 = Time = 5
value = 9028

;----------------------------------------------------------------
; Hit by  - bounce off wall
; (a custom gethit state)
[Statedef 9028]
type    = A
movetype= H
physics = N


[State 9028, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 9028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -2

[State 9028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 2


[State 9028, Turn]
type = null;Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 9028, Gravity]
type = VelAdd
trigger1 = 1
y = .39

[State 9028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 9028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 9028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 9028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 9028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;;;
;Stand by
[Statedef 7827]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
;anim = 9800

[State 7827]
type = PosSet
trigger1 = Time = 0
y = 0

[State 7827]
type = ChangeState
trigger1 = NumEnemy = [1,2]
trigger1 = Enemy(0),statetype = L || Enemy(0),movetype != H
value = 102


[State 7827]
type = ChangeState
trigger1 = NumEnemy = 2
trigger1 = Enemy(1),statetype = L || Enemy(1),movetype != H
value = 102

; RUN_FWD
[Statedef 102]
type    = S
physics = S
anim = 100
sprpriority = 2
ctrl = 0



[State 102]
type = PosSet
trigger1 = Time = 0
y = 0

[State 102]
type = PlaySnd
trigger1 = Time = 4
value = 100,6


[State 102, 1]
type = VelSet
trigger1 = AnimElemNo(0) = [2,5]
x = 12


[State 102]
type = VarSet
trigger1 = Time = 0
var(1) = 0


[State 102]
type = VarSet
trigger1 = Time = 0
trigger1 = BackEdgeDist < 0
var(1) = 1


[State 102]
type = VelSet
trigger1 = var(1) && BackEdgeDist > 20
x = 0

[State 102, 1]
type = null;VelMul
trigger1 = AnimElem = 8,> 0
x = 0.92

[State 102, 1]
type = null;VelSet
trigger1 = Time = 0
x = const(velocity.run.fwd.x)
y = const(velocity.run.fwd.y)

[State 102, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 102, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 102, 2]
type = null;CtrlSet
trigger1 = Time = 4
value = 1


[State 102, 2]
type = CtrlSet
trigger1 = p2bodydist x < 50
trigger2 = enemynear,movetype = A
value = 1

[State 102, 3]
type = null;ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52

[State 102, 4]
type = ChangeState
trigger1 = Time = 25
value = 101
ctrl = 1

[State 102, 4]
type = null;ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 195]
type    = S
movetype= H
physics = S
juggle = 0;  = 4
ctrl = 0
anim = 195
sprpriority = 2

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 183,0
channel = -1


[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
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
p1facing = ifelse(Command = "holdback",-1,1)
p2facing = -1
p1stateno = 810
p2stateno = 820
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

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 220,1
channel = -1

[State 182,0]
type = PlaySnd
trigger1 = animelem = 3
value = 1,17

[State 182,0]
type = PlaySnd
trigger1 = animelem = 16
value = 1,18

[State 182,0]
type = PlaySnd
trigger1 = animelem = 17
value = 810,0


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

[State 820, Turn]
type = Turn
trigger1 = time = 0
trigger1 = enemynear,command = "holdback"

[State 820, PosAdd]
type = PosAdd
trigger1 = time = 0
trigger1 = enemynear,command = "holdback"
x = -80

[State 1270]
type = PalFx
trigger1 = Timemod = 10,1
time = 4
add = 64,64,64
sinadd = 64,64,64,30

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -1
y = -4

[State 0, VelSet]
type = VelSet
trigger1 = time = 36
x = 0
y = 12

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 0, EnvShake]
type = EnvShake
triggerall = time > 10
trigger1 = pos y > 0
time = 30
freq = 60
ampl = -3
phase = 90


[State 0, SelfState]
type = SelfState
triggerall = time > 10
trigger1 = pos y > 0
trigger2 = time > 100
value = 5100


[Statedef 126]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 126
velset = 0,0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,9


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = -1;5;arent,sprpriority + 1


[State 0, PosSet]
type = PosSet
triggerall = parent,statetype != C
trigger1 = 1
x = parent,pos x + 40*(parent,facing)
y = parent,pos y - 20

[State 0, PosSet]
type = PosSet
triggerall = parent,statetype = C
trigger1 = 1
x = parent,pos x + 40*(parent,facing)
y = parent,pos y + 10



[State 0, ChangeState]
type = ChangeState
trigger1 =  parent,anim != 120 && parent,anim != 130 && parent,anim != 140 && parent,anim != 150
trigger1 =  parent,anim != 121 && parent,anim != 131 && parent,anim != 141 && parent,anim != 151
trigger1 =  parent,anim != 122 && parent,anim != 132 && parent,anim != 142 && parent,anim != 152
value = 127
ctrl = 0

[Statedef 127]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 127
velset = 0,0
facep2 = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 =animtime = 0

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
pos = 31,-90
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
