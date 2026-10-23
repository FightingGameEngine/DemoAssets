;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0
poweradd = -1000


[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, 3]
type = poweradd
trigger1 = time = 0
value = -1000

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 2
anim = 10010
ID = 10010
pos = 160,120
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1


[State 3110]
type = Playsnd
trigger1 = animelem = 1
value = 12, 4



[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 3010
sprpriority = 10
stateno = 3010
Scale= 1,1.5
pos = -7, 0
ownpal = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Hyper 1 - beam helper
[StateDef 3010]
type = S
movetype = A
physics = N
anim = 3010
ctrl = 0
sprpriority = 2

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = -7,0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod= 2,1
value = 79,0



[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 3,0
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 5,5
pausetime = 0,10
getpower = 0,0
givepower = 0,0
hitsound = s80,0
guardsound = S81,0
sparkno = S8222
sparkxy = 0,-80
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -20
guard.velocity = -5
air.velocity = -4,8
palfx.time = 25
palfx.add = 0,64,0

[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 22
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 5,5
pausetime = 0,10
getpower = 0,0
givepower = 0,0
hitsound = s8000,2
guardsound = S3,0
sparkno = S8222
sparkxy = 0,-80
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -20
guard.velocity = -5
air.velocity = -4,8
fall = 1
guard.kill = 1
palfx.time = 25
palfx.add = 0,64,0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=3000

;---------------------------------------------------------------------------
; Hyper 2
;---------------------------------------------------------------------------
; Hyper 2 -- Ultimate Atack
[StateDef 3300]
anim = 3300
ctrl = 0
type = s
movetype = A
physics = S
poweradd = -1000
velset = 0, 0
juggle  = 10

[State 3300, Width]
type = Width
trigger1 = 1
value = 33,33


[State 3300, move fwd]
type = VelSet
trigger1 = Time > 24
x = 20


[State 3300, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3300, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3300, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3300, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3300, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3300, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 2
anim = 10010
ID = 10010
pos = 160,120
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1


[State 3000]
type = Playsnd
trigger1 = animelem  = 1
value = 12,12

[State 0, Explod]
type = Explod
trigger1 = animelem =7
anim = 990
ID = 990
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
ontop = 1
removeongethit = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 6
trigger3 = animelem = 8
trigger4 = animelem = 10
trigger5 = animelem = 12
trigger6 = animelem = 14
trigger7 = animelem = 16
trigger8 = animelem = 18
trigger9 = animelem = 20
trigger10 = animelem = 22
value = 77




[State 3300, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 135 ;95
attr = S, NA
damage = 7, 5
guardflag = MA
pausetime = 2,2
hitsound = s96,0
guardsound = S81,0
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = s8001
sparkxy = 0,-60
animtype = Hard
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2
guard.velocity = -1
air.velocity = -1,-1
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4

[State 3300, HitDef]
type = HitDef
trigger1 = Time > 135
attr = S, NA
damage = 9, 4
guardflag = MA
pausetime = 8,2
hitsound = s96,0
guardsound = S81,0
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = s8001
sparkxy = 0,-60
animtype = Hard
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -11, -8
guard.velocity = -5
air.velocity = -1,-1
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
fall = 1

[State 3300, HitBy]
type = HitBy
trigger1 = 1
value = SCA, HA,SP,HP

[State 3300, back to stance]
type = ChangeState
trigger1 = Time = 140
value = 3301
ctrl = 1

;---------------------------------------------------------------------------
; Ultimate tack - (move end)
[Statedef 3301]
type    = S
physics = S
ctrl = 0
;anim = 3301
sprpriority = 2

[State 3301, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
;Beam Strong
;--------------------------------------
[Statedef 3100]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = -2000
anim = 3100
ctrl = 0
sprpriority = -1

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, 3]
type = poweradd
trigger1 = time = 0
value = -1000

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 2
anim = 10010
ID = 10010
pos = 160,120
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1


[State 270, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1213
ID = 1213
postype = p1
pos = 0,-15
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2

[State 3110, Helper]
type = Helper
triggerALL = !numhelper(3101)
helpertype = normal
trigger1 = AnimElem = 3
name = "mini missile searcher"
sprpriority = 8
ID = 3101
stateno = 3101
pos = 0, -15
ownpal = 1


[State 3110, Helper]
type = playsnd
triggerall = !Numhelper(3110)
Trigger1 = P2STATENO = 7201 || p2stateno = 7202
Trigger1 = STATENO = 3100
value = 13,1

[State 3110, Helper]
type = Helper
triggerall = !Numhelper(3110)
Trigger1 = P2STATENO = 7201 || p2stateno = 7202
Trigger1 = STATENO = 3100
helpertype = NORMAL
name = "Venom"
sprpriority = 10
ID = 3110
stateno = 3110
postype = p2
pos = 90, -100
facing = -1
keyctrl = 0
ownpal = 1


[State 1120, End]
type = ChangeState
triggerALL = !numhelper(3101)
trigger1 = animtime = 0
value = 0
ctrl = 1


[State 1120, End]
type = ChangeState
trigger1 = p2stateno = 7201 || p2stateno = 7202
value = 3102
ctrl = 1

;-------------------------------------------------------------------------------
; Beam Strong Helper
[StateDef 3101]
type    = A
movetype= A
physics = N
anim = 3101

[State 3305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3305, Turn]
type = Turn
trigger1 = (P2Dist X < 10)

[State 3305, VelSet]
type = VelSet
trigger1 = (!Time)
x = 6

[State 3305, VarSet]
type = VarSet
trigger1 = IsHelper
fv = 2
value = (EnemyNear, Pos Y) + IfElse((EnemyNear, StateType != A), (EnemyNear, Const(size.mid.pos.y)), 0)

[State 3305, VelAdd]
type = VelAdd
trigger1 = (P2Dist X < 0) && (Vel X > -6)
x = -0.5

[State 3305, VelAdd]
type = VelAdd
trigger1 = (P2Dist X > 0) && (Vel X < 6)
x = 0.2

[State 3305, VelAdd]
type = VelAdd
trigger1 = (P2Dist Y < 0) && (Vel Y > -6)
Y = -0.5

[State 3305, VelAdd]
type = VelAdd
trigger1 = (P2Dist Y > 0) && (Vel Y < 6)
Y = 0.2

[State 3305, VelAdd]
type = VelAdd
trigger1 = (FVar(2) > Pos Y) && (Vel Y < 8)
y = 6.2

[State 3305, VelAdd]
type = VelAdd
trigger1 = (FVar(2) < Pos Y) && (Vel Y > -8)
y = -.1

[State 3305, VelSet]
type = VelSet
trigger1 = (FVar(2) = Pos Y)
y = .5

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 75,1
animtype = HARD
priority = 3
pausetime = 10,200
guard.pausetime = 10,20
sparkno = 1
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s84,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 50
ground.velocity = 0,0
air.type = Low
air.hittime = 100
air.velocity = -5
p2stateno = 7201

[State 200, HitDef]
type = HitDef
triggerall = p2statetype = A
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
attr = A,SP
hitflag = AFD
guardflag = AF
damage = 63,1
animtype = HARD
priority = 3
pausetime = 10,200
guard.pausetime = 10,20
sparkno = 1
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 50
ground.velocity = 0,0
air.type = Low
air.hittime = 20
air.velocity = 0,2
p2stateno = 7202


[State 3305, no shadow]
type = AssertSpecial
trigger1 = Pos Y >= -1
flag = noshadow

;-----
; KFM's "angled projectiles" code
[State 3305, blah]
type = AngleSet
trigger1 = time
value = ((atan(Vel Y/Vel X) + (3*pi/2)) *(-180/Pi)) - 90

[State 3305, blah]
type = AngleDraw
trigger1 = 1
;-----

[State 270, Explod]
type = Explod
trigger1 = movehit
anim = 1142
ID = 1142
postype = p2
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2

[State 23000]
type = DestroySelf
trigger1 = movehit
trigger2 = time = 150

;-----------------------------------

[statedef 3102]
type = S
movetype = A
physics = S
anim = 3102
poweradd = 25
velset = 0,0
ctrl = 0



[State 3110, Helper]
type = Helper
triggerall = !Numhelper(3105)
Trigger1 = P2STATENO = 3142
helpertype = NORMAL
name = "Ms Marvel"
sprpriority = 10
ID = 3105
stateno = 3105
postype = p1
pos = 30, -100
facing = -1
keyctrl = 0
ownpal = 1

[State 1120, End]
type = ChangeState
trigger1 = P2STATENO = 3142
value = 3103

[State 1120, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------

[statedef 3103]
type = C
movetype = A
physics = C
anim = 1120
poweradd = 25
velset = 0,0
ctrl = 0


[State 220, 1]
type = TURN
trigger1 = TIME = 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
sprpriority = 10
ID = 1001
stateno = 1001
pos = 50, -50
ownpal = 1

[State 1120, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------

[statedef 3105]
type = S
movetype = A
physics = S
anim = 3105
poweradd = 25
velset = 0,0
ctrl = 0


[State 0, ]
type = VELSET
trigger1 = time >= 0
y = 4

[State 0, ]
type = ChangeState
trigger1 = POS Y >= 0
value = 3106



;-----------------------------------

[statedef 3106]
type = S
movetype = A
physics = S
anim = 3106
poweradd = 25
velset = 0,0
ctrl = 0



[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Ms M Beam"
sprpriority = 10
ID = 3109
stateno = 3109
pos = -10,-40
ownpal = 1


[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 3107

;-----------------------------------

[statedef 3107]
type = S
movetype = A
physics = S
anim = 3106
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = VELSET
trigger1 = time >= 0
y = -9

[State 0, ]
type = Destroyself
trigger1 = animtime = 0
;-------------------------------------------------------------
; Beam Light Helper
[StateDef 3109]
type = S
movetype = A
physics = N
anim = 3109
ctrl = 0
velset = 0,0
sprpriority = 1

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
trigger1 = animelem = 1 || animelem = 3 || animelem = 5 || animelem = 7
trigger2 = animelem = 9 || animelem = 11 || animelem = 13  || animelem = 15
trigger3 = animelem = 17 || animelem = 19 || animelem = 21
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 5,2
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s83,0
guardsound = S81,0
sparkno = S8222
sparkxy = 0,30
animtype  = Hard
ground.type = high
ground.slidetime = 4
ground.velocity = -2
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
;-----------------------------------
;Jumping Web-Shot (light)
[statedef 3110]
type = A
movetype = A
physics = A
anim = 3110
poweradd = 25
velset = 0,0
ctrl = 0


[State 0, ]
type = velset
trigger1 = time = 0
x= -1
y= -3


[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 3111
pos = 80,-40
postype = p1
facing = 1
stateno = 3111
ownpal = 1

[State 3110, 5]
type = ChangeState
trigger1 = ANIMTIME = 0
value = 3120
;--------------------------
[Statedef 3111]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3111
velset = 5,5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 3111
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 3111
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 3111
slot = 1
time = 1
stateno = 3115
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 3111
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 3111
x = 3.5
y = 3.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = HitDef
trigger1 = stateno = 3111
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 50,3
pausetime = 0,18
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 3114


[State 0, ]
type = HitDef
triggerall = p2statetype = A
trigger1 = stateno = 3111
attr = A,SP
hitflag = AFD
guardflag = AF
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 50,3
pausetime = 0,100
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = 0,5
p2stateno = 3117

[State 0, ]
type = Helper
trigger1 = movehit
helpertype = normal
name = "web-ball"
ID = 3112
pos = 0,0
postype = p2
facing = 1
stateno = 3112
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 3115

;--------------------------
[Statedef 3112]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3112
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S


[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0


[State 0, ]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = 0,0,foot

[State 0, ]
type = ChangeState
trigger1 = time = 80
trigger2 = p2stateno != 3117
trigger2 = p2stateno != 3114
trigger3 = statetype = A
value = 3113

;---------------------
[Statedef 3113]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3113
sprpriority = 5

[State 0, ]
type = PosSet
trigger1 = stateno = 3113
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------
[Statedef 3114]
type = A
movetype = H
physics = A
ctrl = 0
velset = 0,0
anim = 5000
sprpriority = 0

[State 0, ]
type = PosSet
trigger1 = time >= 0
trigger1 = P2statetype = A
y = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 3114

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = time >= 0
trigger1 = statetype = S
y = 0



[State 0, ]
type = selfstate
trigger1 = Time >= 80
trigger1 = Life <= 0
trigger2 = HitCount = 1
value = 5000
ctrl = 0

[State 0, ]
type = selfstate
triggerall = Life > 0
trigger1 = Time >= 80
trigger1 = Pos Y = 0
trigger2 = statetype = A
trigger2 = pos y >= -5
anim = 5200
value = 5200
ctrl = 1

[State 0, ]
type = selfstate
trigger1 = Time >= 80
trigger1 = Life > 0
value = 51
ctrl = 1

;------------------------------
[Statedef 3115]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3115
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------
[Statedef 3516]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3516
velset = 0,0
sprpriority = 5

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S6,1

[State 0, ]
type = PosSet
trigger1 = time >= 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------
[Statedef 3117]
type = A
movetype = H
physics = A
ctrl = 0
velset = 0,0
anim = 5000
sprpriority = 0


[State 0, ]
type = PosSet
trigger1 = time >= 0
trigger1 = statetype = A
y = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 3114

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y <= 0
statetype = S
movetype = I
physics = S



[State 0, ]
type = selfstate
trigger1 = Time >= 80
trigger1 = Life <= 0
trigger2 = HitCount = 1
value = 5000
ctrl = 0

[State 0, ]
type = selfstate
triggerall = Life > 0
trigger1 = Time >= 80
trigger1 = Pos Y = 0
trigger2 = statetype = A
trigger2 = pos y >= -5
anim = 5200
value = 5200
ctrl = 1

[State 0, ]
type = selfstate
trigger1 = Time >= 80
trigger1 = Life > 0
value = 51
ctrl = 1



;-----------------------------------
;Jumping Web-Shot (light)
[Statedef 3120]
type = S
movetype =A
physics = S
anim = 3120
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = VELSET
trigger1 = time >= 0
x = -1
y = 5

[State 0, ]
type = ChangeState
trigger1 = POS Y >= 0
value = 3121


;-----------------------------------
;Jumping Web-Shot (light)
[Statedef 3121]
type = S
movetype =A
physics = S
anim = 3121
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, 1]
type = Helper
trigger1 = ANIMELEM = 10
helpertype = normal
name = "Webbing"
ID = 3122
pos = 0,0
postype = p1
ownpal = 1
stateno = 3122
persistent = 0
bindtime = 2

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,15
channel = 0
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
persistent = 0



[State 0, 1]
type = destroyself
trigger1 = p2stateno = 3140

[State 0, 1]
type = Changestate
trigger1 = Animtime = 0
VALUE = 3124
;-----------------------------------------------------------------------------
;Webbing
[Statedef 3122]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 3
anim = 3122

[State 0, 1]
type = BindToParent
trigger1 = Animelemtime(11) < 0
time = 1
;facing = 0
pos = 0+((Animelemno(0)-1)*16),0
;ignorehitpause = 0
;persistent = 1

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

;y =
;ignorehitpause = 0
;persistent = 1

[State 210, 2]
type = HitDef
trigger1 = TIME = 0
attr = S, SP
animtype  = Hard
damage    = 15,4
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,0
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -2
yaccel = 0.55
sprpriority = 4
p1stateno = 3130
p2stateno = 3140
p2facing = 1
envshake.time = 3


[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 3123
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = moveguarded
trigger2 = movehit && Animelemtime(11) >=0
value = 3123
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -220  || time = 55
trigger2 = movehit && Animelemtime(11) <0

[Statedef 3123]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 3123
sprpriority = 3



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*12),255-((StateTime)*12),255-((StateTime)*12)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0
;ignorehitpause = 0
;persistent = 1

;-----------------------------------------------------
[Statedef 3124]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 3124



[State 0, 2]
type = VelSet
trigger1 = AnimElem = 3
x = -3
y = -8


[State 0, 1]
type = destroyself
trigger1 = animtime = 0
;anim =
;ignorehitpause = 0
;persistent = 1
;-------------------------------------------------
;Slam
[Statedef 3130]
type    = S
movetype= A
physics = N
anim = 3130
poweradd = 60
sprpriority = 2


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 244, -89
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 244, -69
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 240, -51
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 234, -41
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 224, -27
time = 16


[State 0, 1]
type = Turn
trigger1 = AnimElem = 6
;ignorehitpause = 0
;persistent = 1



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = -165, -12
time = 16



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = -159, -8
time = 6


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = -132, 3
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = -120, -7
time = 6


[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 3141


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 3131

;------------------------------------------------------------------
;Waste the Creep
[Statedef 3131]
type    = S
movetype= A
physics = N
anim = 3131
poweradd = 60
sprpriority = 2

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 12 || AnimElem = 31
value = 8200,0

[State 0, 1]
type = TargetLifeAdd
trigger1 =  Animelem = 12
value = -50
kill = 0


[State 0, 1]
type = TargetLifeAdd
trigger1 =  AnimElem = 31
value = -50
kill = 0

[State 192, 0]
type = GameMakeAnim
trigger1 = Animelem = 12 || AnimElem = 31
pos = floor(P2Dist X),0
value = 62

[State 1486, 3]
type = EnvShake
trigger1 = Animelem = 12 || AnimElem = 31
time = 25
ampl = -3
freq = 90
phase = 90

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -65, -39
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = -80, -50
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = -106, -70
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = -115, -84
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = -130, -128
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 135, -125
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = 155, -117
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = 217, -85
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = 229, -66
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
pos = 237, -49
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 11
pos = 243, -5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 12
pos = 243, 5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 13
pos = 235, 33
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 14
pos = 213, -16
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 15
pos = 210, -7
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 16
pos = 206, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 17
pos = 137, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 18
pos = 123, -19
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 19
pos = 130, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 20
pos = 119, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 21
pos = 125, -29
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 22
pos =171, -54
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 23
pos = 192, -90
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 24
pos = 196, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 25
pos = 31, -127
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 26
pos = 0, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 27
pos = -23, -149
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 28
pos = -93, -153
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 29
pos = -192, -91
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 30
pos = -198, -56
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 31
pos = -199, -12
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 32
pos = -177, 25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 33
pos = -168, 44
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 34
pos = -186, -6
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 35
pos = -165, 13
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 36
pos = -182, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 37
pos = -206, -25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 38
pos = -217, -43
time = 6

[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 3142


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 3232

;-------------------------------------------------------------------------------
;Slam
[Statedef 3232]
type    = S
movetype= A
physics = N
anim = 3232
sprpriority = 2

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = 2,1



[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 3233
ID = 3233
pos = 0,-55
postype = p2
bindtime = 18
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
velocity = 1,0
facing = -1


[State 0, 1]
type = TargetLifeAdd
trigger1 =  Animelem = 3
value = -50


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -183, -70
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 18, -78
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 89, -35
time = 1

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgebodydist <= -50
value = 3233




[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgebodydist > -50
value = 3124
ctrl = 1

;-------------------------------------------------
; If Off-screen
[Statedef 3233]
type = S
movetype = I
physics = N
anim = 0
ctrl = 0
velset = 0,0

[State 9995,2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 9995, 2]
type = PosAdd
trigger1 = BackEdgeDist < -100
x = -100 - BackEdgeDist

[State 742, Dash Onscreen!]
type = ChangeAnim
trigger1 = Time = 50
value = 3234

[state 100, 2]
type = sprpriority
trigger1 = 1
value = 1

[State 100, 4]
type = Velset
trigger1 = Time = 50
x = 8

[State 100, 5]
type = ChangeState
trigger1 = BackEdgeDist > 60
value = 3124

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Grabbed
[Statedef 3140]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3140

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 0
;persistent = 1

;Grabbed
[Statedef 3141]
type    = S
movetype= H
physics = N
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3141

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 0
;persistent = 1

;-------------------------------------
; Throw (hit by, into air)
[Statedef 3142]
type    = A
movetype= H ;Get hit
physics = N
ctrl = 0
sprpriority = 3

[State 6003, 1]
type = PosFreeze
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
value = 4
persistent = 0

[State 1027, Spark]
type = Explod
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
anim = F72
pos = 0, floor (screenpos y) - 80
postype = back
sprpriority = 3
persistent = 0



[State 0, 1]
type = PlaySnd
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
value = F7,0
volume = 255
persistent = 0



[State 0, 1]
type = Turn
trigger1 = !time
;ignorehitpause = 0
;persistent = 1



[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time = 13
x = -22
y = -6



[State 1485, 1]
type = ChangeAnim2
trigger1 = !Time
value = 3142

[State 1485, 1]
type = ChangeAnim
trigger1 = time = 12
value = ifelse(SelfAnimExist(5035),5035,5050)

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 13
y = .49



[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[Statedef 3199]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 3199
ctrl = 0
sprpriority = -1


[State 3110, Helper]
type = Helper
triggerall = !Numhelper(3215)
Trigger1 = time = 0
Trigger1 = STATENO = 3199
helpertype = NORMAL
name = "Hawkeye"
sprpriority = 10
ID = 3215
stateno = 3215
postype = p1
pos = -150, -50
facing = 1
keyctrl = 0
ownpal = 1

[State 3110, Helper]
type = playsnd
Trigger1 = time = 0
value = 13,18

[State 3110, Helper]
type = playsnd
Trigger1 = P2STATENO = 7210
Trigger1 = STATENO = 3199
value = 13,1

[State 1000, End]
type = ChangeState
Trigger1 = P2STATENO = 7210
value = 3200

[State 1120, End]
type = ChangeState
trigger1 = Time = 100
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[Statedef 3200]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 1200
ctrl = 0
sprpriority = -1


[State 220, 1]
type = velset
trigger1 = animelem = 1
x = 20

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, 3]
type = poweradd
trigger1 = time = 0
value = -1000

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 1
anim = 10010
ID = 10010
pos = 160,120
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 100
pausemovetime = 100
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 1000, End]
type = ChangeState
trigger1 = (p2bodydist x <= 30)
value = 3201

[State 1120, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3201]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 3201
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

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 9
trigger5 = animelem = 11
trigger6 = animelem = 13
trigger7 = animelem = 15
attr = S,NA
damage = 20,10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 2,12
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1
air.type = Low
air.hittime = 15
air.velocity = -5
envshake.time = 51
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 90
KILL = 0


[State 3110, Helper]
type = Helper
triggerall = !Numhelper(3204)
Trigger1 = Movehit
Trigger1 = STATENO = 3201
helpertype = NORMAL
name = "Ares"
sprpriority = 10
ID = 3204
stateno = 3204
postype = p1
pos = -200, 0
facing = 1
keyctrl = 0
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3202
;---------------------------------------------------------------------------
[Statedef 3202]
type    = S
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 105
poweradd = 20
sprpriority = -1


[State 220, 1]
type = velset
trigger1 = animelem = 1
x = -8
y = -2



[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3204]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 50,0
poweradd = 50
anim = 3204
ctrl = 0
sprpriority = -1



[State 1000, End]
type = ChangeState
trigger1 = (p2bodydist x <= 50)
value = 3205

;---------------------------------------------------------------------------
[Statedef 3205]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 3205
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
trigger2 = animelem = 6
trigger3 = animelem = 10
trigger3 = animelem = 13
trigger3 = animelem = 17
attr = S,NA
damage = 20,10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 2,15
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3
air.type = Low
air.hittime = 15
air.velocity = -5
envshake.time = 51
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 90
KILL = 0


[State 200, HitDef]
type = HitDef
trigger1 = animelem = 20
attr = S,NA
damage = 20,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 3,100
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -5
p2stateno = 7201
KILL = 0


[State 3110, Helper]
type = Helper
triggerall = !Numhelper(3207)
Trigger1 = P2STATENO = 7201
helpertype = NORMAL
name = "SENTRY"
sprpriority = 10
ID = 3207
stateno = 3207
postype = p1
pos = -250, 0
facing = 1
keyctrl = 0
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3206

;---------------------------------------------------------------------------
[Statedef 3206]
type    = S
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 3206
poweradd = 20
sprpriority = 2


[State 220, 1]
type = velset
trigger1 = animelem = 1
x = -3
y = -10


[State 200, End]
type = destroyself
trigger1 = AnimTime = 0


;-----------------------------------
;Jumping Web-Shot (light)
[Statedef 3207]
type = S
movetype =A
physics = S
anim = 3207
poweradd = 25
velset = 0,0
ctrl = 0
sprpriority = 20

[State 0, ]
type = VELSET
trigger1 = time >= 0
x = 5

[State 3207, End]
type = ChangeState
trigger1 =  backedgebodydist > -50
value = 3208
;---------------------------------------------------------------------------
[Statedef 3208]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 3208
poweradd = 20
sprpriority = 20

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
name = "Sentry Beam"
sprpriority = 10
ID = 3209
stateno = 3209
pos = 0,0
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3210
;-------------------------------------------------------------
; Beam Light Helper
[StateDef 3209]
type = S
movetype = A
physics = N
anim = 3209
ctrl = 0
velset = 0,0
sprpriority = 1

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
trigger1 = animelem = 2 || animelem = 3 || animelem = 4
trigger2 = animelem = 5 || animelem = 6 || animelem = 7
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 20,2
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound = S3,0
sparkno = S8222
sparkxy = 0,-79
animtype  = Hard
ground.type = high
ground.slidetime = 4
ground.velocity = -2
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
;---------------------------------------------------------------------------
[Statedef 3210]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 3210
poweradd = 20
sprpriority = 20

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 220, 1]
type = velset
trigger1 = animelem = 1
y = -6


[State 200, End]
type = destroyself
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
[Statedef 3215]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = 50
anim = 3215
ctrl = 0
sprpriority = -1


[State 0, ]
type = VELSET
trigger1 = time >= 0
x = 7
Y = 2

[State 1000, End]
type = ChangeState
trigger1 = POS Y >= 0
value = 3216

;---------------------------------------------------------------------------
[Statedef 3216]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = 50
anim = 3216
ctrl = 0
sprpriority = -1

[State 7535, hit]
type = HitOverride
trigger1 = Time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP
stateno = 3217
time = 1


[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
name = "Hawk Eye Arrow"
sprpriority = 10
ID = 3218
stateno = 3218
pos = 0,0
ownpal = 1


[State 1000, End]
type = ChangeState
trigger1 = animtime = 0
value = 3217
;-------------------------------------------------------------
; Beam Light Helper
[StateDef 3218]
type = S
movetype = A
physics = N
anim = 3218
ctrl = 0
velset = 0,0
sprpriority = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ]
type = VELSET
trigger1 = time >= 0
x = 12

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
damage = 10,2
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s8000,2
guardsound = S3,0
sparkno = S8222
sparkxy = 0,-79
animtype  = Hard
ground.type = high
ground.slidetime = 4
ground.velocity = -2
airguard.velocity = -50
air.type = Low
air.velocity = -50,1
air.juggle = 5
fall.animtype = Hard
P2STATENO = 7210
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = movecontact
;---------------------------------------------------------------------------
[Statedef 3217]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = 50
anim = 3215
ctrl = 0
sprpriority = -1


[State 0, ]
type = VELSET
trigger1 = time >= 0
x = -8
Y = -1


[State 1000, End]
type = destroyself
trigger1 = animtime = 0
;-------------------------------------------------------------------------------
; P2 State Dizzy
[Statedef 7210]; force P2 to change
ctrl = 0
time = 0;25


[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y <= 0
statetype = S
movetype = I
physics = S

[State 7201, StateTypeSet]
type = StateTypeSet
trigger1 = pos y != 0
statetype = A       ;S,A,C,L
movetype = h        ;I,A,H
physics = A         ;A,C,S,N

[State 7201, Change To Dizzy]
type = ChangeAnim
triggerall = p2statetype = S
trigger1 = SelfAnimExist(5000) && time=0
value = 5000

[State 7201,Change To Normal]
type = selfState
triggerall = p2statetype = S
trigger1 = anim = 5000 && time = 100
value = 0
ctrl=1

;-------------------------------------------------------------------------------
; P2 State Dizzy
[Statedef 7211]; force P2 to change
ctrl = 0
time = 0;25


[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y <= 0
statetype = S
movetype = I
physics = S

[State 7201, Change To Dizzy]
type = ChangeAnim
triggerall = p2statetype = S
trigger1 = SelfAnimExist(5300) && time=0
value = 5300



[State 0, ]
type = PosSet
trigger1 = movetype = I
y = 0

[State 7201,Change To Normal]
type = selfState
triggerall = p2statetype = S
trigger1 = anim = 5300 && time = 100
value = 0
ctrl=1

;--------------------------------------
;Beam Strong
;--------------------------------------
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 215
poweradd = 20
poweradd = -3000
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 2
value = 12, 7

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0

[State 4301, NoHit]
type = NotHitBy
Triggerall = (prevstateno = 1511)
trigger1 = time = 0
value = ,NA,AP
time = 150

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


[State 1120, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3401
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Strong Helper
[StateDef 3401]
type = A
movetype = I
physics = N
anim = 1200
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = -1



[State 220, 1]
type = velset
trigger1 = animelem = 1
x = 9

[State 1000, End]
type = ChangeState
trigger1 = (p2bodydist x <= 30)
value = 3402
ctrl = 1


[State 1120, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; The Net itself
[Statedef 3402]
type = S
movetype = A
physics = N
juggle  = 4
velset = 0,0
anim = 3402
ctrl = 0

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
damage = 10,10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 10,2
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1
air.type = Low
air.hittime = 15
air.velocity = -5
envshake.time = 51
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 90
KILL = 0

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 17
attr = S,NA
damage = 10,10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 4,2
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1
air.type = Low
air.hittime = 15
air.velocity = -5
envshake.time = 51
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 90
KILL = 0


[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 19
anim = 3503
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 19
attr = S,NA
damage = 20,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 15,15
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
air.type = Low
air.hittime = 15
air.velocity = -5
KILL = 0

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 21
anim = 3504
postype = p1
sprpriority = 10
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 200, HitDef]
type = HitDef
trigger1 = animelem = 21
attr = S,NA
damage = 20,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 20,15
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
air.type = Low
p2stateno = 3505
air.hittime = 15
air.velocity = -5
KILL = 0

[State 1030, 1.65]
type = changestate
trigger1 = animtime = 0
value = 3404

[State 1030, 1.65]
type = changestate
trigger1 = P2STATENO=!3505
value = 0
CTRL = 1
;------------------------------------------------------------------------
; Cuando se rompe
[Statedef 3404]
type    = S
movetype= I
physics = N
anim = 3404
velset = -6
ctrl = 0

[State 105]
type = Explod
triggerall = !NumExplod(115)
trigger1 = time = 0
persistent = 0
anim = 115
id = 115
postype = p1
sprpriority = 10
pos = 0, 5
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15
ownpal = 1
scale = 1,1.1


[State 105]
type = Explod
triggerall = !NumExplod(116)
trigger1 = time = 0
persistent = 0
anim = 115
id = 116
postype = p1
sprpriority = 10
pos = 0, 20
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15
ownpal = 1
scale = 1,1.1

[State 105]
type = Explod
triggerall = !NumExplod(118)
trigger1 = time = 0
persistent = 0
anim = 116
id = 118
postype = p1
sprpriority = -1
pos = -12, 13
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15
ownpal = 1
scale = 1,1.1

[State 105]
type = Explod
triggerall = !NumExplod(117)
trigger1 = time = 0
persistent = 0
anim = 116
id = 117
postype = p1
sprpriority = -1
pos = 0, 5
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15
ownpal = 1
scale = 1,1.1

[State 1000, nd]
type = Playsnd
trigger1 = time = 1
value = 31,0

[State 1013, 1]
type = changestate
trigger1 = animtime = 0
value = 3450
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Grabbed
[Statedef 3505]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 0,5, Raios] ; test raios
type = Explod
trigger1 = time = 0
trigger1 = numexplod(34098)=0
ID = 34098
anim = 3498
pos = 0,0
postype = p2
sprpriority = 7
removetime = 25
scale = 1,1.1
bindtime = -1
ownpal = 1
supermovetime = -1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7696

[State 820, 1]
type = ChangeAnim2
Triggerall = !selfanimexist(7696)
Trigger1 = Time = 0
value = 5000

[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = animtime = 25
value = 3506 ;Hit ground
;-------------------------------------------------------------------------------
; P2 State Dizzy
[Statedef 3506]; force P2 to change
ctrl = 0
time = 0;25


[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y <= 0
statetype = S
movetype = I
physics = S

[State 7201, Change To Dizzy]
type = ChangeAnim
triggerall = p2statetype = S
trigger1 = SelfAnimExist(5300) && time=0
value = 5300


[State 0,5, Raios] ; test raios
type = Explod
trigger1 = time = 0
trigger1 = numexplod(989)=0
ID = 989
anim = 989
pos = 5,-15
postype = p2
sprpriority = 100
removetime = -1
scale = 1,1.1
bindtime = -1
ownpal = 1
supermovetime = -1


[State 0, ]
type = PosSet
trigger1 = movetype = I
y = 0

[State 7201,Change To Normal]
type = selfState
triggerall = p2statetype = S
trigger1 = anim = 5300 && time = 500
value = 0
ctrl=1
;--------------------------------------------------------------------------
; Net latching onto target
[Statedef 3420]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 3403
Velset = 0, 0
ctrl = 0
scale = 1.4,1.4


[State 1030, 1]
type = targetbind
trigger1 = p2stateno = 3410
pos = 105,0

[State 1030, 1.5]
type = changestate
trigger1 = p2stateno != 3410
trigger1 = time = 250
value = 3404

[State 1030, 1.54]
type = Destroyself
trigger1 = time = 250

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3450]
type    = S
physics = S
ctrl = 0
anim = 3450
velset = 0,0
poweradd = -3000


[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 6
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, 3]
type = poweradd
trigger1 = time = 0
value = -1000

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 30
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 30
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 1
anim = 10010
ID = 10010
pos = 160,120
postype = left
bindtime = -1
removetime = 30
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1


[State 3110]
type = Playsnd
trigger1 = time  = 300
value = 13, 5


[State 3000, Hyper Portrait]
type = explod
trigger1 = time = 40
anim = 3470
postype = back
sprpriority = -3
supermovetime = -1
removetime = 28
pos = -5,0
bindtime = -1
removeongethit = 1
ontop = 1

[State 3000, assertspecial]
type = assertspecial
trigger1 = animElem = 10
flag = noBG
flag2 = noFG
ignorehitpause = 1



[State 3100, HyperBg]
type = Explod
trigger1 = time = 55
anim = 3471
pos = 0,0
sprpriority = -3
postype = back
bindtime = -1
removetime = 508
removeongethit = 1
;facing = ifelse(Facing = -1, -1, 1)
supermovetime = 99999999
pausemovetime = 99999999
scale = .7,.7
ontop = 1
;shadow = 68,68,68
;ownpal = 1

;shadow = 68,68,68
;ownpal = 1

[State 220, 1]
type = Playsnd
trigger1 = Time = 50
value = 12,15


[State 220, 1]
type = Playsnd
trigger1 = time = 312
trigger2 = time = 317
trigger3 = time = 322
trigger4 = time = 327
trigger5 = time = 332
trigger6 = time = 337
trigger7 = time = 342
value = 12,16

[State 220, 1]
type = Playsnd
trigger1 = time = 323
trigger2 = time = 328
trigger3 = time = 333
trigger4 = time = 338
trigger5 = time = 343
trigger6 = time = 348
trigger7 = time = 353
value = 12,16


[State 220, 1]
type = Playsnd
trigger1 = time = 333
trigger2 = time = 338
trigger3 = time = 343
trigger4 = time = 348
trigger5 = time = 353
trigger6 = time = 358
trigger7 = time = 363
value = 12,16


[State 220, 1]
type = Playsnd
trigger1 = time = 353
trigger2 = time = 358
trigger3 = time = 363
trigger4 = time = 368
trigger5 = time = 363
trigger6 = time = 368
trigger7 = time = 383
value = 12,16


[State 220, 1]
type = Playsnd
trigger1 = time = 383
trigger2 = time = 388
trigger3 = time = 403
trigger4 = time = 408
trigger5 = time = 403
trigger6 = time = 408
trigger7 = time = 423
value = 12,16

[State 220, 1]
type = Playsnd
trigger1 = time = 403
trigger2 = time = 408
trigger3 = time = 423
trigger4 = time = 428
trigger5 = time = 423
trigger6 = time = 428
trigger7 = time = 443
value = 12,16

[State 220, 1]
type = Playsnd
trigger1 = time = 423
trigger2 = time = 428
trigger3 = time = 443
trigger4 = time = 448
trigger5 = time = 443
trigger6 = time = 448
trigger7 = time = 463
value = 12,16


[State 220, 1]
type = Playsnd
trigger1 = time = 463
trigger2 = time = 468
trigger3 = time = 483
trigger4 = time = 488
trigger5 = time = 483
trigger6 = time = 488
trigger7 = time = 503
value = 12,16

[State 3100, HyperBg]
type = Explod
trigger1 = time = 60
anim = 3472
scale = .8,.8
pos = 0,65
sprpriority = 8
postype = back
bindtime = -1
removetime = 508
removeongethit = 1
;facing = ifelse(Facing = -1, -1, 1)
supermovetime = 99999999
pausemovetime = 99999999
ontop = 1
;shadow = 68,68,68
;ownpal = 1

[State 3100, HyperBg]
type = Explod
trigger1 = time = 312
trigger2 = time = 317
trigger3 = time = 322
trigger4 = time = 327
trigger5 = time = 332
trigger6 = time = 337
trigger7 = time = 342
anim = 3473
scale = .5,.5
pos = 10,100
sprpriority = 8
postype = back
bindtime = -1
removetime = 200
removeongethit = 1
;facing = ifelse(Facing = -1, -1, 1)
supermovetime = 99999999
pausemovetime = 99999999
ontop = 1


[State 3100, HyperBg]
type = Explod
trigger1 = time = 312
trigger2 = time = 317
trigger3 = time = 322
trigger4 = time = 327
trigger5 = time = 332
trigger6 = time = 337
trigger7 = time = 342
anim = 3473
scale = .5,.5
pos = 45,110
sprpriority = 8
postype = back
bindtime = -1
removetime = 200
removeongethit = 1
;facing = ifelse(Facing = -1, -1, 1)
supermovetime = 99999999
pausemovetime = 99999999
ontop = 1


[State 3100, HyperBg]
type = Explod
trigger1 = time = 312
trigger2 = time = 317
trigger3 = time = 322
trigger4 = time = 327
trigger5 = time = 332
trigger6 = time = 337
trigger7 = time = 342
anim = 3473
scale = .5,.5
pos = 35,95
sprpriority = 8
postype = back
bindtime = -1
removetime = 200
removeongethit = 1
;facing = ifelse(Facing = -1, -1, 1)
supermovetime = 99999999
pausemovetime = 99999999
ontop = 1
;shadow = 68,68,68
;ownpal = 1

[State 3100, HyperBg]
type = Explod
trigger1 = time = 312
trigger2 = time = 317
trigger3 = time = 322
trigger4 = time = 327
trigger5 = time = 332
trigger6 = time = 337
trigger7 = time = 342
anim = 3473
scale = .5,.5
pos = 80,105
sprpriority = 8
postype = back
bindtime = -1
removetime = 200
removeongethit = 1
;facing = ifelse(Facing = -1, -1, 1)
supermovetime = 99999999
pausemovetime = 99999999
ontop = 1

[State 3100, HyperBg]
type = Explod
trigger1 = time = 312
trigger2 = time = 317
trigger3 = time = 322
trigger4 = time = 327
trigger5 = time = 332
trigger6 = time = 337
trigger7 = time = 342
anim = 3473
scale = .5,.5
pos = 75,110
sprpriority = 8
postype = back
bindtime = -1
removetime = 200
removeongethit = 1
;facing = ifelse(Facing = -1, -1, 1)
supermovetime = 99999999
pausemovetime = 99999999
ontop = 1

[State 3100, HyperBg]
type = Explod
trigger1 = time = 458
anim = 1213
pos = 0,0
sprpriority = 30
postype = back
bindtime = -1
removetime = 30
removeongethit = 1
scale = .5,.5
;facing = ifelse(Facing = -1, -1, 1)
supermovetime = 99999999
pausemovetime = 99999999
ontop = 1
;shadow = 68,68,68
;ownpal = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3451
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 3451]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 3451

[State 3004, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3452

;---------------------------------------------------------------------------
[Statedef 3452]
type    = S
movetype= A
physics = S
poweradd= 65
ctrl = 0
velset = 0,0
anim = 3452
sprpriority = -1


[State 220, 1]
type = Playsnd
trigger1 = Time = 30 || Time = 48 || Time = 66 || Time = 84
trigger2 = Time = 102 || Time = 120 || Time = 90 || Time = 50
trigger3 = Time = 36 || Time = 54 || Time = 72 || Time = 90
trigger4 = Time = 108 || Time = 126 || Time = 70 || Time = 40
trigger5 = Time = 42 || Time = 60 || Time = 78 || Time = 96
trigger6 = Time = 114 || Time = 100 || Time = 110|| Time = 80 || Time = 120
value = 1000,7


[State 220, 1]
type = Playsnd
trigger1 = Time = 117
value = 1000,9

[State 3300, Missle 1]
type = Projectile
trigger1 = time = 30 || time = 45
trigger2 = time = 35 || time = 50
projscale= 1.5,1.5
offset = 0, -250
projID = 7019
projanim = 7019
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 6,6
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 10
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,-2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 2]
type = Projectile
trigger1 = time = 35 || time = 50
trigger2 = time = 40|| time = 55
offset = 50, -250
projID = 7020
projanim = 7020
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 4,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 3]
type = Projectile
trigger1 = time = 40 || time = 55
trigger2 = time = 45 || time = 60
offset = 60, -250
projID = 7019
projanim = 7019
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 7,3
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 10
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 4]
type = Projectile
trigger1 = time = 45 || time = 60
trigger2 = time = 50 || time = 65
offset = 30, -220
projID = 7020
projanim = 7020
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 8,4
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 5]
type = Projectile
trigger1 = time = 50 || time = 65
trigger2 = time = 55 || time = 70
offset = -20, -200
projID = 7019
projanim = 7019
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 5,8
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 7
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 6]
type = Projectile
trigger1 = time = 55 || time = 70
trigger2 = time = 60 || time = 75
offset = 0, -200
projID = 7020
projanim = 7020
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 7,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 7]
type = Projectile
trigger1 = time = 60 || time = 75
trigger2 = time = 65 || time = 80
offset = 0, -205
projID = 7019
projanim = 7019
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 6,3
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 10
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 8]
type = Projectile
trigger1 = time = 65 || time = 80
trigger2 = time = 70 || time = 85
offset = 40, -204
projID = 7020
projanim = 7020
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 5,2
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 9]
type = Projectile
trigger1 = time = 65 || time = 80
trigger2 = time = 70 || time = 85
offset = 35, -200
projID = 7019
projanim = 7019
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 5,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 7
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 10]
type = Projectile
trigger1 = time = 70 || time = 85
trigger2 = time = 75 || time = 90
offset = 10, -230
projID = 7020
projanim = 7020
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 9,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 11]
type = Projectile
trigger1 = time = 75 || time = 90
trigger2 = time = 80 || time = 95
offset = 0, -200
projID = 7019
projanim = 7019
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 5,7
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 12]
type = Projectile
trigger1 = time = 80 || time = 95
trigger2 = time = 85 || time = 100
offset = -15, -200
projID = 7020
projanim = 7020
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 6,9
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 10
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 13]
type = Projectile
trigger1 = time = 85 || time = 100
trigger2 = time = 90 || time = 105
offset = -30, -200
projID = 7019
projanim = 7019
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity =6,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 14]
type = Projectile
trigger1 = time = 90 || time = 105
trigger2 = time = 95 || time = 110
offset = -10, -200
projID = 7020
projanim = 7020
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 9,2
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 15]
type = Projectile
trigger1 = time = 95 || time = 110
trigger2 = time = 100 || time = 115
offset = 0, -200
projID = 7019
projanim = 7019
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 5,8
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 16]
type = Projectile
trigger1 = time = 100 || time = 115
trigger2 = time = 105|| time = 120
offset = 40, -200
projID = 7020
projanim = 7020
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 4,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 17]
type = Projectile
trigger1 = time = 105 || time = 120
trigger2 = time = 110|| time = 125
offset = 60, -200
projID = 7019
projanim = 7019
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 9,9
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 18]
type = Projectile
trigger1 = time = 110 || time = 125
trigger2 = time = 115|| time = 130
offset = 60, -200
projID = 7020
projanim = 7020
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 7,7
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 5
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2
fall = 1

[State 3300, Missle 19]
type = Projectile
trigger1 = time = 110 || time = 125
trigger2 = time = 115|| time = 130
offset = -50, -70
projID = 7021
projanim = 7021
projhitanim = 1144
projhits = 1
postype = back
projsprpriority = 4
velocity = 15,0
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 100
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = -1
sparkxy = 0,0
hitsound   = S1,7
guardsound = S1,0
ground.type = high
ground.slidetime = 25
guard.sparkno = -1
ground.hittime  = 85
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, -10
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2
envshake.ampl= -3
envshake.freq= 100
envshake.phase= 150
envshake.time= 50
fall = 1


[State 3005, 20]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

