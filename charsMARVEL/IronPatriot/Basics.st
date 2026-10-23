;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; LOSE (Time over)
;---------------------------------------------------------------------------
[Statedef 170]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 170, 1]
type = ChangeAnim
trigger1 = animtime = 0
value = 176

[State 220, 1]
type = Playsnd
trigger1 = animelem = 1
value = 12, 14

[State 170, End]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;---------------------------------------------------------------------------
; Win state decider
;---------------------------------------------------------------------------

; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
; Win pose 1 - Bow
;---------------------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = -10

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 0,100

[State 191, Wood 1]
type = Explod
trigger1 = time = 0
persistent = 1
anim = 182
postype = p1
pos = -5,-15
removetime = 100
sprpriority = 10

[State 181,2]
type = Playsnd
triggerall = Var(3) = [0,50]
trigger1 = animelem = 1
value = 13,17

[State 181,2]
type = Playsnd
triggerall = Var(3) = [50,100]
trigger1 = animelem = 1
value = 13,6

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Introduction
;---------------------------------------------------------------------------
; INTRO decider
[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,100


[State 190, 2]
type = ChangeState
trigger1 = P2name = "Spiderman"
trigger2 = P2name = "Spider-man"
trigger3 = P2name = "Symbiote Spiderman"
trigger4 = P2name = "Spider-Man 2099"
trigger5 = P2name = "Scarlet Spider"
trigger6 = P2name = "mutantspidey"
value = 196

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,30]
value = 196

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [31,60]
value = 193


[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [61,100]
value = 197

[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

; You can delete the following two controllers if you're building your own
; character using KFM. These are the wood pieces that KFM kicks.

[State 191, Wood 1]
type = null;Explod
trigger1 = RoundState != 0
persistent = 0
anim = 191
postype = p1
pos = 260, -90
velocity = -4.2, -7
accel = 0, .32
removetime = 48

[State 191, Wood 2]
type = null;Explod
trigger1 = AnimElemTime(7) = 1
anim = 192
postype = p1
pos = 60, -70
velocity = 2, -4
accel = 0, .32
removetime = 35

; You can delete the following two controllers if you're building your own
; character using KFM. These play back the sounds of the wood block being
; broken.

[State 191, Snd 1]
type = null;PlaySnd
trigger1 = AnimElem = 7
value = F5,2
volume = -40

[State 191, Snd 2]
type = null;PlaySnd
trigger1 = AnimElemTime(7) = 3
value = F5,3
volume = -80

;---------------------------------------------------------------------------
; Introduction 2
;---------------------------------------------------------------------------

[Statedef 193]
type = S
ctrl = 0
velset = 0,0

[State 193, 2]
type = Playsnd
trigger1 = animelem = 1
value = 13,0

[State 193, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191


[State 193, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

;Sentry
[State 193, helper]
type = Helper
triggerall = !Numhelper(99300)
trigger1 = StateNo = 193
trigger1 = animelem = 1
ID = 99300
stateno = 99300
name = "Sentry"
pos = -50,0
postype = P1
facing = 1
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 1

[State 193, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0


;-------Sentry------------
[statedef 99300]
type = A
anim = 99300
ctrl = 0

[state 99300, changestate]
type = changestate
trigger1 = time = 80
value = 99400


;-------Sentry------------
[statedef 99300]
type = A
anim = 99300
ctrl = 0

[state 99300, changestate]
type = changestate
trigger1 = time = 80
value = 99400

[statedef 99400]
type = A
ctrl = 0
anim = 99302
ownpal = 1
velset = 0,-12

[state 99400, destroy]
type = Destroyself
trigger1 = time = 200


;-------MoonStone------------
[statedef 99301]
type = A
anim = 99301
ctrl = 0

[state 99301, changestate]
type = changestate
trigger1 = time = 90
value = 99401

[statedef 99401]
type = A
ctrl = 0
anim = 99301
ownpal = 1
velset = 0,-10

[state 99401, destroy]
type = Destroyself
trigger1 = time = 200

 ;---------------------------------------------------------------------------
; Introduction 3
;---------------------------------------------------------------------------

[Statedef 196]
type = A
ctrl = 0
anim = 196
velset = 0,0

[State 1050, 0]
type = PosSET
trigger1 = Time = 0
y = -200

[State 105]
type = Explod
triggerall = !NumExplod(1196)
trigger1 = ANIM = 196
persistent = 1
anim = 1196
id = 1196
postype = p1
sprpriority = -10
pos = -3, -20
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 50
ownpal = 1
scale=.8,.8

[State 105]
type = Explod
triggerall = !NumExplod(1197)
trigger1 = ANIM = 196
persistent = 1
anim = 1196
id = 1197
postype = p1
sprpriority = 10
pos = 50, -20
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 50
ownpal = 1
scale=.8,.8

[State 193, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 193, 2]
type = Playsnd
triggerALL = P2name != "Spiderman"
triggerALL = P2name != "Spider-man"
triggerALL = P2name != "Symbiote Spiderman"
triggerALL = P2name != "Spider-Man 2099"
triggerALL = P2name != "Scarlet Spider"
triggerALL = P2name != "mutantspidey"
trigger1 = animelem = 1
value = 13,3
FREQMUL = 1.9

[State 190, Wolverine]
type = Playsnd
trigger1 = P2name = "Spiderman"
trigger2 = P2name = "Spider-man"
value = 13,12

[State 190, Wolverine]
type = Playsnd
triggerALL = P2name != "Spiderman"
trigger1 = P2name = "Symbiote Spiderman"
trigger2 = P2name = "Spider-Man 2099"
trigger3 = P2name = "Scarlet Spider"
trigger4 = P2name = "mutantspidey"
value = 13,8


[State 0, PosAdd]
type = Velset
trigger1 = AnimElem = 1
y = 1

[State 193, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1050, 0]
type = PosADD
trigger1 = pos y <= -10
y = 0

[State 1050, 0]
type = CHANGEANIM
trigger1 = pos y = 0
VALUE = 0

[State 441, 5]
type = ChangeState
trigger1 = (ANIM = 0)
VALUE = 0

;---------------------------------------------------------------------------
[Statedef 51225]
type    = A
physics = A

;Prevents characters from cloning due to reversal def moves you never know 0___0
[State DestroyHelper]
type=destroyself
trigger1=ishelper
ignorehitpause=1
pausemovetime=9999999
supermovetime=9999999

[State 51, 1]
type = Null
trigger1 = 1

[State 441, 5]
type = ChangeState
trigger1 = ANIMTIME = 0
VALUE = 0

 ;---------------------------------------------------------------------------
; Introduction 3
;---------------------------------------------------------------------------

[Statedef 197]
type = A
ctrl = 0
anim = 197
velset = 0,0

[State 105]
type = Explod
triggerall = !NumExplod(1198)
trigger1 = time = 0
persistent = 0
anim = 1197
id = 1198
postype = p1
sprpriority = 10
pos = 0, 0
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 190
ownpal = 1
scale=1,1.1

[State 193, 2]
type = Playsnd
trigger1 = animelem = 1
value = 13,10
Volume = 40


[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 441, 5]
type = ChangeState
trigger1 = animtime = 0
VALUE = 0
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

[State 193, 2]
type = Playsnd
trigger1 = animelem = 1
value = 13,14

[State 105]
type = Explod
triggerall = !NumExplod(19502)
trigger1 = time = 0
persistent = 0
anim = 19502
id = 19502
postype = p1
sprpriority = 10
pos = 0,-10
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 20
ownpal = 1

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
juggle  = 4
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
damage = 30,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 8,8
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound =S81,1
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -5

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 205
poweradd = 20
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 206
sprpriority = 10
stateno = 206
pos = 0, -5
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 206]
type = S
movetype = A
physics = N
anim = 206
ctrl = 0
velset = 0,0
sprpriority = 10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 4220, NoHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3010, hitdef]
type = HitDef
trigger1 = ANIMELEM = 4
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 50,12
pausetime = 7,10
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-79
animtype  = medium
ground.type = high
ground.slidetime = 15
ground.hittime  = 17
ground.velocity = -2
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=205
;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 210
poweradd = 30
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 13

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
damage = 35,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound =S81,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -5

[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 215
poweradd = 20
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 4
name = "Light Beam"
ID = 216
sprpriority = 10
stateno = 216
pos = -10,0
ownpal = 1

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 6
name = "Light Beam"
ID = 216
sprpriority = 10
stateno = 216
pos = -10, 0
ownpal = 1

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 8
name = "Light Beam"
ID = 216
sprpriority = 10
stateno = 216
pos = -10, 0
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 216]
type = S
movetype = A
physics = N
anim = 218
ctrl = 0
velset = 10,0
sprpriority = 10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 1
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 10,10
pausetime = 2,10
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-79
animtype  = Hard
ground.type = high
ground.slidetime = 17
ground.hittime  = 100
ground.velocity = -2
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=3400
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
poweradd = 40
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 3
value = 12, 11

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S,NA
damage = 50,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = S8222
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound =S81,1
ground.type = High
ground.slidetime = 17
ground.hittime  = 21
ground.velocity = -6
air.type = Low
air.hittime = 18
air.velocity = -6
;fall=1

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 225
poweradd = 20
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 226
sprpriority = 10
stateno = 226
pos = 6,-3
ownpal = 1
scale = 1,1.1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 226]
type = S
movetype = A
physics = N
anim = 226
ctrl = 0
velset = 0,0
sprpriority = 10

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 6
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 70,12
pausetime = 10,15
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-79
animtype  = Hard
ground.type = high
ground.slidetime = 19
ground.hittime  = 21
ground.velocity = -4
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=225
;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 230
poweradd = 20
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 230, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
damage = 30,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = S8222
sparkxy = -15,-25
guard.sparkno = s8001
hitsound = s8000,0
guardsound =S81,1
ground.type = Low
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -3
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
juggle  = 4
ctrl = 0
anim = 240
poweradd = 30
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 13

[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
damage = 35,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = S8222
sparkxy = -15,-85
guard.sparkno = s8001
hitsound = s8000,1
guardsound =S81,1
ground.type = HIGH
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -3
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 245
poweradd = 20
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 246
sprpriority = 10
stateno = 246
pos = 6,-3
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 246]
type = S
movetype = A
physics = N
anim = 246
ctrl = 0
velset = 0,0
sprpriority = 10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = ANIMELEM = 4
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 60,12
pausetime = 7,11
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-79
animtype  = Hard
ground.type = high
ground.slidetime = 17
ground.hittime  = 19
ground.velocity = -3
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=245
;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim=250
poweradd= 40
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 3
value = 12, 11

[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
damage = 50,5
animtype = High
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound =S81,1
ground.type = High
ground.slidetime = 17
ground.hittime = 21
ground.velocity = -6
air.type = Low
air.hittime = 5
air.velocity = -6

[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 255
poweradd = 20
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 2
name = "Light Beam"
ID = 256
sprpriority = 10
stateno = 256
pos = 0,0
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 256]
type = S
movetype = A
physics = N
anim = 256
ctrl = 0
velset = 0,0
sprpriority = 10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = ANIMELEM = 7
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 40,15
pausetime = 5,10
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-79
animtype  = Hard
ground.type = high
ground.slidetime = 19
ground.hittime  = 21
ground.velocity = -2
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0


[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 14
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 40,12
pausetime = 10,12
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-79
animtype  = Heavy
ground.type = Trip
ground.slidetime = 17
ground.hittime  = 25
ground.velocity = -15,-3
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
Fall = 1

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=255
;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
damage = 30
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = S8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,0
guardsound =S81,1
ground.type = Low
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -3
air.velocity = -5,0
air.type = Low

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 405]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 405
poweradd = 20
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 406
sprpriority = 10
stateno = 406
pos = 0, -5
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 406]
type = C
movetype = A
physics = N
anim = 406
ctrl = 0
velset = 0,0
sprpriority = 10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = animelem =4
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 50,12
pausetime = 7,10
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-59
animtype  = medium
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=405

;---------------------------------------------------------------------------
; Crouching Medium Punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 410
poweradd = 30
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 13

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
damage = 35,10
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = S8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound =S81,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -5,0

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 415]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 415
poweradd = 20
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 416
sprpriority = 10
stateno = 416
pos = 6,-3
ownpal = 1
scale = 1,1.1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 416]
type = C
movetype = A
physics = N
anim = 416
ctrl = 0
velset = 0,0
sprpriority = 10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 6
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 60,12
pausetime = 8,11
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-59
animtype  = Hard
ground.type = low
ground.slidetime = 15
ground.hittime  = 17
ground.velocity = -3
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=415
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
poweradd = 40

[State 220, 1]
type = Playsnd
trigger1 = animelem = 3
value = 12, 11

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 420, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = C, NA
damage = 50
guardflag = MA
pausetime = 10,10
hitsound = s8000,2
guardsound =S81,1
sparkno = S8222
sparkxy = -15,-59
guard.sparkno = s8001
animtype = Heavy
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1,-13
air.velocity = -7

[State 420, End]
type = ChangeState
trigger1 = movehit && command="holdup"
value = 700
ctrl = 1

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
juggle  = 4
ctrl = 0
anim = 430
poweradd = 20
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 430, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
damage = 30,10
animtype = Light
hitflag = MA
guardflag = MA
priority = 2, Hit
pausetime = 8,8
sparkno = S8222
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound =S81,1
ground.type = Low
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -3
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 430, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 435]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 435
poweradd = 20
sprpriority = 10

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 436
sprpriority = 10
stateno = 436
pos = 0,0
ownpal = 1
scale = 1,1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 436]
type = C
movetype = A
physics = N
anim = 436
ctrl = 0
velset = 0,0
sprpriority = -1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = animelem =4
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 50,12
pausetime = 7,10
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-59
animtype  = Hard
ground.type = low
ground.slidetime = 15
ground.hittime  = 17
ground.velocity = -2
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=435
;---------------------------------------------------------------------------
; Crouching Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 440
poweradd = 30
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 13

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 440, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
damage = 35,10
animtype = Medium
hitflag = MA
guardflag = MA
priority = 3, Hit
pausetime = 9,9
sparkno = S8222
sparkxy = -15,-15
guard.sparkno = s8001
hitsound = s8000,1
guardsound =S81,1
ground.type = Low
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -3
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 445]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 445
poweradd = 20
sprpriority = 10

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 446
sprpriority = 10
stateno = 446
pos = 0,0
ownpal = 1
scale = 1,1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 446]
type = C
movetype = A
physics = N
anim = 446
ctrl = 0
velset = 0,0
sprpriority = -1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 =animelem =4
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 60,12
pausetime = 8,11
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-59
animtype  = Hard
ground.type = low
ground.slidetime = 17
ground.hittime  = 19
ground.velocity = -3
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=445
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
poweradd = 40
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 11

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 450, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
damage = 50,5
animtype = High
hitflag = MA
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = S8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound =S81,1
ground.type = trip
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -6

[State 450, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 455]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 455
poweradd = 20
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 2
name = "Light Beam"
ID = 456
sprpriority = 10
stateno = 456
pos = 0,0
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 456]
type = C
movetype = A
physics = N
anim = 456
ctrl = 0
velset = 0,0
sprpriority = 10

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ScreenBound]
type = VELSET
trigger1 = ANIMELEM = 8
X = 3

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = animelem =3
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 30,12
pausetime = 5,12
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-59
animtype  = Hard
ground.type = high
ground.slidetime = 19
ground.hittime  = 21
ground.velocity = -3
airguard.velocity = -10
air.type = Low
air.velocity = -10,1
air.juggle = 5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0


[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 11
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 40,12
pausetime = 10,12
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound =S81,1
sparkno = 1
sparkxy = -15,-59
animtype  = Heavy
ground.type = trip
ground.slidetime = 17
ground.hittime  = 25
ground.velocity = -15,-3
airguard.velocity = -50
air.type = Low
air.velocity = -50,1
air.juggle = 5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
Fall = 1

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=455
;---------------------------------------------------------------------------
; Jumping Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,5
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound =S81,1
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,-1

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
juggle  = 4
ctrl = 0
anim = 610
poweradd = 30
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 13

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 610, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
damage = 35,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound =S81,1
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,-1

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
juggle  = 4
ctrl = 0
anim = 620
poweradd=40
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 3
value = 12, 11

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
damage = 40,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound =S81,1
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
juggle  = 4
ctrl = 0
anim = 630
poweradd = 20
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 630, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
damage = 25,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,5
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound =S81,1
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,-1

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
juggle  = 4
ctrl = 0
anim = 640
poweradd = 30
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 13

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 640, HitDef]
type = HitDef
trigger1 =animelem = 3
attr = A,NA
damage = 35,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound =S81,1
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,-1

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
juggle  = 4
ctrl = 0
anim = 650
poweradd=40
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 11

[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 650, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
damage = 40,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound =S81,1
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

;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 800

[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1, 1


[State 800,1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 92,0
persistent = 0


[State 800, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NT
hitflag = M-
priority = 2, Miss
snap = 64, 0, 1
hitsound = s93,0
sparkno = -1
p2facing = 1
p1stateno = 810
p2stateno = 820

[State 800, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; Proton Fling (Iron Man)
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

[State 105]
type = Explod
triggerall = !NumExplod(811)
trigger1 = ANIMELEM = 3
persistent = 0
anim = 811
id = 811
postype = p1
sprpriority = 10
pos = 8,-3
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 30
ownpal = 1

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

; Proton Fling (Opponent)
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
trigger1 = TIME = 50
x = -8

[State 820, 5]
type = EnvShake
Trigger1 = Time = 34
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

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 2.8,-7
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

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
;END

;---------------------------------------------------------------------------
; Throws
;---------------------------------------------------------------------------
[Statedef 830]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 800

[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1, 1


[State 800,1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 92,0
persistent = 0



[State 800, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NT
hitflag = M-
priority = 2, Miss
snap = 64, 0, 1
hitsound = s93,0
sparkno = -1
p2facing = 1
p1stateno = 840
p2stateno = 850

[State 800, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; Proton Fling (Iron Man)
[Statedef 840]
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
value = 841
ctrl = 1

; Proton Fling (Opponent)
[Statedef 850]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 821

[State 820, 2]
type = Width
trigger1 = AnimElem = 1, >= 0
edge = 0, 0

[State 820, 4]
type = VelAdd
trigger1 = time = 24
x = -2

[State 820, 4]
type = VelAdd
trigger1 = animelem = 3
x = 0

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
value = 5000

[State 820, 7]
type = SelfState
trigger1 = animtime = 0
value = 5000
;---------------------------------------------------------------------------
; Beam light
;---------------------------------------------------------------------------
[Statedef 841]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 841
ctrl = 0
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 1
value = 12,9

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 842
sprpriority = 10
stateno = 842
pos = 0, 0
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 842]
type = S
movetype = A
physics = N
anim = 842
ctrl = 0
velset = 0,0
sprpriority = 2

[State 220, 1]
type = Playsnd
trigger1 = animelem = 4
value = 1000,5

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 4
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 120,20
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound = S3,0
sparkno = S8222
sparkxy = -15,-79
animtype  = Hard
ground.type = trip
ground.slidetime = 20
ground.velocity = -15
airguard.velocity = -50
air.type = Low
air.velocity = -50,1
air.juggle = 5
fall.animtype = Hard
fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=841
trigger2 = root, stateno !=1201
;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw - thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 851]
type    = A
movetype= H
physics = N
velset = 2.8,-7
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

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

;------------------------------------------------------------------------
;----------------------------------気力溜め------------------------------
;------------------------------------------------------------------------
;パワー溜め
[Statedef 1500]
type = S
physics = S
ctrl = 0
anim = 1500
velset = 0,0
sprpriority = 2

[State 1900, 1];気の音1
type = PlaySnd
trigger1 = time = 0
value = 4000, 1
volume = 255

[State 1900, 2];気の音2
type = PlaySnd
trigger1 = time = 10
value = 4000, 2
channel = 3
loop = 1
pan = 1
volume = 25

[State 1900, 3];『はぁ～』
type = PlaySnd
trigger1 = time = 0
value = 4000, 0
channel = 2
volume = 200

[State 1900, 4]
type = poweradd
trigger1 = Time >= 0
value = 10

[State 1900, 5]
type = poweradd
trigger1 = Time >= 25
value = 20

[State 1900, 6]
type = poweradd
trigger1 = Time >= 75
value = 30

[State 1900, 7]
type = poweradd
trigger1 = Time >= 120
value = 50

[state 1900, shake]
type = envshake
trigger1 = time%5 = 0
time = 5
freq = 60
ampl = -2

[State 1900, flash]
type = PalFX
triggerall = Time >= 5
trigger1 = TimeMod = 4,0
trigger1 = Time > 0
time = 1
add = 100,100,100

[State 1900, 9];MAX気の音
type = PlaySnd
trigger1 = power >= 3000
value = 4000,1
pan = 1

[State 1900, 10]
type = ChangeState
trigger1 = power >= 3000
trigger2 = command != "hold_x"
trigger2 = command != "hold_y"
trigger2 = command != "hold_z"
value = 1501
ctrl = 1
;--------------------------気溜めやめる

[Statedef 1501]
type = S
physics = N
ctrl = 0
anim = 1501
sprpriority = 2

[State 1901, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 3

[State 1901, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 2

[State 1901, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;----------------------------------気力溜め------------------------------
;------------------------------------------------------------------------
;パワー溜め
[Statedef 1510]
type = S
physics = S
ctrl = 0
anim = 1510
velset = 0,0
sprpriority = 2

[State 1900, 1];気の音1
type = PlaySnd
trigger1 = time = 0
value = 13, 4

[State 1900, 2];気の音2
type = PlaySnd
trigger1 = time = 10
value = 4000, 2
channel = 3
loop = 1
pan = 1
volume = 25

[State 1900, 3];『はぁ～』
type = PlaySnd
trigger1 = time = 0
value = 4000, 0
channel = 2
volume = 200

[State 4301, Tux1]
type = VarSet
trigger1 = Time = 0
v = 58
value = RoundNo

[State 4301, NoHit]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 100

[State 4301, Tux3]
type = SuperPause
trigger1 = Time = 100
time = 170
anim = -1
sound = -1
darken = 1
movetime = 170

[state 1900, shake]
type = envshake
trigger1 = time%5 = 0
time = 20
freq = 160
ampl = -10

[State 1900, flash]
type = PalFX
triggerall = Time >= 5
trigger1 = TimeMod = 4,0
trigger1 = Time > 0
time = 1
add = 100,100,100

[State 4301 , 3]
type = LifeAdd
trigger1 = time = 150
value = 500

[State 1900, 9];MAX気の音
type = PlaySnd
trigger1 = power >= 3000
value = 4000,1
pan = 1

[State 1900, 10]
type = ChangeState
trigger1 = TIME = 155
value = 1511

;--------------------------気溜めやめる

[Statedef 1511]
type = S
physics = N
ctrl = 0
anim = 1501
sprpriority = 2

[State 1901, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 3

[State 1901, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 2

[State 4301, NoHit]
type = NotHitBy
trigger1 = time = 0
value = ,NA,AP
time = 150

[State 1901, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3400
;END
