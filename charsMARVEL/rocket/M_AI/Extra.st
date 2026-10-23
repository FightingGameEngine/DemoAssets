;--------------------------------
;Foward Recovery Roll
[Statedef 890]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 8,0
ctrl = 0
anim = 4545
sprpriority = -1

[State 890, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 890, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 890, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 890, 4]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 890, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 32

[State 890, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 890, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
;Backward Recovery Roll
[Statedef 895]
type    = C
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = -8,0
ctrl = 0
anim = 4546
sprpriority = -1

[State 895, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 895, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 895, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 895, 4]
type = MakeDust
trigger1 = Time >= 0
pos = 16,0
spacing = 6

[State 895, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 32

[State 895, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 895, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0



;--------------------------------------------------------------------------------------------
; Ground Guard Push 
[Statedef 464]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 5,0
ctrl = 0
anim = 464
sprpriority = 2
facep2 = 1

[State 464, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 464, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 464, VelSet]
type = VelSet
trigger1 = P2bodydist X = [-10,70]
trigger1 = enemynear,backedgedist <= 20
x = -10

[State 464, Width]
type = Width
trigger1 = 1
value = 10,0

[State 464, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 20


[State 464, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 30

[State 464, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 3,0

[State 464, Shield ]
type = Explod
trigger1 = Time = 0
anim = 467
postype = p1
pos = 53,-40
ownpal = 1
vel = 0,0
ignorehitpause = 1
sprpriority = 5
trans = add

[State 464, Sheild Effect]
type = null;Helper
trigger1 = Time = 0
helpertype = Normal
name = "Sheild Effect"
postype = P1
pos = 60,-55
stateno = 465
ownpal = 1
size.height = 0
size.ground.back = 0
size.ground.front = 0
anim = 889
sprpriority = 4

[State 464, Guard Push Helper]
type = Helper
trigger1 = AnimElem = 2;Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 466
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 464, ChangeState]
type = ChangeState
triggerall= AnimTime = 0
triggerall = var(59) = 1
trigger1 = P2StateType != C && P2movetype = A && inguarddist
value = 130
ctrl = 1

[State 464, ChangeState]
type = ChangeState
triggerall= AnimTime = 0
triggerall = var(59) = 1
trigger1 = P2StateType = C && P2movetype = A && inguarddist
value = 131
ctrl = 1


[State 4640, ChangeState]
type = ChangeState
trigger1= AnimTime = 0
value = 0
ctrl = 1


[Statedef 465]
type    = A;S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 889
sprpriority = -4

[state 19319, Parent Bind]
type = bindtoparent
trigger1 = 1
pos = 60,-55

[State 465, Angle Draw]
Type = AngleDraw
value = 90
trigger1 = 1
scale = .75,.75

[State 465, SprPriority]
Type = SprPriority
trigger1 = 1
value = 4


[State 465, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 465, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0


;---------------------------------------------------------------------------
; Helper for Ground Guard Push

[Statedef 466]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = Parent,Anim
sprpriority = -4


[State 466, PlayerPush]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 466, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 466, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 466, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 466, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 466, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 10

[State 466, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18




;---------------------------------------------------------------------------
; Air Guard Push,

[Statedef 484]
type    = A
movetype= I
physics = N
poweradd= 0
velset = 0,0;-15,0;10,0
ctrl = 0
anim = 474
sprpriority = 2
facep2 = 1


[State 484, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 484, VelSet]
type = null;VelSet
trigger1 = Time = 10
x = 0

[State 484, Width]
type = Width
trigger1 = 1
value = 10,0

[State 484, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 23


[State 484, PosAdd]
type = null;PosAdd
trigger1 = animelem = 2
x = 30

[State 484, PlaySnd ]
type = PlaySnd
trigger1 = Time = 0
value = 3,0

[State 464, Shield ]
type = Explod
trigger1 = Time = 0
anim = 467
postype = p1
pos = 53,-40
ownpal = 1
vel = 0,0
ignorehitpause = 1
sprpriority = 5
trans = add

[State 484, Guard Push Helper]
type = Helper
trigger1 = AnimElem = 2;Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0;-50,50
stateno = 476
ownpal = 1
size.height = 250;200
size.ground.back = 30
size.ground.front = 30

[State 484, If didnt Work, Mid]
type = VelSet
triggerall = time = [9,22]
triggerall = !enemynear,ishelper
trigger1 = P2bodydist X = [-20,60]
x = -40
;trigger1=(helper(30000+(facing=-1)*10),pos x-pos x)<100
;trigger2=(helper(30000+(facing=-1)*10),pos x-pos x)>100


[State 484, If didnt Work, Edege]
type = VelSet
triggerall = backedgedist <= 50 ;< 100
triggerall = time = [9,22]
triggerall = !enemynear,ishelper
trigger1 = P2bodydist X = [-20,40]
x = 30
;trigger1=(helper(30000+(facing=-1)*10),pos x-pos x)>=100
;trigger2=(helper(30000+(facing=-1)*10),pos x-pos x)<=100

[State 484, If didnt Work, Edege]
type = VelSet
triggerall = backedgedist <= 50 ;< 100
triggerall = time = [9,22]
triggerall = !enemynear,ishelper
trigger1 = P2bodydist X = [41,60]
x = 60
;trigger1=(helper(30000+(facing=-1)*10),pos x-pos x)>=100
;trigger2=(helper(30000+(facing=-1)*10),pos x-pos x)<=100


[State 484, If didnt Work]
type = Playerpush
trigger1 = time = [3,22]
trigger1 = !enemynear,ishelper
trigger1 = P2bodydist X = [-20,60]
value = 0

[State 484, If didnt Work]
type = VelSet
trigger1 = animtime = 0
x = 0

[State 40, If didnt Work]
type = Turn
trigger1 = P2bodydist X < -60
trigger1 = animtime = 0
Persistent = 0


[State 484, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948

;---------------------------------------------------------------------------
; Helper for Air Guard Push

[Statedef 476]
type    = A
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = Parent,Anim
sprpriority = -4


[State 476, PlayerPush]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 476, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 476, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 476, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 476, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 476, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 10

[State 476, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18