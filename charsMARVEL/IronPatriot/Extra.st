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



;----------------------------
;Hyper Background
[Statedef 9744]
physics = N
anim = 9800



[State 9744, superbg]
type = Explod
trigger1 = Time = 0
anim = 10010
ID = 10010
pos = -60,-5
postype = back
bindtime = 999
removetime = -1
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 1.1,1.1
ignorehitpause = 0


[State 9744]
type = RemoveExplod
triggerall = Numexplod(10010)
trigger1 = Root, stateno != [3000,3999]
trigger2 = p2life = 0
trigger3 = Root,MoveType = H


[State 9744]
type = Destroyself
triggerall = Numexplod(10010)= 0
;triggerall = Time > 7
trigger1 = Root, stateno != [3000,3999]
trigger2 = Root,MoveType = H


;---------------------------------------------------------------------------
;---{Super Jump}---
[Statedef 700]
type = A
movetype = I
physics = N
anim = 40
velset = 0,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = Time = 0
v = 0
value = 0

[State 0, ]
type = VarSet
trigger1 = command = "holdfwd"
v = 0
value = 1

[State 0, ]
type = VarSet
trigger1 = command = "holdback"
v = 0
value = -1

[State 0, ]
type = explod
trigger1 = time = 1
anim = F61
postype = p1
pos = 0,0
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = VelSet
trigger1 = animtime = 0
x = ifelse(var(0)=0, const(velocity.jump.neu.x), ifelse(var(0)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 701
ctrl = 1

[Statedef 701]
type    = A
physics = A
ctrl = 1
anim = 41
;velset = 0, -15

[State 0, ]
type = explod
trigger1 = time = 0
anim = F700
postype = p1
pos = 0,0 ;const(size.head.pos.y)-40
vel = 0,1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = VarRandom
trigger1 = time >= 0
v = 50
range = -2, 2

[State 0, ]
type = explod
trigger1 = vel y <= -0.5 && numexplod(701) <= 5 && timemod = 3,1
anim = F701
id = 701
postype = p1
pos = const(size.mid.pos.x),const(size.mid.pos.y)-20
random = 20+const(size.air.back)+const(size.air.front),15
vel = var(50),1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 0, ]
type = VelAdd
triggerall = Vel X >= -2
trigger1 = command = "holdback"
x = -0.1

[State 0, ]
type = VelAdd
triggerall = Vel X <= 2.5
trigger1 = command = "holdfwd"
x = 0.25

[State 0, ]
type = VelSet
trigger1 = Anim = 42
trigger1 = Time = [0,5]
x = 4

[State 0, ]
type = VelSet
trigger1 = Anim = 43
trigger1 = Time = [0,5]
x = -3.5

[State 0, ]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 0, ]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 7711]
type = turn
trigger1 = p2dist x < -5

