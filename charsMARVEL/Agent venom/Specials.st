;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------

;arma
[Statedef 1000]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 11100,sound]
type = Playsnd
trigger1 = AnimElem = 3
value = 1300,0

[State 11100,sound]
type = Playsnd
trigger1 = AnimElem = 4
value = 1300,2
channel = 1

[State 8010, 0]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "bala"
postype = p1
ontop = 1
pos = 90,-91
sprpriority = 4
ignorehitpause = 1
stateno = 9000
id = 9000

[State 8010, 0]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "bala"
postype = p1
ontop = 1
pos = 90,-88
sprpriority = 4
ignorehitpause = 1
stateno = 9000
id = 9000

[State 11100, fuego]
type = Explod
trigger1 = AnimElem = 4
anim = 1012
pos = 0,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 11100, fuego]
type = Explod
trigger1 = AnimElem = 4
anim = 1012
pos = -10,3
sprpriority = 5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 8010, 1]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "p_bala"
postype = p1
ontop = 1
pos = 20,-100
sprpriority = 4
ignorehitpause = 1
stateno = 1301
id = 1301

[State 8010, 1]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "p_bala"
postype = p1
ontop = 1
pos = 10,-98
sprpriority = 4
ignorehitpause = 1
stateno = 1301
id = 1301

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------
;bala
[Statedef 9000]
type    = S
movetype = A
physics = N
velset = 10
anim = 1001
sprpriority = 4
velset = 0, 0

[State 3850, a1]
type = Veladd
trigger1 = time = 1
x = 14

[State 3850, a1]
type = VelSet
trigger1 = time = 30
x = 0

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 9111,5

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,30]
flag = Noshadow

[State 1001, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage   = 20,10
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound = s8000,2
guardsound = S8500,0
sparkno = S8200
guard.sparkno = S8100
sparkxy = 5,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4
fall = 0
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0

[State 1002,end]
type = DestroySelf
trigger1 = frontedgedist< -105 || backedgedist < -120
trigger2 = Movecontact

;--------------------------------------------------------------
;p.bala
[Statedef 1301]
type = S
anim = 1013
sprpriority = -1
velset = 0, 0

[State 3850, a1]
type = Veladd
trigger1 = time = 1
x = -4
y = -2

[State 3850, a1]
type = VelSet
trigger1 = time = 4
x = -2
y = 3

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 1023,0

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,25]
flag = Noshadow

[State 3020,4]
type = destroyself
trigger1 = (Time >= 10) || (Pos Y >= 0)

;---------------------------------------------------------------------------

;misil
[Statedef 1001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7005
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =4
value = 9111,10

[State 11100, fuego]
type = Explod
trigger1 = AnimElem = 4
anim = 1012
pos = -28,15
sprpriority = 3
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
size.xscale = 1.2
size.yscale = 1.2

[State 1001, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "misil"
ID = 9001
stateno = 9001
pos = -20,-27
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = 1
size.yscale = 1
spriority = 5

[State 1000, End]
type = ChangeState
trigger1 = time = 50
value = 0
ctrl = 1
;--------------------------------------------------------------
;misil
[Statedef 9001]
type    = S
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7000

[State 1006]
type = Veladd
trigger1 = time = 1
x = 14

[State 1006]
type = VelSet
trigger1 = time = 30
x = 0

[State 1006, 3]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = floor(100 + (root,var(41))/(1+(root,Var(19)/5.0))), 37
guardflag = MA
pausetime = 2,2
hitsound = S8200,0
guardsound = S8500,0
sparkno = S8200
guard.sparkno = S8100				;Spark anim no (Def: set above)
sparkxy = -15,-50
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -5
air.type = High
air.velocity = -4, -2
air.hittime = 25
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 80
pos = -15,-50
postype = p2
sprpriority = 7
bindtime = 1

[State 1006, 7]
type = DestroySelf
trigger1 = Movehit = 1
trigger2 = Movecontact
value = 0
ctrl = 1

;-----------------------------------------------------------------
;cabezas
[StateDef 1004]
type = S
movetype = A
physics = N
anim = 2400
ctrl = 0
velset = 0,0
poweradd = 60
sprpriority = -2

[State 1004, 2]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
trigger7 = AnimElem = 12
trigger8 = AnimElem = 13
attr = S, SP
animtype = heavy
damage    = 24,7
guardflag = MA
pausetime = 0,3
sparkno = S8200
sparkxy = -55,-75
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -4
air.velocity = -2, 0
sprpriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 8
trigger3 = animelem = 10
value = 8400, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 12
value = 8400, 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8

[State 1005, changestate]
type = changestate
trigger1 = time = 35
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;  Flying Punch start
;---------------------------------------------------------------------------
;mordida
[Statedef 1006]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 2401
sprpriority = 1

[State 1006,3]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 80 , 5
animtype = med
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 10
guard.sparkno = s8001
sparkno = S8200
sparkxy = -30, -76
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 13
ground.velocity = -9
guard.velocity = -9
airguard.velocity = -5,-1
air.type = High
air.velocity = -4.3,-4.4
air.hittime = 13
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 0

[State 1020,0]
type = PlaySnd
trigger1 = animelem = 3
value = 9111,6

[State 12, End]
type = ChangeState
trigger1 = Time = 43
value = 0
ctrl = 1
;---------------------------------------------------------------------------------------------------------------
;chuzos
[Statedef 1500]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 7805

[State 000, snd]
type = playsnd
trigger1 = time = 0
value = 9111,11

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 24
value = 0
[State 0, VarSet]
type = VarSet
trigger1 = time >= 6
v = 24
value = 1
[State 0, VarSet]
type = VarSet
trigger1 = time >= 12
v = 24
value = 0

[State 205,2]
type = playsnd
trigger1 = animelem = 1
value = 9111,11

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "7819"
ID = 7819
stateno = 7819
pos = 0,0
postype = p2    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 1200, Projectile]
type = null;Projectile
trigger1 = animelem = 5
air.juggle = 5
ProjID = 7805
projanim = 7003
projhitanim = -1
projremanim = -1
projcancelanim = -1
attr = S, SP
damage   = 40,4
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup"
air.animtype = hard			;2p ANIM
ground.type = low
guardflag = M
hitflag = MAF
sparkno = S8200
guard.sparkno = S8100
sparkxy = 0,-10
pausetime = 0,6
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-10.2
air.animtype = Back
air.velocity = -2,-10.2
yaccel = 0.55
guard.velocity = -8
guard.ctrltime = 15
fall=0
air.fall = 1
fall.recover = 0
projremove = 0
projremovetime = 46
projhits = 2
projmisstime = 0
projpriority = 1
projsprpriority = 4
offset = 10,0
postype = p2
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
;
envshake.time = 5
envshake.freq = 110
envshake.ampl = 6
;
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 6	;strong weak
;
getpower = 0
GivePower = ifelse ( var(20) > 0,40, 40)

[State 1215,ChangeState]
type = ChangeState
trigger1 = time = 65
value = 0
ctrl = 1

;------------------------------------------------------------------------
[Statedef 7819]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 7819
juggle = 0
poweradd = 0
[State 0, PosSet]
type = PosSet
trigger1 = time=1
y = 0
[State 0, Turn]
type = Turn
trigger1 = time=0
;ignorehitpause =
persistent = 0
[State 0, Turn]
type = posadd
trigger1 = time=0
x = -40

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time= 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1200, Projectile]
type = Projectile
velocity = 2,0
trigger1 = time=1
air.juggle = 5
ProjID = 7805
projanim = 7003
projhitanim = -1
projremanim = -1
projcancelanim = -1
attr = S, SP
damage   = 40,4
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup"
air.animtype = hard			;2p ANIM
ground.type = low
guardflag = M
hitflag = MAF
sparkno = S8200
guard.sparkno = S8100
sparkxy = 0,-10
pausetime = 0,6
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-10.3
air.animtype = Back
air.velocity = -2,-10.3
yaccel = 0.55
guard.velocity = -8
guard.ctrltime = 15
fall=0
air.fall = 1
fall.recover = 0
projremove = 0
projremovetime = 46
projhits = 2
projmisstime = 0
projpriority = 1
projsprpriority = 4
offset = 0,0
postype = p1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
;
envshake.time = 5
envshake.freq = 110
envshake.ampl = 6
;
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 6	;strong weak
;
getpower = 0
GivePower = ifelse ( var(20) > 0,40, 40)

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause =  1
;persistent =
;---------------------------------------------------------------------------
;capullo
[Statedef 2401]
type = S
movetype = A
physics = S
anim = 1500
ctrl = 0
velset = 0,0
poweradd = -500
sprpriority = 2
facep2 = 1

[State 1300, Swing Snd]
type = PlaySnd
trigger1 = Animelem = 3
value = 9111,11

[State 1300, Web Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 1312
ID = 1312
name = "Web"
posType = P1
pos = 70,-85
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1
size.xscale = .8
size.yscale = .8

[State 1300, End]
type = ChangeState
trigger1 = time = 39
value = 0
ctrl = 1
;------------------------------------------------------------------------------------------------------------
;Web Helper
[Statedef 1312]
type = A
movetype = A
physics = N
ctrl = 0
Velset = 0,0
Anim = 7702
sprpriority = 2

[State 1312, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1313
ignoreHitPause = 1

[State 1312, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1312, VelSet]
type = VelSet
trigger1 = Anim != 1312
x = 8

[State 1312, Hit]
type = HitDef
trigger1 = !Time
attr = A, SA
damage = 0,0
guardflag = M
hitflag = MAF
getpower = 10, 0
givepower = 30, 30
priority = 4, Hit
pausetime = 0, 0
guard.pausetime = 0, 10
sparkno = S8220
guard.sparkno = S8100
;sparkXY = -10 + 0 * (var(35) := 80), var(36):=-85
hitsound = s8000,2
guardsound = S8500,0
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
;ground.slidetime = 12 + 2 * var(9)
ground.hittime  = 120
;guard.hittime = 12
;ground.velocity = -4
;guard.velocity = -4
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
;air.velocity = -2.6,-7
;air.hittime = 120
yaccel = .58
fall = 0
fall.recover = 1
fall.recoverTime = 120
p2stateno = 1313

[State 1312, ChangeState]
type = ChangeState
trigger1 = movehit
value = 1314
ignorehitpause = 1

[State 1312, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 1312, Web Destroy]
type = Changestate
trigger1 = Time > 35
trigger2 = Anim = 1312 && animelem = 5
trigger3 = Time = 25 || Moveguarded=1
Value = 1314
ignorehitpause = 1
---------------------------------------------------------
;Web Helper - Enemy state
[Statedef 1313]
type = S
movetype = H
physics = N
ctrl = 0
facep2 = 1
anim = 5000
Velset = 0,0
sprpriority = 3

[State 1313, LifeAdd]
type = LifeAdd
trigger1 = Time < 35
value = -2
kill = 1
absolute = 0

[State 1313, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1313, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [4,31]
flag = invisible
ignorehitpause = 1

[State 1313, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

[State 1313, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 31
value = 5007

[State 1313, End]
type = SelfState
trigger1 = Time = 45-(!alive * 14)
value = 0
ctrl = 1

;Cocoon Helper
[Statedef 1314]
type = S
movetype = I
physics = N
anim = 7705
Velset = 0,0
sprpriority = 5

[State 1314, PosAdd]
type = PosAdd
trigger1 = !time
x = P2dist x

[State 1314, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 9
value = S190,3
channel = -1

[State 1314, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1314, DestroySelf]
type = DestroySelf
trigger1 = !Animtime

;---------------------------------------------------------------------------------------------------------------
;TripleHit
[StateDef 7703]
type = A
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 7703
poweradd = 20
sprpriority = 2

[State 7703]
type = PlaySnd
trigger1 = time = 0
value = 5,0

[State 3075,AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 30
length = 10
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 100,100,220
palpostbright = 0, 0, 0
paladd = 10,10,45
palmul = .65,.65,.85
timegap = 1
framegap = 2
trans = add1

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8400,2

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10 && random <= 500
value = S5,1

[State 2201, 7]
type = StateTypeSet
trigger1 = animelemtime(5) >= 0
statetype = A
physics = A

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 4
x = 6

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 5
x = 0
y = -2

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 6
x = 0
y = -4

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 8
x = 0
y = -4

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 11
x = 0
y = -4

[State 1050, VelAdd]
type = VelAdd
trigger1 = animelem = 14
x = 0
y = -4

[State 1120, 1]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
attr = S, SA
damage = floor(45 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 3,3
sparkno = S8200
guard.sparkno = S8100
hitsound = s8000,2
sparkxy = 20,-85
guardsound = S8500,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 2
ground.velocity = -3,-7.2
guard.velocity = -5
air.velocity = -3,-7.2
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
fall = 1
fall.recover = 0

[State 1120, 1]
type = HitDef
trigger1 = AnimElem >= 13
attr = S, SA
damage = floor(60 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 6,6
sparkno = S8200
guard.sparkno = S8100
hitsound = s8000,2
sparkxy = 20,-85
guardsound = S8500,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 2
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -3,-5
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
fall = 1
fall.recover = 0

[State 1120, end]
type = ChangeState
trigger1 = Time = 64
value = 77031
ctrl = 1

;---------------------------------------------------------------------------
; Falling from air attack
[Statedef 77031]
type    = A
movetype= I
physics = A
anim = 70
ctrl = 0
sprpriority = 1

[State 1501, Turn]
type = Turn
trigger1 = Var(3) = 1 && P2Dist X < -5

[State 1501, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdback"
x = -1

[State 1501, 1]
type = VelSet
trigger1 = var(3) = 1 && command = "holdfwd"
x = 1

[State 1501, VelSet]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 1501, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52
