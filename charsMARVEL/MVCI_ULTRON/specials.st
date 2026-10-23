; States file for Ultron -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special Attacks
;---------------------------------------------------------------------------
;Running kick
[Statedef 1400]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0
anim = 1400

[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 101, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 100, 4]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = animelem = 2
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = -35,-50
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

; Dash Run Forward velocity blue lines
[State 100, a7]
type = Explod
trigger1 = Time %7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,0,14),ifelse(random<500,-60,-50)
accel = ifelse(random<500,-1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,3
channel = 0

[State 1400, 0]
type = VelSet
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
trigger9 = animelem = 9
trigger10 = animelem = 10
trigger11 = animelem = 11
trigger12 = animelem = 12
x = 6

[State 1400, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 2

[State 1400, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Heavy
damage   = 110,10
getpower = 8
givepower = 4
guardflag = MA
pausetime = 8,10
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
air.velocity = -3.2,-3.2
fall = 1
air.fall=1
;p2stateno = 5600

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 15,-69
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 15,-69
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1400, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; Eye Beam
;---------------------------------------------------------------------------
[Statedef 720]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 720

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 45,6
freqmul = 1.5
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time= 12
anim = 722
ID = 722
pos =-5,-1
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 32
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 0, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

; ray X
[State 1010, 0]
type = Helper
triggerall= stateno=720
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = AnimElem = 9
helpertype = normal
name = "H_RAY"
id = 745
postype = p1
pos = 0,-1
stateno = 745
;size.xscale = 0.75
;size.yscale = 0.75
ownpal = 1

[State 8100, circlebeam]
type = Explod
;triggerall = !NumExplod(727)
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
anim = 727
id = 727
ontop = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit=1
pos= -13,-12
flag = noshadow
ownpal = 1


[State 1010, 8]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;----------------------------------------------------------
;Heat Vision Y
;----------------------------------------------------------
[Statedef 725]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 720

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 45,6
freqmul = 1.5
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time= 12
anim = 722
ID = 722
pos =-5,-1
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 32
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 0, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

;Heat ray X
[State 1010, 0]
type = Helper
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = AnimElem = 9
trigger4 = AnimElem = 11
helpertype = normal
name = "H_RAY"
id = 745
postype = p1
pos = 0,-1
stateno = 745
;size.xscale = 0.90
;size.yscale = 0.90
ownpal = 1

[State 8100, circlebeam]
type = Explod
;triggerall = !NumExplod(727)
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
anim = 727
id = 727
ontop = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit=1
pos= -13,-12
flag = noshadow
ownpal = 1

[State 1010, 8]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;----------------------------------------------------------
;Heat Vision Z
;----------------------------------------------------------
[Statedef 730]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 720

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 45,6
freqmul = 1.5
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = time= 12
anim = 722
ID = 722
pos =-3,-1
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 32
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 0, 0
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 1010, 0]
type = Helper
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = AnimElem = 9
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
helpertype = normal
name = "H_RAY"
id = 745
postype = p1
pos =-5,8
stateno = 745
size.xscale = 1.1
size.yscale = 1.1
ownpal = 1

[State 8100, circlebeam]
type = Explod
;triggerall = !NumExplod(727)
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
anim = 727
id = 727
ontop = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit=1
pos= -13,-14
flag = noshadow
ownpal = 1


[State 1010, 8]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;----------------------------------------------------------
; ray state X
;----------------------------------------------------------
[Statedef 745]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 721

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 25
ignorehitpause = 1
persistent = 1

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 21
palbright = 30,30,30
palcontrast = 220,120,120
paladd = 20,10,10
palmul = .75,.65,.65
framegap = 3
trans = add
ignorehitpause = 1
persistent = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 0
time = 2
ignorehitpause = 1
persistent = 1

[State 5140, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 45,7
channel = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Nothitby
trigger1 = 1
value = SCA,NA,SA,HA,NT,ST,HT
ignorehitpause = 1

[State 0, ]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 10
ignorehitpause = 1

[State 1011 , 1]
type = HitDef
trigger1 = !movecontact
attr = S, SP
damage    = 35,3
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
offset = 10,0
hitsound   = S2,2
guardsound = S45, 8
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6, -8
air.velocity = -6,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 0, ]
type = HitOverride
trigger1 = 1
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark3"
postype = p2
pos =10,-75
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 15,-75;
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 2
y = ifelse((enemynear,pos y+enemynear,const(size.head.pos.y) = [(pos y-3),(pos y+3)]),0,ifelse(enemynear,pos y+enemynear,const(size.head.pos.y) < pos y,-2,1))
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1006
ignorehitpause = 1
persistent = 1

[state 1011, 8]
type = destroyself
trigger1 = time >= 70

[Statedef 1006]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 723

[State 0, Turn]
type = Turn
trigger1 = parentdist x = [-80,80]
ignorehitpause = 1
persistent = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = target,pos x
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1
persistent = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 0
time = 2
ignorehitpause = 1
persistent = 1

[State 5140, 2]
type = SprPriority
trigger1 = Time >= 0
value = 2

[state 1011, 8]
type = destroyself
trigger1 = Animtime = 0
;---------------------------------------------------------------------------
;Paralising beam
;---------------------------------------------------------------------------
[Statedef 700]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 700
ctrl = 0
sprpriority = -2

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 10, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7,1

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 45,13
channel=2

[State 700,beam]
type = Explod
triggerall = !NumExplod(7011)
trigger1 = AnimElem = 4
anim = 705
id = 7011
ontop = 1
facing = 1
bindtime = -1
removetime = 8
removeongethit=1
pos= 0,0
flag = noshadow
ownpal = 1
sprpriority = 6

[State 700,helper]
type = Helper
triggerall = !Numhelper(701)
trigger1 = animelem = 4
ID = 701
pos = 0,0
stateno = 701
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
sprpriority = 6

[State 700, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 27
guardflag = MA
pausetime = 0,7
ground.type = High
sparkno= -1
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -11 ,-2
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1

[State 700, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------Beam--------
[statedef 701]
type = S
movetype = A
physics = N
ctrl = 0
anim = 701
sprpriority = 6

[State 1013, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (0 * parent, facing)
y = parent, Pos Y + 0

[state 701, snd]
type = playsnd
trigger1 = time = 5
value = 12,1

[State 701, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 701, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 709
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 701, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 701, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 701, hit]
type = HitDef
trigger1 = animelem = 3
attr = S, SP
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority =8, Hit
pausetime = 0,10
sparkno = -1
damage=40,3
guard.sparkno = -1
offset = 10,0
hitsound   = S2,2
guardsound = S45, 8
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6, -8
air.velocity = -6,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2stateno = 71670

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p1
pos =130,-100
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p1
pos = 130,-100 ; ADJUST ACCORDINGLY
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

; Electricity FX
[State 701, Electricity]
type = Helper
triggerall = movehit
trigger1 = P2StateNo = 71670
name = " Spawner"
ID = 1532
postype = p1
pos = 0, 0
stateno = 7730
ownpal = 1

[state 701, destroy]
type = Destroyself
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
;Paralising beam    2
;---------------------------------------------------------------------------
[Statedef 705]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 700
ctrl = 0
sprpriority = -2

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 10, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7,1

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 45,13
channel=2

[State 700,beam]
type = Explod
triggerall = !NumExplod(7011)
trigger1 = AnimElem = 4
anim = 705
id = 7011
ontop = 1
facing = 1
bindtime = -1
removetime = 8
removeongethit=1
pos= 0,0
flag = noshadow
ownpal = 1
sprpriority = 6

[State 700,helper]
type = Helper
triggerall = !Numhelper(702)
trigger1 = animelem = 4
ID = 702
pos = 0,0
stateno = 702
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
sprpriority = 6

[State 700, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 27
guardflag = MA
pausetime = 0,7
ground.type = High
sparkno= -1
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -11 ,-2
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1

[State 700, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------Beam2--------
[statedef 702]
type = S
movetype = A
physics = N
ctrl = 0
anim = 702
sprpriority = 6

[State 1013, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (0 * parent, facing)
y = parent, Pos Y + 0

[state 701, snd]
type = playsnd
trigger1 = time = 5
value = 12,1

[State 701, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 701, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 709
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 701, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 701, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 701, hit]
type = HitDef
trigger1 = animelem = 3
attr = S, SP
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority =8, Hit
pausetime = 0,10
sparkno = -1
damage=60,7
guard.sparkno = -1
offset = 10,0
hitsound   = S2,2
guardsound = S45, 8
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6, -8
air.velocity = -6,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2stateno = 71670

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-100
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 10,-100 ; ADJUST ACCORDINGLY
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

; Electricity FX
[State 701, Electricity]
type = Helper
triggerall = movehit
trigger1 = P2StateNo = 71670
name = " Spawner"
ID = 1532
postype = p1
pos = 0, 0
stateno = 7730
ownpal = 1

[state 701, destroy]
type = Destroyself
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
;Paralising beam  3
;---------------------------------------------------------------------------
[Statedef 706]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 700
ctrl = 0
sprpriority = -2

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 10, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7,1

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 45,13
channel=2

[State 700,beam]
type = Explod
triggerall = !NumExplod(7011)
trigger1 = AnimElem = 4
anim = 705
id = 7011
ontop = 1
facing = 1
bindtime = -1
removetime = 8
removeongethit=1
pos= 0,0
flag = noshadow
ownpal = 1
sprpriority = 6

[State 700,helper]
type = Helper
triggerall = !Numhelper(703)
trigger1 = animelem = 4
ID = 703
pos = 0,0
stateno = 703
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
sprpriority = 6

[State 700, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 27
guardflag = MA
pausetime = 0,7
ground.type = High
sparkno= -1
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -11 ,-2
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1

[State 700, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------Beam2--------
[statedef 703]
type = S
movetype = A
physics = N
ctrl = 0
anim = 703
sprpriority = 6

[State 1013, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (0 * parent, facing)
y = parent, Pos Y + 0

[state 701, snd]
type = playsnd
trigger1 = time = 5
value = 12,1

[State 701, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 701, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 709
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 701, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 701, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 701, hit]
type = HitDef
trigger1 = animelem = 3
attr = S, SP
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority =8, Hit
pausetime = 0,10
sparkno = -1
damage=80,10
guard.sparkno = -1
offset = 10,0
hitsound   = S2,2
guardsound = S45, 8
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6, -8
air.velocity = -6,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2stateno = 71670

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-100
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 10,-100
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

; Electricity FX
[State 701, Electricity]
type = Helper
triggerall = movehit
trigger1 = P2StateNo = 71670
name = " Spawner"
ID = 1532
postype = p1
pos = 0, 0
stateno = 7730
ownpal = 1

[state 701, destroy]
type = Destroyself
trigger1 = AnimTime = 0

;--------------------------------------------------------------------------------
; Fury Beam
[statedef 997]
type = S
movetype = A
physics = N
ctrl = 0
anim =997
sprpriority = 12

[State 1013, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X - (130 * parent, facing)
y = parent, Pos Y + 16

[State 0, SprPriority]
type = SprPriority
trigger1 = movecontact
value = 14
ignorehitpause =1
persistent =1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = movehit
value = 8

[state 701, snd]
type = playsnd
trigger1 = time = 5
value = 12,1

[State 701, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 701, hit]
type = HitDef
trigger1 = time=0
attr = S, SP
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority =12, Hit
pausetime = 0,20
sparkno = -1
damage=0,20
guard.sparkno = -1
hitsound   = S2,2
guardsound = S45, 8
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6, -8
air.velocity = -6,3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 50
palfx.add = -150,-40,-100
palfx.sinadd =  0,80,15,20
palfx.color = 0
palfx.invertall = 1
p2stateno = 71675

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-60
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 10,-60
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[state 701, destroy]
type = Destroyself
trigger1 = AnimTime = 0
;------------------------------------------------------------------------------
;--------------------------------------------------------------------------------
; Beam Vehicle 1
[statedef 4997]
type = S
movetype = A
physics = N
ctrl = 0
anim =997
sprpriority = 12

[State 1013, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X - (190 * parent, facing)
y = parent, Pos Y + 33

[State 0, SprPriority]
type = SprPriority
trigger1 = movecontact
value = 14
ignorehitpause =1
persistent =1

[state 701, snd]
type = playsnd
trigger1 = time = 1
value = 45,13

[State 701, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 701, hit]
type = HitDef
trigger1 = time=0
attr = S, SP
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority =12, Hit
pausetime = 0,20
sparkno = -1
damage=25,10
guard.sparkno = -1
hitsound   = S2,2
guardsound = S45, 8
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6, -8
air.velocity = -6,3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 50
palfx.add = -150,-40,-100
palfx.sinadd =  0,80,15,20
palfx.color = 0
palfx.invertall = 1
p2stateno = 71675

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-60
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 10,-60
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[state 701, destroy]
type = Destroyself
trigger1 = AnimTime = 0

[state 1305, destroy]
type = Destroyself
trigger1 = parent, stateno = [5000,5700]
;--------------------------------------------------------------------------------
; BEam Vehicle 2
[statedef 4998]
type = S
movetype = A
physics = N
ctrl = 0
anim =997
sprpriority = 12

[State 1013, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (5 * parent, facing)
y = parent, Pos Y - 2

[State 0, SprPriority]
type = SprPriority
trigger1 = movecontact
value = 14
ignorehitpause =1
persistent =1


[state 701, snd]
type = playsnd
trigger1 = time = 1
value = 45,13

[State 701, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 701, hit]
type = HitDef
trigger1 = time=0
attr = S, SP
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority =12, Hit
pausetime = 0,4
sparkno = -1
damage= 20,5
guard.sparkno = -1
hitsound   = S2,2
guardsound = S45, 8
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -25, 0
air.velocity = -6,3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 50
palfx.add = -150,-40,-100
palfx.sinadd =  0,80,15,20
palfx.color = 0
palfx.invertall = 1

[State 777, hsp]
type = helper
triggerall= !NumHelper(8702)
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark4"
postype = p2
pos =10,-90
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 10,-90
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[state 701, destroy]
type = Destroyself
trigger1 = AnimTime = 0

[state 1305, destroy]
type = Destroyself
trigger1 = parent, stateno = [5000,5700]

;--------------------------------------------------------------------------------
; BEam Vehicle 3
[statedef 4996]
type = S
movetype = A
physics = N
ctrl = 0
anim =726
sprpriority = 12
velset = 8,0

;[State 1013, PosSet]
;type = PosSet
;trigger1 = 1
;x = parent, Pos X + (5 * parent, facing)
;y = parent, Pos Y + 2

[State 0, SprPriority]
type = SprPriority
trigger1 = movecontact
value = 14
ignorehitpause =1
persistent =1


[state 701, snd]
type = playsnd
trigger1 = time = 1
value = 45,9

[State 701, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 701, hit]
type = HitDef
trigger1 = time=0
attr = S, SP
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority =12, Hit
pausetime = 0,4
sparkno = S727
sparkno = -25,-60
damage= 15,2
guard.sparkno = -1
hitsound   = S2,2
guardsound = S45, 8
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -25, 0
air.velocity = -6,3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[state 701, destroy]
type = Destroyself
trigger1 = AnimTime = 0
trigger2 = movecontact

[state 1305, destroy]
type = Destroyself
trigger1 = parent, stateno = [5000,5700]
;-----------------------------------------------------------------------------
; Energy Drain 1
;-----------------------------------------------------------------------------
[Statedef 1710]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 710
ctrl = 0
sprpriority = -2


[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 10, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7,1

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 45,13
channel=2

[State 710, circlebeam]
type = Explod
triggerall = !NumExplod(719)
trigger1 = AnimElem = 4
anim = 719
id = 719
ontop = 1
facing = 1
bindtime = -1
removetime = 48
pos= 78,-83
removeongethit=1
flag = noshadow
ownpal = 1

[State 710,helper]
type = Helper
triggerall = !Numhelper(1719)
trigger1 = animelem = 4
ID = 1719
pos= 78,-83
stateno = 1719
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
sprpriority = 6

[State 710, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 27
guardflag = MA
pausetime = 12,12
ground.type = High
sparkno= -1
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -11 ,-2
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1

[State 710, 7]
type = ChangeState
trigger1 = Time = 58
value = 1715
ctrl = 1
;-------------------------------
;Loop
[Statedef 1720]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1720
ctrl = 0
sprpriority = -2

[State 101, d]
type = removeexplod
trigger1 = !time
id = 719

[State 710,helper]
type = explod
triggerall = !Numexplod(1722)
trigger1 = time=0
ID = 1722
pos= 78,-83
anim = 1722
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
removetime=-1
removeongethit=1
sprpriority = 6

; Electricity FX green
[State 701, Electricity]
type = Helper
triggerall = !NumHelper(1532)
trigger1 = P2StateNo = 17671
name = " Spawner"
ID = 1532
postype = p1
pos = 0, 0
stateno = 7731
ownpal = 1

[State 710,r]
type = explod
triggerall = !Numexplod(1721)
trigger1 = time=0
ID = 1721
pos= 78,-83
anim= 1721
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
removetime=-1
sprpriority = 4

[State 710,helper]
type = Helper
;triggerall = !Numhelper(1725)
trigger1 = time=10
trigger2 = time=30
trigger3 = time=50
ID = 1725
postype= P2
pos= 0,-83
stateno = 1725
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
sprpriority = 6

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = time=25
trigger2 = time=45
trigger3 = time=65
time = 5
add = 200,150,250
mul = 20,160,24
sinadd = 85,160,55,8
invertall = 1
color = 0

[State 0, ]
type = LifeAdd
trigger1 = time=25
trigger2 = time=45
trigger3 = time=65
value = 15

[State 0, ]
type = PowerAdd
trigger1 = time=25
trigger2 = time=45
trigger3 = time=65
value = 15

[State 3001, Activation]
type = VarSet
trigger1 =time = 0
var(23) = 0

[State 710, 7]
type = ChangeState
trigger1 = Time = 80  && var(23) = 0
value = 1715
ctrl = 1

;-----------------------------------------------------------------------------
; Energy Drain 2
;-----------------------------------------------------------------------------
[Statedef 1750]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 710
ctrl = 0
sprpriority = -2

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 10, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7,1

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 45,13
channel=2

[State 710, circlebeam]
type = Explod
triggerall = !NumExplod(719)
trigger1 = AnimElem = 4
anim = 719
id = 719
ontop = 1
facing = 1
bindtime = -1
removetime = 48
pos= 78,-83
removeongethit=1
flag = noshadow
ownpal = 1

[State 710,helper]
type = Helper
triggerall = !Numhelper(1759)
trigger1 = animelem = 4
ID = 1759
pos= 78,-83
stateno = 1759
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
sprpriority = 6

[State 710, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 27
guardflag = MA
pausetime = 12,12
ground.type = High
sparkno= -1
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -11 ,-2
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1

[State 710, 7]
type = ChangeState
trigger1 = Time = 58
value = 1715
ctrl = 1
;-------------------------------
;Loop
[Statedef 1760]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1720
ctrl = 0
sprpriority = -2

[State 101, d]
type = removeexplod
trigger1 = !time
id = 719

[State 710,helper]
type = explod
triggerall = !Numexplod(1722)
trigger1 = time=0
ID = 1722
pos= 78,-83
anim = 1722
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
removetime=-1
removeongethit=1
sprpriority = 6

; Electricity FX green
[State 701, Electricity]
type = Helper
triggerall = !NumHelper(1532)
trigger1 = P2StateNo = 17672
name = " Spawner"
ID = 1532
postype = p1
pos = 0, 0
stateno = 7731
ownpal = 1

[State 710,r]
type = explod
triggerall = !Numexplod(1721)
trigger1 = time=0
ID = 1721
pos= 78,-83
anim= 1721
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
removetime=-1
sprpriority = 4

[State 710,helper]
type = Helper
;triggerall = !Numhelper(1725)
trigger1 = time=10
trigger2 = time=30
trigger3 = time=50
trigger4 = time=70
trigger5 = time=90
ID = 1726
postype= P2
pos= 0,-83
stateno = 1726
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
sprpriority = 6

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = time=25
trigger2 = time=45
trigger3 = time=65
trigger4 = time=85
trigger5 = time=105
time = 5
add = 200,150,250
mul = 20,160,24
sinadd = 85,160,55,8
invertall = 1
color = 0

[State 0, ]
type = LifeAdd
trigger1 = time=25
trigger2 = time=45
trigger3 = time=65
trigger4 = time=85
trigger5 = time=105
value = 15

[State 0, ]
type = PowerAdd
trigger1 = time=25
trigger2 = time=45
trigger3 = time=65
trigger4 = time=85
trigger5 = time=105
value = 15

[State 3001, Activation]
type = VarSet
trigger1 =time = 0
var(24) = 0

[State 710, 7]
type = ChangeState
trigger1 = Time = 120  && var(24) = 0
value = 1715
ctrl = 1

;-----------------------------------------------------------------------------
; Energy Drain 3
;-----------------------------------------------------------------------------
[Statedef 1780]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 710
ctrl = 0
sprpriority = -2

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 10, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7,1

[State 700, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 45,13
channel=2

[State 710, circlebeam]
type = Explod
triggerall = !NumExplod(719)
trigger1 = AnimElem = 4
anim = 719
id = 719
ontop = 1
facing = 1
bindtime = -1
removetime = 48
pos= 78,-83
removeongethit=1
flag = noshadow
ownpal = 1

[State 710,helper]
type = Helper
triggerall = !Numhelper(1789)
trigger1 = animelem = 4
ID = 1789
pos= 78,-83
stateno = 1789
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
sprpriority = 6

[State 710, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 27
guardflag = MA
pausetime = 12,12
ground.type = High
sparkno= -1
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -11 ,-2
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
fall = 1

[State 710, 7]
type = ChangeState
trigger1 = Time = 58
value = 1715
ctrl = 1
;-------------------------------
;Loop
[Statedef 1790]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1720
ctrl = 0
sprpriority = -2

[State 101, d]
type = removeexplod
trigger1 = !time
id = 719

[State 710,helper]
type = explod
triggerall = !Numexplod(1722)
trigger1 = time=0
ID = 1722
pos= 78,-83
anim = 1722
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
removetime=-1
removeongethit=1
sprpriority = 6

; Electricity FX green
[State 701, Electricity]
type = Helper
triggerall = !NumHelper(1532)
trigger1 = P2StateNo = 17673
name = " Spawner"
ID = 1532
postype = p1
pos = 0, 0
stateno = 7731
ownpal = 1

[State 710,r]
type = explod
triggerall = !Numexplod(1721)
trigger1 = time=0
ID = 1721
pos= 78,-83
anim= 1721
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
removetime=-1
sprpriority = 4

[State 710,helper]
type = Helper
;triggerall = !Numhelper(1725)
trigger1 = time=10
trigger2 = time=30
trigger3 = time=50
trigger4 = time=70
trigger5 = time=90
trigger6 = time=110
trigger7 = time=130
trigger8 = time=150
ID = 1727
postype= P2
pos= 0,-83
stateno = 1727
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
sprpriority = 6

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = time=25
trigger2 = time=45
trigger3 = time=65
trigger4 = time=85
trigger5 = time=105
trigger6 = time=125
trigger7 = time=145
trigger8 = time=165
time = 5
add = 200,150,250
mul = 20,160,24
sinadd = 85,160,55,8
invertall = 1
color = 0

[State 0, ]
type = LifeAdd
trigger1 = time=25
trigger2 = time=45
trigger3 = time=65
trigger4 = time=85
trigger5 = time=105
trigger6 = time=125
trigger7 = time=145
trigger8 = time=165
value = 15

[State 0, ]
type = PowerAdd
trigger1 = time=25
trigger2 = time=45
trigger3 = time=65
trigger4 = time=85
trigger5 = time=105
trigger6 = time=125
trigger7 = time=145
trigger8 = time=165
value = 15

[State 3001, Activation]
type = VarSet
trigger1 =time = 0
var(25) = 0

[State 710, 7]
type = ChangeState
trigger1 = Time = 170  && var(25) = 0
value = 1715
ctrl = 1
;-------------------------------------------------------------------------------
;--------Absorbing Beam state 1 part 1--------
;-------------------------------------------------------------------------------
[statedef 1719]
type = S
movetype = A
physics = N
ctrl = 0
anim = 711

[state 711, snd]
type = playsnd
trigger1 = time = 5
value = 12,1

[State 711, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 711, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1729
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 711, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 711, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 711, hit]
type = HitDef
trigger1 = animelem = 3
attr = S, SP
priority = 6
ontop = 1
damage = 0
hitflag= MAFD
hitsound   = 30,3
sparkno = -1
guardflag = MA
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
p2stateno = 17671

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-80
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 10,-80 ; ADJUST ACCORDINGLY
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 711, spark]
type = Explod
triggerall =!NumExplod(8500)
trigger1 = movecontact =1
anim = 8500
pos = 10, -85
postype = p2
sprpriority = 6
removeongethit = 1
removetime = 24
ownpal = 1

[State 2000, Bat]
type = ParentVarSet
trigger1 = Movehit
var(23) = 1

[state 711, destroy]
type = Destroyself
trigger1 = movecontact

[state 711, destroy]
type = Destroyself
trigger1 = AnimTime = 0
;-------------------------------------------------------------------------------
;--------Absorbing Beam state 2 part 1--------
;-------------------------------------------------------------------------------
[statedef 1759]
type = S
movetype = A
physics = N
ctrl = 0
anim = 711

[state 711, snd]
type = playsnd
trigger1 = time = 5
value = 12,1

[State 711, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 711, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1729
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 711, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 711, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 711, hit]
type = HitDef
trigger1 = animelem = 3
attr = S, SP
priority = 6
ontop = 1
damage = 0
hitflag= MAFD
hitsound   = 30,3
sparkno = -1
guardflag = MA
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
p2stateno = 17672

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-80
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 10,-80 ; ADJUST ACCORDINGLY
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 711, spark]
type = Explod
triggerall =!NumExplod(8500)
trigger1 = movecontact =1
anim = 8500
pos = 10, -85
postype = p2
sprpriority = 6
removeongethit = 1
removetime = 24
ownpal = 1

[State 2000, Bat]
type = ParentVarSet
trigger1 = Movehit
var(24) = 1

[state 711, destroy]
type = Destroyself
trigger1 = movecontact

[state 711, destroy]
type = Destroyself
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
;--------Absorbing Beam state 3 part 1--------
;-------------------------------------------------------------------------------
[statedef 1789]
type = S
movetype = A
physics = N
ctrl = 0
anim = 711

[state 711, snd]
type = playsnd
trigger1 = time = 5
value = 12,1

[State 711, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 711, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1729
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 711, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 711, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 711, hit]
type = HitDef
trigger1 = animelem = 3
attr = S, SP
priority = 6
ontop = 1
damage = 0
hitflag= MAFD
hitsound   = 30,3
sparkno = -1
guardflag = MA
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
p2stateno = 17673

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-80
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 10,-80 ; ADJUST ACCORDINGLY
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 711, spark]
type = Explod
triggerall =!NumExplod(8500)
trigger1 = movecontact =1
anim = 8500
pos = 10, -85
postype = p2
sprpriority = 6
removeongethit = 1
removetime = 24
ownpal = 1

[State 2000, Bat]
type = ParentVarSet
trigger1 = Movehit
var(25) = 1

[state 711, destroy]
type = Destroyself
trigger1 = movecontact

[state 711, destroy]
type = Destroyself
trigger1 = AnimTime = 0

;--------Beam des--------
[statedef 1729]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1729

[State 711, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[state 711, destroy]
type = Destroyself
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
;--------Ball-------
[statedef 1725]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1725
velset = 5,0

[State 200, fx]
type = PlaySnd
trigger1 = Time = 1
value = 45,5
channel=0

[state 711, destroy]
type = Destroyself
trigger1 = p2stateno != 17671  ;
trigger2 = ParentDist x<=70

;--------Ball 2-------
[statedef 1726]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1725
velset = 5,0

[State 200, fx]
type = PlaySnd
trigger1 = Time = 1
value = 45,5
channel=0

[state 711, destroy]
type = Destroyself
trigger1 = p2stateno != 17672  ;
trigger2 = ParentDist x<=70

;--------Ball 3-------
[statedef 1727]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1725
velset = 6,0.50

[State 200, fx]
type = PlaySnd
trigger1 = Time = 1
value = 45,5
channel=0

[state 711, destroy]
type = Destroyself
trigger1 = p2stateno != 17673  ;
trigger2 = ParentDist x<=70





;------------------------------------------------------------------------------
; absorbing (move end)
[Statedef 1715]
type    = S
physics = S
ctrl = 0
anim = 715
sprpriority = 2

[State 101, d]
type = removeexplod
trigger1 = !time
id = 1722

[State 101, d]
type = removeexplod
trigger1 = !time
id = 17222

[State 101, d]
type = removeexplod
trigger1 = !time
id = 1721

[State 710,r]
type = explod
triggerall = !Numexplod(1724)
trigger1 = time=0
ID = 1724
pos= 78,-83
anim= 1724
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
removetime=10
sprpriority = 4

[State 710,r]
type = explod
triggerall = !Numexplod(1723)
trigger1 = time=0
ID = 1723
pos= 78,-83
anim= 1723
helpertype = normal
name = "p_beams"
keyctrl = 0
ownpal = 1
removeongethit=1
removetime=6
sprpriority = 4


[State 715, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
;------------------------------------------------------------------------------
;Ultron Crusher
;------------------------------------------------------------------------------
[Statedef 750]
type=S
physics=S
movetype=A
ctrl=0
anim=750
velset=0,0
poweradd=72*!var(20)
juggle=8
facep2=1
sprpriority=1

[State 1000, strengthvar]
type=varset
trigger1= !time ;&& var(59)<=0
var(10)=ifelse((command="bfz" || command="cbfz"),3,ifelse((command="bfy" || command="cbfy"),2,1))

[State 1000, strengthvarAI]
type=varset
trigger1= !time ;&& var(59)>=1
var(10)= ifelse(random<500, 3, ifelse(random<666, 2, 1))
[State 1000, strengthvarAI]
type=varset
trigger1= !time && var(59)>=1
trigger1= p2bodydist x>=160
var(10)= ifelse(random<500, 3, 2)
[State 1000, strengthvarAI]
type=varset
trigger1= !time ;&& var(59)>=1
trigger1= p2bodydist x>=200
var(10)= 3

[State 1000, width]
type=width
trigger1= anim=750 && animelemtime(4)>=0
value=20
ignorehitpause=1
[State 1000, push]
type=playerpush
trigger1= anim=750 && animelemtime(6)>=0
value=0
ignorehitpause=1

[State 1000, nothitby]
type=nothitby
trigger1= anim=750 && animelemtime(6)>=0
value=,NP
time=1
ignorehitpause=1

[State 1000, shield]
type=helper
trigger1= !numhelper(1007)
trigger1= anim=750 && animelemtime(6)>=0
helpertype=normal
stateno=1007
ID=1007
name="Projectile Hitter"
postype=p1

[State 1000, Vel]
type=velset
trigger1= anim=750 && animelemtime(4)>=0
x=ifelse(var(10)=3,10,ifelse(var(10)=2,7.5,5))
y=0
[State 1000, statetype]
type=statetypeset
trigger1= anim=750 && animelemtime(4)>=0
statetype=A
physics=N

[State 1000, FX]
type=helper
trigger1= !numhelper(1005)
trigger1= anim=750 && animelemtime(6)>=0
helpertype=normal
stateno=1005
ID=1005
name="Crusher"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
pausemovetime=999
supermovetime=999

[State 1000, Snd]
type=playsnd
trigger1= anim=750 && animelem=4
value=0,40

[State 1000, Dust]
type=explod
trigger1= anim=750 && animelem=4
anim = 8580
ID=8580
sprpriority=3
postype=p1
pos=0,ceil(pos y)
scale=.57,.57
pausemovetime=-1
supermovetime=-1

[State 1000, Snd]
type=playsnd
trigger1= anim=750 && animelem=5
value=45,9

[State 1000, hitvar]
type=varset
trigger1= anim!=750
trigger2= anim=750 && animelemtime(6)<0
var(14)=0

[State 1000, hitvar]
type=varadd
trigger1= anim=750 && (movehit=1 || moveguarded=1 || movereversed=1)
var(14)=ifelse(moveguarded,1,3)

[State 1000, hitvar]
type=varset
trigger1= numtarget(750)
trigger1= (target(750),stateno=[5000,5020]) && !(target(750),time)
var(14)=3
ignorehitpause=1

[State 1000, Hit]
type=hitdef
trigger1= anim=750 && animelemtime(6)>=0
trigger1= !(movecontact%4) && var(14)<3
attr=A,SA
damage=80+(10*var(10)),7
animtype=Hard
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),6,12), ifelse(var(20),6,12)
sparkno=-1;s7020+(random%8)
guard.sparkno=-1;s7001
sparkxy=-1
hitsound=s2,2
guardsound=s3,0
ground.type=Low
ground.slidetime=16
ground.hittime=16
ground.velocity=ifelse(var(10)=3,-6,ifelse(var(10)=2,-5,-4)),ifelse(var(10)=3,-6,ifelse(var(10)=2,-5,-4))
ground.cornerpush.veloff = 0
guard.velocity= -10.52
air.type=Low
air.velocity=ifelse(var(10)=3,-6,ifelse(var(10)=2,-5,-4)),ifelse(var(10)=3,-6,ifelse(var(10)=2,-5,-4))
forcestand=1
envshake.time=16
envshake.freq=120
envshake.ampl=4
;palfx.sinadd=64,64,64,4
;palfx.mul=128,128,128
;palfx.time=36+(4*var(10))
fall=1
fall.recover=0;0
;ID=750
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff = 0

[State 777, hsp]
type = helper
triggerall = movehit && numtarget && numhelper(8704)<1
trigger1= !(target,time) && (target,movetype=H)
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-55
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 777, hdf]
type = helper
triggerall = moveguarded && numtarget && numhelper(8716)<1
trigger1= !(target,time) ;&& (target,movetype=H)
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos =10,-55
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1000, Anim]
type=changeanim
triggerall= anim=750 && time>=20
trigger1= frontedgedist<=(const(size.air.front)+20)
trigger2= var(10)=1 && time>=37
trigger3= var(10)=2 && time>=61
trigger4= var(10)=3 && time>=85
value=751
[State 1000, Vel]
type=velmul
trigger1= anim=751
x=.85

[State 750, 4]
type = PlaySnd
trigger1 = anim=750 && animelem = 6
value = 30,1

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = anim=750 && animelem = 6
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = -60,-23
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 750, propulsor2]
type = Explod
triggerall =!NumExplod(2102)
trigger1 = anim=750 && animelem = 6
anim = 102
id = 2102
name = "propulsor2"
postype = P1
pos = -64,-30
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 751, c]
type = removeexplod
trigger1 = anim=751
id = 102

[State 751, d]
type = removeexplod
trigger1 = anim=751
id = 2102

[State 1000, End]
type=changeanim
trigger1= anim=751 && !animtime
value=752

[State 1000, Vel]
type=velset
trigger1= anim=752
x=0
y=0

[State 1000, Pos]
type=posset
trigger1= anim=752
y=0

[State 1000, statetype]
type=statetypeset
trigger1= anim=752
statetype=S
physics=S

[State 1000, Snd]
type=playsnd
trigger1= anim=752
value=8,1
persistent=0

[State 1000, Dust]
type=explod
trigger1= anim=752
ID = 60
anim = 60
sprpriority=-2
postype=p1
pos = 7, 3
scale=1,1
ownpal=1
persistent=0
pausemovetime=-1
supermovetime=-1

[State Idle]
type=statetypeset
trigger1= anim!=750
movetype=I

[State 1000, End]
type=changestate
trigger1= anim=752 && !animtime
value=0
ctrl=1

;------------------------------------------------------------------------------
;Ultron Stomp
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[Statedef 777]
type    = A
movetype= A
physics = N
juggle  = 6
poweradd= 110
ctrl = 0
sprpriority = 5

[State 777, ch]
type = ChangeAnim
triggerall = var(8)= 0
trigger1 = time = 0
value = 770
ctrl = 1

[State 620, xplod]
type = explod
triggerall = !numexplod(772)
trigger1 = time = 9
ID = 772
anim = 772
name = "airexpl"
postype = P1
pos = -10,-111
ownpal = 1
bindtime= -1
removeongethit=1
removetime=22
sprpriority = -6
facing = 1

[State 620, xplod]
type = explod
triggerall = !numexplod(773)
trigger1 = time = 9
ID = 773
anim = 772
name = "airexpl"
postype = P1
pos = -35,-111
ownpal = 1
bindtime= -1
removeongethit=1
removetime=22
sprpriority = 6
facing = 1

[State 2100,a]
type = Stopsnd
trigger1 = time = 4
channel = 6

[State 2100, a1]
type = Width
trigger1 = 1
player = -25,-25

[State 2100, a2]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 2100,a3]
type = VelSet
trigger1 = animelem = 3
x = 1
y = 2

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  120,120,220
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20

[State 1045, Super Jump Afterimage]
type = null;AfterImage
trigger1 = time = 0
length = 100
PalBright   =  320, 320, 320
PalContrast =  10, 10, 10
PalAdd      =  80,80,100
PalMul      = .50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 30

[state 2100, a5]
type = VelAdd
trigger1 = animelem = 3
x = 1.5
y = 5

[State 2100 , a6]
type = PlaySnd
triggerall = var(8)= 0
trigger1 = time = 15
value = 45,10

[State 2100 , a7]
type = PlaySnd
trigger1 = AnimElem = 1
value = 30,1
channel = 0
volume = 200

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1


[State 2100 , a8]
type = HitDef
triggerall = var(8)= 0
trigger1 = time = 0
attr = A, SA
damage    = ifelse((prevstateno = [600,650]),40,60),5
animtype = hard
hitflag = MAF
guardflag = HA
pausetime = 4,4
sparkxy = -1
sparkno = -1
guard.sparkno = -1
hitsound   = S2,2
guardsound = S3,0
ground.type = trip
air.type = low
envshake.time = 7
envshake.ampl = 4
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.slidetime = 12
ground.hittime  = 45
ground.velocity = -6,-9
air.velocity = -6,-9
fall = 1
;air.fall = 1

[State 2100 , a8]
type = HitDef
triggerall = var(8)!= 0
trigger1 = AnimElem = 3 || AnimElem = 4 || AnimElem = 5
attr = A, SA
damage  = ifelse((prevstateno = [600,650]),7,15),1
animtype = hard
hitflag = MAF
guardflag = HA
pausetime = 4,6
sparkxy = -1
sparkno = -1
guard.sparkno = -1
hitsound   = S46,0
guardsound = S3,0
ground.type = high
air.type = low
envshake.time = 7
envshake.ampl = 4
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.slidetime = 12
ground.hittime  = 45
ground.velocity = -6,0
air.velocity = -6,-6
;fall = 1
;air.fall = 1

[State 777, hsp]
type = explod
triggerall = var(8)!= 0
triggerall= !NumExplod(14001)
trigger1 = movehit
anim = 14001
ID = 14001
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
bindtime= -1
removetime= 26
ignorehitpause = 1
persistent=1
ownpal = 1
sprpriority = 4

[State 777, ch]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1 = time = 0
value = 775

[State 2100 , a6]
type = PlaySnd
triggerall = var(8)!= 0
trigger1 = AnimElem = 2
value = 45,12
channel=4

[State 2100 , a9]
triggerall = var(8)!= 0
type = ChangeState
trigger1 = Pos Y >= 0
value = 772

[State 2100 , a9]
triggerall = var(8)= 0
type = ChangeState
trigger1 = Pos Y >= 0
value = 771
;------------------------------------------------------------------------------
; Air stomp 2
;------------------------------------------------------------------------------
[Statedef 775]
type    = A
movetype= A
physics = N
juggle  = 6
poweradd= 110
ctrl = 0
sprpriority = 5

[State 777, ch]
type = ChangeAnim
trigger1 = time = 0
value = 770
ctrl = 1

[State 620, xplod]
type = explod
triggerall = !numexplod(772)
trigger1 = time = 9
ID = 772
anim = 772
name = "airexpl"
postype = P1
pos = -10,-111
ownpal = 1
bindtime= -1
removeongethit=1
removetime=22
sprpriority = -6
facing = 1

[State 620, xplod]
type = explod
triggerall = !numexplod(773)
trigger1 = time = 9
ID = 773
anim = 772
name = "airexpl"
postype = P1
pos = -35,-111
ownpal = 1
bindtime= -1
removeongethit=1
removetime=22
sprpriority = 6
facing = 1

[State 2100,a]
type = Stopsnd
trigger1 = time = 4
channel = 6

[State 2100, a1]
type = Width
trigger1 = 1
player = -25,-25

[State 2100, a2]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 2100,a3]
type = VelSet
trigger1 = animelem = 3
x = 2
y = 4

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  120,120,220
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20

[State 1045, Super Jump Afterimage]
type = null;AfterImage
trigger1 = time = 0
length = 100
PalBright   =  320, 320, 320
PalContrast =  10, 10, 10
PalAdd      =  80,80,100
PalMul      = .50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 30

[state 2100, a5]
type = VelAdd
trigger1 = animelem = 3
x = 1.5
y = 6

[State 2100 , a6]
type = PlaySnd
triggerall = var(8)= 0
trigger1 = time= 15
value = 45,10

[State 2100 , a7]
type = PlaySnd
trigger1 = AnimElem = 1
value = 30,1
channel = 0
volume = 200

[State 2100 , a8]
type = HitDef
triggerall = var(8)= 0
trigger1 = time=0
attr = A, SA
damage    = ifelse((prevstateno = [600,650]),50,78),5
animtype = hard
hitflag = MAF
guardflag = HA
pausetime = 4,4
sparkxy = -1
sparkno = -1
guard.sparkno = -1
hitsound   = S2,2
guardsound = S3,0
ground.type = trip
air.type = low
envshake.time = 7
envshake.ampl = 4
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.slidetime = 12
ground.hittime  = 45
ground.velocity = -6,-9
air.velocity = -6,-9
fall = 1
;air.fall = 1

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1


[State 2100 , a8]
type = HitDef
triggerall = var(8)!= 0
trigger1 = AnimElem = 3 || AnimElem = 4 || AnimElem = 5
attr = A, SA
damage  = ifelse((prevstateno = [600,650]),10,25),2
animtype = hard
hitflag = MAF
guardflag = HA
pausetime = 4,6
sparkxy = -1
sparkno = -1
guard.sparkno = -1
hitsound   = S46,0
guardsound = S3,0
ground.type = high
air.type = low
envshake.time = 7
envshake.ampl = 4
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.slidetime = 12
ground.hittime  = 45
ground.velocity = -6,0
air.velocity = -6,-6
;fall = 1
;air.fall = 1

[State 777, hsp]
type = explod
triggerall = var(8)!= 0
triggerall= !NumExplod(14001)
trigger1 = movehit
anim = 14001
ID = 14001
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
bindtime= -1
removetime= 26
ignorehitpause = 1
persistent=1
ownpal = 1
sprpriority = 4

[State 777, ch]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1 = time = 0
value = 775
ctrl = 1

[State 2100 , a6]
type = PlaySnd
triggerall = var(8)!= 0
trigger1 = AnimElem = 2
value = 45,12
channel=4

[State 2100 , a9]
triggerall = var(8)!= 0
type = ChangeState
trigger1 = Pos Y >= 0
value = 772

[State 2100 , a9]
triggerall = var(8)= 0
type = ChangeState
trigger1 = Pos Y >= 0
value = 771
;------------------------------------------------------------------------------
; Air stomp 3
;------------------------------------------------------------------------------
[Statedef 770]
type    = A
movetype= A
physics = N
juggle  = 6
poweradd= 110
ctrl = 0
sprpriority = 5

[State 777, ch]
type = ChangeAnim
trigger1 = time = 0
value = 770
ctrl = 1

[State 620, xplod]
type = explod
triggerall = !numexplod(772)
trigger1 = time = 9
ID = 772
anim = 772
name = "airexpl"
postype = P1
pos = -10,-111
ownpal = 1
bindtime= -1
removeongethit=1
removetime=22
sprpriority = -6
facing = 1

[State 620, xplod]
type = explod
triggerall = !numexplod(773)
trigger1 = time = 9
ID = 773
anim = 772
name = "airexpl"
postype = P1
pos = -35,-111
ownpal = 1
bindtime= -1
removeongethit=1
removetime=22
sprpriority = 6
facing = 1

[State 2100,a]
type = Stopsnd
trigger1 = time = 4
channel = 6

[State 2100, a1]
type = Width
trigger1 = 1
player = -25,-25

[State 2100, a2]
type = VelSet
trigger1 = animelem = 1
x = 0
y = 0

[State 2100,a3]
type = VelSet
trigger1 = animelem = 3
x = 3
y = 6

[State 1045, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 30
PalBright   =  0,0,0
PalContrast =  120,120,220
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20

[State 1045, Super Jump Afterimage]
type = null;AfterImage
trigger1 = time = 0
length = 100
PalBright   =  320, 320, 320
PalContrast =  10, 10, 10
PalAdd      =  80,80,100
PalMul      = .50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 30

[state 2100, a5]
type = VelAdd
trigger1 = animelem = 3
x = 2
y = 9

[State 2100 , a6]
type = PlaySnd
triggerall = var(8)= 0
trigger1 =time=15
value = 45,10

[State 2100 , a7]
type = PlaySnd
trigger1 = AnimElem = 1
value = 30,1
channel = 0
volume = 200

[State 2100 , a8]
type = HitDef
triggerall = var(8)= 0
trigger1 = time=0
attr = A, SA
damage    = ifelse((prevstateno = [600,650]),80,100),5
animtype = hard
hitflag = MAF
guardflag = HA
pausetime = 4,4
sparkxy = -1
sparkno = -1
guard.sparkno = -1
hitsound   = S2,2
guardsound = S3,0
ground.type = trip
air.type = low
envshake.time = 7
envshake.ampl = 4
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.slidetime = 12
ground.hittime  = 45
ground.velocity = -6,-9
air.velocity = -6,-9
fall = 1
;air.fall = 1

[State 777, hsp]
type = helper
trigger1 = movehit
triggerall= !NumHelper(8704)
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1


[State 2100 , a8]
type = HitDef
triggerall = var(8)!= 0
trigger1 = AnimElem = 3 || AnimElem = 4 || AnimElem = 5
attr = A, SA
damage  = ifelse((prevstateno = [600,650]),15,35),3
animtype = hard
hitflag = MAF
guardflag = HA
pausetime = 4,6
sparkxy = -1
sparkno = -1
guard.sparkno = -1
hitsound   = S46,0
guardsound = S3,0
ground.type = high
air.type = low
envshake.time = 7
envshake.ampl = 4
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.slidetime = 12
ground.hittime  = 45
ground.velocity = -6,0
air.velocity = -6,-6
;fall = 1
;air.fall = 1

[State 777, hsp]
type = explod
triggerall = var(8)!= 0
triggerall= !NumExplod(14001)
trigger1 = movehit
anim = 14001
ID = 14001
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
bindtime= -1
removetime= 26
ignorehitpause = 1
persistent=1
ownpal = 1
sprpriority = 4

[State 777, ch]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1 = time = 0
value = 775
ctrl = 1

[State 2100 , a6]
type = PlaySnd
triggerall = var(8)!= 0
trigger1 = AnimElem = 2
value = 45,12
channel=4

[State 2100 , a9]
triggerall = var(8)!= 0
type = ChangeState
trigger1 = Pos Y >= 0
value = 772

[State 2100 , a9]
triggerall = var(8)= 0
type = ChangeState
trigger1 = Pos Y >= 0
value = 771
;--------------------------------------------------------------------------------
[Statedef 771]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
sprpriority = 4

[State -2, c]
type = removeexplod
trigger1 = !time
id = 773

[State -2, d]
type = removeexplod
trigger1 = !time
id = 772

[State 777, ch]
type = afterimagetime
trigger1 = time = 0
value = 1

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 771
ctrl = 1

[State 2110, a1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2110, a2]
type = hitdef
trigger1 = time = 0
priority = 7,Hit
attr = C,SA
damage = 15,5
animtype = Hard
hitflag = MAFD
guardflag = L
pausetime = 0,0
sparkno = S8510
guard.sparkno = S8550
hitsound   = S2,2
guardsound = S3,0
ground.type = Trip
ground.slidetime = 22
ground.hittime = 22
ground.velocity = 0,-8
ground.cornerpush.veloff = 0
air.type = Trip
air.velocity = 0,-8
fall = 1
fall.recover = 0

[State 777, hdf]
type = helper
trigger1 =  movehit
helpertype = normal
stateno = 8719
ID = 8719
name = "stars"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1007, p2]
type = helper
trigger1 = AnimElem = 1
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p1
pos = 10,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 8707, b1] ;ground
type = Explod
trigger1 = !Time ;
anim = 63
id = 63
postype = p1
bindtime = -1
pos = 0, 0
sprpriority = 7
persistent = 0
scale = 1,1
supermovetime = 999
pausemovetime = 999


[State 2110, b2]
type = EnvShake
trigger1 = time = 0
time = 35
ampl = -6

[State 2110, b3 ]
type = PlaySnd
trigger1 = time = 0
value = 30, 0

[State 2110, b4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
[Statedef 772]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
sprpriority = 6


[State -2, c]
type = removeexplod
trigger1 = !time
id = 773

[State -2, d]
type = removeexplod
trigger1 = !time
id = 772

[State 777, ch]
type = afterimagetime
trigger1 = time = 0
value = 1

[State 771, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 771
ctrl = 1

[State 771, a1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 8707, b1] ;ground
type = Explod
trigger1 = !Time ;
anim = 62
id = 62
postype = p1
bindtime = -1
pos = 0, 0
sprpriority = 7
persistent = 0
scale = 0.7,0.7
supermovetime = 999
pausemovetime = 999


[State 771, b2]
type = EnvShake
trigger1 = time = 0
time = 35
ampl = -2


[State 771, b4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Movement + Stomp-cut
;---------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 40
ctrl = 0
poweradd= 20
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 1200

[State 777, es]
type = Explod
triggerall = var(8)= 0
trigger1 = !time
sprpriority = 10
anim = 61
pos = 0, 3
removeongethit = 1
scale = 1,1
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 777, hsp]; Superjump FX helper
type = helper
triggerall = var(8)= 0
trigger1 = !time
helpertype = normal
stateno = 8715
ID = 2999
name = "superjump"
postype = p1
pos = 0,-10
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 1200, 1]
type = PlaySnd
triggerall = var(8)= 0
trigger1 = AnimElem = 1
value = 8,0


[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 4002, Landing Dust]
type = Explod
triggerall = var(8)!= 0
triggerall =  NumExplod(60) < 1
trigger1= animelem=1
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 1200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 0

;------Ball
[Statedef 1201]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 41
ctrl = 0
sprpriority = -6

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 1201


[State 100, propulsor]
type = Explod
triggerall = var(8)= 0
triggerall = !NumExplod(77700)
trigger1 = time= 0
anim = 77700
id = 77700
name = "propulsor"
postype = P1
pos = -36,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 12

[State 100, propulsor]
type = Explod
triggerall = var(8)= 0
triggerall = !NumExplod(77701)
trigger1 = time= 0
anim = 77700
id = 77701
name = "propulsor2"
postype = P1
pos = 10,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 12

[State 50, 0]
type = PlaySnd
triggerall = var(8)= 0
trigger1 = animelem = 2
value = 30,1


[State 750, 1]
type = VelSet
trigger1 = Time = 0
y = -6

[State 750, 1]
type = VelAdd
trigger1 = Time = 0
y = -4

[State 1200, 2]
type = ChangeState
trigger1 = Time = 30
value = 1202
ctrl = 0

;------Appear
[Statedef 1202]
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,0
anim = 1250
ctrl = 0
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 1202

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 1350, x]
type = PosFreeze
triggerall = var(8)!= 0
trigger1 = time = [0,9]

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 1202, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 777
ctrl = 0

;---------------------------------------------------------------------------
; Movement + Stomp-cut   2
;---------------------------------------------------------------------------
[Statedef 1210]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 40
ctrl = 0
poweradd= 20
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 1200

[State 777, es]
type = Explod
triggerall = var(8)= 0
trigger1 = !time
sprpriority = 10
anim = 61
pos = 0, 3
removeongethit = 1
scale = 1,1
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 777, hsp]; Superjump FX helper
type = helper
triggerall = var(8)= 0
trigger1 = !time
helpertype = normal
stateno = 8715
ID = 2999
name = "superjump"
postype = p1
pos = 0,-10
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 1200, 1]
type = PlaySnd
triggerall = var(8)= 0
trigger1 = AnimElem = 1
value = 8,0

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 4002, Landing Dust]
type = Explod
triggerall = var(8)!= 0
triggerall =  NumExplod(60) < 1
trigger1= animelem=1
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 1200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1211
ctrl = 0

;------Ball
[Statedef 1211]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 41
ctrl = 0
sprpriority = -6

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 1201

[State 100, propulsor]
type = Explod
triggerall = var(8)= 0
triggerall = !NumExplod(77700)
trigger1 = time= 0
anim = 77700
id = 77700
name = "propulsor"
postype = P1
pos = -36,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 12

[State 100, propulsor]
type = Explod
triggerall = var(8)= 0
triggerall = !NumExplod(77701)
trigger1 = time= 0
anim = 77700
id = 77701
name = "propulsor2"
postype = P1
pos = 10,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 12

[State 50, 0]
type = PlaySnd
triggerall = var(8)= 0
trigger1 = animelem = 2
value = 30,1

[State 750, 1]
type = VelSet
trigger1 = Time = 0
x = -6
y = -7

[State 750, 1]
type = VelAdd
trigger1 = Time = 0
y = -3
x= -2

[State 1200, 2]
type = ChangeState
trigger1 = Time = 30
value = 1212
ctrl = 0

;------Appear
[Statedef 1212]
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,0
anim = 1250
ctrl = 0
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 1202

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 1350, x]
type = PosFreeze
triggerall = var(8)!= 0
trigger1 = time = [0,9]

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 1202, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 775
ctrl = 0

;---------------------------------------------------------------------------
; Movement + Stomp-cut   3
;---------------------------------------------------------------------------
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 40
ctrl = 0
poweradd= 20
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 1200

[State 777, es]
type = Explod
triggerall = var(8)= 0
trigger1 = !time
sprpriority = 10
anim = 61
pos = 0, 3
removeongethit = 1
scale = 1,1
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 777, hsp]; Superjump FX helper
type = helper
triggerall = var(8)= 0
trigger1 = !time
helpertype = normal
stateno = 8715
ID = 2999
name = "superjump"
postype = p1
pos = 0,-10
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 1200, 1]
type = PlaySnd
triggerall = var(8)= 0
trigger1 = AnimElem = 1
value = 8,0

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 4002, Landing Dust]
type = Explod
triggerall = var(8)!= 0
triggerall =  NumExplod(60) < 1
trigger1= animelem=1
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 1200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1221
ctrl = 0

;------Ball
[Statedef 1221]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 41
ctrl = 0
sprpriority = -6

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 1201

[State 100, propulsor]
type = Explod
triggerall = var(8)= 0
triggerall = !NumExplod(77700)
trigger1 = time= 0
anim = 77700
id = 77700
name = "propulsor"
postype = P1
pos = -36,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 12

[State 100, propulsor]
type = Explod
triggerall = var(8)= 0
triggerall = !NumExplod(77701)
trigger1 = time= 0
anim = 77700
id = 77701
name = "propulsor2"
postype = P1
pos = 10,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 12

[State 50, 0]
type = PlaySnd
triggerall = var(8)= 0
trigger1 = animelem = 2
value = 30,1

[State 750, 1]
type = VelSet
trigger1 = Time = 0
x = 6
y = -7

[State 750, 1]
type = VelAdd
trigger1 = Time = 0
y = -3
x= 2

[State 1200, 2]
type = ChangeState
trigger1 = Time = 30
value = 1222
ctrl = 0

;------Appear
[Statedef 1222]
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,0
anim = 1250
ctrl = 0
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 1202

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 1350, x]
type = PosFreeze
triggerall = var(8)!= 0
trigger1 = time = [0,9]

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 1202, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 770
ctrl = 0


;---------------------------------------------------------------------------
; Telehit 1
;---------------------------------------------------------------------------
[Statedef 1230]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1230
ctrl = 0
poweradd= 20
sprpriority = 2

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 4002, Landing Dust]
type = Explod
triggerall = var(8)!= 0
triggerall =  NumExplod(60) < 1
trigger1= animelem=1
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 1200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1231
ctrl = 0

;------Ball
[Statedef 1231]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 1231
ctrl = 0
sprpriority = 6

[State 750, 1]
type = VelSet
trigger1 = Time = 0
x = 7
;y = -7

[State 750, 1]
type = VelAdd
trigger1 = Time = 0
y = -0.2
x= 2

; Dash Run Forward velocity blue lines
[State 100, a7]
type = Explod
trigger1 = Time %7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,0,14),ifelse(random<500,-60,-50)
accel = ifelse(random<500,-1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,3
channel = 0

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35
ignorehitpause =1

[State 711, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1232
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = -10,-80; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -10,-80; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 210, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 45
hitflag = MAF
guardflag = MA
pausetime = 0,14
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
sparkxy = -1
animtype = Medium
ground.type = High
ground.slidetime = 2
ground.hittime  = 7
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
ground.cornerpush.veloff = -3

[State 1200, 2]
type = ChangeState
trigger1 = Time = 10
trigger2 = movecontact
value = 1232
ctrl = 0

;------Appear
[Statedef 1232]
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,0
anim = 1232
ctrl = 0
sprpriority = 2

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 1350, x]
type = PosFreeze
triggerall = var(8)!= 0
trigger1 = time = [0,9]

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 777, hsp]
type = helper
triggerall = !Numhelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark3"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 210, 2]
type = HitDef
triggerall = var(8)!= 0
trigger1 = time = 0
attr = S, NA
animtype  = Heavy
damage    = 90
guardflag = MA
hitflag = MAF
pausetime = 0,12
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 12
ground.velocity = -11 ,-2
guard.velocity = -5
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
ground.cornerpush.veloff = -12
fall = 1
air.fall=1

[State 1202, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; Telehit 2
;---------------------------------------------------------------------------
[Statedef 1235]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1230
ctrl = 0
poweradd= 20
sprpriority = 2

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 4002, Landing Dust]
type = Explod
triggerall = var(8)!= 0
triggerall =  NumExplod(60) < 1
trigger1= animelem=1
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 1200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1236
ctrl = 0

;------Ball
[Statedef 1236]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 1231
ctrl = 0
sprpriority = 6

[State 750, 1]
type = VelSet
trigger1 = Time = 0
x = 8
;y = -7

[State 750, 1]
type = VelAdd
trigger1 = Time = 0
y = -0.2
x=3

; Dash Run Forward velocity blue lines
[State 100, a7]
type = Explod
trigger1 = Time %7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,0,14),ifelse(random<500,-60,-50)
accel = ifelse(random<500,-1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,3
channel = 0


[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35
ignorehitpause =1

[State 711, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1232
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 777, hsp]
type = helper
triggerall = !Numhelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark2"
postype = p2
pos = -10,-80; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -10,-80; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 210, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 55
hitflag = MAF
guardflag = MA
pausetime = 0,14
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
sparkxy = -1
animtype = Medium
ground.type = High
ground.slidetime = 2
ground.hittime  = 7
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
ground.cornerpush.veloff = -3

[State 1200, 2]
type = ChangeState
trigger1 = Time = 25
trigger2 = movecontact
value = 1237
ctrl = 0

;------Appear
[Statedef 1237]
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,0
anim = 1232
ctrl = 0
sprpriority = 2

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 1350, x]
type = PosFreeze
triggerall = var(8)!= 0
trigger1 = time = [0,9]

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 210, 2]
type = HitDef
triggerall = var(8)!= 0
trigger1 = time = 0
attr = S, NA
animtype  = Heavy
damage    = 90
guardflag = MA
hitflag = MAF
pausetime = 0,12
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 12
ground.velocity = -11 ,-2
guard.velocity = -5
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
ground.cornerpush.veloff = -12
fall = 1
air.fall=1

[State 1202, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; Telehit 3
;---------------------------------------------------------------------------
[Statedef 1240]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 1230
ctrl = 0
poweradd= 20
sprpriority = 2

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 4002, Landing Dust]
type = Explod
triggerall = var(8)!= 0
triggerall =  NumExplod(60) < 1
trigger1= animelem=1
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 1200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1241
ctrl = 0

;------Ball
[Statedef 1241]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 1231
ctrl = 0
sprpriority = 6

[State 750, 1]
type = VelSet
trigger1 = Time = 0
x = 8
y = -7

[State 750, 1]
type = VelAdd
trigger1 = Time = 0
y = -2.2
x=3

; Dash Run Forward velocity blue lines
[State 100, a7]
type = Explod
trigger1 = Time %7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,0,14),ifelse(random<500,-60,-50)
accel = ifelse(random<500,-1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,3
channel = 0


[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35
ignorehitpause =1

[State 711, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1232
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 777, hsp]
type = helper
triggerall = !Numhelper(8704)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark2"
postype = p2
pos = -10,-80; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -10,-80; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 210, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 55
hitflag = MAF
guardflag = MA
pausetime = 0,14
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
sparkxy = -1
animtype = Medium
ground.type = High
ground.slidetime = 2
ground.hittime  = 7
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
ground.cornerpush.veloff = -3

[State 1200, 2]
type = ChangeState
trigger1 = Time = 25
trigger2 = movecontact
value = 1242
ctrl = 0

;------Appear
[Statedef 1242]
type    = A
movetype= A
physics = A
juggle  = 4
velset = 0,0
anim = 1232
ctrl = 0
sprpriority = 2

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=3
value=45,1

[State 1350, x]
type = PosFreeze
triggerall = var(8)!= 0
trigger1 = time = [0,9]

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 210, 2]
type = HitDef
triggerall = var(8)!= 0
trigger1 = time = 0
attr = S, NA
animtype  = Heavy
damage    = 90
guardflag = MA
hitflag = MAF
pausetime = 0,12
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 12
ground.velocity = -11 ,-9
guard.velocity = -5
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-5
air.hittime = 20
ground.cornerpush.veloff = -12
fall = 1
air.fall=1

[State 1202, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; FLY MODE
;---------------------------------------------------------------------------

[Statedef 9000]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,-3
anim = 4504
juggle = 0
poweradd = -1

;------------------------
; FLY TIMER
[State 1032, 7]
type = VarSet
trigger1 = Time = 0
V = 5
Value = 1

;----------------
[State 9700, 4]
type = Projectile
trigger1 = time = 0
trigger1 = pos Y < -10
projanim = 8787
projhitanim = 8787
projpriority = 1
projshadow = -1
projheightbound = 0,-10
offset = 0,0
velocity = 0,10

;----------------
[State 9700, 4]
type = Projectile
trigger1 = time = 0
trigger1 = pos Y >= -10
projanim = 8787
projhitanim = 8787
projpriority = 1
projshadow = -1
projheightbound = 0,-10
offset = 0,0
velocity = 0,-1

[State 9000, 1]
type = Velset
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
y = -3

[State 9000, 2]
trigger1 = Animtime = 0
type = ChangeState
value = 9001
ctrl = 1

[State 9000, 4]
type = PlaySnd
trigger1 = StateNo = 9000
trigger1 = animelem = 2
value = 30,1

;[State 9000, 4]
;type = PlaySnd
;trigger1 = animelem = 1
;value = 20,10
;channel=2

[State 181, ground dust]
type = Explod
triggerall = pos y >= -2
triggerall = !NumExplod(61)
trigger1 = StateNo = 9000
trigger1 = animelem = 1
anim = 61
id = 61
postype = P1
pos = 0,10
ownpal = 1
sprpriority = 4
facing = 1
time  = 40


;----------------------------------
[Statedef 9001]
type    = A
movetype= I
ctrl = 0
anim = 4501
velset = 0,0,
poweradd = 1

[State 818, CHARGE]
type = PowerAdd
triggerall = stateno = 9001
trigger1 = power != 3000
trigger1 = power <= 1000
trigger1 = power > 0
value = 6

[State 818, CHARGE]
type = PowerAdd
triggerall = stateno = 9001
trigger1 = power != 3000
trigger1 = power <= 2000
trigger1 = power > 1000
value = 4

[State 818, CHARGE]
type = PowerAdd
triggerall = stateno = 9001
trigger1 = power != 3000
trigger1 = power <= 3000
trigger1 = power > 2000
value = 2

[State 9001, Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
trigger5 = Pos Y < -205
trigger6 = Pos Y > -40
x = 0
y = 0

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77700)
trigger1 = anim=4500
anim = 77700
id = 77700
name = "propulsor"
postype = P1
pos = -36,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77701)
trigger1 = anim=4500
anim = 77700
id = 77701
name = "propulsor2"
postype = P1
pos = 10,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15

[State 200, c]
type = removeexplod
trigger1 = anim!=4500
id = 77700

[State 200, d]
type = removeexplod
trigger1 = anim!=4500
id = 77701

[State 9001, Stop2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
triggerall = anim != 4500
value = 4500


[State 9001, GoUpAnim]
type = ChangeAnim
trigger1 = command = "holdup"
trigger1 = Anim != 4500
value = 4500

[State 9001, GoDownAnim]
type = ChangeAnim
trigger1 = command = "holddown"
trigger1 = Anim != 4501
value = 4501

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77702)
trigger1 = anim=4501
anim = 77700
id = 77702
name = "propulsor"
postype = P1
pos = -36,-90
ownpal = 1
sprpriority = -6
vfacing = -1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77703)
trigger1 = anim=4501
anim = 77700
id = 77703
name = "propulsor2"
postype = P1
pos = 10,-90
ownpal = 1
sprpriority = -6
vfacing = -1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15

[State 200, c]
type = removeexplod
trigger1 = anim!=4501
id = 77702
[State 200, d]
type = removeexplod
trigger1 = anim!=4501
id = 77703


[State 9001, GoBackAnim]
type = ChangeAnim
trigger1 = command = "holdback"
trigger1 = Anim != 4502
triggerall = command != "holdup"
triggerall = command != "holddown"
value = 4502

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(120)
trigger1 = anim=4502
anim = 110
id = 120
name = "propulsor"
postype = P1
pos = -30,78
ownpal = 1
sprpriority = -6
facing = -1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15

[State 100, propulsor2]
type = Explod
triggerall =!NumExplod(2120)
trigger1 = anim=4502
anim = 110
id = 2120
name = "propulsor2"
postype = P1
pos = 20,82
ownpal = 1
sprpriority = -6
facing = -1
supermove = 1
removeongethit = 1
bindtime = -1
removetime =15

[State 200, c]
type = removeexplod
trigger1 = anim!=4502
id = 120

[State 200, d]
type = removeexplod
trigger1 = anim!=4502
id = 2120


[State 9001, GoForwardAnim]
type = ChangeAnim
trigger1 = command = "holdfwd"
trigger1 = Anim != 4503
triggerall = command != "holdup"
triggerall = command != "holddown"
value = 4503

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(110)
trigger1 = anim=4503
anim = 110
id = 110
name = "propulsor"
postype = P1
pos = 0,78
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 15

[State 100, propulsor2]
type = Explod
triggerall =!NumExplod(2110)
trigger1 = anim=4503
anim = 110
id = 2110
name = "propulsor2"
postype = P1
pos = -45,82
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime =15

[State 200, c]
type = removeexplod
trigger1 = anim!=4503
id = 110

[State 200, d]
type = removeexplod
trigger1 = anim!=4503
id = 2110



[State 9001,Turn]
type = Turn
trigger1 = P2Dist X < -10

[State 9001,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 660
ctrl = 1

[State 9001,GoUp2]
type = VelSet
trigger1 = command = "holdup"
y = -4

[State 9001,GoDown2]
type = VelSet
trigger1 = command = "holddown"
y = 4

[State 9001,GoBack2]
type = VelSet
trigger1 = command = "holdback"
x = -4

[State 9001,GoFwd2]
type = VelSet
trigger1 = command = "holdfwd"
x = 4

[State 9001, UpBorder]
type = PosSet
trigger1 = Pos Y < -280
y = -280

[State 9001, UpBorder]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 9001, 1a]
type = VarSet
trigger1 = time = 0
;trigger1 = PrevStateNo != 9000
v = 15
value = 0

;---------------------------------------------------------------------------
[State 9001, stomp air]
Type = Changestate
trigger1 = command = "stomp2"
value = 770
ctrl=1
; Stomp Dive 2
[State 9001, stomp air]
Type = Changestate
trigger1 = command = "stomp1"
value = 775
ctrl =1

; Stomp Dive 1
[State 9001, stomp air]
Type = Changestate
trigger1 = command = "stomp"
value = 777
ctrl =1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; FLY MODE END
[State 9001, 61]
type = ChangeState
trigger1 = command = "flying"
trigger2 = Var(5) <= 0
trigger3 = Win = 1
trigger4 = Lose = 1
trigger5 = power = 3000
value = 660
ctrl = 1

[State 9001, 62]
type = VarSet
trigger1 = command = "flying"
trigger2 = Win = 1
trigger3 = Lose = 1
v =15
value = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; X button
[State 9001, 6]
trigger1 = command = "x"
type = ChangeState
value = 600
ctrl = 1

;---------------------------------------------------------------------------
; Y button
[State 9001, 6]
type = ChangeState
trigger1 = command = "y"
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact
value = 610
ctrl = 1

;---------------------------------------------------------------------------
; Z button
[State 9001, 6]
type = ChangeState
trigger1 = command = "z"
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
value = 620
ctrl = 1

;---------------------------------------------------------------------------
; A button
[State 9001, 6]
type = ChangeState
trigger1 = command = "a"
trigger2 = stateno = 600 && MoveContact
value = 630
ctrl = 1

;---------------------------------------------------------------------------
; B button
[State 9001, 6]
type = ChangeState
trigger1 = command = "b"
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact
trigger4 = stateno = 610 && MoveContact
value = 640
ctrl = 1

;---------------------------------------------------------------------------
; C button
[State 9001, 6]
type = ChangeState
trigger1 = command = "c"
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
value = 650
ctrl = 1
;---------------------------------------------------------------------------

;----------------------------------------------------------------------------
; Weapons
;-----------------------------------------------------------------------------
;-------------------------------------------------------------------------
;MISIL  Leg
;----------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = -4

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 15, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 1000, snd]
type = PlaySnd
trigger1 = time= 22
value = 45,16
volume= -50

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 22,2

[State 3150, helper]
type = Helper
trigger1 = time= 20
name = "misil"
StateNo = 2024
postype = p1
pos = -5, -35
sprpriority =8
id=2024
ontop=1
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = time= 20
name = "misil2"
StateNo = 2025
id=2025
postype = p1
pos = 25, -48
sprpriority =8
ontop=1
ownpal = 1

[State 1000, weap]
type = Explod
triggerall = !NumExplod(1101)
trigger1 = time= 9
id =1101
anim = 1101
pos = 0,0
postype= p1
sprpriority =-2
bindtime=-1
removeongethit = 1
removetime=42

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 30
value = 45,14

[State 1000, changestate]
type = ChangeState
trigger1 = Time = 60
value = 1110
ctrl = 0
;----------------------------------------
; (move end)
[Statedef 1110]
type    = S
physics = S
ctrl = 0
anim = 1110
sprpriority = 2

[State 3001, d]
type = removeexplod
trigger1 = !time
id = 1101

[State 3001, d]
type = removeexplod
trigger1 = !time
id = 1112

[State 3001, d]
type = removeexplod
trigger1 = !time
id = 1113

[State 3001, d]
type = removeexplod
trigger1 = !time
id = 1116

[State 3001, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;MISIL  Arm
;----------------------------------------------------
[Statedef 1010]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1111
ctrl = 0
sprpriority = -4

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 15, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 1000, snd]
type = PlaySnd
trigger1 = time= 22
value = 31,1

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 22,2

[State 3150, helper]
type = Helper
trigger1 = time= 25
trigger2 = time= 35
trigger3 = time= 45
name = "misil"
StateNo = 2023
postype = p1
pos = -20, -88
sprpriority =8
ontop=1
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = time= 25
trigger2 = time= 35
trigger3 = time= 45
name = "misil"
StateNo = 2123
postype = p1
pos = 60, -88
sprpriority =8
ontop=1
ownpal = 1

[State 1000, weap]
type = Explod
triggerall = !NumExplod(1112)
trigger1 = time= 9
id =1112
anim = 1112
pos = 0,0
postype= p1
sprpriority =-2
bindtime=-1
removeongethit = 1
removetime=58

[State 1000, weap]
type = Explod
triggerall = !NumExplod(1113)
trigger1 = time= 9
id =1113
anim = 1113
pos = 0,0
postype= p1
sprpriority =-2
bindtime=-1
removeongethit = 1
removetime=58

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 9
trigger2 = time = 50
value = 80,4

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 25
trigger2 = time= 35
trigger3 = time= 45
value = 45,16
volume=-100

[State 1000, changestate]
type = ChangeState
trigger1 = Time = 70
value = 1110
ctrl = 0

;-------------------------------------------------------------------------
;MISIL  Shoulder cannons
;----------------------------------------------------
[Statedef 1015]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1115
ctrl = 0
sprpriority = -4

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 15, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 3150, helper]
type = Helper
trigger1 = time= 50
name = "misil"
StateNo = 2022
postype = p1
pos = 15, -86
sprpriority =8
ontop=1
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = time= 50
name = "misil"
StateNo = 2122
postype = p1
pos = 30, -86
sprpriority =6
ontop=1
ownpal = 1

[State 1000, weap]
type = Explod
triggerall = !NumExplod(1116)
trigger1 = time= 9
id =1116
anim = 1116
pos = 0,0
postype= p1
sprpriority =-2
bindtime=-1
removeongethit = 1
removetime=90

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 9
trigger2 = time = 80
value = 80,4

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 50
value = 45,16
volume=10

[State 1000, changestate]
type = ChangeState
trigger1 = Time = 100
value = 1110
ctrl = 0

;------------------------------------------------------------------------------
; Big Misil Helper
;-------------------------------------------------------------------------------
[Statedef 2022]
type = S
movetype = A
physics = S
poweradd = 0
anim = 2022
sprpriority = 8

[State 78101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 2222
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 78101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 78101, vel]
type = VelSet
trigger1 = 1
x = 8
y= 1.1

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1
volume=-200

[State 1101, 4]
type = Explod
trigger1 = (time%3)=0
pos = -30,-5
postype = p1
bindtime =5
sprpriority = 1
anim = 8730
ownpal=1
removetime = -2
scale= 0.75,0.75

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 85, 15
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = S2,1
guardsound= S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-5
air.velocity = -4, -5
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark4"
postype = p2
pos =10,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos =10,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 1001, explosive]
type = Explod
triggerall = !NumExplod(7888)
trigger1 = movehit = 1
trigger2 = moveguarded = 1
anim = 7888
id =7888
pos = 10, -90
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1
scale= 0.9,0.9

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 45,15
volume= -100

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50

;------------------------------------------------------------------------------
; Big Misil Helper
;-------------------------------------------------------------------------------
[Statedef 2122]
type = S
movetype = A
physics = S
poweradd = 0
anim = 2022
sprpriority = 8

[State 78101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 2222
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 78101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 78101, vel]
type = VelSet
trigger1 = 1
x = 8
y= -0.3

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1
volume=-200

[State 1101, 4]
type = Explod
trigger1 = (time%3)=0
pos = -30,-5
postype = p1
bindtime =5
sprpriority = 1
anim = 8730
ownpal=1
removetime = -2
scale= 0.75,0.75

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 85, 15
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = S2,2
guardsound= S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-5
air.velocity = -4, -5
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark4"
postype = p2
pos =10,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos =10,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 1001, explosive]
type = Explod
triggerall = !NumExplod(7888)
trigger1 = movehit = 1
trigger2 = moveguarded = 1
anim = 7888
id =7888
pos = 10, -90
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1
scale= 0.9,0.9

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 45,15
volume= -100

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50


;-----------------------------------------------------------------------------
[Statedef 2222]
type = S
movetype = A
physics = S
poweradd = 0
anim = 7888
sprpriority = -6

[State 1000, sndx]
type = PlaySnd
trigger1 = time=0
value = 45,15
volume=-100

[state 3151, destroy]
type = Destroyself
trigger1 = animtime = 0

;------------------------------------------------------------------------------
; Mini Misil
;-------------------------------------------------------------------------------
[Statedef 2023]
type = S
movetype = A
physics = S
poweradd = 0
anim = 2023
sprpriority = 8

[State 78101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 2223
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 78101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 78101, vel]
type = VelSet
trigger1 = 1
x = 8
y= 1.7

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1
volume=-300

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 25, 3
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = S2,0
guardsound= S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-5
air.velocity = -4, -5
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1

[State 777, hsp]
type = helper
triggerall= !Numhelper(8700)
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark4"
postype = p2
pos =15,-50
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos =15,-50
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 1001, explosive]
type = Explod
triggerall = !NumExplod(7888)
trigger1 = movehit = 1
trigger2 = moveguarded = 1
anim = 7888
id =7888
pos = 15, -50
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1
scale= 0.3,0.3

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 45,15
volume= -200

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50

;------------------------------------------------------------------------------
; Mini Misil
;-------------------------------------------------------------------------------
[Statedef 2123]
type = S
movetype = A
physics = S
poweradd = 0
anim = 2023
sprpriority = 8

[State 78101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 2223
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 78101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 78101, vel]
type = VelSet
trigger1 = 1
x = 8
y= 0.7

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1
volume=-300

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 25, 3
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = S2,1
guardsound= S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-5
air.velocity = -4, -5
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1

[State 777, hsp]
type = helper
triggerall= !Numhelper(8700)
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark4"
postype = p2
pos =15,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos =15,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 1001, explosive]
type = Explod
triggerall = !NumExplod(7888)
trigger1 = movehit = 1
trigger2 = moveguarded = 1
anim = 7888
id =7888
pos = 15, -90
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1
scale= 0.3,0.3

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 45,15
volume= -200

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50

;-----------------------------------------------------------------------------
[Statedef 2223]
type = S
movetype = A
physics = S
poweradd = 0
anim = 8730
sprpriority = -6

[State 1000, sndx]
type = PlaySnd
trigger1 = time=0
value = 45,15
volume=-200

[state 3151, destroy]
type = Destroyself
trigger1 = animtime = 0

;------------------------------------------------------------------------------
;Misil Helper
;-------------------------------------------------------------------------------
[Statedef 2024]
type = S
movetype = A
physics = S
poweradd = 0
anim = 2024
sprpriority = 8

[State 78101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 2224
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 78101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 78101, vel]
type = VelSet
trigger1 = 1
x = 8
y= -0.7

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1
volume=-200

[State 1101, 4]
type = Explod
trigger1 = (time%3)=0
pos = -10,-5
postype = p1
bindtime =5
sprpriority = 1
anim = 8730
ownpal=1
removetime = -2
scale= 0.6,0.6

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 60, 3
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = S2,1
guardsound= S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-5
air.velocity = -4, -5
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =10,-60
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos =10,-60
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 1001, explosive]
type = Explod
triggerall = !NumExplod(7888)
trigger1 = movehit = 1
trigger2 = moveguarded = 1
anim = 7888
id =7888
pos = 10, -60
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1
scale= 0.5,0.5

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 45,15
volume= -100

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50
;------------------------------------------------------------------------------
;Misil Helper
;-------------------------------------------------------------------------------
[Statedef 2025]
type = S
movetype = A
physics = S
poweradd = 0
anim = 2024
sprpriority = 8

[State 78101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 2224
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 78101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 78101, vel]
type = VelSet
trigger1 = 1
x = 8
y= -1.7

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1
volume=-200

[State 1101, 4]
type = Explod
trigger1 = (time%3)=0
pos = -10,-5
postype = p1
bindtime =5
sprpriority = 1
anim = 8730
ownpal=1
removetime = -2
scale= 0.6,0.6

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 60, 3
pausetime = 0,9
sparkno = -1
sparkxy = -1
guard.sparkno = -1
hitsound = S2,1
guardsound= S3,0
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -4,-5
air.velocity = -4, -5
sprpriority = 9
fall = 1
air.fall = 1
hitonce = 1
numhits = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark4"
postype = p2
pos =10,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos =10,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 1001, explosive]
type = Explod
triggerall = !NumExplod(7888)
trigger1 = movehit = 1
trigger2 = moveguarded = 1
anim = 7888
id =7888
pos = 10, -90
postype = p2
sprpriority = 6
ontop = 1
removeongethit = 1
bindtime = 999
removetime =36
ownpal = 1
scale= 0.5,0.5

[State 1000, sndx]
type = PlaySnd
trigger1 = moveguarded = 1 || movehit = 1
value = 45,15
volume= -100

[state 3151, destroy]
type = Destroyself
trigger1 = movecontact = 1

[state 3151, destroy]
type = Destroyself
trigger1 = time = 50

;-----------------------------------------------------------------------------
[Statedef 2224]
type = S
movetype = A
physics = S
poweradd = 0
anim = 7888
sprpriority = -6

[State 1000, sndx]
type = PlaySnd
trigger1 = time=0
value = 45,15
volume=-100

[state 3151, destroy]
type = Destroyself
trigger1 = animtime = 0
