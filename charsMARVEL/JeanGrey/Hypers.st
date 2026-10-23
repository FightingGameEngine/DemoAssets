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
poweradd = -1000
ctrl = 0
sprpriority = 2

[state 3000, 1]
type = explod
trigger1 = animelem = 4
anim = 3001
pos = 0,0
postype = p1
removetime = 25
sprpriority = 3

[State 3000, MSH BG]
type = Helper
triggerall = !numhelper(8000)
trigger1 = animelem = 4
helpertype = Normal
name = "Hyper BG"
ID = 8000
stateno = 8000
pos = 0,0
postype = back
ownpal = 0
supermovetime = 99999
pausemovetime = 99999

[state 3000, superpause]
type = superpause
trigger1 = animelem = 3
time = 40
anim = s7000
sound = S8889,0
pos = -10,-80
poweradd = -1000

[state 3000]
type = playsnd
trigger1 = animelem = 4
value = 999,6

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
trigger1 = parent,var(38)>= 8
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
trigger1 = parent,var(38)>= 8
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

[state 3100, telekinetic]
type = explod
trigger1 = animelem = 4
id = 1001
anim = 1001
postype = p1
pos = 15,-102
bindtime = 1
removetime = 8
ownpal = 1
sprpriority = 3

[State 3100, MSH BG]
type = Helper
triggerall = !numhelper(8000)
trigger1 = animelem = 4
helpertype = Normal
name = "Hyper BG"
ID = 8000
stateno = 8000
pos = 0,0
postype = back
ownpal = 0
supermovetime = 99999
pausemovetime = 99999

[state 3100, helper]
type = helper
trigger1 = animelem = 4
name = "beam"
id = 3101
stateno = 3101
pos = 15,-102
postype = p1
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

[state 3100, superpause]
type = superpause
trigger1 = animelem = 3
time = 40
anim = s7000
sound = S8889,0
pos = -10,-80
poweradd = -1000

[state 3100]
type = playsnd
trigger1 = animelem = 3
value = 3100,0
channel= 3


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
trigger1 = TimeMod = 5,0
attr = S, SP
guardflag = MA
damage = 20,5
pausetime = 0,10
hitsound = S8000,2
guardsound = S8500,0
sparkno = 3
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

[State 3200, MSH BG]
type = Helper
triggerall = !numhelper(8000)
trigger1 = animelem = 3
helpertype = Normal
name = "Hyper BG"
ID = 8000
stateno = 8000
pos = 0,0
postype = back
ownpal = 0
supermovetime = 99999
pausemovetime = 99999

[state 3200, superpause]
type = superpause
trigger1 = animelem = 2
time = 40
anim = s7000
sound = S8889,0
pos = -10,-80
poweradd = -1000

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
animtype = Light
priority  = 5, hit
guarDFlag = ma
hitflag = mafd
pausetime = 7,7
sparkxy = 5,0
hitsound = S8000,1
guardsound = S8500,0
sparkno = 3
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

[state 3201]
type = Destroyself
trigger1 = movecontact
trigger2 = pos y > 150
trigger3 = time = 240

;---------------------------------------------------------------------------
; Phoenix Attack
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 3300
poweradd = 0
ctrl = 0
sprpriority = 2

[State 3200, MSH BG]
type = Helper
triggerall = !numhelper(8000)
trigger1 = animelem = 3
helpertype = Normal
name = "Hyper BG"
ID = 8000
stateno = 8000
pos = 0,0
postype = back
ownpal = 0
supermovetime = 99999
pausemovetime = 99999

[state 3200, superpause]
type = superpause
trigger1 = time = 20
time = 40
anim = s7000
sound = S8889,0
pos = 10,-100
poweradd = -1000
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
; super Face
[statedef 13100]
type = a
movetype = i
physics = n
velset = 0,0
sprpriority = 5
ctrl = 0

[state 13100, 1]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 13100, assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow
z
[state 13100, 2]
type = bindtoroot
trigger1 = 1
pos = 0, 0
facing = 1

[state 13100, sprpriority]
type = sprpriority
trigger1 = root, anim = 3100
trigger1 = root, time = 0
value = 0
