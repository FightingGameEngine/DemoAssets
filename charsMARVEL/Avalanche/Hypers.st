;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Rictor Scale = Hyper 1
;---------------------------------------------------------------------------

[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 3000
vel = 0,0
ctrl = 0

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 23
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = S3000,0
volume = 255
channel = 5

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
trigger1 = AnimElem = 4
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 3000, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 200 ;time BG remains on screen
id =10010

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 11,3

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7050,0

[State 3000]
type = ScreenBound
trigger1 = AnimElem >= 3
value = 1

[State 3000]
type = EnvShake
trigger1 = AnimElem = 3
time = 150
ampl = -10
freq = 100
phase = 1
removeongethit = 1

[State 3000]
type = Explod
trigger1 = AnimElem = 3
anim = 1501
pos = -15,0
postype = p1
facing = 1
sprpriority = 99
bindtime = -1
removetime = 90

[State 3000]
type = Explod
trigger1 = AnimElem = 3
anim = 3004
pos = 50,150
postype = back
facing = 1
scale = 1.25,.75
sprpriority = -3
bindtime = -1
removetime = 135
ontop = 1

[State 3000]
type = PlaySnd
trigger1 = time = 1
value = 11,3

[State 3000]
type = PlaySnd
trigger1 = time = 13
value = 8200,0

[State 3000]
type = PlaySnd
trigger1 = time = 25
value = 8200,0

[State 3000]
type = PlaySnd
trigger1 = time = 47
value = 8200,0

[State 3000]
type = PlaySnd
trigger1 = time = 63
value = 8200,0

[State 3000]
type = PlaySnd
trigger1 = time = 75
value = 8200,0

[State 3000]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
attr = S, HA
damage = 40,7
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
getpower = 0
pausetime = 10, 6
guard.sparkno = S7047
sparkno = s7012
sparkxy = -25, 0
hitsound = S1,0
guardsound = S2,0
p2sprpriority = -1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-3
guard.velocity = -4
fall = 0
fall.animtype = Hard
fall.recover = 0
down.bounce = 1
air.recover = 1
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = .4
;p2stateno = 5070

[State 3000]
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 12
attr = S, HA
damage = 10,2
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
getpower = 0
pausetime = 4, 1
guard.sparkno = S7047
sparkno = s7012
sparkxy = -25, 0
hitsound = S1,0
guardsound = S2,0
p2sprpriority = -1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-3
guard.velocity = -4
fall = 1
fall.animtype = Hard
fall.recover = 0
down.bounce = 1
air.recover = 1
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = .4

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Gravelanche = Hyper 2
;---------------------------------------------------------------------------
[Statedef 3100]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = -1

[State 3100, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3100, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 23
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3100, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3100, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3100, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3100, superportrait]
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

[State 3100, superportrait]
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

[State 3100, superportrait]
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


[State 3100, superportrait]
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

[State 3100, superportrait black]
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

[State 3100, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 5
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 3100, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 200 ;time BG remains on screen
id =10010

[State 3100, VelSet]
type = VelSet
trigger1 = Time >= 25
x = -3
y = -3

[State 3100, raised rock]
type = helper
trigger1 = time = 0
helpertype = normal
ID = 3100
name = "raised rock"
postype = player
pos = -10, 80
sprpriority = 3
stateno = 3102
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999


[State 3100, EnvShake]
type = EnvShake
trigger1 = animelem = 4
time = 100
freq = 40
ampl = -2

[State 3100, earth]
type = helper
trigger1 = Time = 34
helpertype = normal
ID = 3100
name = "earth"
postype = back
pos = -20, -5;floor(Pos Y + 25)
stateno = 3101
sprpriority = 4
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3100, earth2]
type = helper
trigger1 = Time = 44
helpertype = normal
ID = 3100
name = "earth2"
postype = back
pos = -50,-27;floor(Pos Y + 25)
stateno = 3101
sprpriority = 5
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3100, earth3]
type = helper
trigger1 = Time = 54
helpertype = normal
ID = 3100
name = "earth3"
postype = back
pos = -20, -15;floor(Pos Y + 25)
stateno = 3101
sprpriority = 4
keyctrl = 0
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3100, end]
type = changestate
trigger1 = animtime = 0
value = 50

; ---------------
;earth
[Statedef 3101]
type = S
physics = N
movetype = A
anim = 3002
sprpriority = 3

[State 3101, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 3101, 0]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3101, 1]
type = VelSet
trigger1 = Time = 0
x = 18

[State 3101, 2]
type = HitDef
trigger1 = Time >= 5 && Time < 7 && Time % 3 = 0
attr = S, HA
hitflag = MAFD
guardflag = MA
animtype = hard
getpower = 0,0
damage = 5, 1
pausetime = 0, 5
sparkno = -1
guard.sparkno = -1
hitsound = S8000,3
guardsound = s9, 0
ground.type = low
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 3
air.hittime = 10
ground.velocity = -15, -1
air.velocity = -15, -1
guard.velocity = -8
ground.cornerpush.veloff = 0
yaccel = const(movement.yaccel) + 0.32
fall = 0
air.fall = 0
numhits = 10
fall.recover = 0
p2facing = 1

[State 3101, 2]
type = HitDef
trigger1 = Time >= 8 && Time < 16 && Time % 3 = 0
attr = S, HA
hitflag = MAFD
guardflag = MA
animtype = hard
getpower = 0,0
damage = 5, 1
pausetime = 0, 5
sparkno = -1
guard.sparkno = -1
hitsound = S8000,3
guardsound = s9, 0
ground.type = low
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 3
air.hittime = 10
ground.velocity = -15, -1
air.velocity = -15, -1
guard.velocity = -8
ground.cornerpush.veloff = 0
yaccel = const(movement.yaccel) + 0.32
fall = 0
air.fall = 0
numhits = 1
fall.recover = 0
p2facing = 1

[State 3101, 2]
type = HitDef
trigger1 = Time >= 21 && Time < 32 && Time % 3 = 0
attr = S, HA
hitflag = MAFD
guardflag = MA
animtype = hard
getpower = 0,0
damage = 10,2
pausetime = 0, 5
sparkno = -1
guard.sparkno = -1
hitsound = S8000,3
guardsound = s9, 0
ground.type = low
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 3
air.hittime = 10
ground.velocity = -15, -1
air.velocity = -15, -1
guard.velocity = -8
ground.cornerpush.veloff = 0
yaccel = const(movement.yaccel) + 0.32
fall = 0
air.fall = 0
numhits = 1
fall.recover = 0
p2facing = 1


[State 3101, 2]
type = HitDef
trigger1 = Time >= 41 && Time < 62 && Time % 3 = 0
attr = S, HA
hitflag = MAFD
guardflag = MA
animtype = hard
getpower = 0,0
damage = 5, 1
pausetime = 0, 5
sparkno = -1
guard.sparkno = -1
hitsound = S8000,3
guardsound = s9, 0
ground.type = low
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 3
air.hittime = 10
ground.velocity = -15, -1
air.velocity = -15, -1
guard.velocity = -8
ground.cornerpush.veloff = 0
yaccel = const(movement.yaccel) + 0.32
fall = 0
air.fall = 0
numhits = 1
fall.recover = 0
p2facing = 1

[State 3101, 2]
type = HitDef
trigger1 = animelem = 4
attr = S, HA
hitflag = MAFD
guardflag = MA
animtype = hard
getpower = 0,0
damage = 20,5
pausetime = 0, 5
sparkno = -1
guard.sparkno = -1
hitsound = S8000,3
guardsound = s9, 0
ground.type = low
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 3
air.hittime = 10
ground.velocity = -15, -1
air.velocity = -15, -1
guard.velocity = -8
ground.cornerpush.veloff = 0
yaccel = const(movement.yaccel) + 0.32
fall = 1
air.fall = 0
numhits = 1
fall.recover = 0
p2facing = 1

[State 3101]
type = PlaySnd
trigger1 = time = 1
value = 8200,0

[State 3101]
type = PlaySnd
trigger1 = time = 13
value = 8200,0

[State 3101]
type = PlaySnd
trigger1 = time = 25
value = 8200,0

[State 3101]
type = PlaySnd
trigger1 = time = 47
value = 8200,0

[State 3101]
type = PlaySnd
trigger1 = time = 63
value = 8200,0

[State 3101]
type = PlaySnd
trigger1 = time = 75
value = 8200,0

[State 3101, 4]
type = DestroySelf
trigger1 = time = 80

;---------------------------------
 [Statedef 3102]
type = S
physics = N
movetype = A
anim = 3003
sprpriority = 2

[State 3102, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 3102, 0]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3101, 4]
type = DestroySelf
trigger1 = time = 110

;===============================================================================
;HYPER 4 =  UPROOT
;===============================================================================

[Statedef 3400]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 3400, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3400, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 23
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S3400,0
volume = 255
channel = 5

[State 3400, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3400, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3400, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3400, superportrait]
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

[State 3400, superportrait]
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

[State 3400, superportrait]
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

[State 3400, superportrait]
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

[State 3400, superportrait black]
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

[State 3400, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 5
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 3400, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 200 ;time BG remains on screen
id =10010

[State 3400, next]
type = changestate
trigger1 = time = 20;animtime = 0
value = 1300
ctrl = 1

;------------------------------------------------------------------------------

[StateDef 1300]
type = A
movetype = A
physics = N
anim = 1300
ctrl = 0
velset = 0,-0.5
sprpriority = 0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 11,3

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 7050,0

[State 1300, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal
ID = 1301
stateno = 1301
pos = 40,-90
postype = p1
bindtime = -1

[State 1300, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal
ID = 1301
stateno = 1301
pos = -40,-90
postype = p1
bindtime = -1

[State 1300, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1302
ID = 1302
pos = -30,50
postype = p1
removetime = -2
sprpriority = 3

[State 1301, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal
ID = 1302
stateno = 1302
pos = 0,0
postype = p1
bindtime = -1

[State 1300, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50

;-------------------------------------------------------------------------------
;
[Statedef 1301]
type = C
movetype = A
physics = N
anim = 1301
velset = 0,0
sprpriority = 3

[State 1301, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 11,4

[State 1301, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1301, HitDef]
type = HitDef
trigger1 = time= 0
attr = A, HA
damage = 50,7
guardflag = MA
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = -1
sparkxy = 0,0
animtype = Back
ground.type = trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2
guard.velocity = -2
air.velocity = -4,-5

[State 1301, Explod]
type = Explod
trigger1 = time = 0
anim = 812
ID = 812
pos = 0,0
postype = p1
removetime = -2
sprpriority = 2

[State 1301, 1]
type = EnvShake
trigger1 = time = 0
time = 40
freq = 110
ampl = -7
phase = 40

[State 1301, blast]
type = Helper
trigger1 = AnimElem = 3
ID =1303
stateno =1303
postype = p1
pos = 20,40
name = "RUBBLE"
ownpal = 1

[State 1301, blast]
type = Helper
trigger1 = AnimElem = 6
ID =1304
stateno =1304
postype = p1
pos = -20,40
name = "RUBBLE"
ownpal = 1

[State 1301, blast]
type = Helper
trigger1 = AnimElem = 9
ID =1303
stateno =1303
postype = p1
pos = 10,40
name = "RUBBLE"
ownpal = 1

[State 1301, blast]
type = Helper
trigger1 = AnimElem = 12
ID =1304
stateno =1304
postype = p1
pos = -10,40
name = "RUBBLE"
ownpal = 1

[State 1301, Destroyself]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=1300
;-------------------------------------------------------------------------------
;Rock Debris

[Statedef 1302]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 21247
velset = 0,0
sprpriority=3

[State 1302, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 21247
projhitanim = 21247
projcancelanim = 21247
projhits = 1
offset = (3 + Random/5),(15 + Random/50)
velocity = (5 - Random/150),(-4 - Random/150)
attr = A, HA
damage =  90,17
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 0,0
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
fall =1

[State 1302, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 21247
projhitanim = 21247
projcancelanim = 21247
projhits = 1
offset = (-3 + Random/5),(15 + Random/50)
velocity = (-5 - Random/150),(-4 - Random/150)
attr = A, HA
damage =  50,7
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 0,0
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
fall = 1

[State 1302, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1334
time = -1

[State 1302, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1302, 5]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------------------------
;Rubble

[Statedef 1303]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 21247
velset = 1,1
sprpriority=1

[State 1301, SprPriority]
type = SprPriority
trigger1 = AnimTime = 0
value = 1303

[State 1303, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 21247
projhitanim = 21247
projcancelanim = 21247
projhits = 1
offset = 20,150
velocity = (0 - Random/250),(9 - Random/250)
attr = A, HA
damage =  50,7
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 3,1
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
fall = 1

[State 1303, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1334
time = -1

[State 1303, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1303, 5]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
;Rubble

[Statedef 1304]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 21247
velset = 1,1
sprpriority = 9

[State 1301, SprPriority]
type = SprPriority
trigger1 = AnimTime = 0
value = 1304

[State 1304, 1]
type = Projectile
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
projanim = 21247
projhitanim = 21247
projcancelanim = 21247
projhits = 1
offset = 20,150
velocity = (0 - Random/250),(9 - Random/250)
attr = A, HA
damage = 50,7
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = S8000,5
guardsound = 6,0
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1304, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1334
time = -1

[State 1304, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1334
ctrl = 1

[State 1304, 5]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1334]
type    = S
movetype= I
physics = N
juggle  = 5
poweradd = 0
anim = 1334
ctrl = 0
sprpriority = 4
velset = 0

[State 1334, 2]
type = DestroySelf
trigger1 = animtime = 0


;---------------------------------------------------------------------------
; Landslide - Hyper 4
;---------------------------------------------------------------------------

[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3300
ctrl = 0

[State 3300, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3300, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 23
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

[State 3300, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 4
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -22
ownpal = 1
scale = 1.1,1.1

[State 3300, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 200 ;time BG remains on screen
id =10010

[State 3300]
type = ScreenBound
trigger1 = AnimElem >= 3
value = 1

[State 3300]
type = EnvShake
trigger1 = AnimElem = 6
time = 50
ampl = -10
freq = 50
phase = 1
removeongethit = 1

[State 3300, ground crack back]
type = Explod
trigger1 = animelem = 6
anim = 6289
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 3300, ground crack front]
type = Explod
trigger1 = animelem = 6
anim = 6290
ID = 6288
pos = 55,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 50
supermove = 999999
pausemove = 999999
scale = 1,1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S8200,0

[State 3300, crack]
type = helper
trigger1 = Time = 31
helpertype = normal
ID = 3301
name = "crack"
postype = p1
pos = 50,10
stateno = 3301
keyctrl = 0
ownpal = 1
sprpriority = 4
bindtime = -1
removetime = 105
ontop = 1
supermovetime = 99999
pausemovetime = 99999

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S195,0
volume = 255
channel = 5

[State 3300, next]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; ---------------
;earth cracks
[Statedef 3301]
type = S
physics = N
movetype = A
anim = 3901
sprpriority = -1

[State 3301, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 3301, 0]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3301, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, HA
hitflag = MAFD
guardflag = MA
animtype = hard
getpower = 0,0
damage = 70, 7
pausetime = 0, 5
sparkno = -1
guard.sparkno = -1
hitsound = S8000,3
guardsound = s9, 0
ground.type = low
ground.slidetime = 15
guard.slidetime = 10
ground.hittime = 30
air.hittime = 10
ground.velocity = -3, -1
air.velocity = -3, -1
guard.velocity = -8
forcestand = 1
ground.cornerpush.veloff = 0
yaccel = const(movement.yaccel) + 0.32
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
fall.recover = 0
p2facing = 1
p2stateno = 3321

[State 3301, ChangeState]
type = ChangeState
trigger1 = movehit
value = 3302
ctrl = 0

[State 3301, 4]
type = DestroySelf
trigger1 = time = 30

; ---------------
;earth open up
[Statedef 3302]
type = S
physics = N
movetype = A
anim = 3900
sprpriority = 3

[State 3300]
type = EnvShake
trigger1 = AnimElem = 1
time = 200
ampl = -10
freq = 100
phase = 1
removeongethit = 1

[State 3302, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 5
trigger4 = animelem = 6
trigger5 = animelem = 8
value = s8200,0
volume = 255
channel = 3

[State 3302, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
value = s8000,4
volume = 255
channel = 4

[State 3302, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
value = s8000,2
volume = 255
channel = 5

[State 3302, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 3302]
type = Explod
trigger1 = AnimElem = 1
anim = 3904
pos = 0,-80 ;-40,130
postype = p1
facing = 1
scale = 1.25,.75
sprpriority = -21
bindtime = -1
removetime = 180
ontop = 0
supermovetime = 99999
pausemovetime = 99999

[State 3302, 0]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3302, ground move1]
type = Explod
trigger1 = time = 0
anim = 3902
ID = 3302
pos = 40,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -.5,0
accel = 0,0
random = 0,0
removetime = 60
supermove = 99999
pausemove = 99999
scale = 1.5,1
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 3302, ground stop1]
type = Explod
trigger1 = time = 60
anim = 3902
ID = 3302
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 60
supermove = 99999
pausemove = 99999
scale = 1.5,1
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 3302, ground move1]
type = Explod
trigger1 = time = 120
anim = 3902
ID = 3302
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = .5,0
accel = 0,0
random = 0,0
removetime = 100
supermove = 99999
pausemove = 99999
scale = 1.5,1
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 3302, ground move2]
type = Explod
trigger1 = time = 0
anim = 3903
ID = 3302
pos = 40,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = .5,0
accel = 0,0
random = 0,0
removetime = 60
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 2
ownpal = 1
removeongethit = 0

[State 3302, ground stop2]
type = Explod
trigger1 = time = 60
anim = 3903
ID = 3302
pos = 150,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 60
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 2
ownpal = 1
removeongethit = 0

[State 3302, ground move2]
type = Explod
trigger1 = time = 120
anim = 3903
ID = 3302
pos = 150,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = -.5,0
accel = 0,0
random = 0,0
removetime = 100
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 2
ownpal = 1
removeongethit = 0

[State 3302, Hurt 1]
type = TargetLifeAdd
trigger1 = 1
value = -350

[State 3302, Stone fist]
type = Explod
trigger1 = time = 30
anim = 3309
ID = 3302
pos = 10,40
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 93
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 3302, Stone fist]
type = Explod
trigger1 = time = 50
anim = 3309
ID = 3302
pos = 70,30
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 93
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 3302, Stone fist]
type = Explod
trigger1 = time = 70
anim = 3309
ID = 3302
pos = 40,50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 93
supermove = 99999
pausemove = 99999
scale = 1,1
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 3302, Stone fist]
type = Explod
trigger1 = time = 170
anim = 3309
ID = 3302
pos = 50,50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 31
supermove = 99999
pausemove = 99999
scale = 1.5,2
sprpriority = 5
ownpal = 1
removeongethit = 0

[State 3302, 4]
type = DestroySelf
trigger1 = time = 200

; ---------------
;Landslide react
[Statedef 3321]
type = S
physics = N
movetype = A
anim = 5070;3905
sprpriority = 3

[State 3321]
type = PlaySnd
trigger1 = time = 1
value = 11,3

[State 3321, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 6

[State 3321];No Bound
type = ScreenBound
trigger1 = alive = 1
movecamera = 0
value = 0

[State 3321, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3321]
type = ChangeState;DestroySelf
trigger1 = time = 150
value = 3322
ignorehitpause = 1

;---------------------------------------------------------------------------
;Thrown by(in air)
[Statedef 3322]
type    = A
movetype= H
physics = N
velset = -0.5,-40
poweradd = 40
lifeadd = -150

[State 3322, 1]
type = VelAdd
Trigger1 = 1
y = .5

[State 3322, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3322, 2]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 3322, 3]
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State 3322, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


