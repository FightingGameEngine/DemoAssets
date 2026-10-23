

; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = AnimElem = 4
value = 6,10

[State 170,1]
type = PlaySnd
trigger1 = AnimElem = 11
value = 6,11
volume = 180

[State 170,2]
type = AssertSpecial     
trigger1 = Time < 220
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = AnimElem = 4
value = 6,10
channel = 0

[State 175,1]
type = PlaySnd
trigger1 = AnimElem = 12
value = 6,11
channel = 0
volume = 180

[State 175,2]
type = AssertSpecial     
trigger1 = Time < 220
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0


[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 1
value = ifelse(random<=500,181,182)

;-----------------------
; Winpose #1 - roar
[Statedef 181]
type = S
movetype = I
physics = N
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = AnimElem = 3
value = S180,ifelse(random<500,0,(ifelse(random>500,5,1)))

[State 181,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 1
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 180, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1801
ID = 1801
pos = 50,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0


[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,220]
flag = RoundNotOver

;-----------------------
; Winpose #1 - roar
[Statedef 182]
type = S
movetype = I
physics = N
ctrl = 0
anim = 181
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 = AnimElem = 3
value = S180,ifelse(random < 500, 2,4)

[State 181,CAMERA]
type = helper
trigger1 = pos X != 0
trigger1 = Time = 1
name = "helper1"
id = 6001
pos = 0,0
postype = p1
stateno = 6001
helpertype = normal
ownpal = 1
keyctrl = 1

[State 180, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1802
ID = 1802
pos = -90,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0


[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,220]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intros selector
type = S
ctrl = 0
velset = 0,0


[State 190,Winpose decider]
type = ChangeState
trigger1 = Time = 1
value = ifelse(random<=500,191,192)
;---------------------------------------------------------------------------------------------
;Intro1 - Start in the middle of transformation
[Statedef 191]
type = S
movetype = I
physics = N
ctrl = 0
anim = ifelse(random<500,193,194)
velset = 0,0
spriority = 0

[State 191, PlaySnd]
type = PlaySnd
triggerall = anim = 193
trigger1 = animelem = 1;5
value = S1901,0;5,0
volume=255

[State 191, PlaySnd]
type = PlaySnd
triggerall = anim = 194
trigger1 = animelem = 1;5
value = S1901,1+1*(random%3)
volume=255

;[State 191, PlaySnd]
;type = PlaySnd
;triggerall = anim = 194
;trigger1 = animelem = 7
;value = S5,0
;volume=255

[State 192] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192];Hulk Stop You
type = PlaySnd
triggerall = var(29)=0
trigger1 = AnimElem = 14
value = 15,2
Channel = 20

[State 190, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0

;-----------------------
; Intro #0 -- Soldier attack ("Leave Hulk Alone!")

[Statedef 192]
type = S
movetype = I
physics = N
ctrl = 0
anim = 192
velset = 0,0
spriority = 0

[State 191, PlaySnd]
type = PlaySnd
;triggerall = var(29) = 1
trigger1 = animelem = 12
value = S2,1
volume=255

[State 191, PlaySnd]
type = PlaySnd
;triggerall = var(29) = 1
trigger1 = animelem = 13
value = S190,0+1*(random%4)
volume=255

[State 3202, 2] ;P2 Hit Ground Spark (front)
type = Explod
trigger1 = animelem = 12
;persistent = 0
ID = 9990
anim = 9990
postype = p1
pos = 25, -100
;velocity = 0, 0
accel = 0, 0
removetime = 6
sprpriority = 1
ownpal = 1


[State 192] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 190, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
;-----------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0



[State 195, back to stance]
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
physics = S
velset = 0,0
poweradd = 28

[State 200, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,0
volume = 255

[State 200, gruntx1]
type = PlaySnd
trigger1 = Time = 1
value = 1,0
volume = 255

[State 200, gruntx2]
type = PlaySnd
trigger1 = Time = 1
value = 1,0



[State 200, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 30
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-80
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
physics = S
velset = 0,0
poweradd = 83

[State 210, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,1
volume = 255

[State 210, gruntx1]
type = PlaySnd
trigger1 = Time = 1
value = 1,2
volume = 255

[State 210, gruntx2]
type = PlaySnd
trigger1 = Time = 1
value = 1,2


[State 210, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 40
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-96
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
movetype = A
physics = S
velset = 0,0
poweradd = 111

[State 220, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2
volume = 255

[State 220, gruntx1]
type = PlaySnd
trigger1 = Time = 1
value = 1,4
volume = 255

[State 220, gruntx2]
type = PlaySnd
trigger1 = Time = 1
value = 1,4


[State 220, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 60
guardflag = MA
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,-6
guard.velocity = -5
air.velocity = -10,-6



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
velset = 0,0
poweradd = 28

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, gruntx1]
type = PlaySnd
trigger1 = Time = 1
value = 1,1
[State 230, gruntx2]
type = PlaySnd
trigger1 = Time = 1
value = 1,1


[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 50
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
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
poweradd = 83

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, gruntx1]
type = PlaySnd
trigger1 = Time = 1
value = 1,3
[State 240, gruntx2]
type = PlaySnd
trigger1 = Time = 1
value = 1,3


[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 118
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
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
physics = S
velset = 0,0
poweradd = 111

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 240, gruntx1]
type = PlaySnd
trigger1 = Time = 1
value = 1,5
[State 240, gruntx2]
type = PlaySnd
trigger1 = Time = 1
value = 1,5


[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 90
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = DiagUp
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -3,-5
guard.velocity = -4
air.velocity = -4,-8
fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
;poweradd = 20

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0
channel = 0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 40
getpower = 28
givepower = 14
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-60
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6
getpower = 0,0
givepower = 0,0


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


[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1
channel = 0

[State 410, HitDef]
type = HitDef
trigger1 = animelem = 2;Time = 0
attr = C, NA
damage = 50
getpower = 111
givepower = 69
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
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
type = C
movetype = A
physics = C
velset = 0,0


[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2
channel = 0

[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 90
getpower = 160
givepower = 111
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Up
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-14.2
guard.velocity = -5
air.velocity = -1,-14.6
air.recover = 0

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
physics = C
velset = 0,0


[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0
channel = 0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 42
getpower = 28
givepower = 14
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
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
movetype = A
physics = C
velset = 0,0


[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1
channel = 0

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 60
getpower = 83
givepower = 42
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-6

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


[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2
channel = 0

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = MD
damage = 80
getpower = 111
givepower = 56
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 35,-90
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,-8
guard.velocity = -3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
;poweradd = 20

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0
channel = 0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
getpower = 28
givepower = 14
guardflag = HA
pausetime = 6,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,-1

[State 600, ChangeState] ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 950

;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
;poweradd = 45

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1
channel = 0

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50
getpower = 83
givepower = 42
guardflag = HA
pausetime = 1,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = 0,-1

[State 610, ChangeState] ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 950

;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A

[State 620, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 0

[State 620, clap]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 620, bounce]
type = VelSet
trigger1 = AnimElem = 3
x = -3
y = -6

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 104
getpower = 111
givepower = 80
guardflag = HA
pausetime = 1,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Hard
ground.type = High
air.type = Low
air.fall = 1
ground.slidetime = 14
ground.hittime  = 12
ground.velocity = -6
guard.velocity = -8
air.velocity = -10,16



[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 950


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
;poweradd = 10

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0
channel = 0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
getpower = 28
givepower = 14
guardflag = HA
pausetime = 1,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, ChangeState]  ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 950

;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
;poweradd = 20

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1
channel = 0

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 69
getpower = 83
givepower = 42
guardflag = HA
pausetime = 1,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-10
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]  ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 950

;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2
channel = 0

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 118
getpower = 111
givepower = 56
guardflag = HA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState]  ;Change to jumping descent anim
type = ChangeState
trigger1 = AnimTime = 0
value = 950


;---------------------------------------------------------------------------
; Falling from air attack / superjump

[StateDef 950]
type = A
MoveType = I
physics = A
ctrl = 1

; neutral
[State 950, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X > -2 && Vel X < 2
value = 950

; forward
[State 950, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X >= 2
value = 951

; back
[State 950, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Vel X <= -2
value = 952


;---------------------------------------------------------------------------
;Throw Tackle(start)
[Statedef 850]
type = S
movetype = A
physics = S
anim = 800
velset = 0,0
ctrl = 0

[State 200, VelSetY]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1600, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
priority = 2, miss
sparkno = -1
snap = 32,0;,0,1
hitsound = S3,1
p1stateno = 810
p2stateno = 820

[State 1600, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Throw ( success )
[Statedef 810]
type = S
movetype = A
physics = S
anim = 850
velset = 0,0
sprpriority = -1

[State 200, VelSetY]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1601, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1601, SFX1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S890,3

[State 1601, SFX1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 1601, Push]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1601, Damage]
type = TargetLifeAdd
trigger1 = animtime = 0
value = -100

[State 1601, Bind1]
type = TargetBind
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 2, < 0
pos = 100,-50

[State 1601, Bind2]
type = TargetBind
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 3, < 0
pos = 80,-50

[State 1601, Bind2]
type = TargetBind
trigger1 = AnimElem = 3
pos = -100,-50

[State 1601, 12]
type = TargetState
trigger1 = AnimElem = 3
value = 821

[State 1601, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw_d (hit by, on ground)
;[Statedef 820]
;type    = A
;movetype= H ;Get hit
;physics = N
;velset = 0,0
;ctrl = 0

;[State 930, 1]
;type = ChangeAnim2
;Trigger1 = Time = 0
;value = 820

;[State 930, 2]
;type = HitBy
;Trigger1 = Time >= 0
;value = SCA
;time = 1

;Thrown by Kung Fu Throw
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
;anim = 5050

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 866]
type = TargetBind
trigger1 = time <= 8
pos = 120, -30
time = 0

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 2]
type = SelfState
trigger1 = time>80;!gethitvar(isbound);
value = 5050

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 15,-8
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .3

;[State 823]
;type = VelSet
;trigger1 = Time = 0
;x = 7
;y = -7



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



;---------------------------------
; Air Throw - Attempt
[Statedef 750]
type    = A
movetype= A
physics = A
juggle  = 0
ctrl = 0
anim = 750
VelSet = 0,0 
poweradd = 50
sprpriority = 1

[State 850]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 850]
type = HitDef
triggerall = var(20) != 20
Trigger1 = Time = 0
attr = A, NT         
hitflag = AF         
priority = 5, Miss    
sparkno = -1  
hitsound = S3,1     
sprpriority = 0   
damage=50    
p1facing = ifelse (command = "holdfwd", 1, -1) 
p2facing = 1         
p1stateno = 851      
p2stateno = 852       
guard.dist = 0        
fall = 1     
fall.damage = 100   
kill = 0
fall.kill = 1      

[State 850]
type = HitDef
triggerall = var(20) = 20
Trigger1 = Time = 0
attr = A, NT         
hitflag = AF         
priority = 5, Miss    
sparkno = -1  
hitsound = S3,1   
damage=50  
sprpriority = 0       
p1facing = 1
p2facing = 1         
p1stateno = 851      
p2stateno = 852       
guard.dist = 0        
fall = 1     
fall.damage = 125   
kill = 0
fall.kill = 1  

[State 850]
type = ChangeState
trigger1 = AnimTime = 0
value = 855
ctrl = 1
;---------------------------------------------------
; Air Throw - P1 Throwing Opponent
[Statedef 851]
type = A
movetype = I
physics = N
anim = 851
velset = 0, 0
sprpriority = 2
ctrl = 0
poweradd = 80

[State 851]
type = ScreenBound
trigger1 = Alive
value = 0

[State 851]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,4

[State 851]
type = Width
trigger1 = 1
value = 150, -40

[State 851]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50, -90
time = 12

[State 851]
type = SprPriority 
trigger1 = AnimElem = 2
value = 0

[State 851]
type = TargetBind
trigger1 = AnimElem = 2
pos = -60, -120
time = 4

[State 851]
type = TargetBind
trigger1 = AnimElem = 3
pos = -10, -120
time = 4

[State 851]
type = TargetBind
trigger1 = AnimElem = 4
pos = 20, 0
time = 3

[State 851]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -75
kill = 1
persistent = 0

[State 851]
type = TargetState
trigger1 = AnimElem = 5
value = 853

[State 851]
type = TargetDrop
trigger1 = animelem = 6

[State 851]
type=Helper
trigger1=1
name="S&E helper"
stateno=856
id=856

[State 856]
type=PlaySnd
triggerall=pos Y>=-80
trigger1=AnimElem = 5,=4 
value=8,2

[State 856]
type=PlaySnd
triggerall=pos Y<=-81
triggerall=pos Y>=-160
trigger1=AnimElem = 5,=12 
value=8,2

[State 856]
type=PlaySnd
triggerall=pos Y<=-160
trigger1=AnimElem = 6,=0 
value=8,2



[State 851]
type = ChangeState
trigger1 = AnimTime = 0
value = 855
ctrl = 1

;---------------------------------------------------
; Air Throw - P2 Being Thrown
[Statedef 852]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 80
sprpriority = -1

[State 852]
type = ChangeAnim2
trigger1 = time = 0
value = 852

[State 852]
type = ScreenBound
trigger1 = Alive
value = 0

;----------------------
;P2 Thrown into ground
[Statedef 853]
type = A
movetype = H
physics = N
velset = 0, 10
sprpriority = -1

[State 853]
type = PosAdd
trigger1 = time = 0
x = -10

[State 853]
type = Gravity
trigger1 = 1

[State 853]
type = ChangeState
trigger1 = vel Y > 0
trigger1 = pos Y >= -10
value = 854

;---------------------------------------------------
;Air Throw P2 Lie on the ground
[Statedef 854]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 854]
type = PosSet
trigger1 = Time = 0
y = 0

[State 854]
type = ChangeAnim
Trigger1 = 1
value = 5110

[State 854]
type = SelfState
triggerall = !Alive
trigger1 = Time = 0
value = 5080

[State 854]
type = SelfState
triggerall = Alive
trigger1 = Time = 50
value = 5120
;-----------------------
;Air Throw - P1 Landing
[Statedef 855]
type    = A
movetype= A
physics = A
juggle  = 0
ctrl = 0
anim = 855
sprpriority = 1


[State 855]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 11
ctrl = 0

;---------------------------------
;Air Throw - S&E Helper
[Statedef 856]
type=A
movetype=A
physics=N
sprpriority=5
ctrl=0

[State 856]
type=changeanim
trigger1=!time&&!prevstateno
value=856

[State 856]
type=BindToparent
trigger1=1

[State 856]
type=Explod
trigger1=enemy,stateno=854
anim=8401
pos=0,0
postype=p2
facing=1
sprpriority=3
bindtime=1
removetime=20
pausemovetime=999
supermovetime=999
ID=8401

[State 856]
type=DestroySelf
trigger1=Parent,Stateno!=[850,851]
;---------------------------------
;---------------------------------------------------------------------------
;CAMERA FOCUS
[Statedef 6001]
type = S
physics  = S
anim = 0
ctrl = 0

[state 6001,TURN]
type=turn
trigger1=ishelper(6001)
trigger1=facing!=root,facing
ignorehitpause=1

[State 6001,vel]
type = VelSet
trigger1 = parent,pos X > 0
x = ifelse(facing = 1,4,-4)
[State 6001,vel]
type = VelSet
trigger1 = parent,pos X < 0
x = ifelse(facing = 1,-4,4)
[State 6001,vel]
type = VelSet
trigger1 = parent,pos X = [-5,5]
x = 0

[State 6001, WIDTH]
type = Width
trigger1 = 1
value = 1,1

[State 6001, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6001,AS]
type = AssertSpecial
Trigger1 = 1
flag = invisible
flag2 = noshadow

[State 6001,Bound]
type = ScreenBound
trigger1 =1
value =1
movecamera = 320,0
[State 6001,push]
type = PlayerPush
trigger1 =1
value = 0

[State 6001, Destroyself]
type = destroyself
trigger1 = Time = 50
trigger1 = enemy, Life >= 1
trigger2=numhelper(6001)>=2
;---------------------------------------------------------------------------
;Guard Push (Stand)
[Statedef 6300]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 120
sprpriority = 2

[State 6300, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6300, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6300, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6300, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6300, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6300, a6]
type = Explod
trigger1 = Time = 0
anim = 7020
postype = p1
pos = 53,-50
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7
scale = .5,.5

[State 6300, a7]
type = PlaySnd
trigger1 = Time = 0
value = 54,3
volume = 255
channel = 1

[State 6300, a8]
type = PlaySnd
trigger1 = Time = 0
value = 1,0
channel = 0

[State 6300, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 6310];--------------crouch
type    = C
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 121
sprpriority = 2

[State 6310, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6310, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6310, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6310, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6310, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6310, a6]
type = Explod
trigger1 = Time = 0
anim = 7020
postype = p1
pos = 33,-45
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7
scale = .5,.5

[State 6310, a7]
type = PlaySnd
trigger1 = Time = 0
value = 54,3
volume = 255
channel = 1

[State 6310, a8]
type = PlaySnd
trigger1 = Time = 0
value = 50,0
channel = 0

[State 6310, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[Statedef 6320];------------air
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 122
sprpriority = 2

[State 6320, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6320, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6320, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6320, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6320, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6320, a6]
type = Explod
trigger1 = Time = 0
anim = 7020
postype = p1
pos = 33,-55
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7
scale = .5,.5

[State 6320, a7]
type = PlaySnd
trigger1 = Time = 0
value = 54,3
volume = 255
channel = 1

[State 6320, a8]
type = PlaySnd
trigger1 = Time = 0
value = 50,0
channel = 0

[State 6320, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

[Statedef 6350];guard push helper
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 1112
sprpriority = -4

[State 6350, a1]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 6350, a2]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 6350, a3]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 6350, a4]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 6350, a5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6350, a6]
type = DestroySelf
trigger1 = Time >= 18
