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
