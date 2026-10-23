;---------------------------------------------------------------------------
;Guard Push
[Statedef 6300]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 6300
sprpriority = 2

[State 6300, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6300, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6300, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6300, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6300, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6300, a6]
type = Explod
trigger1 = Time = 0
anim = F7020
postype = p1
pos = 33,-80
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7
scale = .5,.5

[State 6300, a7]
type = PlaySnd
trigger1 = Time = 0
value = 4,0
volume = 255
channel = 1

[State 6300, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Guard Push (Helper)
[Statedef 6350]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 6350
sprpriority = -4

[State 6350, a1]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 6350, a2]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 6350, a3]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 6350, a4]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 6350, a5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6350, a6]
type = DestroySelf
trigger1 = Time >= 18

;---------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
[Statedef 8300]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 8,0
ctrl = 0
anim = 831
sprpriority = -1

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8300, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8301
ctrl = 1

[Statedef 8301]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Liedown Roll Backwards (Author MystikBlaze)
[Statedef 8305]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -8,0
ctrl = 0
anim = 832
sprpriority = -1

[State 8305, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8305, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8305, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302
ctrl = 1

[Statedef 8302]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Hit Overrides and Extra States
;---------------------------------------------------------------------------
[StateDef 9000]
type = S
movetype= H
physics = S


[State 9000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
