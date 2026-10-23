;-------------------------------------------------------------------------------
; Dash Forward
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
ctrl = 1





[State 100, 1]
type = VelSet
trigger1 = Time > 5
x = const(velocity.run.fwd.x)

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 10, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = -10, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999

; Dash Run Forward velocity blue lines
[State 100, a7]
type = Explod
trigger1 = Time %7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,0,14),ifelse(random<500,-60,-50)
accel = ifelse(random<500,-1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5


[State 100, 4]
type = PlaySnd
trigger1 = StateNo = 100
trigger1 = animelem = 2
value = 28,0

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(102)
trigger1 = StateNo = 100
trigger1 = animelem = 2
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = Time = 0
trigger1 = command = "holdback"
value = 105

[State 100, 4]
type = ChangeState
trigger1 = time > 10 && command != "holdfwd"
value = 101

[State 100, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 101
;----------------------------
[Statedef 101]
type    = S
physics = S
anim = 101
sprpriority = 1
ctrl = 0

[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 4]
type = VelMul
trigger1 = 1
x = 0.2

[State 100, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Dash Backward
[Statedef 105]
type    = S
physics = S
anim = 105
sprpriority = 1
ctrl = 1

[State 105, 1]
type = VelSet
trigger1 = Time > 5
x = const(velocity.run.back.x)


; Dash Run Backward velocity blue lines
[State 105, a7]
type = Explod
trigger1 = Time % 7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,15,20),ifelse(random<500,-60,-50)
accel = ifelse(random<500,.09,.05),0
random = 8,60
removeongethit = 1
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -10, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99
facing=-1

[State 105, 4]
type = PlaySnd
trigger1 = StateNo = 105
trigger1 = animelem = 2
value = 28,0

[State 105, propulsor]
type = Explod
triggerall = !NumExplod(104)
trigger1 = StateNo = 105
trigger1 = animelem = 2
anim = 104
id = 104
name = "propulsor"
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 4
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 105, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 105, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 105, 4]
type = ChangeState
trigger1 = Time = 0
trigger1 = command = "holdfwd"
value = 100

[State 105, 4]
type = ChangeState
trigger1 = time > 10 && command != "holdback"
value = 106

[State 105, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 106

;--------------------------
[Statedef 106]
type    = S
physics = S
anim = 106
sprpriority = 1
ctrl = 0

[State 106, d]
type = removeexplod
trigger1 = !time
id = 104

[State 106, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.back.x)

[State 106, 4]
type = VelMul
trigger1 = 1
x = 0.2

[State 106, 4]
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
