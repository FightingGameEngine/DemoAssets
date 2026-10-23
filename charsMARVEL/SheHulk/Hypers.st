[State 0, DisplayToClipboard]
type = DisplayToClipboard
;trigger1 =
;text = "var(10) = %d  vel x = %f"
;params = var(10),vel x
;ignorehitpause =
;persistent =
[State 0, DestroySelf]
type = DestroySelf
;trigger1 =
;ignorehitpause =
;persistent =
;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
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
sound = s1500,0
poweradd = -1000
movetime= 40

[State 3000, 1]
type = PlaySnd
trigger1 = time = 0
value = 1000,0
channel = 4

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

[State 3000, VelSet]
type = VelSet
trigger1 = time > 40
x = 11

[State 3000, next]
type = changestate
trigger1 = time > 40
trigger1 = p2bodydist x < 10
value = 3010
ctrl = 0

[State 3000, next]
type = changestate
trigger1 = animtime = 0
trigger1 = time > 80
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 3010]
type    = S
movetype= A
physics = S
anim = 3010
ctrl = 0
velset = 0,0

[State 3000, VelSet]
type = VelSet
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 22
trigger4 = animelem = 28
trigger5 = animelem = 33
trigger5 = animelem = 51
x = 11

[State 3010, PlayerPush]
type = PlayerPush
trigger1 = p2statetype != A
trigger1 = time > 74
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = p2statetype = A
trigger1 = animelem = 43
value = 3010
elem = 56

[State 3010, HitDef]
type = HitDef
trigger1 = animelem = 4 || animelem = 11
trigger2 = animelem = 18 || animelem = 23
trigger3 = animelem = 30 || animelem = 36
trigger4 = animelem = 48
attr = S, HA
animtype  = Hard
damage    = 54,6
hitflag = MAF
priority = 6, Hit
guardflag = MA
pausetime = 6,6
sparkno =  s8022
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Hard
ground.type = High
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -2
guard.velocity = -5
air.hittime  = 35
air.velocity = -1.5,ifelse(p2dist y < -40, -2, -3.5)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3010, HitDef]
type = HitDef
trigger1 = animelem = 54
attr = S, HA
animtype  = Hard
damage    = 54,6
hitflag = MAF
priority = 6, Hit
guardflag = L
pausetime = 6,6
sparkno =  s8022
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Hard
ground.type = High
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -2
guard.velocity = -5
air.hittime  = 35
air.velocity = -1.5,ifelse(p2dist y < -40, -2, -3.5)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0


[State 3000, HitDef]
type = HitDef
trigger1 = animelem = 58
attr = S, HA
animtype  = Hard
damage    = 166,9
hitflag = MAF
priority = 6, Hit
guardflag = MA
pausetime = 6,12
sparkno =  s8022
getpower = 0,0
givepower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0, -13
guard.velocity = -5
air.velocity = 0,-9
fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 3001, next]
type = changestate
trigger1 = animtime = 0
value = 3030
ctrl = 0

;-------------------------------------------------------------------------------
;
[Statedef 3030]
type    = A
movetype= A
physics = S
anim = 3030
ctrl = 0
velset = 0,-9

[State 3010, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3000, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3000,1
channel = 4

[State 3030, VelAdd]
type = VelAdd
trigger1 = animelemtime(6)<=0
x = 0
y = .45

[State 3030, hitdef2]
type = HitDef
trigger1 = animelem = 5
attr = A, HA
;forcestand = 1
ID = 3060
animtype  = back;DiagUp
damage    = 150,9
getpower = 0,0
givepower = 0,0
priority = 2, Hit
guardflag = MA
pausetime = 4,24
sparkno =  s8222
sparkxy = -30,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = low
ground.slidetime = 40
ground.hittime  = 80
ground.velocity = 1 ,20
air.velocity = 1,20
envshake.time = 35
envshake.freq = 60
envshake.ampl = -10
envshake.phase = -90
fall = 1
air.fall = 1
fall.recover = 0

[State 3001, next]
type = changestate
trigger1 = p2stateno = 5110 && time >= 20
value = 3040
ctrl = 0

[State 3001, next]
type = changestate
trigger1 = ((p2stateno != [5020, 5039]) && (p2stateno != [5050, 5120])) && time >= 30
value = 50
ctrl = 0

;-------------------------------------------------------------------------------
;Coming Down
[Statedef 3040]
type    = A
movetype= I
physics = A
anim = 3040
ctrl = 0
velset = 0,3

[State 3010, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3030, VelAdd]
type = VelAdd
trigger1 = statetype = A
x = 0
y = .45

[State 3000, TargetState]
type = TargetState
triggerall = NumTarget(3060)
trigger1 = p2stateno = 5110
value = 3060
ID = -1
;ignorehitpause = 
;persistent = 

[State 3040, next]
type = changestate
trigger1 = vel y > 0 && pos y > -20
value = 3050
ctrl = 0

;-------------------------------------------------------------------------------
;Finishing Strike
[Statedef 3050]
type    = C
movetype= A
physics = N
anim = 3050
ctrl = 0
velset = 0,0

[State 3010, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3030, PosSet]
type = PosSet
trigger1 = Pos y != 0
y = 0

[State 3030, Explod]
type = Explod
trigger1 = animelem = 9
anim = 3020
ID = 3030
pos = -20,45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 10
vel = 0,0
accel = 0,0
random = 0,0
removetime = 17
supermove
scale = 1.8,1.25
sprpriority = 99
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3100, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 9
time = 38
ampl = 5
freq = 190

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 250,0
channel = 1

[State 3100, 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 8700, 0

[State 3030, hitdef3]
type = HitDef
trigger1 = animelem = 9
attr = S, HA
;forcestand = 1
animtype  = back;DiagUp
damage = 300,9
getpower = 0,0
givepower = 0,0
priority = 6, Hit
hitflag = FD
pausetime = 8,8
sparkno =  s8222
sparkxy = -30,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = high
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -7,-12
air.velocity = -7,-10
down.cornerpush.veloff = 0
envshake.time = 35
envshake.freq = 60
envshake.ampl = -10
envshake.phase = -90

[state 3030,end]  ;End of Hyper I
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Self state
[Statedef 3060]
type    = L
movetype= H
physics = N
anim = 5110
ctrl = 0
velset = 0,0

[State 0, Null]
type = Null
trigger1 = 1


;---------------------------Hyper 2 --------------------------------------------
;---------------------------------------------------------------------------
; Car Theft
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
poweradd = -1000
anim = 3100
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
trigger1 = time = 58
Time = 40
pos = 0,-80
sound = 1500,0
movetime= 20

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

;-----------------------------------------

[State 3100, VelSet]
type = VelSet
trigger1 = animelem = 2 ||  animelem = 3
trigger2 = animelem = 4 ||  animelem = 5
trigger3 = animelem = 6 ||  animelem = 7
trigger4 = animelem = 8 ||  animelem = 9
x = -14
y = 0

[State 3100, 1]
type = AfterImage
trigger1 = time = 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 3100, 7]
type = ChangeState
trigger1 = animtime = 0
value = 3101
ctrl = 1

;-----------------------------------------
; Car Theft
[Statedef 3101]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3101
ctrl = 0
sprpriority = 2

[State 3100, Shake Screen]
type = EnvShake
trigger1 = AnimElem = 11
time = 18
ampl = 5
freq = 190

[State 3100, 1]
type = PlaySnd
trigger1 = AnimElem = 16
value = 3100, 0

[State 3100, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 1

[State 3100, 3]
type = PlaySnd
trigger1 = AnimElem = 18
value = 54, 8

[State 3100, sound2]
type = PlaySnd
trigger1 = AnimElem = 19
value = 8000, 0

[State 3100, sound3]
type = PlaySnd
trigger1 = AnimElem = 12
value = 8400,2

[State 3100, explod3]
type = Explod
trigger1 = AnimElem = 11
persistent = 0
anim = 3102
pos = 105,-20
postype = p1
sprpriority = 71
bindtime = 1
ownpal = 1

[State 3100, explod2]
type = Explod
trigger1 = AnimElem = 12
persistent = 0
anim = 3102
pos = 40,0
postype = p1
sprpriority = 60
bindtime = 1
ownpal = 1

[State 3100, explod3]
type = Explod
trigger1 = AnimElem = 13
persistent = 0
anim = 3102
pos = 145,-20
postype = p1
sprpriority = 61
bindtime = 1
ownpal = 1

[State 3100, explod2]
type = Explod
trigger1 = AnimElem = 2
persistent = 0
anim = 3104 + ((Random * 5) / 1000)
pos = 10,0
postype = p1
sprpriority = 59
bindtime = 110
scale = 0.85,0.85
ownpal = 1

[State 3100, effect]
type = Explod
trigger1 = AnimElem = 14
persistent = 0
anim = 3103
postype = p1
sprpriority = 99
pos = 100, -50
scale = 1.5,1.25
velocity = 0, 0
removetime = 37
ontop=1

[State 3100, effect]
type = Explod
trigger1 = AnimElem = 21
persistent = 0
anim = 3103
postype = p1
sprpriority = 99
pos = 100, -60
scale = 1.5,1.25
velocity = 0, 0
accel = 1.25,-0.5
removetime = 37
ontop=1

[State 3101,AngleDraw]
type = AngleDraw
trigger1 = movecontact
value = -13
ignorehitpause = 1
persistent = 1

[State 3100, 5]
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
attr = S, HA
animtype  = Hard
damage    = 92,9
getpower  = 0
priority  = 6
hitflag = MADF
guardflag = MA
pausetime = 0,0
sparkno = 3
sparkxy = -10,-90
hitsound   = S8700,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -6
air.velocity = -3,-2.8
air.fall = 1
fall.animtype = Hard
fall.recover = 0

[State 3100, 6]
type = HitDef
trigger1 = AnimElem = 12
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
attr = S, HA
animtype  = Hard
damage    = 75,7
getpower  = 0
priority  = 5
hitflag = MADF
guardflag = MA
pausetime = 0,0
sparkxy = -10,-60
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -5, -4
guard.velocity = -12
air.velocity = -5,-4
airguard.velocity = -3,-3
fall.animtype = Hard
fall = 1

[State 3100, 6]
type = HitDef
trigger1 = AnimElem = 19
attr = S, HA
animtype  = Hard
damage    = 55,7
getpower  = 0
priority  = 5
hitflag = MADF
guardflag = MA
pausetime = 0,0
sparkxy = -10,-60
hitsound   = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -5, -4
guard.velocity = -12
air.velocity = -5,-4
airguard.velocity = -3,-3
fall.animtype = Hard
fall = 1
air.fall = 1

[State 3100, VarSet]
type = VarSet
trigger1 = movecontact
fv = 29
value = 1

[State 3100, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Somersault Hyper
[Statedef 3200]
type    = A
movetype= A
physics = N
juggle  = 0
ctrl = 0
velset = 0,0
poweradd = -1000
anim = 3200

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 58
Time = 40
pos = 0,-80
sound = 1500,0
movetime= 20

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

;-----------------------------------------

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 45   ;fv = 10
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = !time
var(10)= 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1900,0
channel = 3

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S1000,1
channel = 4


[State 0, AfterImage]
type = AfterImage
trigger1 = animelem = 2
time = 2
length = 15
framegap = 4
trans = add1
PalContrast = 150,50,70

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 55
value = SCA
time = 1

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem=3
x = 4
y = -7

[State 3200, VelAdd]
type = VelAdd
trigger1 = animelemtime(3)>=0
y = .6

[State 3200, VelMul]
type = VelMul
trigger1 = animelemtime(12)>=0
x = .85

[State 3200, hit]
type=hitdef
trigger1=AnimElem=4
attr=A,HA
damage=33,3
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=2,2
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-50
hitsound=s8000,5
guardsound=s8000,6
ground.type=Low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-2,0
air.type=Low
air.velocity=-1.5,-4.5
getpower=0
air.fall=1
fall.recover=0
yaccel = .5
fall.yvelocity=0
envshake.time=4
envshake.ampl=1

[State 3200, hit]
type=hitdef
trigger1=AnimElem=5
attr=A,HA
damage=33,3
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=2,2
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-53
hitsound=s8000,5
guardsound=s8000,6
ground.type=High
ground.slidetime=25
ground.hittime=25
air.hittime=25
ground.velocity=-2,0
air.type=Low
air.velocity=-1.5,-4.5
getpower=0
air.fall=1
fall.recover=0
yaccel = .5
fall.yvelocity=0
envshake.time=4
envshake.ampl=1

[State 3200, hit]
type=hitdef
trigger1=animelem = 6
attr=A,HA
damage=33,3
animtype=Hard
guardflag=MA
hitflag=MAF
priority=5,Hit
pausetime=2,2
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-80
hitsound=s8000,5
guardsound=s8000,6
ground.type=High
ground.slidetime=25
ground.hittime=25
air.hittime=25
ground.velocity=-2,0
air.type=Low
air.velocity=-1.5,-6
getpower=0
envshake.time=4
envshake.ampl=2
fall.yvelocity=0
yaccel = .5
air.fall=1
fall.recover=0

[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3204
ID = 3200
postype = p1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
removetime = -2
scale = 1.25,1.25;const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 0
removeongethit = 1
ignorehitpause = 0
ontop = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 7
id = 3200

[State 3200, 5]
type = ChangeState
triggerall = AnimElemTime(3)>=0
trigger1=Vel Y >= 0
trigger1=Pos Y >= 0
value = 3201
;---------------------------------------------------------------------------
; Somersault Hyper part 2
[Statedef 3201]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3201

[State 3200, VarSet]
type = VarSet
trigger1 = !time
var(10)= 1

[State 3200, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=3
value = S8400,2
volume = 0
channel = 5

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S1000,1
channel = 4


[State 3200, Width]
type = Width
triggerall=anim=3201
trigger1 = animelemtime(3)>=0&&animelemtime(10)<0
value = 20,0
[State 0, Width]
type = Width
triggerall=anim=3201
trigger1 = animelemtime(5)>=0&&animelemtime(10)<0
value = 30,0

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem=3
x = 8
y = -7

[State 3200, VelAdd]
type = VelAdd
trigger1 = animelemtime(3)>=0
y = .6

[State 3200, VelMul]
type = VelMul
trigger1 = animelemtime(12)>=0
x = .85

[State 3200, hit]
type=hitdef
trigger1=AnimElem=4
attr=A,HA
damage= 33,3
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=4,4
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-50
hitsound=s8000,5
guardsound=s8000,6
ground.type=Low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-4,0
air.type=Low
air.velocity=-3,-4.5
getpower=0
air.fall=1
fall.recover=0
yaccel = .5
fall.yvelocity=0
envshake.time=4
envshake.ampl=1

[State 3200, hit]
type=hitdef
trigger1=AnimElem=5
attr=A,HA
damage=33,3
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=4,4
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-53
hitsound=s8000,5
guardsound=s8000,6
ground.type=High
ground.slidetime=25
ground.hittime=25
air.hittime=25
ground.velocity=-4,0
air.type=Low
air.velocity=-2,-4.5
getpower=0
air.fall=1
fall.recover=0
yaccel = .5
fall.yvelocity=0
envshake.time=4
envshake.ampl=1

[State 3200, hit]
type=hitdef
trigger1=animelem=6
attr=A,HA
damage=33,3
animtype=Hard
guardflag=MA
hitflag=MAF
priority=5,Hit
pausetime=4,4
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-80
hitsound=s8000,5
guardsound=s8000,6
ground.type=High
ground.slidetime=25
ground.hittime=25
air.hittime=25
ground.velocity=-4,0
air.type=Low
air.velocity=-2,-6
getpower=0
envshake.time=4
envshake.ampl=2
fall.yvelocity=0
yaccel = .5
air.fall=1
fall.recover=0

[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3204
ID = 3200
postype = p1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
removetime = -2
scale = 1.25,1.25;const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 0
removeongethit = 1
ignorehitpause = 0
ontop = 1


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem=7
id = 3200

[State 3200, 5]
type = ChangeState
triggerall = AnimElemTime(3)>=0
trigger1=Vel Y >= 0
trigger1=Pos Y >= 0
value = 3202
;---------------------------------------------------------------------------
; Somersault Hyper part 3
[Statedef 3202]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3202

[State 3200, VarSet]
type = VarSet
trigger1 = !time
var(10)= 2

[State 3200, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem=3
value = S8400,2
volume = 0
channel = 5

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S1000,1
channel = 4

[State 3200, Width]
type = Width
triggerall=anim=3202
trigger1 = animelemtime(3)>=0&&animelemtime(10)<0
value = 20,0

[State 3200, Width]
type = Width
triggerall=anim=3202
trigger1 = animelemtime(5)>=0&&animelemtime(10)<0
value = 30,0

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElem=3
x = 12
y = -12

[State 3200, VelAdd]
type = VelAdd
trigger1 = animelemtime(3)>=0
y = .5

[State 3200, VelMul]
type = VelMul
trigger1 = animelemtime(12)>=0
x = .85

[State 3200, hit]
type=hitdef
trigger1=AnimElem=4
attr=A,HA
damage=33,3
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=8,6
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-50
hitsound=s8000,5
guardsound=s8000,6
ground.type=Low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-6,-12
air.type=Low
air.velocity=-3.5,-11
getpower=0
air.fall=1
fall.recover=0
yaccel = .65
fall.yvelocity=0
envshake.time=8
envshake.ampl=1

[State 3200, hit]
type=hitdef
trigger1=AnimElem=5
attr=A,HA
damage=33,3
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=8,6
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-53
hitsound=s8000,5
guardsound=s8000,6
ground.type=High
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-6,-12
air.type=Low
air.velocity=-3.5,-11
getpower=0
air.fall=1
fall.recover=0
yaccel = .65
fall.yvelocity=0
envshake.time=8
envshake.ampl=2

[State 3200, hit]
type=hitdef
trigger1=animelem=6
attr=A,HA
damage=33,3
animtype=Hard
guardflag=MA
hitflag=MAF
priority=5,Hit
pausetime=15,15
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-80
hitsound=s8000,5
guardsound=s8000,6
ground.type=High
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-4,-20
air.type=Low
air.velocity=-3.5,-17
getpower=0
envshake.time=15
envshake.ampl=3
fall.yvelocity=0
yaccel = .65
air.fall=1
fall.recover=1

[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3204
ID = 3200
postype = p1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
removetime = -2
scale = 1.25,1.25;const(size.xscale),const(size.yscale)
sprpriority = 3
ownpal = 0
removeongethit = 1
ignorehitpause = 0
ontop = 1

[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 7
id = 3200

[State 3200, 5]
type = ChangeState
triggerall = AnimElemTime(9)>=0
trigger1=Vel Y >= 0 && Pos y >=5
value = 1202

;---------------------------------------------------------------------------
; Hyper 3
;---------------------------------------------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 3300
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3000, AvX No BG]
type = null;assertspecial
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
sound = 1500,0
poweradd = -1000
movetime= 40

[State 3300, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000,0
channel = 4

[State -2, AvX Hyper Background]
type = null;Helper
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
type = null;Helper
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
type = null;:Helper
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

[State 3300, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A       ;S,A,C,L
physics = N         ;A,C,S,N

[State 3300, VelSet]
type = VelSet
trigger1 = animelem = 2
y = -4

[State 3300, VelAdd]
type = VelAdd
trigger1 = time > 42
y = 0.31

[State 3300, hit]
type=hitdef
trigger1=animelem=6
attr=A,HA
damage=76,7
animtype=Hard
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=15,15
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-80
hitsound=s8000,5
guardsound=s8000,6
ground.type=High
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-20,-15
air.type=Low
air.velocity=-20,-15
getpower=0
envshake.time=15
envshake.ampl=3
fall.yvelocity=0
yaccel = .65
air.fall=1
fall.recover=1
p1stateno = 3310
p2stateno = 3350

[State 3300, 5]
type = ChangeState
triggerall = time > 63
trigger1=Vel Y >= 0 && pos y >=-5
value = 1202

;----------------------------------
[Statedef 3310]
type    = A
movetype= I
physics = N
juggle  = 1
anim = 3310
velset = ifelse(backedgedist>frontedgedist, -7.45, -4.5),-8
ctrl = 0
sprpriority = 2

[State 3325, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignorehitpause = 1
persistent = 1

[State 3310, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.31

[State 3310, 5]
type = ChangeState
trigger1=backedgedist = 0
value = 3315

[State 3310, 5]
type = ChangeState
trigger1=Vel Y >= 0 && pos y >=-5
value = 1202

;----------------------------------
[Statedef 3315]
type    = A
movetype= A
physics = N
juggle  = 1
anim = 3315
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3325, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignorehitpause = 1
persistent = 1

[State 3315, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.11

[State 3315, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 8

[State 3300, hit]
type=hitdef
trigger1=animelem=4
attr=A,HA
damage=54,7
animtype=Hard
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=15,15
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,-80
hitsound=s8000,5
guardsound=s8000,6
ground.type=High
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-20,-15
air.type=Low
air.velocity=-20,-15
getpower=0
envshake.time=15
envshake.ampl=3
fall.yvelocity=0
yaccel = .25
air.fall=1
fall.recover=1
p1stateno = 3320
p2stateno = 3350

[State 3310, 5]
type = ChangeState
trigger1=Vel Y >= 0 && pos y >=-5
value = 1202


;----------------------------------
[Statedef 3320]
type    = A
movetype= I
physics = N
juggle  = 1
anim = 3320
velset = ifelse(backedgedist>frontedgedist, -7.3,-4.3),-8
ctrl = 0
sprpriority = 2

[State 3325, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignorehitpause = 1
persistent = 1

[State 3320, 5]
type = ChangeState
trigger1=backedgedist = 0
value = 3325

[State 3320, 5]
type = ChangeState
trigger1=Vel Y >= 0 && pos y >=-5
value = 1202

;----------------------------------
[Statedef 3325]
type    = A
movetype= A
physics = N
juggle  = 1
anim = 3325
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3325, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignorehitpause = 1
persistent = 1

[State 3320, 5]
type = ChangeState
trigger1=Vel Y >= 0 && pos y >=-5
value = 1202

;======================<HIT>===========================
;Being Launched
[StateDef 3350]
type = A
moveType = H
physics = N
velSet = 0,0

[State 3315, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignorehitpause = 1
persistent = 1

[State 3350, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5002

[State 3350, End]
type = ChangeState
trigger1 = HitShakeOver
value = 3351


;--------------------------
;Heading Towards Wall
[StateDef 3351]
type = A
moveType = H
physics = N

[State 3315, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignorehitpause = 1
persistent = 1

[State 3351, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 3351, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 3351, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3351, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5052), 5052, 5030)

[State 3351, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 3352

[State 3351, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;Impacting Wall
[StateDef 3352]
type = A
moveType = H
physics = N

[State 3315, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignorehitpause = 1
persistent = 1

[State 3353, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 3353, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 3353, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 3353, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 3353, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5010

[State 3353, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,0

[State 3353, End]
type = ChangeState
trigger1 = Time >= 4
value = 3354


;Bouncing Off Wall
[Statedef 3354]
type = A
moveType = H
physics = N

[State 3315, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignorehitpause = 1
persistent = 1

[State 3354, Turn]
type = Turn
trigger1 = !Time

[State 3354, Gravity]
type = VelAdd
trigger1 = 1
y = 0.37

[State 3354, VelSet]
type = VelSet
trigger1 = !Time
x = -3
y = -5

[State 3354, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 3354, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 3354, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 3354, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3354, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100
;---------------------------------------------------------------------------
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
pos = 0,abs((240*Ailevel)-81)
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
pos = 0,abs((240*Ailevel)-81)
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
pos = 0,abs((240*Ailevel)-81)
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
pos = 0,abs((240*Ailevel)-81)
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

;-------------------------------------------------------------------------------



