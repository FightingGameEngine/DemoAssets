;---------------------------------------------------------------------------
; Flight Mode / Statedef's : 2000 - 2999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; FLIGHT
;---------------------------------------------------------------------------
[StateDef 2000]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2000
sprpriority = 2

[State 2000, 1]
type = VelSet
trigger1 = time <10
x = 0
y = -6

[State 2000, End]
type = ChangeState
trigger1 = time = 10
value = 2001
ctrl = 0

[StateDef 2001]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
anim = 2000
ctrl = 0
poweradd = 0
sprpriority = 2

[State 2001, 1]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2000
value = 2000

[State 2001, 2]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = vel Y > 0
trigger1 = Anim != 2000
value = 2000

[State 2001, 3]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2002
value = 2002

[State 2001, 4]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y > 0
trigger1 = Anim != 2002
value = 2002

[State 2001, 5]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2001
value = 2001

[State 2001, 6]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y > 0
trigger1 = Anim != 2001
value = 2001

[State 2001, 7]
type = Turn
trigger1 = p2dist X < 0
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"

[State 2001, 8]
type = VelSet
trigger1 =  command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 2001, 9]
type = VelSet
trigger1 =  command != "holdfwd"
trigger1 =  command != "holdback"
x = 0

[State 2001, 10]
type = VelSet
trigger1 =  command = "holdback"
x = -const(velocity.walk.fwd.x)

[State 2001, 11]
type = VelSet
trigger1 =  command = "holddown"
trigger1 = pos y < 0
y = const(velocity.walk.fwd.x)

[State 2001, 12]
type = VelSet
trigger1 = command != "holddown"
trigger1 = command != "holdup"
trigger2 = pos y >=0
y = 0

[State 2001, 13]
type = VelSet
trigger1 = !(screenpos y < -80)
trigger1 =  command = "holdup"
y = -const(velocity.walk.fwd.x)

[State 2001, 14]
type = VelSet
trigger1 = !(screenpos y >= -80)
trigger1 =  command = "holdup"
y = 0

[State 2001,15]
type = Changestate
trigger1 = time = 200
trigger2 = Win = 1
trigger3 = Lose = 1
value = 50
ctrl = 1

[State 2001, End]
type = ChangeState
trigger1 = !alive
trigger2 = P2Life = 0
value =  50

;END
;---------------------------------------------------------------------------
