;===============================================================================
;Excalibur!
;===============================================================================
;Hyper Begin
[Statedef 3500]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,0
volume = 10

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1000

[State 0, Explod] ;calling friends
type = Explod
trigger1 = time = 0
anim = 3500
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = -1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S12,5
volume = 255

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = time = 1 ;AnimElem = 2
time = 105
sound = S10,1
pos = 8,-45
darken = 1
poweradd = -1000

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 1
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
trigger1 = time = 1
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
trigger1 = time = 1
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
trigger1 = animelem = 3
value = 3510
ctrl = 0

;===============================================================================
;===============================================================================
;Teleport Attack
[statedef 3510]
type = A
movetype = A
physics = S
anim = 3516
poweradd = 20
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 9,2

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 2000, TeleportFacing1]
type = Posset
trigger1 = time = 1
Triggerall = Facing = 1
x = 10
y = -10

[State 0, TeleportFacing-1]
type = Posset
trigger1 = time = 1
Triggerall = Facing = -1
x = 10
y = -10

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = S9,1
ignorehitpause = 1

[State 0, ]
type = Gravity
trigger1 = time >= 12
ignorehitpause = 0

[State 0, ]
type = VelSet
trigger1 = time = [12,22]
x = 10

[State 0, ]
type = VelSet
trigger1 = time = [12,17]
y = -2

[State 0, ]
type = EnvColor
trigger1 = Time >= 0 && movecontact
value = 255,255,255
time = 1
under = 0
ignorehitpause = 1
persistent = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, HitDef]
type = Hitdef
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag = MA
getpower = 0,0
givepower = 10,2
animtype = diagup
air.animtype = hard
fall.animtype = Back
priority = 7,Hit   ;Hit,Miss,Dodge
damage = 0,0
guard.pause 10,10
sparkno = 1
guard.sparkno = 41
sparkxy = 10,-40
hitsound   = 5,2
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 20
guard.slide = 5
ground.hit = 20
air.hittime = 20
ground.velocity = 0,-3
guard.velocity = -10
air.velocity = -1,-2
airguard.velocity = -8,-2
sprpriority = 1
fall = 1
air.fall = 1
P2Stateno = 3530

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && time > 12
value = 3515
ctrl = 0

;===============================================================================
;"The Decider"
[statedef 3515]
type = C
movetype = I
physics = S
anim = 1120
velset = 10,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 50 && P2StateNo = 3530
value = 3520
ctrl = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 50 && P2StateNo != 3530
value = 12
ctrl = 1

;===============================================================================
;READY OR NOT!
[Statedef 3520]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0
poweradd = -3000                 ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1023                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 9,2

;Bamf! effect
[State 0, Helper]
type = Helper
trigger1 = time = 3
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S12,3
volume = 255

[State 0, TeleportFacing1]
type = Posadd
trigger1 = time = 15
x = -300
y = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 16
time = 1
pos = 100,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 6
value = 1000

;Rachael Summers
[State 0, Explod]
type = Explod
trigger1 = time = 55
anim = 3506
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = -2

;Phoenix Fireballs
[State 0, Projectile]
type = Projectile
trigger1 = time = 80
trigger2 = time = 90
trigger3 = time = 100
trigger4 = time = 110
projanim = 3507
projhitanim = 3508
offset = -20, -140
velocity = 6, 4
projremovetime = 150
attr = S, SP
damage = 50,4
sparkno = -1
sparkxy = 0, 35
hitsound = S13,0
animtype = Medium
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
sprpriority = 2
ontop = 1

;Captain Britain Appear
[State 0, Explod]
type = Explod
trigger1 = time = 25
anim = 3502
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2

;Captain Britain ChangeAnim
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 45
value = 3501

[State 0, VelSet]
type = VelSet
trigger1 = time = 45
x = 1
y = 0
ignorehitpause = 0

;Captain Britain Force Field
[State 0, Explod]
type = Explod
trigger1 = time = 46
anim = 3503
pos = 20,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 140
scale = 1,1
sprpriority = 5
ontop = 0

;Kitty Pryde Appear
[State 0, Explod]
type = Explod
trigger1 = time = 15
anim = 3509
pos = -5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop=1

;Kitty Pryde Attack
[State 0, Projectile]
type = Projectile
trigger1 = time = 71
projanim = 3510
projhitanim = 3511
offset = -5,0
velocity = 9, 0
projremovetime = 150
attr = S, SP
damage = 50,4
sparkno = 1
hitsound = 5,1
animtype = Medium
guardflag = MA
pausetime = 2,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
sprpriority = 1
ontop = 1

[State 0, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 150
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 25, 6                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 6, 9                 ;Time attacker pauses, time opponent shakes
sparkno = 2                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
hitsound = 5,1 + ((Random * 2) / 1000)  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 12            ;Time that the opponent slides back
ground.hittime  = 50             ;Time opponent is in hit state
ground.velocity = -5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-1.5         ;X-velocity at which opponent is pushed,
air.hittime = 50                 ;Time before opponent regains control in air
kill = 0
givepower = 10, 5
ground.cornerpush = 0
envshake.time = 5
envshake.ampl = 6

;Ground Errupt
[State 0, Projectile]
type = Projectile
trigger1 = time = 95
projanim = 3514
projhitanim = 3515
offset = (time-5), 0
facing = -1
attr = S, SP
damage = 20,4
sparkno = 1
hitsound = 5,2
animtype = Light
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

;Ground Errupt 2
[State 0, Projectile]
type = Projectile
trigger1 = time = 95
projanim = 3512
projhitanim = 3513
offset = (time-5), 0
velocity = 0, 0
attr = S, SP
damage = 20,4
sparkno = 1
hitsound = 5,1
animtype = Light
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

;Meggan
[State 0, Explod]
type = Explod
trigger1 = time = 55
anim = 3504
pos = -15,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0

;Birds
[State 0, Explod]
type = Explod
trigger1 = (time%8 = 0) && (Animelemtime(1) > 4) && (Animelemtime(1) < 15)
anim = 3505
pos = -200,50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 5,-4
accel = 0,0
random = 120,0
removetime = 100
supermove
pausemove
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
supermovetime = -1

[State 0, PosSet]
type = PosSet
trigger1 = time = 150 && !InGuardDist-50
x = InGuardDist-50
y = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 150
v = 0
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 151
value = 3540
ctrl = 1

;===============================================================================
;Opponent Dizzy State
[Statedef 3530]
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

[State 0, End The Dizzy]
type = SelfState
trigger1 = Time = 200
ctrl = 1
value = 5070


;===============================================================================
;Bamf! Return
[Statedef 3540]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S9,2

[State 0, Helper]
type = Helper
trigger1 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, TeleportFacing1]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = -100

[State 0, TeleportFacing-1]
type = Posadd
trigger1 = time = 25
triggerall = facing = -1
x = 200
y = -100

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, keepAnimBlank]
type = Changeanim
trigger1 = time = 25
value = 9801

[State 0, ctrlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;End of Excalibur Hyper
;===============================================================================
