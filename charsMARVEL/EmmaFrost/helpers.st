;Emmas
[statedef 20003]
type = S
physics = N
ctrl = 0
movetype = I
anim = 203
sprpriority = 4

[State 0, Trans]
type = Trans
trigger1 = Animelem = 3, >20
trans = addalpha
alpha = ceil(256-time*5.3), ceil(0+time*5.3)

[State 2003, DestroySelf]
type = DestroySelf
trigger1 =  time = 280
