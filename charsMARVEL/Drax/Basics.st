;-------------------------------------------------------------------------------
; Basics CNS File
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Lose by Time Over
;-------------------------------------------------------------------------------
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
;-------------------------------------------------------------------------------
; Lose
;-------------------------------------------------------------------------------
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
;-------------------------------------------------------------------------------
; DRAWGAME (Time over)
;-------------------------------------------------------------------------------
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
;-------------------------------------------------------------------------------
; Win state decider
;-------------------------------------------------------------------------------
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
value = 181+random%2

;-------------------------------------------------------------------------------
; Win pose 1 - Win KO
;-------------------------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 183]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay



[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 186
ID = 186
pos = 0,-0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 64,0
volume = 0
channel = -1



[State 183]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover

;-------------------------------------------------------------------------------
; Win pose 2- Win KO
;-------------------------------------------------------------------------------
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


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 56,0
volume = 0
channel = -1

[State 182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 182]
type = AssertSpecial
trigger1 = Time < 110
flag = roundnotover

;-------------------------------------------------------------------------------
; Win pose 1 - Time Over
;-------------------------------------------------------------------------------
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
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 2) / 1000)     ; change the 1 to however many intros you have


;---------------------------------------------------------------------------
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0



[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 191


[State 777, voz]
type = PlaySnd
trigger1 = animelem=1
value = 57,var(4)
persistent=0
channel =10


[State 210]
type = explod
trigger1 = time = 14
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = 0,-0
anim = 1955
scale = 1.60,1.60
removetime = 165



[State 777, voz]
type = PlaySnd
trigger1 = animelem=4
value = 58,var(4)
persistent=0
channel =10



[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro





[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

--------------------------------------------------------------------------------
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0



[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 2
flag = Intro




[State 777, voz]
type = PlaySnd
trigger1 = animelemtime(2)=12
value = 37,0
channel = 10



[State 192, A2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, A3] ;Change to stand state when done
type = ChangeState
trigger1 = !animtime
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


[State 195,1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 54


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



[State 200, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = animelem = 2
trigger2 = animelem = 3
attr = S, NA
damage = 40,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
sparkno = 0
guard.sparkno = -1
sparkxy = -15,-79
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5

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




[State 210, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 50,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
sparkno = 1
guard.sparkno = -1
sparkxy = -20,-80
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 4
envshake.freq = 100
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 210]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5

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





[State 220, 1]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, SA
damage = 70,0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,8
sparkno = 2
guard.sparkno = -1
sparkxy = -30,-79
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 7
envshake.ampl = 4
;Corner Push System
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -30),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5

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

[State 230, 1]
type = HitDef
triggerall = hitcount < 1
trigger1 = animelem = 2
trigger2 = animelem = 3
attr = S, NA
damage = 40,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
sparkno = 0
sparkxy = -15,-65
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 230]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

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

[State 240, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 50,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,15
sparkno = 1
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 4
envshake.freq = 100
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 240]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5

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

[State 250, 1]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, SA
damage = 70,0
animtype = High
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 250]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5

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

[State 400, 1]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage = 28,1
animtype = Light
guardflag = LA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
sparkno = 0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 4
envshake.freq = 100


[State 400]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 59)
anim = 8001
scale = 0.5,0.5

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

[State 410, 1]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage = 50,0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,15
sparkno = 1
sparkxy = -15,-59
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 59)
anim = 8001
scale = 0.5,0.5

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

[State 420, 1]
type = HitDef
trigger1 = time = 0
attr = C, SA
damage = 70,0
animtype = Heavy
guardflag = LA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -2,-7
air.hittime = 17
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;down.cornerpush.veloff = 0

[State 420]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 59)
anim = 8001
scale = 0.5,0.5

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

[State 430, 1]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
triggerall = hitcount < 1
attr = C, NA
damage = 40,0
animtype = Light
guardflag = LA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 0
sparkxy = -15,-10
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 10)
anim = 8001
scale = 0.5,0.5

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

[State 440, 1]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage = 50,0
animtype = Medium
guardflag = LA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
sparkno = 1
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 4
envshake.freq = 100
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 410]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 59)
anim = 8001
scale = 0.5,0.5

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

[State 450, 1]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C, SA
damage = 70,0
animtype = High
guardflag = LA
hitflag = MAF
priority = 3, Hit
pausetime = 9,8
sparkno = 2
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = low;trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -10,0
envshake.time = 7
envshake.ampl = 4
fall = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 450]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 59)
anim = 8001
scale = 0.5,0.5

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
sparkno = 0
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
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 49)
anim = 8001
scale = 0.5,0.5

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
sparkno = 1
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 610]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 49)
anim = 8001
scale = 0.5,0.5

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
sparkno = 2
sparkxy = 0,-59
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 620]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

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
sparkno = 0
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
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 630]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

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
sparkno = 1
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 640]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

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
sparkno = 2
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 650]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -10),floor(p2dist y - 65)
anim = 8001
scale = 0.5,0.5

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
; Throws
; Aerial drop (attempt)
[Statedef 850]
type = S
movetype = A
physics = S
anim = 850
velset = 0,0
ctrl = 0

[State 850, 1]
type = HitDef
trigger1 = time = 0
attr = S, NT
damage = 0,0
animtype = Light
hitflag = MAF
priority = 2,Miss
pausetime = 0,0
sparkno = 2
sparkxy = 0,0
hitsound = S8600,0
guardsound = S8500,0
ground.type = High
p1stateno = 860
p2stateno = 870
snap = 0,-98

[State 904, 2]
type = ScreenBound
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 850, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Aerial drop (success)
[Statedef 860]
type = S
movetype = A
physics = S
anim = 860

[State 860, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 81

[State 903, 5]
type = sprpriority
trigger1 = time > 20
value = 1

[State 860, 4]
type = PlaySnd
trigger1 = AnimElem = 2, = 1
value = 1500,1

[State 860, 5]
type = TargetBind
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 2, < 0
pos = 0,-140

[State 860, 6]
type = TargetBind
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 3, < 0
pos = -40,-150

[State 860, 7]
type = TargetBind
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 4, < 0
pos = -84,-152

[State 860, 8]
type = TargetBind
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 5, < 0
pos = -19,-148

[State 860, 9]
type = TargetBind
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 6, < 0
pos = 90,0

[State 860, 10]
type = TargetBind
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 7, < 0
pos = 90,0

[State 860, 11]
type = TargetBind
trigger1 = AnimElem = 10,>= 0
pos = 90,0

[State 860, 12]
type = TargetState
trigger1 = AnimElem = 10, = 1
value = 880

[State 860, 13]
type = PlaySnd
trigger1 = AnimElem = 10, = 1
value = 850,0

[State 860, 14]
type = PlaySnd
trigger1 = AnimElem = 10, = 3
value = 240,1

[State 0, 2]
type = ScreenBound
Trigger1 = Time > 0
value = 0
movecamera = 0,0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 6
time = 30
freq = 100
ampl = -6
phase = 90

[State 0, ROCK1]
type = Explod
trigger1 = animelem = 5
anim = 6011
ID = 6011
pos = 98,15
postype = p1
facing = -1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -1
ownpal = 1
removeongethit = 1
ignorehitpause = -1
supermovetime = 999
pausemovetime = 999



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S51,0
volume = 255
channel = -1

[State 860, 15]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Thrown by Aerial drop
[Statedef 870]
type = S
movetype = H
physics = S
velset = 0,0
ctrl = 0

[State 870, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 870

[State 870, 2]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 35

[State 880, 3]
type = LifeAdd
trigger1 = Time = 36
value = -150

[State 0, 2]
type = ScreenBound
Trigger1 = Time > 0
value = 0
movecamera = 0,0

[State 870, 3]
type = SprPriority
trigger1 = time < 0
value = 1
;---------------------------------------------------------------------------
[Statedef 880]
type = A
movetype = H
physics = N

[State 880, 1]
type = VelSet
trigger1 = Time = 0
x = -2
y = -7

[State 880, 2]
type = VelAdd
trigger1 = Time > 0
y = .4

[State 880, 5]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100
