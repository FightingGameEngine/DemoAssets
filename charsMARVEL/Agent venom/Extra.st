;-------------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
;-------------------------------------------------------------------------------
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
;-------------------------------------------------------------------------------
;Liedown Roll Forward Continue (Author MystikBlaze)
;-------------------------------------------------------------------------------
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
;-------------------------------------------------------------------------------
; Liedown Roll Backwards (Author MystikBlaze)
;-------------------------------------------------------------------------------
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
;-------------------------------------------------------------------------------
; Liedown Roll Backwards Continue (Author MystikBlaze)
;-------------------------------------------------------------------------------
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
;-------------------------------------------------------------------------------
;Hyper Background
;-------------------------------------------------------------------------------
[Statedef 9600]
type = S
movetype = I
physics = N
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2= NoFg
flag3= NoBarDisplay
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7710
ID = 7005
pos = 160,120
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 0
pausemovetime = 0
sprpriority = -30
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = root,NumHelper(8400)=1
id = 7005

[State 0, ChangeState]
type = DestroySelf
trigger1 = root,NumHelper(8400)=1

[State 0, Listras2]
type = Explod
trigger1 = 1
anim = 8604
ID = 8603
pos = -20,120
postype = back
vel = 8,0
accel = 2,0
random = 0,200
removetime = -2
scale = 1,0.10
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = -3

[State 0, ChangeState]
type = ChangeState
trigger1 = root, MoveType = H || root,Stateno <3000
value =  9601
ctrl = 0

;-------------------------------------------------------------------------------
;Hyper Background End
;-------------------------------------------------------------------------------
[Statedef 9601]
type = S
movetype = I
physics = N
anim = 9999

[State 0, PalFXWiz]
type = AllPalFX
triggerAll = root,NumHelper(8400)=0
trigger1 = !time
time = 20
add = 255,255,255
mul = 256,256,256
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S9600,0

[state 8010]
type = modifyexplod
trigger1 = 1
id = 7005
scale = 1.0,1.0+time/-15.0


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 15
