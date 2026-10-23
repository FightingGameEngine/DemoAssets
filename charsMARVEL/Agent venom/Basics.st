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

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =5
value = 9111,3

[State 191, Helper]
type = Helper
trigger1 = animelem =5
helpertype = normal ;player
name = "tela"
ID = 1190
stateno = 1190
pos = 20,-110
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 99
size.xscale=1
size.yscale=1

[State 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover

;--------------------------------------------------------------
;tela
[Statedef 1190]
type = S
ctrl = 0
anim = 7720

[State 1193, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 0

[State 1193, end]
type = DestroySelf
trigger1 = time = 45

;-------------------------------------------------------------------------------
; Win pose 2- Win KO
;-------------------------------------------------------------------------------
;camara

[Statedef 182]
type = S
ctrl = 0
physics = N
anim = 182
sprpriority = 0
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =5
value = 9111,4

[State 192, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "camara"
ID = 190
stateno = 1199
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 192, Helper]
type = Helper
trigger1 = animelem =5
helpertype = normal ;player
name = "flash"
ID = 190
stateno = 1200
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 182]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover
;--------------------------------------------------------------
;camara2
[Statedef 1199]
type = S
ctrl = 0
velset = 0,0
anim = 7001


[State 1194, SprPriority]
type = SprPriority
trigger1 = time = 0
value = -2

[State 1194, end]
type = DestroySelf
trigger1 = time = 160
;--------------------------------------------------------------
;flash
[Statedef 1200]
type = S
ctrl = 0
velset = 0,0
anim = 7002


[State 1194, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State 1194, end]
type = DestroySelf
trigger1 = time = 130

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

[State 0,190 ]
type = ChangeState
triggerall = time = 0
trigger1 = p2name = "spiderman"
value = 192
ctrl = 0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 3) / 1000)     ; change the 1 to however many intros you have
;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
[Statedef 191]
type = S
anim = 191
velset = 0,0
spriority = 2

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9111,1

[State 191, Helper]
type = Helper
trigger1 = time =0
helpertype = normal ;player
name = "spiderman"
ID = 191
stateno = 1193
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 2

[State 193, Helper]
type = Helper
trigger1 = time = 20
helpertype = normal ;player
name = "alerta"
ID = 190
stateno = 1197
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = 99

[State 191, VarSet]
type = VarRandom
trigger1 = time =0
v = 1
range = 6,8

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;--------------------------------------------------------------
;spiderman
[Statedef 1193]
type = S
ctrl = 0
anim = 7700

[State 1007, Ground FX]
type = Explod
trigger1 = AnimElem = 11
anim = 8170
pos = 50,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .3,.3
facing = 1
ownpal = 1
ignorehitpause = 1

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9999,5

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 9999,7

[State 1193, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 2

[State 1193, end]
type = DestroySelf
trigger1 = time = 100

;--------------------------------------------------------------
;alerta
[Statedef 1197]
type = S
ctrl = 0
velset = 0,0
anim = 7708


[State 1194, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 5

[State 1194, end]
type = DestroySelf
trigger1 = time = 30

;-------------------------------------------------------------------

;colgado Intro
[Statedef 192]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 9111,0

[State 192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;-------------------------------------------------------------------
;venom Intro

[Statedef 193]
type = S
anim = 192
velset = 0,0
spriority = 99

[State 193, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "venom"
ID = 190
stateno = 1198
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
spriority = -2

[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 0,PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 9111,2

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 3] ;Change to stand state when done
type = ChangeState
trigger1 = time = 92
value = 0
;-----------------------------------------------------------------
;venom
[Statedef 1198]
type = S
ctrl = 0
velset = 0,0
anim = 1003

[State 1194, SprPriority]
type = SprPriority
trigger1 = time = 0
value = -2

[State 1194, end]
type = DestroySelf
trigger1 = time = 85
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

[State 194,PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 9111,3

[State 195, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
;trueno
[Statedef 1302]
type = S
ctrl = 0
anim = 7009

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 1
add = -10,-50,250
palfx.mul = 120,224,150
palfx.sinadd = 85,55,110,10
palfx.time = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 190,9

[State 1195, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 4

[State 1195, end]
type = DestroySelf
trigger1 = time = 20

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
trigger1 = Time = 4
value = 8400, 0

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,0

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -20,-75
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = -2,-3
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -20,-75
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.velocity = -3,-6
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 5
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12
sparkxy = -20,-76
guard.sparkno = S8100
sparkno = s8022
hitsound = s8000,2
guardsound = S8500,0
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -7             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12

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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,3

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 3

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -20,-50
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8500,0
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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,4

[State 240, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 4

[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -10,-70
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,5

[State 250, 1]
type = PlaySnd
trigger1 = Time = 5
value = 8400, 5

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8022
sparkxy = -20,-110
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,0

[State 400, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -20,-50
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,1

[State 410, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -25,-50
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
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
SprPriority = -5

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 9
value = 8400, 2

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 8
anim = 7712
pos = 30,10
sprpriority = 5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = 1,.7
facing = 1
ownpal = 1
ignorehitpause = 1

[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-90
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-12
envshake.time = 7
envshake.ampl = 4

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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,3

[State 430, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 3

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
hitflag = MAF
guardflag = MA
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -20,0
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,4

[State 440, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 4

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -20,-18
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,5

[State 450, 1]
type = PlaySnd
trigger1 = Time = 4
value = 8400, 5

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = High
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = 0,-50
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,0

[State 600, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -20,-100
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,1

[State 610, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 1

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -20,-70
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 9
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -20,-40
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,3

[State 630, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 3

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -20,-50
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,4

[State 640, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 4

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -20,-25
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
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

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,5

[State 650, 1]
type = PlaySnd
trigger1 = Time = 5
value = 8400, 5

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -20,-40
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
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

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70

;---------------------------------------------------------------------------
;Throw Beam / Forward + Y/Z
;---------------------------------------------------------------------------
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 800

[State 800,1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 48,0
persistent = 0

[State 800, 2]
type = HitDef
Trigger1 = AnimElem = 3
attr = S, NT
hitflag = M-
priority = 2, Miss
snap = 64, 0, 0, 1
hitsound = s8000,8
sparkno = -1
p2facing = 1
p1stateno = 810
p2stateno = 820

[State -2, Explod]
type = Explod
trigger1 = movehit
anim = 4010
ID = 5010
pos = 0,-60
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 99999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0  

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
trigger1 = AnimElem = 3
value = s191,7

[State 810, 1]
type = PlaySnd
trigger1 = AnimElem = 4 && random <= 500
value = s190,6 

[State 810, 2]
type = Sprpriority
trigger1 = Animelem >= 4
value = -1

[State 810, 3]
type = Width
trigger1 = AnimElem = 3
edge = 40, 0

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 0,0

[State 810, 4]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 810, 5]
type = explod
trigger1 = animelem = 3
Anim = 7701
postype = P1
pos = 100, -78
persistent = 0
sprpriority = 5
scale = 0.4, 1.3

; Throw Beam (Opponent)
[Statedef 820]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 8220+random%2
pos = 0,-100
postype = p1  
facing = 1
bindtime = -2
sprpriority = 4
ownpal = 0

[State 810, 1]
type = PlaySnd
trigger1 = animelem = 4
value = s8000,7

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
x = -10

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
