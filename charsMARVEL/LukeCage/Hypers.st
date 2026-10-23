;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1 = SUPER SPIN CYCLE
;---------------------------------------------------------------------------
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3000, AvX No BG]
type = assertspecial
trigger1 = animelem = 3
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = animelem = 3
Time = 40
pos = 0,-80
sound = s8889,0
poweradd = -1000
movetime= 40

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = animelem = 3
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = animelem = 3
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = animelem = 3
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1


[State 3000, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 5.5

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 3007
ID = 3000
pos = 0,10
postype = p1
facing = 1
vfacing = 1
bindtime = 100
vel = -1.5,0
scale = 1.25,0.75
sprpriority = 10
ontop = 1

[State 3000, 1]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 8
value = 1000, 2
channel = 5

[State 3000, HitDef]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 8
attr = S, HA
animtype  = Hard
damage    = 25,3
hitflag = MAF
priority = 6, Hit
guardflag = MA
pausetime = 6,6
sparkno = 3; s8022
getpower = 0,0
givepower = 0,0
sparkxy = -15,-90
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -5
air.velocity = -2,-2

[State 3000, next]
type = changestate
trigger1 = time = 140
value = 3030
ctrl = 0

;; === Finishing Strike ===
[Statedef 3030]
type    = S
movetype= A
physics = S
anim = 3030
ctrl = 0
velset = 0,0
poweradd = 0

[State 3030, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 8
y = -3

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 6097
ID = 1000
pos = -50,10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -1.5,0
scale = 1,1
sprpriority = 10
ontop = 1

[State 3030, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000, 1
channel = 4

[State 3030, hitdef2]
type = HitDef
trigger1 = animelem = 3
attr = S, HA
forcestand = 1
animtype  = back
damage    = 80,14
getpower = 0,0
givepower = 0,0
priority = 6, Hit
hitflag = MAF
guardflag = MA
pausetime = 20,20
sparkno = 3; s8222
sparkxy = -30,-59
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
fall = 1
air.fall = 1
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -10,-10
fall.recover = 0
envshake.time = 35
envshake.freq = 60
envshake.ampl = -10
envshake.phase = -90

[State 3030, SuperPause]
type = SuperPause
trigger1 =  animelem = 4
time = 10
sound = S800,1
anim = -1

[State 3030,end]  ;End of Hyper I
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 2 = SWEET XMAS
;---------------------------------------------------------------------------
[Statedef 3100]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3100
sprpriority = 0
facep2 = 1
poweradd = 0

[State 3000, AvX No BG]
type = assertspecial
trigger1 = animelem = 8
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = animelem = 8
Time = 40
pos = -25,-110
sound = s8889,0
poweradd = -1000
;movetime= 40

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = animelem = 8
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = animelem = 7
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = animelem = 8
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 9999,5

[State 3100, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 4
y = -7

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 8
y = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time >= 27
y = -1

[State 3100, PosSet]
type = PosSet
trigger1 = pos y >=0  && pos y != 0
trigger2 = animelem = 9
y = 0

[State 3100]
type = EnvShake
trigger1 = animelem = 9
time = 50
freq = 20
ampl = -20
phase = 140

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 3000,0
channel = 5
volume = 255

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = animelem >= 8
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3100, Explod]
type = Explod
trigger1 = animelem = 9
anim = 3101
ID = 3101
pos = 50,25
postype = p1
facing = 1
removetime = -2
sprpriority = 10
scale = 1,1

[State 3100, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 0
y = 0

[State 3100, HitDef]
type = HitDef
trigger1 = AnimElem = 9
attr = S,HA
damage = 290,10
animtype = up
guardflag = MA
hitflag = MAFD
priority = 4, Hit
pausetime = 14,12
sparkno = 3;-1
sparkxy = -10, -10
;guard.sparkno = 3;-1
hitsound = 5,4
ground.type = low
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = 3, -5
air.velocity = 3,-5
airguard.velocity = -6,0
guard.velocity = -8
air.hittime = 40
fall = 1
getpower = 0
p2stateno = 5130

[State 3100, VarSet]
type = VarSet
trigger1 = movecontact
fv = 29
value = 1

[State 3100, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 3 = Power Fist
;---------------------------------------------------------------------------

[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3250
sprpriority = 2
poweradd = 0

[State 3000, AvX No BG]
type = assertspecial
trigger1 = animelem = 2
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = animelem = 2
Time = 40
pos = -20,-87
sound = s8889,0
poweradd = -1000
movetime= 40

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = animelem = 2
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = animelem = 2
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = animelem = 2
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 199, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190, 0

[State 3200, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 9

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 6097
ID = 1000
pos = 0,10
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -3.5,0
scale = 1,1
sprpriority = 10
ontop = 1

[State 3200, Effect]
type = Explod
trigger1 = animelem = 4
anim = 3251
id = 3251
postype = p1
facing = 1
pos = 97, -70
bindtime = -1
sprpriority = 5
removetime = -1
removeongethit = 1
ownpal = 1
ontop = 1
ignorehitpause = 1
persistent = 1

[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 =animelem = 5
id =3251

[State 3200, Effect]
type = Explod
trigger1 = animelem = 3
anim = 3252
id = 3252
postype = p1
facing = 1
pos = 80, -70
bindtime = -1
sprpriority = 5
removetime = -1
removeongethit = 1
ownpal = 1
ontop = 1
ignorehitpause = 1
persistent = 1

[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 =animelem = 5
id =3252

[State 3200, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, HA
animtype  = Hard
damage    = 300,75
hitflag = MAF
priority = 6, Hit
guardflag = MA
pausetime = 10,10
sparkno = 3; s8022
getpower = 0,0
givepower = 0,0
sparkxy = -15,-90
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7,-1
guard.velocity = -5
air.velocity = -7,-1
fall = 1
envshake.time = 35
envshake.freq = 60
envshake.ampl = -10
envshake.phase = -90

[State 3200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 3 = POWERMAN & IRON FIST
;---------------------------------------------------------------------------
;Powerman & Iron Fist (Start)

[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2

[State 3200, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 15
y = 0

[State 3200, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = M-
priority = 1, Miss
sparkno = 3;-1
p1sprpriority = 1

p1facing = 1
p2facing = 1
p1stateno = 3201
guard.dist = 0

[State 3200, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3202
ctrl = 1

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 40
pos = 0,-80
sound = s8889,0
poweradd = -1000
movetime= 40

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1


[State 3200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3202
ctrl = 1

;Powerman & Iron Fist
[Statedef 3201]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 1,0
anim = 3201
ctrl = 0
sprpriority = 2

[State 3201, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = normal ;player
name = "Iron Fist"
ID = 3203
stateno = 3203
pos = 300,0
postype = p1    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 3201, 1]
type = VelSet
trigger1 = FrontEdgeBodyDist < 40
x = 0

[State 3201, ]
type = Width
trigger1 = 1
edge = 0,0
player = 50,0

[State 3201, HitDef 1]
type = HitDef
trigger1 = Time % 2 = 0
attr = S, HA
damage = 10,5
getpower = 0
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 5,2
sparkno = 3;2
;guard.sparkno = 3;5
sparkxy = -10,-65
snap = 80
hitsound = S20,1
guardsound = S20,4
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,0
guard.velocity = -1
air.type = Low
air.velocity = -5,-1
fall.recover = 0
down.bounce = 1
down.velocity = -5,-5
fall = 0
air.fall = 0

[State 3201, 2]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 100,100

[State 3201, 2]
type = ChangeState
trigger1 = Time = 30
value = 3204

[Statedef 3202]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 1,0
anim = 3202
ctrl = 0
sprpriority = 2

[state 3202,end]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;Ironfist attack
[Statedef 3203]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3203
ctrl = 0
sprpriority = 2

[State 3203, VelSet]
type = VelSet
trigger1 = Time >= 1
x = 10

[State 3203, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
attr = S, HA
animtype  = Hard
damage    = 25,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno = 3; s8022
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
guard.velocity = 0
air.velocity = -12,-2

[State 3203, next]
type = changestate
trigger1 = animtime = 0
value = 3205
ctrl = 0

[Statedef 3204]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3204
ctrl = 0
sprpriority = 2

[State 3204, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 5
y = 0

[State 3204, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 11
trigger4 = animelem = 16
trigger5 = animelem = 21
trigger6 = animelem = 22
trigger7 = animelem = 25
trigger8 = animelem = 30
trigger9 = animelem = 31
attr = S, HA
animtype  = Hard
damage    = 25,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno = 3; s8022
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
guard.velocity = -1
air.velocity = -2,-2

[State 3204, next]
type = changestate
trigger1 = animelem = 31
value = 800
ctrl = 0

[Statedef 3205]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3205
ctrl = 0
sprpriority = 2

[State 3205, VelSet]
type = VelSet
trigger1 = animelem = 1
x = -5
y = 0

[State 3205, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 6
trigger4 = animelem = 7
trigger5 = animelem = 8
trigger6 = animelem = 9
attr = S, HA
animtype  = Hard
damage    = 25,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno = 3; s8022
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0
guard.velocity = -1
air.velocity = -2,-2

[State 3205, VelSet]
type = VelSet
trigger1 = animelem = 11
x = -3
y = 0

[State 3205, VelSet]
type = VelSet
trigger1 = animelem = 14
x = 0
y = 0

[State 3205, next]
type = changestate
trigger1 = animelem = 17
value = 3206
ctrl = 0

[Statedef 3206]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3206
ctrl = 0
sprpriority = 2

[State 3206, VelSet]
type = VelSet
trigger1 = 1
x = -10
y = -10


[State 3206, DestroySelf]
type = DestroySelf
trigger1 = animtime = 50
value = 3206
ctrl = 0


;; === Finishing Strike ===
[Statedef 3230]
type    = S
movetype= A
physics = S
anim = 800
ctrl = 0
velset = 0,0

[State 3230, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 8
y = -3


[State 3230, hitdef2]
type = HitDef
trigger1 = animelem = 4
attr = S, HA
forcestand = 1
animtype  = back;DiagUp
damage    = 100
getpower = 0,0
givepower = 0,0
priority = 6, Hit
guardflag = MA
pausetime = 40,40
sparkno = 3; s8222
sparkxy = -30,-59
;guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
fall = 1
air.fall = 1
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -10,-10
fall.recover = 0
envshake.time = 35
envshake.freq = 60
envshake.ampl = -10
envshake.phase = -90


[State 3230, SuperPause]
type = SuperPause
trigger1 =  animelem = 1
time = 20
sound = S180,0
anim = -1

[State 3230, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000, 3

[state 3230,end]  ;End of Hyper I
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 4 = BULLET PROOF
;---------------------------------------------------------------------------

[Statedef 3300]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3302
ctrl = 0
sprpriority = 2

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 40
pos = 0,-80
sound = s8889,0
poweradd = -1000
movetime= 40

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3300, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 740
stateno = 3199

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimTime = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 750

[State 3300, VarSet]
type = VarSet
trigger1 = animelem = 3
v = 15
value = 736

[State 3300, sense bar]
type = Explod
trigger1 = animelem = 1
anim = 3301
id = 3304
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State 3300, sense bar]
type = Explod
trigger1 = animelem = 1
anim = 3300
id = 3304
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 3300, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Giggle and Hoot
;---------------------------------------------------------------------------
[Statedef 3199]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = -9

[State 3199, SprPriority]
type = SprPriority
trigger1 = animelem = 1
value = -1


[State 199, ChangeState]
type = ChangeState
trigger1 = pos y < 0
value = 50
ctrl = 1

[State 199, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 199, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 195, 3

[State 199, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;======================================================
;Avengers Hyper Helpers================================
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
anim = F1500
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
value = 1500,1
volume = 200

[State 40002, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = F1560
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
anim = F1550
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

[State 40003, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = F1551
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

