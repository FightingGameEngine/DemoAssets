;---------------------------------------------------------------------------
; Specials
;---------------------------------------------------------------------------
;Laser Beam
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,3


[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "Laser Beam"
ID = 1001
stateno = 1001
pos = 65,-69
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0




[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1001]
type = A
movetype = A
physics = N
anim = 1001
velset = 0,0
sprpriority = 99

[State 1001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 26
value = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1


[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 22


[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
damage = 24,2
guardflag = MA
pausetime = 2,6
hitsound = S23,0
guardsound = S8500,0
sparkno = 3
sparkxy = -1
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 6
envshake.ampl = 3


[State 0, Explod]
type = Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1000
;ignorehitpause =
;persistent =


;---------------------------------------------------------------------------
;Laer Beam
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1010
sprpriority = 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,3

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "Laser Beam"
ID = 1011
stateno = 1011
pos = 0,-84
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 1010, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1011]
type = A
movetype = A
physics = N
anim = 1011
velset = 0,0
sprpriority = 99

[State 1001, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 26
value = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1010, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 22


[State 220, HitDef]
type = HitDef
trigger1 = timemod= 8,1
attr = S, SP
damage = 24,2
guardflag = MA
pausetime = 2,6
hitsound = S23,0
guardsound = S8500,0
sparkno = 3
sparkxy = -1
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -9,0
guard.velocity = -5
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 6
envshake.ampl = 3


[State 0, Explod]
type = Explod
triggerall = numexplod(9995)=0
trigger1 = movehit
anim = 9995
ID = 9995
pos = 0,-90
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1010
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------
;jump Air slam
;---------------------------------------------------------------------------
[Statedef 1100]
type    = S
physics = S
anim = 1100
sprpriority = 1
ctrl = 0


[State 1100]
type = explod
trigger1 = time = 6
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = 67, 0
anim = 4014
removetime = 165









[State 1100, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 24





[State 0,3 ]
type = ScreenBound
trigger1 = time = [0,23]
value = 0






[State 1100, 2]
type = VelSet
trigger1 = Time >= 11
x = .1
y = -7

[State 1100, 3]
type = VelSet
trigger1 = Time >= 4
x = 0
y = -35



[State 1100, 3]
type = ChangeState
trigger1 = Time >= 23
value = 1101

;-----------------------------------------------------------------------------------------------------------------
; Air smash continue
;-----------------------------------------------------------------------------------------------------------------
[Statedef 1101]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 9999  ;Blank
poweradd = 50



[State 1100, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 25


[State 1101, Anim]
type = ChangeAnim
trigger1 = 1
postype = P2
value = 1102

[State 1101, 1]
type = posSet
triggerall = facing = 1
triggerall = Command != "holdback"
trigger1 = Time = 0
x = 0
y = -150

[State 1101, 1]
type = posSet
triggerall = facing != 1
triggerall = Command != "holdfwd"
trigger1 = Time = 0
x = 0
y = -150

[State 1101, 2]
type = posSet
triggerall = facing = 1
triggerall = Command = "holdback"
trigger1 = Time = 0
x = -120
y = -150

[State 1101, 2]
type = posSet
triggerall = facing != 1
triggerall = Command = "holdfwd"
trigger1 = Time = 0
x = -120
y = -150


[State 1101, 3]
type = posSet
triggerall = facing = 1
triggerall = Command = "holdfwd"
trigger1 = Time = 0
x = 120
y = -150

[State 1101, 3]
type = posSet
triggerall = facing != 1
triggerall = Command = "holdback"
trigger1 = Time = 0
x = 120
y = -150

[State 1101, 4]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 27


[State 1102, envshake]
type = EnvShake
trigger1 = Movehit
freq = 50
ampl = 2
time = 20
persistent = 1
ignorehitpause = 1

;[State 1102 , 1]
;type = HitDef
;trigger1 = AnimElem = 1
;trigger2 = AnimElem = 2
;persistent = 0
;attr = C, NA
;damage    = 90
;hitflag = MAFD
;guardflag = L
;pausetime = 12,12
;sparkno = S2
;guard.sparkno = s4
;sparkxy = -5,-10
;hitsound = S2,2
;guardsound = S3,0
;ground.type = Low
;ground.slidetime = 20
;ground.hittime  = 20
;ground.velocity = -13,-6
;air.velocity = -13,-4
;guard.velocity = -5
;fall = 1
;p2stateno = 11312


;[State 1102, Change to Fall]
;type = ChangeState
;trigger1 = MoveHit || MoveGuarded
;value = 1103






[State 1102, Change to Fall]
type = ChangeState
trigger1 = MoveHit || MoveGuarded
value = 1104

[state 1102, sliding end]
type = ChangeState
trigger1 = (Time >= 45) || (Pos Y >= 0)
value = 1104

;---------------------------------------------------------------------------
; Air smash end
;---------------------------------------------------------------------------
[Statedef 1103]
type    = S
physics = S
anim = 1103
sprpriority = 1
ctrl = 0

[State 1103, 1]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 1100, 1]
type = VelSet
trigger1 = Time >= 6
x = -3
y = -1

[State 1100, 2]
type = VelSet
trigger1 = Time >= 17
x = -2
y = 4





[state 1100, sliding end] ;slide
type = ChangeState
trigger1 = (Time >= 50) || (Pos Y >= 0)
value = 1104
;---------------------------------------------------------------------------
;slide end
;---------------------------------------------------------------------------
[Statedef 1104]
type    = S
movetype= A
physics = S
anim = 1104
sprpriority = 1
ctrl = 0





[State 1100, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 26



[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 102,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1,12
sparkno = 3
sparkxy = -30,-79
guard.sparkno = 3
hitsound = s27,0
guardsound = S8000,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0






[State 210]
type = explod
trigger1 = time = 4
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = 67, 0
anim = 4015
scale = 1.00,1.00
removetime = 165


[State 210]
type = explod
trigger1 = time = 4
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = 67, 0
anim = 4016
scale = 1.00,1.00
removetime = 165



[State 210]
type = explod
trigger1 = time = 4
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = 67, 0
anim = 4017
scale = 1.00,1.00
removetime = 165






;[State 1104, dust];;dust
;type = Explod
;trigger1 = Time = 1
;anim = ;------------------------------------use any dust effect here if you want
;pos = 0,3
;sprpriority = -1
;supermovetime = 999
;pausemovetime = 999
;scale = .7,.7
;ownpal = 1

[State 1104, 1]
type = VelSet
trigger1 = 1
y = 0

[State 1104, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1104, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------
    ;p2 state
 ;;=--------------------------
 ;---------------------------------------------------------
;
[Statedef 11310]
type    = A
movetype= H
physics = N
velset = 0,0

[State 225, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 1105

[State 225, 2]
type = ChangeState
trigger1 = Time = 9
value = 11312

;---------------------------------------------------------
; Hit by Fierce - Flying
[Statedef 11312]
type    = A
movetype= H
physics = N

[State 226, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 226, 2]
type = VelAdd
trigger1 = 1
y = .45

[State 226, 3]
type = Null;Explod
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
anim = 9999
persistent = 0
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 226, 4]
type = ChangeState
trigger1 = (Vel y > 0) && (Pos y >= 25)
trigger1 = alive
value = 11313

[State 226, 5]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
trigger1 = alive = 0
value = 5100

;---------------------------------------------------------
; Hit by Fierce - Recover
[Statedef 11313]
type    = A
movetype= I
physics = N
anim = 5200

[State 227, 1]
type = VelSet
trigger1 = Time = 0
y = -4

[State 227, 2]
type = VelSet
trigger1 = Time = 0
trigger1 = vel x > 0
x = 3

[State 227, 2]
type = VelSet
trigger1 = Time = 0
trigger1 = vel x < 0
x = -3

[State 227, 4]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 227, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 227, 6]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 52
ctrl = 1

;-------------------------------------------------------------------------------
;Supersonic Impact
[StateDef 1200]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
poweradd = 55
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 28


[State 0, VarSet]
type = VarSet
triggerall = time = 0
trigger1 = command = "Supersonic Impact"
trigger2 = var(59)
v = 41
value = 10


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1200 + var(41)




[State 100, 1]
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


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 25 + var(41)/3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 3 + var(41)/6

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0






[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,1
animtype = back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,12
sparkno = 3
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s29,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 69,11
animtype = back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,12
sparkno = 3
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s29,0
guardsound = S14,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
; Smashing Stomp
[Statedef 1300]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1300
ctrl = 0
sprpriority = 5



[State 1300, 1]
type = PlaySnd
trigger1 = Time = 2
value = 57

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal ;player
name = "effect"
stateno = 1301
pos = 0,30
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0



[State 1300, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30


[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 3
time = 20
freq = 180
ampl = -4
phase = 90



[State 1100, next]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1



; Helper Effect far
[Statedef 1301]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 6009
ctrl = 0
sprpriority = 3


[State 1300, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 31







[State 2005, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 60+((NumHelper(3302)||NumHelper(3304)) * 60),5
animtype = back
hitflag = MAF
guardflag = M
priority = 5, Hit
pausetime = 2,8
sparkno = s8222
sparkxy = -15,-79
guard.sparkno = 3;s8001
hitsound = S32,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -5, -7
air.type = Low
air.hittime = 25
air.velocity = -5, -7
fall=1

[state 1010, Explod]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = NumEnemy
trigger1 = MoveGuarded
anim = 8001
id = 8001
pos = 0+(15 * EnemyNear, StateType = A)+(15 * EnemyNear, StateType = C),-35;EnemyNear, Const(size.head.pos.y)+10+(25 * EnemyNear, StateType = A)+(20 * EnemyNear, StateType = C)
postype = p2
sprpriority = 1
bindtime = 1
scale = 0.5,0.5
removetime = 14
ownpal = 1
ignorehitpause = 1
persistent = 0


[State 2110, b1] ;explod
type = Explod
trigger1 = Time = 7
anim = 6010
postype = p1
pos = -10, 0
sprpriority = -3
removetime = -2
persistent = 0
scale = 4.60,4.60





[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0



















