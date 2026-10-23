;===============================================================================
;Horsemen of Apocalypse Hyper
;===============================================================================

;Hyper Begin
[Statedef 3500]
type    = S
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
hitcountpersist = 1
anim = 3511

; Laugh
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 12711,20
channel = 5

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 80
;anim =-1;s3012
pos = 5,-135
sound = S8889,0
volume = 20
poweradd = -1000
movetime = 0

;;;;;;;;hypa port bg

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3510
ctrl = 0

;===============================================================================
;Eyebeam Attack
[StateDef 3510]
type = S
movetype = A
physics = S
anim = 3512
ctrl = 0
velset = 0,0
sprpriority = -2

[State 0, Explod]
type = Explod
trigger1 =  animelem = 1
anim = 3502
ID = 3502
pos = 30,-125 ;5,-90
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 2
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,21

[State 0, beam]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "beam"
ID = 3511
pos = 30,-125 ;9,-86
postype = p1
stateno = 3511
bindtime=-1
ownpal = 1
ontop = 1
sprpriority = 2

[State 0, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 3515
ctrl = 1

;--------
; Strong Beam
[StateDef 3511]
type = A
movetype = A
physics = C
anim = 3501 ;1002
ctrl = 0

[State 0, ontop]
type = SprPriority
trigger1 = 1
value = 22

;[State 0, PosSet]
;type = PosSet
;trigger1 = 1
;x = parent, Pos X + (10 * parent, facing)
;y = parent, Pos Y - 105

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1
volume = 20

[State 0, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MAF
animtype = Hard
air.animtype = Medium
fall.animtype = Medium
damage = 135,5
pausetime = 3,12
hitsound = S9,2
guardsound = 6,0
sparkno = 0
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -1,-8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 20
palfx.add = 100, 100, 100
palfx.invertall = 1
palfx.sinadd = 30, 30, 0, 44
palfx.color = 0
fall = 1
p2facing=1
P2Stateno = 3512

[State 0, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, stateno != 3510

;===============================================================================
;Opponent Dizzy State
[Statedef 3512]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 48
x = 0
y = 0

[State 0, End The Dizzy]
type = SelfState
trigger1 = Time = 80
ctrl = 1
value = 5070

;Opponent Hit State 1
[Statedef 3513]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, Turn]
type = Turn
trigger1 = animelem = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 15 
value = 3512
ctrl = 0


;Opponent Hit State 2
[Statedef 3514]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5012; 5070

;[State 0, Turn]
;type = Turn
;trigger1 = animelem = 1

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 1
y = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0 ;48
x = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 10 
value = 3516
ctrl = 0

[Statedef 3516]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5110

[State 0, Turn]
type = Turn
trigger1 = animelem = 1

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0

[State 0, End]
type = SelfState
trigger1 = Time = 200
ctrl = 1
value = 5120 ;5070

[Statedef 3517]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5110

;[State 0, Turn]
;type = Turn
;trigger1 = animelem = 1

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0

[State 0, End]
type = SelfState
trigger1 = Time = 100
ctrl = 1
value = 5120 ;5070

;===============================================================================
;"The Decider" whether hyper continues?
[statedef 3515]
type = C
movetype = I
physics = S
anim = 0
velset = 0,0
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 10 && P2StateNo = 3512
value = 3520
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 10 && P2StateNo != 3512
value = 0
ctrl = 1

;===============================================================================
;Horsemen of Apocalypse Attack!
[Statedef 3520]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0
;poweradd = -2000                 ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 9999                        ;Change animation (Def: no change)
sprpriority = -2                 ;Set layering priority to 2 (in front)
hitcountpersist = 1

;Apocalypse Disappear
[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3519 ;21
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
;vel = -10,0
accel = 0,0
random = 0,0
removetime = 100
supermove
pausemove
sprpriority = 2

; Teleport
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 7
value = 11500,0


[State 0, PosSet]
type = PosSet
trigger1 = time = 1
x = 0
y = 0

;Angel Appear
[State 0, Explod]
type = Explod
trigger1 = time = 195
anim = 3500
pos = -100,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 125
supermove
pausemove
sprpriority = -2

; Angel speak
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 185
value = 197,1

; Fly
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 320
value = 197,2

;Angel Dive
[State 0, Projectile]
type = Projectile
trigger1 = time = 320
projanim = 3504
projhitanim = 3504
pos = p1
offset = -80, -65
velocity = 8, 6
projremovetime = 20
attr = S, SP
damage = 50,4
sparkno = 1
sparkxy = 60, -40
hitsound = 5,1
animtype = Heavy
guardflag = MA
pausetime = 10,0
ground.type = Heavy
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0, 0
sprpriority = 2
p2stateno = 3517

; Hit
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 332
value = 197,0

;Angel Leave
[State 0, Explod]
type = Explod
trigger1 = time = 336
anim = 3510
pos = 12,8
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 8, 6
removetime = 15
supermove
pausemove
sprpriority = 3

; Call for help
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 15
value = 12711,6
channel = 5

;Archangel
[State 1410, 2]
type = Helper
ID =3546
helpertype = normal
pos = 250, -190
facing = 1
postype = p1
stateno = 3546
trigger1 = time = 125
value = 3549

;Polaris
[State 1410, 2]
type = Helper
ID = 3547
helpertype = normal
pos = -150,-150
facing = 1
postype = p1
stateno = 3547
trigger1 = time = 20
value = 3547

;Sunfire
[State 1410, 2]
type = Helper
ID = 3548
helpertype = normal
pos = -200,-100
facing = -1
postype = p1
stateno = 3548
trigger1 = time = 20
value = 3546

;Deathbird
[State 1410, 2]
type = Helper
ID =3549
helpertype = normal
pos = 200, -50
postype = p1
stateno = 3549
trigger1 = time = 2 ;110
value = 3549

;Deathbird
[State 1410, 2]
type = Helper
ID =3549
helpertype = normal
FACING = -1
pos = -200, -40
postype = p1
stateno = 3549
trigger1 = time = 105 ;45
value = 3549

;Deathbird
[State 1410, 2]
type = Helper
ID =3549
helpertype = normal
pos = 200, -50
postype = p1
stateno = 3549
trigger1 = time = 235 ;110
value = 3549

;Sunfire Appear
[State 0, Explod]
type = Explod
trigger1 = time = 115 ;15
anim = 3515
pos = 100,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 65 ;65
supermove
pausemove
sprpriority = -2

;Sunfire Shoot
[State 0, Explod]
type = Explod
trigger1 = time = 180 ;80
anim = 3516
pos = 100,-20
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 125 ;300 ;110
supermove
pausemove
sprpriority = -2

;Fireball 
[State 0, Projectile]
type = Projectile
trigger1 = time = 210 ;80
projanim = 3518
projhitanim = 1002 ;3518
pos = p1
offset = 50,-120 ;100,-70
velocity = -4,0;8, 6
projremovetime = 400 ;20
attr = A, HP
damage = 100,4 ;50,4
sparkno = 1
sparkxy = 0, 0
hitsound = 5,1
animtype = Heavy
guardflag = MA
pausetime = 10,0
ground.type = Heavy
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0, 0
sprpriority = 2
palfx.time = 40
palfx.add = 72,-19,-204
palfx.mul = 338,389,256
palfx.sinadd = 261,200,10,5
palfx.invertall = 1
palfx.color = 15
p2stateno = 3513

;Fireball Leave
[State 0, Explod]
type = Explod
trigger1 = time = 215
anim = 3518
pos = 20,-120
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
vel = -4,2
removetime = 5
sprpriority = 3

;Sunfire Leave
[State 0, Explod]
type = Explod
trigger1 = time = 305 ;115
anim = 3517
pos = 150,-20
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
vel = 8, 6
removetime = 60 ;15
supermove
pausemove
sprpriority = 3

;Apocalypse appear
[State 0, Explod]
type = Explod
trigger1 = time = 370
anim = 3520 ;21
pos = -30,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
;vel = -10,0
accel = 0,0
random = 0,0
removetime = 30
supermove
pausemove
sprpriority = 2

; Teleport
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 400
value = 11500,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 400 ;150
v = 0
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 400 ;235
value = 0
ctrl = 1


;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;Archangel = Death
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
[Statedef 3546]
type = S
movetype= A
physics = S
juggle  = 3
anim = 3522
sprpriority = -60 ;5

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = -9
y = 0

[State 240, 2]
type = HitDef
trigger1 = Animelem >=2
attr = A,HA
damage    = 15,1
hitflag = HMAF
guardflag = HA
pausetime = 6,6
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
getpower = 0,0
givepower = 0,0
hitsound   = S8000,2
;hitsound   = S19,0
guardsound = S19,2
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 1
fall.recover = 0
air.fall.recover = -1
p2stateno = 3514

;[State 610, 4]
;type = PlaySnd
;trigger1 = movehit
;triggerall = time = 20
;value = 14, 2
;volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100

;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;Polaris= PESTILENCE
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
[Statedef 3547]
type = S
movetype= A
physics = S
juggle  = 3
anim = 3513 ;30005
sprpriority = -5

[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = 0.5
y = .75

[State 100, 5]
type = velset
trigger1 = Time = [100,200]
x = 2.25
y = .35

[State 100, 5]
type = velset
trigger1 = Time = [200,350]
x = 2.75
y = .15

[State 240, 2]
type = HitDef
trigger1 = timemod= 26,1;!movehit
trigger1 = !moveguarded
attr = A, NA
damage    = 15,2
hitflag = HMAF
guardflag = HA
pausetime = 2,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
hitsound   = S8000,2
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-1
guard.velocity = -3
air.velocity = -0.25,-1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
;;air.fall = 1
fall.recover = 0
;air.fall.recover = -1
p2stateno = 3513 ;3570 ;new!

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 20
value = 14, 10
volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 350

;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;Sunfire
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
[Statedef 3548]
type = S
movetype= A
physics = S
juggle  = 3
anim = 3521 ;30004
sprpriority = -60 ;5

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = -9
y = 0

[State 240, 2]
type = HitDef
trigger1 = Animelem >=1
attr = A,HA
damage    = 15,1
hitflag = HMAF
guardflag = HA
pausetime = 6,6
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
getpower = 0,0
givepower = 0,0
hitsound   = S8000,2
;hitsound   = S19,0
guardsound = S19,2
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 1
fall.recover = 0
air.fall.recover = -1
p2stateno = 3514

;[State 610, 4]
;type = PlaySnd
;trigger1 = movehit
;triggerall = time = 20
;value = 14, 2
;volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100

;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;Deathbird= WAR
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
[Statedef 3549]
type = S
movetype= A
physics = S
juggle  = 3
anim = 3514 ;30004
sprpriority = -60 ;5

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = -7
y = 0

[State 240, 2]
type = HitDef
trigger1 = Animelem >=2
attr = A,HA
damage    = 15,1
hitflag = HMAF
guardflag = HA
pausetime = 6,6
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
getpower = 0,0
givepower = 0,0
hitsound   = S8000,2
;hitsound   = S19,0
guardsound = S19,2
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 1
fall.recover = 0
air.fall.recover = -1
p2stateno = 3514

;[State 610, 4]
;type = PlaySnd
;trigger1 = movehit
;triggerall = time = 20
;value = 14, 2
;volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100


;===============================================================================
;End of Horsemen Hyper
;===============================================================================
