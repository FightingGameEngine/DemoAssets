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
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

;-------------------------------------------------------------------------------
; Win pose 1 - Win KO
;-------------------------------------------------------------------------------
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


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 35,0
volume = 0
channel = -1




[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 58,0
volume = 0
channel = -1



[State 181]
type = AssertSpecial
trigger1 = Time < 300
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
;facep2 = 1
velset = 0,0

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =2
value = 55,0
volume = 50

[State 210]
type = explod
trigger1 = time = 14
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = 0,-0
anim = 185
removetime = -1

[State 182]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover


;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Win pose 3- Win KO
;-------------------------------------------------------------------------------
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


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 79,0
volume = 0
channel = -1



[State 183]
type = AssertSpecial
trigger1 = Time < 350
flag = roundnotover


;-------------------------------------------------------------------------------
; Win pose 1 - Time Over
;-------------------------------------------------------------------------------
[Statedef 189]
type = S
ctrl = 0
physics = N
anim = 189
sprpriority = 0
;facep2 = 1
velset = 0,0

[State 189]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 189]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =2
value = 55,0
volume = 50

[State 210]
type = explod
trigger1 = time = 14
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = 0,-0
anim = 185
removetime = -1

[State 189]
type = AssertSpecial
trigger1 = Time < 0
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
value = 191 + ((Random * 3) / 1000)     ; change the 1 to however many intros you have
;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190






[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =2
value = 56,0
volume = 50




[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro






[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 25,0
volume = 0
channel = -1



[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0



----------------------------------------------------------------------------------
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 193






[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =2
value = 77,0
volume = 50




[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =2
value = 78,0
volume = 50




[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 3] ;Change to stand state when done
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


[State 200, c]
type = removeexplod
trigger1 = !time
id = 102

[State 200, d]
type = removeexplod
trigger1 = !time
id = 104



[State 200, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,0
guardsound = S8000,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1
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

[State 210, c]
type = removeexplod
trigger1 = !time
id = 102

[State 210, d]
type = removeexplod
trigger1 = !time
id = 104

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = -1
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1
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
poweradd = 75
sprpriority = 2

[State 220, c]
type = removeexplod
trigger1 = !time
id = 102

[State 220, d]
type = removeexplod
trigger1 = !time
id = 104



[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 55
guardflag = MA
pausetime = 11,11
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8000,6
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
envshake.time = 7
envshake.ampl = 4
fall=1
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


[State 230, c]
type = removeexplod
trigger1 = !time
id = 102

[State 230, d]
type = removeexplod
trigger1 = !time
id = 104


[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 25
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
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
airguard.velocity = -10,-.8
air.type = high
air.velocity = -4,-3
air.hittime = 15
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
; Stand Medium Kick
[StateDef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = -10

[State 240, c]
type = removeexplod
trigger1 = !time
id = 102

[State 240, d]
type = removeexplod
trigger1 = !time
id = 104


[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1


[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-75
hitsound = s8000,1
guardsound = S8000,6
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -2,-2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 23,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 241
ID = 241
pos = 106,-57
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1


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



[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=250
poweradd= 80
sprpriority = 2

[State 250, c]
type = removeexplod
trigger1 = !time
id = 102

[State 250, d]
type = removeexplod
trigger1 = !time
id = 104

[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2


[State 250, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 55
guardflag = MA
pausetime = 11,11
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = -1
hitsound = s8000,2
guardsound = S8000,6
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
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


[State 400, c]
type = removeexplod
trigger1 = !time
id = 102

[State 400, d]
type = removeexplod
trigger1 = !time
id = 104



[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 25
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
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 410, c]
type = removeexplod
trigger1 = !time
id = 102

[State 410, d]
type = removeexplod
trigger1 = !time
id = 104


[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
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

[State 250, c]
type = removeexplod
trigger1 = !time
id = 102

[State 250, d]
type = removeexplod
trigger1 = !time
id = 104

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 420, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C, NA
animtype = Hard
damage = 72,15
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 8,11
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
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


[State 430, c]
type = removeexplod
trigger1 = !time
id = 102

[State 430, d]
type = removeexplod
trigger1 = !time
id = 104



[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 25
animtype = Light
hitflag = MAF
guardflag = MA
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
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
[StateDef 440]
type    = C
movetype= A
physics = C
juggle  = 2
ctrl = 0
anim = 440
poweradd = 35
sprpriority = 2


[State 440, c]
type = removeexplod
trigger1 = !time
id = 102

[State 440, d]
type = removeexplod
trigger1 = !time
id = 104



[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1


[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 35
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-20
hitsound = s8000,1
guardsound = S8000,6
guardsound = s3,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-2
air.type = Low
air.hittime = 15
air.velocity = -1,-2.5

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 23,0


[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 441
ID = 441
pos = 0,-0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1


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




[State 440, 1]
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
juggle  = 4
ctrl = 0
anim = 450
poweradd = 70
sprpriority = 2


[State 450, c]
type = removeexplod
trigger1 = !time
id = 102

[State 450, d]
type = removeexplod
trigger1 = !time
id = 104


[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2


[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 24,0

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 55
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
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -10,0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 451
ID = 451
pos = 0,-0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1





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

[State 600, c]
type = removeexplod
trigger1 = !time
id = 102

[State 600, d]
type = removeexplod
trigger1 = !time
id = 104


[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 25
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
[StateDef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 35
sprpriority = 2

[State 610, c]
type = removeexplod
trigger1 = !time
id = 102

[State 610, d]
type = removeexplod
trigger1 = !time
id = 104


[State 610, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 26,0

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 35
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2,8
sparkno = 1
sparkxy = -10,-80
;guard.sparkno = 8430
hitsound = s8000,1
guardsound = S8000,6
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -3.5

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




[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Strong Punch
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 620
sprpriority = 2


[State 620, c]
type = removeexplod
trigger1 = !time
id = 102

[State 620, d]
type = removeexplod
trigger1 = !time
id = 104





[State 620, swoosh]
type = PlaySnd
trigger1 = Animtime = 0
value = 0,2

[State 620, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 27,0


[State 620, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 82
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 0,12
sparkno = -1
guard.sparkno=-1
sparkxy = -1
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -7,-2
air.hittime = 20
yaccel = 0.5
down.velocity = -4,-4
p2facing = 1








[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(28) = [0,1]
trigger1 = movecontact
value = 1350

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(28) = [2,3]
trigger1 = movecontact
value = 1300

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660



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

[State 630, c]
type = removeexplod
trigger1 = !time
id = 102

[State 630, d]
type = removeexplod
trigger1 = !time
id = 104


[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 20
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

[State 640, c]
type = removeexplod
trigger1 = !time
id = 102

[State 640, d]
type = removeexplod
trigger1 = !time
id = 104


[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 40
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
[StateDef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd = 55
sprpriority = 2

[State 650, c]
type = removeexplod
trigger1 = !time
id = 102

[State 650, d]
type = removeexplod
trigger1 = !time
id = 104


[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,22

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 85
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -53
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
fall = 1

[State 650, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 24,0

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 651
ID = 651
pos = 24,5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
;Throw Beam / Forward + Y/Z
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 800


[State 800, c]
type = removeexplod
trigger1 = !time
id = 102

[State 800, d]
type = removeexplod
trigger1 = !time
id = 104



[State 800,1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 52,0
persistent = 0






[State 800, 2]
type = HitDef
Trigger1 = AnimElem = 1
attr = S, NT
hitflag = M-
priority = 2, Miss
snap = 64, 0, 0, 1
hitsound = s53,0
sparkno = -1
p2facing = 1
p1stateno = 810
p2stateno = 820

[State 800, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; Throw Beam
[Statedef 810]
type = S
movetype = I
physics = N
ctrl = 0
anim = 810

[State 810, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = S0, 3

[State 810, 2]
type = Sprpriority
trigger1 = Animelem >= 5
value = -1

[State 810, 3]
type = Width
trigger1 = AnimElem = 1
edge = 40, 0

[State 810, 4]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 870
ID = 870
pos = 0,-0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
removeongethit = 1



[State 810, 5]
type = explod
trigger1 = animelem = 12
Anim = F72
postype = P2
pos = -20, -48
persistent = 0

; Throw Beam (Opponent)
[Statedef 820]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, 2]
type = Width
trigger1 = AnimElem = 1, >= 0
edge = 0, 0

[State 820, 3]
type = LifeAdd
Trigger1 = AnimElem = 4
value = -110

[State 820, 4]
type = VelAdd
trigger1 = time = 33
y = -5

[State 820, 4]
type = VelAdd
trigger1 = AnimElem = 4
x = -15

[State 820, 4]
type = VelAdd
trigger1 = time = 40
y = 7

[State 820, 5]
type = EnvShake
Trigger1 = Time = 48
persistent = 0
time = 20
ampl = -5
freq = 100
phase = 10

;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 6]
type = SelfState
trigger1 = time > 47
trigger1 = !gethitvar(isbound)
value = 5050

[State 820, 7]
type = SelfState
trigger1 = animtime = 0
value = 5050
ctrl = 0
;-----------------------------------------------------------------------------
; Liedown Roll Forward (Code by MystikBlaze)
[Statedef 8300]
type    = C       ;It's a crouching type move
movetype= I       ;The character is 'idle' while doing the recovery roll
physics = N
poweradd= 0
velset = 5,0      ;Just change the vel x to -8 if you want to roll backwards
ctrl = 0
anim = 8300
sprpriority = -1


[State 8300, c]
type = removeexplod
trigger1 = !time
id = 102

[State 8300, d]
type = removeexplod
trigger1 = !time
id = 104



[State 8300, PlayerPush] ;So you can roll 'through' the opponent
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]   ;Stop once the recovery roll is over
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999


[State 8300, NotHitBy]  ;Can't get hit while rolling
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, snd]
type = PlaySnd
trigger1 = StateNo = 8300
trigger1 = animelem = 1
value = 28,0



[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; Liedown Roll Backwards (Code by MystikBlaze)
[Statedef 8305]
type    = C       ;It's a crouching type move
movetype= I       ;The character is 'idle' while doing the recovery roll
physics = N
poweradd= 0
velset = -5,0      ;Just change the vel x to -8 if you want to roll backwards
ctrl = 0
anim = 8305
sprpriority = -1


[State 8305, c]
type = removeexplod
trigger1 = !time
id = 102

[State 8305, d]
type = removeexplod
trigger1 = !time
id = 104



[State 8305, PlayerPush] ;So you can roll 'through' the opponent
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]   ;Stop once the recovery roll is over
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999


[State 8305, NotHitBy]  ;Can't get hit while rolling
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 28



[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11            ;Change to crouching state
ctrl = 1

;-----------------------------------------------------------------------------

