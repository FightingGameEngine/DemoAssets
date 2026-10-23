;------------------------------------------------------------------------------
;------------------------------[ hyper moves ]---------------------------------
;------------------------------------------------------------------------------
; Telekinetic shield
[statedef 3000]
type    = U
movetype= a
physics = n
juggle  = 4
velset = 0,0
anim = 3000
poweradd = -2000
ctrl = 0
sprpriority = 2

[State 3000, SuperPause FX]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8510
ID = 8510
name = "Superpause FX"
posType = P1
pos = 4, -105
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
time = 38
moveTime = 1
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8889,2
darken = 0

[state 3000]
type = playsnd
trigger1 = animelem = 4
value = 999,6

[state 3000]
type = playsnd
trigger1 = animelem = 4
value = 230,0
channel = 23

[state 3000]
type = nothitby
trigger1 = time = 0
value = sca,na,sa,nt,ht
time = 50

[state 0, varset]
type = varset
trigger1 = time = 0
v = 37
value = 600

[state 0, varset]
type = varset
trigger1 = time = 0
v = 38
value = 0

[state 3000]
type = helper
trigger1 = animelem = 10
stateno = 3001
id = 3001
ownpal = 1

[state 3000]
type = changestate
trigger1 =  animtime = 0
value = 52
ctrl = 1

;------------------------------------------------------------------------------
; Telekinetic armor Forcefield
[statedef 3001]
type = a
movetype = i
physics = n
anim = 3002
sprpriority = 3
velset = 0,0
ctrl = 0

[state 3001, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3001, turn]
type = turn
trigger1 = Facing != parent, Facing

[state 3001, hitoverride]
type = hitoverride
trigger1 = 1
time = 1
attr = sca, aa, at, ap
stateno = 3002

[state 3001, posset]
type = posset
trigger1 = 1
x = parent, pos x
y = parent, pos y
ignorehitpause = 1

[state 3001, changestate]
type = changestate
trigger1 = parent,var(37)<1
value = 3003

[state 3001, changestate]
type = changestate
trigger1 = parent,var(38)>= 16
value = 10900

;------------------------------------------------------------------------------
; Forcefield activation
[statedef 3002]
type = s
movetype = h
physics = s
anim = 3004
sprpriority = 3
velset = 0,0
ctrl = 0

[state 0, varadd]
type = parentvaradd
trigger1 = !time
v = 49    ;fv =
value = Floor(gethitvar(hittime))

[state 0, varadd]
type = parentvaradd
trigger1 = !time
v = 38    ;fv =
value = 1
[state 0, varadd]
type = parentvaradd
trigger1 = !time
trigger1 = enemy,hitdefattr = sca,ha,sp
v = 38    ;fv =
value = Floor(gethitvar(damage) /35)

[state 3002, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3002, turn]
type = turn
trigger1 = Facing != parent, Facing

[state 3002, hitoverride]
type = hitoverride
trigger1 = 1
time = 1
attr = sca, aa, at, ap
stateno = 3002

[state 3002, posset]
type = posset
trigger1 = 1
x = parent, pos x
y = parent, pos y
ignorehitpause = 1

[state 3002, changestate]
type = changestate
trigger1 = animtime = 0
value = 3001

[state 3002, changestate]
type = changestate
trigger1 = parent,var(38)>= 16
value = 10900

;------------------------------------------------------------------------------
; Telekinetic Armor Forcefield End
[statedef 3003]
type = s
movetype = i
physics = s
anim = 3003
velset = 0,0
ctrl = 0

[state 3003, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3003, turn]
type = turn
trigger1 = Facing != parent, Facing

[state 3003, posset]
type = posset
trigger1 = 1
x = parent, pos x
y = parent, pos y
ignorehitpause = 1

[state 3003, Destroyself]
type = Destroyself
trigger1 = !animtime

;------------------------------------------------------------------------------
; Telepathy
[statedef 3100]
type    = U
movetype= a
physics = n
juggle  = 4
velset = 0,0
anim = 3100
poweradd = -1000
ctrl = 0
sprpriority = 2

[state 3100, helper]
type = helper
trigger1 = animelem = 4
name = "beam"
id = 3101
stateno = 3101
pos = 15,-102
postype = p1
size.xScale = 3
size.yScale = 4
ownpal = 1

[state 3100]
type = explod
trigger1 = numhelper(3101)
trigger1 = helper(3101),movehit
anim = 3103
postype = p2
pos = -20,-100
facing = ifelse((enemynear,Facing = Facing), 1, -1)
ownpal = 1
ignorehitpause = 1
ontop = 1

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 4, -105
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0


[state 3100, superpause]
type = superpause
trigger1 = animelem = 3
time = 40
anim = -1
sound = S8889,0
pos = -10,-80

[state 3100]
type = changestate
trigger1 = time = 100
value = 3103
ctrl = 1

;---------------------------------------------------------------------------
; helper beam 1
[statedef 3101]
type = U
movetype = a
physics = n
anim = 3102
ctrl = 0
sprpriority = 2
velset = 0,0

[state 3101, posset]
type = posset
trigger1 = 0
x = parent, pos x
y = parent, pos y -103

[state 3101, playsnd]
type = playsnd
trigger1 = time = 0
value = s10,10

[state 3101, noreversal]
type = nothitby
trigger1 = time >= 0
time = 1
value = sca,ap
ignorehitpause = 1

[state 3101, noreversal2]
type = nothitby
trigger1 = time >= 0
time = 1
value = sca,ap
ignorehitpause = 1

[state 3101, hitdef]
type = hitdef
trigger1 = TimeMod = 3,0
attr = S, HP
guardflag = MA
affectteam = E
damage = 13,5
pausetime = 0,10
hitsound = S5,8
guardsound = S6,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-5
animtype = medium
ground.type = high      ;high,low,trip,none
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
ground.cornerpush.veloff = 0
envshake.time = 4
envshake.ampl = 2

[State 1011, Hit Spark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -105
ownPal = 1
facing = -1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[state 3101, Destroyself]
type = Destroyself
trigger1 = time = 90

;---------------------------------------------------------------------------
; telepathy end
[statedef 3103]
type    = s
physics = s
ctrl = 0
anim = 3105

[state 3103, 1]
type = velset
trigger1 = time = 0
y = 0

[state 3103, 2]
type = posset
trigger1 = time = 0
y = 0

[state 3103, 3]
type = ctrlset
trigger1 = time = 3
value = 1

[state 3103, 4]
type = changestate
trigger1 = animtime = 0
value = 52
ctrl = 1

;------------------------------------------------------------------------------
; Telekinesis 1
[statedef 3200]
type    = U
movetype= a
physics = n
juggle  = 36
velset = 0,0
anim = 3200
poweradd = -1000
ctrl = 0
sprpriority = 2


[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 4, -105
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8889,0
darken = 0

[state 3200]
type = helper
trigger1 = time%1 = 0 && time < 10
stateno = 3201
id = 3205
ownpal = 1
postype = back
pos = 70+random%240,random%50

[state 3100]
type = playsnd
trigger1 = animelem = 3
value = 900,0
channel= 3

[state 3100]
type = playsnd
trigger1 = animelem = 5
value = 3200,0
channel= 5

[state 3200]
type = changestate
trigger1 = time = 110
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Telekinesis 2
[statedef 3201]
type = a
movetype = i
physics = n
anim = 3205+random%1
ctrl = 0
sprpriority = 3
velset = 0,-3-random%4
hitcountpersist = 1

[state 3201]
type = velset
trigger1 = screenpos y < 0
x = (p2dist x)*0.03
y = (p2dist y)*0.03
persistent = 0

[state 3201]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3201]
type = statetypeset
trigger1 = vel x != 0
movetype = a
persistent = 0

[state 3201]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 3201]
type = null;hitby
trigger1 = 1
value = sca,ap

[state 3201]
type = hitdef
attr = s, hp
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 30,3
animtype = Hard
priority  = 5, hit
guarDFlag = ma
hitflag = mafd
pausetime = 7,7
sparkxy = 5,0
hitsound = S5,7
guardsound = S6,0
sparkno = -1
guard.sparkno = s8430
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -9
air.velocity = -9
getpower = ifelse(movehit,40,15),ifelse(movehit,40,0)
sprpriority = 3
envshake.time = 5
envshake.ampl = 3

[State 1011, Hit Spark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -105
ownPal = 1
facing = -1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[state 3201]
type = ChangeState
trigger1 = movecontact
trigger2 = pos y > 150
trigger3 = time = 240
value = 1205

;---------------------------------------------------------------------------
; Phoenix Attack
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 3300
poweradd = -1000
ctrl = 0
sprpriority = 2

[state 3200, superpause]
type = superpause
trigger1 = time = 20
time = 40
anim = s7000
sound = S8889,0
pos = 10,-100
movetime = 40

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3300,0
channel = 5
volume =255

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S3300,3
channel = 4
volume =255

[State 3300, Explod Phoenix]
type = Explod
trigger1 = time = 0
anim = 3301
ID = 3301
pos = -30,-50
postype = p1
removetime = -2
scale = 2,2
sprpriority = 10
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3300, Explod Wings]
type = Explod
trigger1 = time =0
anim = 3302
ID = 3302
pos = 0,-110
postype = p1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3300, Explod Mid Blast]
type = Explod
trigger1 = time = 20
anim = 3304
ID = 3304
pos = -10,20
postype = p1
removetime = -2
scale = 1.5,1.5
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3300, Explod Mid Blast]
type = Explod
trigger1 = time = 40
anim = 3304
ID = 3304
pos = 50,20
postype = p1
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State  3300, Explod Mid Blast]
type = Explod
trigger1 = time = 60
anim = 3304
ID = 3304
pos = 50,20
postype = p1
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3300, Explod Large]
type = Explod
trigger1 = time = 50
anim = 3303
ID = 3303
pos = 50,30
postype = p1
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3300, 1]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HA
damage = 7, 2
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4,4
sparkno = 3
sparkxy = -35, -80
hitsound = s5,3
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2,-4
airguard.velocity = -2,-2
fall = 1
air.type = High
air.velocity = -2,-4
air.hittime = 12
ground.cornerpush.veloff = -1
guard.cornerpush.veloff = -1
air.cornerpush.veloff = -1
air.guard.cornerpush.veloff = -1
getpower = 0
palfx.time = 40
palfx.add = 72,-19,-204
palfx.mul = 338,389,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 15

[State 3300, 1]
type = HitDef
trigger1 = animelem = 8
trigger2 = animelem = 9
trigger3 = animelem = 10
trigger4 = animelem = 11
attr = S, HA
damage = 17, 3
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4,4
sparkno = 3
sparkxy = -35, -80
hitsound = s5,3
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2,-4
airguard.velocity = -2,-2
fall = 1
air.type = High
air.velocity = -2,-4
air.hittime = 12
ground.cornerpush.veloff = -1
guard.cornerpush.veloff = -1
air.cornerpush.veloff = -1
air.guard.cornerpush.veloff = -1
getpower = 0
palfx.time = 40
palfx.add = 72,-19,-204
palfx.mul = 338,389,256
palfx.sinadd = 61,20,10,15
palfx.invertall = 1
palfx.color = 15

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = time = 100
value = 33001

[State 3300, 5]
type = ChangeState
triggerall = anim = 33001
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; super armor
[statedef 9000]
type = U
movetype = i
physics = U
ctrl = 0

[state 0, nothitby]
type = nothitby
trigger1 = 1
value = sca,na,sa,ha,np,sp,hp,nt,st,ht
time = 1

[state 9000, posfreeze]
type = posfreeze
trigger1 = alive
trigger1 = 1
value = 90

[state 9000, ctrlset]
type = ctrlset
triggerall = time < Floor(var(49) * 0.8)
trigger1 = var(46) <= 106
value = 1

[state 9000, changeanim]
type = changeanim
trigger1 = time < Floor(var(49) * 0.8)
value = anim
elem  = animelemno(0)

[state 9000, end]
type = changestate
trigger1 = alive
trigger1 = time > Floor(var(49) * 0.8)
value = var(46)

[state 9000, velset]
type = velset
trigger1 = !alive
x = gethitvar(xvel)
y = gethitvar(yvel)

[state 9000, end]
type = changestate
trigger1 = !alive
value = 5050

;------------------------------------------------------------------------------
; shatter
[statedef 10900]
type = s
movetype = a
physics = n
anim = 10900
ctrl = 0

[state 10900, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 10900, attackmulset]
type = attackmulset
trigger1 = 1
value = root, Fvar(0)

[state 10900, Destroyself]
type = Destroyself
trigger1 = !animtime

;---------------------------------------------------------------------------
; Phoneix Super (begin)
[Statedef 3400]
type = A
movetype= A
physics = N
velset = 0,-1.3
anim = 3400
ctrl = 0
sprpriority = 2
poweradd = -3000

[State -2]
type = Afterimage
trigger1 = time = 0
trans = add
paladd = 120,40,0
PalContrast = 200,180,0
PalBright = 50,30,0
palpostbright = 80,0,0
time    =  -1
length  = 50
TimeGap = 1
FrameGap = 1
persistent = 1

[State 3100, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 15,0

[State 3100, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 12

[state a]
type = varset
trigger1 = time = 0
v = 7
value = 255

[state a]
type = varadd
trigger1 = var(7) >= 1
v = 7
value = -15

[State 3040, 7]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = var(7),var(7),var(7)
under = 2

[State 3100, ChangeState]
type = ChangeState
trigger1 = Time = 45
value = 3401

;------------------------------------------------------------------------------
; Phoenix Super (Start)
[statedef 3401]
type    = U
movetype= a
physics = n
juggle  = 4
velset = 0,0
anim = 3401
ctrl = 0
sprpriority = 2

[State 0, EnvShake]
type = EnvShake
trigger1 = time= 0
time = 100
freq = 40
ampl = 4
phase = 90
ignorehitpause = 1

[State 1106, Explod]
type = Explod
trigger1 = time % 10 = 0
anim = 1108
pos = -8,-45
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3
accel = 0,0
random = 0,0
removetime = 30
pausemovetime = 0
scale = 1.5, 2.1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8520
ID = 8520
name = "Superpause FX"
posType = P1
pos = 4, -105
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s240,3
darken = 0

[State 3101, 2]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = nobardisplay

[state 3100]
type = changestate
trigger1 = time = 100
value = 3402
ctrl = 0

;---------------------------------------------------------------------------
; Phoenix Super (attacking)
[Statedef 3402]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3402
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3402 && !Animtime
value = 3403
ignorehitpause = 1


[State 3300, Explod Wings]
type = Explod
triggerall = anim = 3403
trigger1 = time = 9
anim = 3302
pos = 0,-100
postype = p1
removetime = 245
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
; ;------------------------------
[State 1106, Explod]
type = Explod
triggerall = anim = 3403
trigger1 = time = 9
anim = 1108
pos = -10,-65
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-4.2
accel = 0,0
random = 0,0
removetime = 30
pausemovetime = 0
scale = 2.6,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1106, Explod]
type = Explod
triggerall = anim = 3403
trigger1 = time = 9
anim = 1108
pos = -10,-55
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3
accel = 0,0
random = 0,0
removetime = 30
pausemovetime = 0
scale = 1.8, 1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 1106, Explod]
type = Explod
triggerall = anim = 3403
trigger1 = time = 9
trigger2 = time = 254
anim = 1108
pos = -11,-35
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3
accel = 0,0
random = 0,0
removetime = 30
pausemovetime = 0
scale = .8, 3
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
;------------------------------
[State 0, EnvShake]
type = EnvShake
trigger1 = time = 9
time = 240
freq = 90
ampl = 4
phase = 130
ignorehitpause = 1

[State 3101, Voice]
type = PlaySnd
trigger1 = Time = 9
value = s3300, 7
volume = 300

[State 3101, Voice]
type = PlaySnd
trigger1 = Time = 120
value = 195, 1
volume = 300

[State 3101, 1]
type = PlaySnd
trigger1 = Time = 9
value = 240, 0

[State 3101, 1]
type = PlaySnd
trigger1 = Time = 9
value = 240, 1

[State 3101, 1]
type = PlaySnd
trigger1 = Time = 9
value = 240, 2

[State 3101, 14]
type = Explod
trigger1 = Time = 9
anim = 3404
postype = Back
pos = 0,0
sprpriority = -4
bindtime = -1
removetime = 245
ownpal = 1
supermovetime = 9999
removeongethit = 1
under = 1

[State 3101, 14]
type = Explod
trigger1 = Time = 9
ID = 3007
anim = 3405
postype = Back
pos = 0,0
sprpriority = 99
bindtime = -1
removetime = 245
ownpal = 1
supermovetime = 9999
removeongethit = 1
under = 0

[state 3101, hitdef]
type = hitdef
trigger1 = TimeMod = 5,0
attr = S, HP
guardflag = MA
damage = 15,5
pausetime = 0,10
hitsound = S5,8
guardsound = S6,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-5
animtype = Up
ground.type = Low      ;high,low,trip,none
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,-10
guard.velocity = -5
air.velocity = 0,-10
fall = 1
ground.cornerpush.veloff = 0
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3
palFX.time = 24; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48


[State 1011, Hit Spark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -65
ownPal = 1
facing = -1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 3402
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 3101, 2]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = nobardisplay

[State 3040, 7]
type = BGPalfx
trigger1 = time = 8
;persistent = 0
ignorehitpause = 1
time = 2
add = 255,255,255
; under = 2

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 1
ignorehitpause = 1

[State 3101, 4]
type = ChangeState
trigger1 = time = 255
value = 980
;------------------------------------------------------------------------------
; Phoenix Shin Upper (Ground)
[statedef 3500]
type    = S
movetype= a
physics = s
juggle  = 0
velset = 0,0
anim = 3500
poweradd = -1000
ctrl = 0
sprpriority = 2

[State 3000, SuperPause FX]
type = Helper
triggerall = anim = 3500
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 44, -35
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
time = 38
moveTime = 1
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8889,1
darken = 0

[state 3000]
type = playsnd
trigger1 = animelem = 1
value = 3300,6

[state 3000]
type = playsnd
trigger1 = animelem = 1
value = s3300,1
channel = 23

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
trigger2 = animelem = 8
x = 7

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
trigger2 = animelem = 15
x = 0

[State 200, 4]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 8
attr = S, HA
hitflag = MAFD
guardflag = MA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 6,Hit
damage = 33
pausetime = 6,12
guard.pausetime = 9,11
guardSound = -1
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
ground.type = Low
air.type = High
ground.slidetime = 12
ground.hittime = 17
air.hittime = 12
guard.ctrltime = 11
ground.velocity = -6
guard.velocity = -5
air.velocity = -4,-5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 35, 35
yaccel = .5
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 10
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 200, 4]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 10
trigger4 = animelem = 11
attr = S, HA
hitflag = MAFD
guardflag = MA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 5,Hit
damage = 33
pausetime = 6,12
guard.pausetime = 9,11
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -140
hitsound = s201,1
ground.type = High
air.type = High
ground.slidetime = 12
ground.hittime = 17
air.hittime = 12
guard.ctrltime = 11
ground.velocity = -6
guard.velocity = -5
air.velocity = -4,-5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 35, 35
yaccel = .5
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 10
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 3500
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[state 3000]
type = changestate
trigger1 =  animtime = 0
value = 3501

;--------------------------------------------------------------------------
; Phoenix Shin Upper (Finish)
[Statedef 3501]
type = S
movetype = A
physics = N
anim = 1500
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 2
facep2 = 1

[State 1000, Swing]
type = PlaySnd
trigger1 = !Time
value = s5,9
channel = 0

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = s195,3
channel = 23

[State 1106, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1108
ID = 1108
pos = 40,-46
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1, 1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 1106, Explod]
type = Explod
trigger1 = animelem = 3
trigger2 = animelem = 4
anim = 1108
pos = 7,-135
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 2,2
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .8, .8
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 1200, StateTypeSet: Air, No Phys]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = A

[State 1200, Muteki]
type = Nothitby
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 1050, Pos]
type = PosAdd
trigger1 = AnimElem = 2
x = 2

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 10
y = -11.5

[State 1100, Velocity]
type = VelAdd
trigger1 = time = 19
x = -7.48
persistent = 1

[State 1100, VelSet]
type = VelSet
trigger1 = time = 29
x = 0

[State 420, 4]
type = HitDef
trigger1 = animelem = 2
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = back
fall.animtype = back
priority = 3,Hit
damage = 30
fall = 1
pausetime = 8,8
guard.pausetime = 8,8
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 17
air.hittime = 12
guard.ctrltime = 11
ground.velocity = -3, -14.5
guard.velocity = -5
air.velocity = -3,-8.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 35, 35
yaccel = .5
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Air Hit]
type = HitDef
trigger1 = animelem = 4
attr = A, HA
damage = 30
priority = 4, hit
animtype = Hard
getpower = 0
givepower = 35, 35
guardflag = MA
hitflag = MAF
pausetime = 8,8
guard.pausetime = 12,12
guardSound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -50
hitsound = s201,1
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime  = 18
guard.hittime = 18
ground.velocity = -2.16, -13.81
air.velocity = -1.16, -7.81
guard.velocity = -8
airguard.velocity = -6, -4
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = .5
fall = 1
fall.recover = 0
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
sprPriority = 3
palFX.time = 12; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 3501
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 1200, End]
type = ChangeState
trigger1 = time = 35
value = 1501

;----------------------------------------------------------------
;Power Seal
[Statedef 3600]
type = S
movetype = A
physics = S
anim = 3600
juggle = 5
poweradd = -2000
sprpriority = 1
velset = 0
ctrl = 0

[State 250, 6]
type = playsnd
trigger1 = time = 0
value = s15,8
channel = 23
volume = 500

[State 3000, SuperPause FX]
type = Helper
trigger1 = time = 1
helperType = Normal
stateNo = 8510
ID = 8510
name = "Superpause FX"
posType = P1
pos = -8, -102
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 38
moveTime = 1
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8889,2
darken = 0

[State 2000, yagball]
type = projectile
trigger1 = animelem = 4
hitflag = SCA, HP
persistent = 1
ignorehitpause = 1
projanim = 3601
projid = 3601
offset = 75,-85
velocity = 9.5,0
attr = a, sp
damage = 227
animtype = diagup
getpower = 60
givepower = 40
hitflag = maf
guarDFlag = ma
pausetime = 10,-15
sparkno = -1 + 0 * (var(33) := 8012)
hitsound = s5,8
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -8, -9.8
airguard.velocity = -2.5 ,-5.5
air.velocity = -2.5, -5.5
air.juggle = 1
fall = 1
p2facing = 1
envshake.time = 5
envshake.ampl = 2
palfx.time = 1200
palfx.add = 60,60,60
palfx.sinadd = 40,40,40,3

[State 200, 3]
type = HitDef
trigger1 = animelem = 4
attr = S, HA
animtype = diagup
damage = 227,10
priority = 7, Hit
guardflag = MA
pausetime = 14,14
sparkno = S1040
guard.sparkno = S1042
sparkxy = -5,-67
hitsound = S280,0
guardsound = S200,3
ground.type = high
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.4,-6
air.velocity = -3.4,-3
airguard.velocity = -6.5,-1
getpower = 10,10
givepower = 10,10
air.fall = 1
fall = 1
fall.recover = 0
kill = 1
palfx.time = 1200
palfx.add = 60,60,60
palfx.sinadd = 40,40,40,3

[State 2000,yagball]
type = Helper
trigger1 = numhelper(3601) <= 0
trigger1 = movehit
trigger2 = numhelper(3601) <= 0
trigger2 = projhit3601 = 1
persistent = 1
ignorehitpause = 1
name = "no special"
id = 3601
stateno = 3601
pos = 0,0
postype = p1
helpertype = normal
keyctrl = 0
ownpal = 1

[State 280, 4]
type = ChangeState
trigger1 = time = 35
value = 0
ctrl = 1

;=================================================
;No special
[Statedef 3601]
type = S
movetype = A
physics = S
anim = 3602
sprpriority = 1
velset = 0
ctrl = 0

[State 240, 2]
type = varset
trigger1 = time = 0
var(56) = 1200

[State -3, timer]
type = varadd
trigger1 = var(56) > 0
var(56) = -1

; [State -3, timer]
; type = hitby
; trigger1 = var(56) >0
; value = SCA, NA,NP,NT

[State 200, 3]
type = HitDef
trigger1 = p2stateno >= 1000
trigger1 = p2stateno != [5000,5999]
; attr = S, HA
hitflag = MAFDP
numhits = 0
attr = SCA, HA
damage = 0,0
priority = 7, Hit
guardflag = N
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
ownpal = 1

[State 280, 4]
type = destroyself
trigger1 = time >1
trigger1 = var(56) <= 0

;------------------------------------------------------------------------------
; Phoenix Destruction
[statedef 3700]
type    = S
movetype= a
physics = n
velset = 0,0
anim = 3700
poweradd = -3000
ctrl = 0
sprpriority = 2

[State 3101, 2]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = noBarDisplay
ignorehitpause = 1

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8520
name = "Superpause FX"
posType = P1
pos = -4, -105
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 2
time = 38
moveTime = 1
p2DefMul = 1
unHittable = 1
anim = -1
sound = s240,3
darken = 0

[state 3100]
type = playsnd
trigger1 = animelem = 3
value = s15,9
channel= 23

[state 3100]
type = playsnd
trigger1 = animelem = 3
value = s5,11

[State 1106, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3304
ID = 3304
pos = -11,35
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 59
pausemovetime = 0
scale = 1.2, 1.5
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 40
freq = 80
ampl = 7
phase = 100
ignorehitpause = 1

[state 3101, hitdef]
type = hitdef
trigger1 = time = 0
attr = S, HP
guardflag = MA
damage = 115,100
priority = 7, Hit
pausetime = 0,5
sparkno = -1 + 0 * (var(33) := 8013)
hitsound = s5,8
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
sparkxy = -10,-5
animtype = DiagUp
air.animtype = back
fall.animtype = back
ground.type = Low      ;high,low,trip,none
ground.slidetime = 1
ground.hittime  = -1
air.hittime = -1
ground.velocity = .5,-14
guard.velocity = -5
air.velocity = 0,-16.2
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
sprPriority = 3
palFX.time = 24; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[state 3200]
type = changestate
trigger1 = movehit
value = 3701

[state 3200]
type = changestate
triggerall = !movehit
trigger1 = !animtime
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Phoenix Destruction (Begin)
[statedef 3701]
type    = U
movetype= I
physics = n
ctrl = 0
sprpriority = 2

[State 3101, 2]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = noBarDisplay
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3700 && !animtime
value = 3701
ignorehitpause = 1

[State 1500, Trans: Fade Out]
type = Trans
triggerall = anim = 3701
trigger1 = AnimElemTime(3) = [0, 10]
trans = AddAlpha
alpha = (256 -25 * (AnimElemTime(3))), (25 * (AnimElemTime(3)))

[State 1500, Tele]
type = PlaySnd
triggerall = anim = 3701
trigger1 = AnimElem = 3
value = s210, 1

[State 1500, Voice]
type = PlaySnd
triggerall = anim = 3701
trigger1 = AnimElem = 3
value = s195,4
channel = 23

[State 1500, FX]
type = Helper
triggerall = anim = 3701
trigger1 = AnimElem = 3
helpertype = Normal
stateno = 1305
ID = 1305
name = "Teleport FX"
postype = P1
ownpal = 1

[State 0, PosSet]
type = PosSet
triggerall = anim = 3701
trigger1 = animelem = 4
x = (P2BodyDist X) - 10
y = -200

[state 3200]
type = changestate
triggerall = anim = 3701
trigger1 = !animtime
value = 3702

;------------------------------------------------------------------------------
; Phoenix Destruction (Attacking)
[statedef 3702]
type    = A
movetype= A
physics = n
anim = 3702
ctrl = 0
juggle = 1
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = -1
persistent = 1

[State 3101, 2]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = noBarDisplay
ignorehitpause = 1

[State 1500, Tele]
type = PlaySnd
trigger1 = time = 0
value = s240, 4

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = 5.5
y = 13

[state 3101, hitdef]
type = hitdef
trigger1 = time % 1 = 0
attr = A, HA
guardflag = MA
damage = 35,22
priority = 7, Hit
pausetime = 4,4
sparkno = -1 + 0 * (var(33) := 8013)
hitsound = s201,1
guard.sparkno = -1 + 0 * (var(34) := 8000)
guardsound = s6,0
sparkxy = -10,-5
animtype = Hard
ground.type = Low      ;high,low,trip,none
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = -5.1,8
guard.velocity = -5
air.type = Low
air.hittime = 20
air.velocity = -6.1,10
fall = 1
ground.cornerpush.veloff = 0
sprPriority = 3
palFX.time = 24; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 3702
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
triggerall = pos Y >= 0
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1
persistent = 1

[State 0, PosSet]
type = PosSet
trigger1 = pos Y >= 0
y = 0
ignorehitpause = 1

[state 3200]
type = changestate
trigger1 = pos Y >= 0
value = 3703

;------------------------------------------------------------------------------
; Phoenix Destruction (Finish)
[statedef 3703]
type    = S
movetype= a
physics = n
velset = 0,0
anim = 3703
poweradd = 0
ctrl = 0
sprpriority = 2

[State 0, EnvColor]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 2
;under = 0
ignorehitpause =1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1
persistent = 1
ignorehitpause = 1

[State 3101, 2]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = noBarDisplay
ignorehitpause = 1

[state 3100]
type = playsnd
trigger1 = time = 0
value = s240,0

[State 1500, Voice]
type = PlaySnd
trigger1 = time = 0
value = s195,1
channel = 23

[State 1106, Explod]
type = Explod
trigger1 = time = 0
anim = 3704
ID = 3704
pos = 0,11
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 66
pausemovetime = 0
scale = .8,.8
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[state 3101, hitdef]
type = hitdef
trigger1 = time % 1 = 0
attr = S, HP
guardflag = MA
damage = 25,20
getpower = 0
priority = 7, Hit
pausetime = 2,2
sparkno = -1
hitsound = s201,1
guard.sparkno = -1
guardsound = s6,0
sparkxy = -10 + 0 * (var(35) := 155), -76;var(36) := -76
animtype = DiagUp
air.animtype = back
fall.animtype = back
ground.type = Low      ;high,low,trip,none
ground.slidetime = 1
ground.hittime  = -1
air.hittime = -1
ground.velocity = 1,-8
guard.velocity = -5
air.velocity = 1,-8.5
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
sprPriority = 3
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
palFX.time = 24; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1011, Hit Spark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P2
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -65
ownPal = 1
facing = -1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 3703
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[state 3200]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Meteor Shower
[statedef 3800]
type    = U
movetype= a
physics = n
juggle  = 36
velset = 0,0
anim = 3200
poweradd = -1000
ctrl = 0
sprpriority = 2

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 4, -105
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8889,0
darken = 0

[state 3200]
type = helper
trigger1 = animelem = 3
stateno = 3801
id = 3801
ownpal = 1
postype = back
pos = 0,0

[state 3100]
type = playsnd
trigger1 = animelem = 5
value = 3300,5
channel= 23

[state 3200]
type = changestate
trigger1 = time = 65
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Celestial Flame (Jean -> Dark Phoenix)
[statedef 3900]
type    = S
movetype= a
physics = n
velset = 0,0
anim = 3900
poweradd = -2000
ctrl = 0
sprpriority = 2

[State 3300, Explod Phoenix]
type = Explod
trigger1 = time = 0
anim = 3301
ID = 3301
pos = -30,0
postype = p1
bindtime = 1
removetime = 32
pausemovetime = 9999
supermovetime = 9999
scale = 2,2
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 7000, Shield]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 7001
ID = 7001
name = "Pulse"
postype = p1
pos = 0,-78
bindtime = 1
ownpal = 1
facing = 1
ignorehitpause = 1
persistent = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 20; * var(9)
add = 150,150,50
sinAdd= 100,100,100,25

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 20    ;fv = 10
value = 1

[State 1000, Trans]
type = PlaySnd
trigger1 = !Time
value = s240,1

[State 220, swoosh]
type = PlaySnd
trigger1 = !time
value = s5,9
volume = 255

[state 3200]
type = changestate
trigger1 = time = 15
value = 3901
ctrl = 0

;------------------------------------------------------------------------------
; Celestial Flame
[statedef 3901]
type    = S
movetype= a
physics = n
velset = 0,0
anim = 3901
poweradd = ifelse(prevstateno=3900,0,-2000)
ctrl = 0
sprpriority = 2

[State 3101, 2]
type = AssertSpecial
triggerall = time > 27
trigger1 = 1
flag = noFG
flag2 = noBG
ignorehitpause = 1

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8510
ID = 8510
name = "Superpause FX"
posType = P1
pos = -15, -102
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 2
time = 38
moveTime = 1
p2DefMul = 1
unHittable = 1
anim = -1
sound = s240,3
darken = 0

[state 3100]
type = playsnd
trigger1 = time = 1
value = s15,12
channel= 23

[state 3100, helper]
type = helper
trigger1 = animelem = 4
name = "beam"
id = 3902
stateno = 3902
pos = 0,-87
postype = p1
size.xScale = 1
size.yScale = 1
ownpal = 1

[state 3100]
type = playsnd
trigger1 = animelem = 4
value = s5,11

[State 0, EnvColor]
type = EnvColor
trigger1 = animelem = 4
value = 255,255,255
time = 3
;under = 0
ignorehitpause =1

[State 1106, Explod]
type = Explod
triggerall = time > 28 && time < 130
trigger1 = time % 20 = 0
anim = 3303
pos = 131,41
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 40
pausemovetime = 0
scale = 1, 1.3
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 4
time = 100
freq = 80
ampl = 7
phase = 100
ignorehitpause = 1

[state 3101, hitdef]
type = hitdef
triggerall = time > 26 && time < 128
trigger1 = time % 2 = 0
attr = S, HP
guardflag = MA
damage = 25,5
getpower = 0
priority = 7, Hit
pausetime = 0,0
sparkno = -1
hitsound = s201,1
guardsound = s6,0
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -78;var(36) := -76
animtype = Heavy
air.animtype = Heavy
fall.animtype = back
ground.type = Low      ;high,low,trip,none
air.type = Low
ground.slidetime = 1
ground.hittime  = -1
air.hittime = -1
ground.velocity = -2.3,-1
guard.velocity = -5
air.velocity = -2,-.5
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
sprPriority = 3
envShake.time = 14
envShake.ampl = 12
envShake.freq = 120
palFX.time = 24; * var(9)
palFX.add = 240,100,10
palFX.sinAdd= -110,-55,-5,48

[State 1200, Flames]
type = Helper
triggerall = movehit&&movecontact; &&numtarget
trigger1 = stateno = 3900
trigger2 = (target,movetype=H); && !(target,time)
helpertype = normal
stateno = 7500
;ID = 7500
name = "Flames"
postype = p2
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[state 3200]
type = changestate
trigger1 = time = 170
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; The Astral Plane Endsong
[statedef 4000]
type    = S
movetype= I
physics = n
velset = 0,0
anim = 3910
poweradd = -3000
ctrl = 0
sprpriority = 2

[State 3101, 2]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = noBarDisplay
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 2
helperType = Normal
stateNo = 8520
ID = 8520
name = "Superpause FX"
posType = P1
pos = -4, -105
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 2
time = 38
moveTime = 1
p2DefMul = 1
unHittable = 1
anim = -1
sound = s240,3
darken = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 3
movetype = A        ;A,C,S,N
;ignorehitpause = 1

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 3
time = 22; * var(9)
add = 150,50,150
sinAdd= 100,100,100,25

[State 0, EnvColor]
type = EnvColor
trigger1 = animelem = 3
value = 255,255,255
time = 3
;under = 0
ignorehitpause =1

[state 3100]
type = playsnd
trigger1 = animelem = 3
value = s11,2
channel= 23

[State 1010, HitDef]
type = HitDef
trigger1 = !time
attr = S,HP
hitFlag = MAF
guardFlag = M
priority = 6, Hit
damage = 0
getPower = 0, 0
givePower = -50, 0
pauseTime = 0,0
guard.pauseTime = 0,20
p2stateno = 40010
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
numhits = 2
ground.hitTime = 0
ground.slideTime = 0
guard.hitTime = 18
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
forceStand = 1
p2getp1state = 1
hitSound = s5,19
guardSound = s6,1
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), (var(36) := -97)
envShake.time = 14
envShake.ampl = 12
envShake.freq = 160
sprPriority = 3
kill = 0

[State 1200, Pulse]
type = Helper
trigger1 = animelem = 3
;trigger1 = time % 9 = 0
helpertype = normal
stateno = 1905
name = "Pulse"
postype = p1
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 0,-96
sprpriority = 9999
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[state 3200]
type = changestate
;trigger1 = (helper(4010),movehit)
trigger1 = movehit
value = 4001
ignorehitpause = 1

[state 3200]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; The Astral Plane Endsong (Begin)
[statedef 4001]
type    = S
movetype= a
physics = n
ctrl = 0
sprpriority = 2
hitcountpersist = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3910 && !animtime
value = 3912

[State 3101, 2]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = nomusic
ignorehitpause = 1

[state 3100]
type = playsnd
triggerall = anim = 3912
trigger1 = animelem = 1
value = s190,5
channel= 23

[state 3200]
type = changestate
triggerall = anim = 3912
trigger1 = !animtime
value = 4002

;---------------------------------------------------------------------------
; Astral Dizzy Opponent
[statedef 40010]
type    = S
movetype= H
physics = S
velset = 0,0
movehitpersist = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 5300
value = 5300
ignorehitpause = 1

[state 0, 4]
type = ChangeState
trigger1 = time = 170
value = 40020
ctrl = 0

;------------------------------------------------------------------------------
; The Astral Plane Endsong (Attacking)
[statedef 4002]
type    = S
movetype= a
physics = n
velset = 0,0
anim = 3913
ctrl = 0
sprpriority = 2
hitcountpersist = 1

[State 0, EnvColor]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3
;under = 0
ignorehitpause =1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = time % 8 = 0
value = 1

[State 3101, 2]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = noBG
flag3 = nomusic
ignorehitpause = 1

[state 3100]
type = playsnd
trigger1 = time = 15
trigger2 = time = 250
trigger3 = time = 425
value = s5,20

[state 3100]
type = playsnd
trigger1 = time = 1
value = s5,21

[state 3100]
type = playsnd
trigger1 = time % 75 = 0
value = s5,22
volume = -150

[State 1000, Projectile]
type = Helper
trigger1 = time = 5
helperType = Normal
stateNo = 40021
bindtime =
name = "Mind"
posType = P1
pos = -10,const(size.head.pos.y)
size.xScale = 1
size.yScale = 1
keyctrl = 0
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 3101, 14]
type = Explod
trigger1 = Time = 9
anim = 3914
ID = 3914
postype = Back
pos = 0,0
sprpriority = -49999999999
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
removeongethit = 1
under = 1

[State 3101, 14]
type = Explod
trigger1 = Time = 9
anim = 3914
ID = 3915
postype = Back
pos = 400,0
facing = -1
sprpriority = -499999999
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
removeongethit = 1
under = 1

[state 3100]
type = playsnd
trigger1 = time = 200
value = s11,3
channel= 23

[state 3100]
type = playsnd
trigger1 = time = 450
value = s11,4
channel= 23

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 899
id =3914

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 999
id =3915

[state 3200]
type = changestate
trigger1 = time = 1000
value = 0
ctrl = 1

;------------------------------------------------------
; Astral Plane (Mind Explod)
[StateDef 40021]
type = S
physics = N
moveType = I
ctrl = 0
velset = 0,0
anim = 3915
sprPriority = 999

[State 1010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 1200, Pulse]
type = Helper
trigger1 = time % 10 = 0
helpertype = normal
stateno = 1905
name = "Pulse"
postype = p1
bindtime = -1; 1000
ownpal = 1
facing = 1
pos = 0,0
sprpriority = 9999
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State 1010, ChangeState]
type = ChangeState
trigger1 = root,stateno != 4002
value = 1904
ignoreHitPause = 1


;---------------------------------------------------------------------------
; Astral Attacked Opponent
[statedef 40020]
type    = A
movetype= H
physics = N
velset = 0,-0.1
sprpriority = -4999999999

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = anim != 39130
value = 39130

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time < 65
y = -.01

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 70 && time < 120
y = .01

[State 0, VelSet]
type = VelSet
trigger1 = time >= 120
y = 0
persistent = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time > 139
value = -14
ignorehitpause = 1

[State 0, LifeAdd]
type = LifeAdd
triggerall = power <= 0
triggerall = time > 139
trigger1 = time % 3 = 0
value = -2
kill = 1
absolute = 1

[state 0, 4]
type = SelfState
trigger1 = time = 1120
value = 5050
ctrl = 1

