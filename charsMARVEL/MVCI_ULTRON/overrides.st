; States file for Ultron -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
triggerall = var(8)!= 0
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
triggerall = var(8)!= 0
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 1]
type = VelSet
triggerall = var(8)= 0
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x) - 0.25

[State 20, 2]
type = VelSet
triggerall = var(8)= 0
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)+ 0.25

[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 5, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999

[State 20]
type = playsnd
trigger1 = animelem = 3
trigger2 = animelem = 8
value= 8,1

[State 20]
type = envshake
triggerall = var(8)= 0
trigger1 = animelem = 3
trigger2 = animelem = 8
time = 10
ampl = -2

[State 20, 3]
type = ChangeAnim
triggerall = var(8)= 0
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = var(8)= 0
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21
;------------

[State 20, 3]
type = ChangeAnim
triggerall = var(8)!= 0
triggerall = vel x > 0
trigger1 = Anim != 77020 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 77020

[State 20, 4]
type = ChangeAnim
triggerall = var(8)!= 0
triggerall = vel x < 0
trigger1 = Anim != 77021 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 77021

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, ResetSuperJumpVar]
type = VarSet
trigger1 = 1
v = 3
value = 0

[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 101, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 20]
type = envshake
triggerall = var(8)= 0
trigger1 = time = 1
time = 10
ampl = -6

[State 20]
type = envshake
triggerall = var(8)!= 0
trigger1 = time = 1
time = 10
ampl = -2

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 52, 5]
type = PlaySnd
trigger1 = time = 0
value = 8,1
;---------------------------------------------------------------------------
; Dash Forward
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1
ctrl = 1

[State 100, 1]
type = VelSet
triggerall = var(8)= 0
trigger1 = Time > 5
x = const(velocity.run.fwd.x)

[State 450, sts]
type=statetypeset
triggerall = var(8)!= 0
trigger1=Time = 0
statetype=A
physics=A

[State 100, 1]
type = VelSet
triggerall = var(8)!= 0
trigger1 = Time = 0
x = const(velocity.run.fwd.x)+ 1.75
y = const(velocity.run.back.y)-4

[State 100, 4]
type = PlaySnd
trigger1 = StateNo = 100
trigger1 = animelem = 2
value = 30,1

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = StateNo = 100
trigger1 = animelem = 2
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = -8,25
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor2]
type = Explod
triggerall =!NumExplod(2102)
trigger1 = StateNo = 100
trigger1 = animelem = 2
anim = 102
id = 2102
name = "propulsor2"
postype = P1
pos = -64,15
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

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

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -20, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,3
channel = 0

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
;------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
[Statedef 101]
type    = S
physics = S
anim = 101
sprpriority = 1
ctrl = 0

[State 450, sts]
type=statetypeset
triggerall = var(8)!= 0
trigger1=Time = 0
statetype=A
physics=A
movetype= I

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 660

[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 101, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 20]
type = envshake
triggerall = var(8)=0
trigger1 = time = 1
time = 10
ampl = -2

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
triggerall = var(8)=0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 660, Turn]
type = Turn
triggerall = var(8)!=0
trigger1 = Var(3) = 1 && P2Dist X < -5

[State 660, 1]
type = VelSet
triggerall = var(8)!=0
trigger1 = var(3) = 1 && command = "holdback"
x = -2.5

[State 660, 1]
type = VelSet
triggerall = var(8)!=0
trigger1 = var(3) = 1 && command = "holdfwd"
x = 2.5

[State 660, VelSet]
type = VelSet
triggerall = var(8)!=0
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 660, ChangeState]
type = ChangeState
triggerall = var(8)!=0
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52


;------------------------------------------------------------------------------
; Dash Alt
;------------------------------------------------------------------------------
[Statedef 102]
type    = S
physics = S
anim = 100
sprpriority = 1
ctrl = 0

[State 100, 1]
type = VelSet
triggerall = var(8)= 0
trigger1 = Time > 5
x = const(velocity.run.fwd.x)

[State 450, sts]
type=statetypeset
triggerall = var(8)!= 0
trigger1=Time = 0
statetype=A
physics=A

[State 100, 1]
type = VelSet
triggerall = var(8)!= 0
trigger1 = Time = 0
x = const(velocity.run.fwd.x)+ 1.75
y = const(velocity.run.back.y)-4


[State 100, 4]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = animelem = 2
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = -8,25
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor2]
type = Explod
triggerall =!NumExplod(2102)
trigger1 = animelem = 2
anim = 102
id = 2102
name = "propulsor2"
postype = P1
pos = -64,15
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

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

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -20, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,3
channel = 0


[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 106, 4]
type = CtrlSet
trigger1 = p2bodydist X < 30
value = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)=0
triggerall = var(28) = [0,1]
trigger1 = p2bodydist X < 10
value = 210

[State 8, 0]
type = ChangeState
triggerall = var(8)=0
triggerall = var(28) = [2,3]
trigger1 = p2bodydist X < 10
value = 230

[State 8, 0]
type = ChangeState
triggerall = var(8)!=0
triggerall = var(28) = [0,1]
trigger1 = p2bodydist X < 10
value = 600

[State 8, 0]
triggerall = var(8)!=0
type = ChangeState
triggerall = var(28) = [2,3]
trigger1 = p2bodydist X < 10
value = 1400

[State 100, 4]
type = ChangeState
trigger1 = Time = 40
value = 101

;--------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Dash Backward
[Statedef 105]
type    = S
physics = S
anim = 105
sprpriority = 1
ctrl = 1

[State 831, c]
type = removeexplod
trigger1 = !time
id = 102

[State 751, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 105, 1]
type = VelSet
triggerall = var(8)= 0
trigger1 = Time > 5
x = const(velocity.run.back.x)

[State 105, 1]
type = VelSet
triggerall = var(8)!= 0
trigger1 = Time > 5
x = const(velocity.run.back.x)-1.75


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


[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = -30, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99
facing=-1

; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,3
channel = 0
[State 105, 4]
type = PlaySnd
trigger1 = StateNo = 105
trigger1 = animelem = 2
value = 30,1

[State 105, propulsor]
type = Explod
triggerall =!NumExplod(107)
trigger1 = animelem = 2
anim = 107
id = 107
name = "propulsor"
postype = P1
pos = -18,-66
ownpal = 1
sprpriority = 4
facing = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 105, propulsor2]
type = Explod
triggerall =!NumExplod(2107)
trigger1 = animelem = 2
anim = 107
id = 2107
name = "propulsor2"
postype = P1
pos = -40,-64
ownpal = 1
sprpriority = 6
facing = 1
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

[State 106, c]
type = removeexplod
trigger1 = !time
id = 107

[State 106, d]
type = removeexplod
trigger1 = !time
id = 2107

[State 20]
type = envshake
triggerall = var(8)=0
trigger1 = time = 1
time = 10
ampl = -2


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

;---------------------------------------------------------------------------
; Jump Start
;---------------------------------------------------------------------------
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State -2, c]
type = removeexplod
trigger1 = !time
id = 102

[State -2, d]
type = removeexplod
trigger1 = !time
id = 2102

[State -2, e]
type = removeexplod
trigger1 = !time
id = 107

[State -2, f]
type = removeexplod
trigger1 = !time
id = 2107

[State 40, Turn]
type = Turn
trigger1 = P2Dist X < -10


[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, 0, ifelse(sysvar(1)=1, 4, -4))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)


[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1
;---------------------------------------------------------------------------
 ;---------------------------------------------------------------------------
 ;Dash Forward (Air)
 [Statedef 107]
 type    = A
 physics = A
 anim = 109
 sprpriority = 1
 ctrl = 1

[State 107, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)+2
y = -1.5


[State 100, propulsor]
type = Explod
triggerall =!NumExplod(110)
trigger1 = animelem =2
anim = 110
id = 110
name = "propulsor"
postype = P1
pos = 0,68
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 30

[State 100, propulsor2]
type = Explod
triggerall =!NumExplod(2110)
trigger1 = animelem = 2
anim = 110
id = 2110
name = "propulsor2"
postype = P1
pos = -45,72
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime =30


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


[State 107, 4]
type = PlaySnd
trigger1 = StateNo = 107
trigger1 = animelem = 2
value = 30,1

[State 107, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 107, 4]
type = ChangeState
trigger1 = Time = 0
trigger1 = command = "holdback"
value = 660

[State 107, 4]
type = ChangeState
trigger1 = Time = 35
value = 660
ctrl = 0

;--------------------------------------------------------------------------
;Dash Backward (Air)
[Statedef 108]
type    = A
physics = A
anim = 111
sprpriority = 1
ctrl = 1

[State 108, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.back.x)
y = 0

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(110)
trigger1 = animelem =2
anim = 110
id = 110
name = "propulsor"
postype = P1
pos = 20,55
ownpal = 1
sprpriority = -6
facing = -1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 30

[State 100, propulsor2]
type = Explod
triggerall =!NumExplod(2110)
trigger1 = animelem = 2
anim = 110
id = 2110
name = "propulsor2"
postype = P1
pos = 30,82
ownpal = 1
sprpriority = -6
facing = -1
supermove = 1
removeongethit = 1
bindtime = -1
removetime =30


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


[State 108, 4]
type = PlaySnd
trigger1 = StateNo = 108
trigger1 = animelem = 2
value = 30,1

[State 108, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 108, 4]
type = ChangeState
trigger1 = Time = 0
trigger1 = command = "holdfwd"
value = 660

[State 107, 4]
type = ChangeState
trigger1 = Time = 35
value = 660
ctrl = 0

;---------------------------------------------------------------------------
; Jump Up (and Super Jump too)
[Statedef 50]
type    = A
physics = A

[State -2, c]
type = removeexplod
trigger1 = !time
id = 102

[State -2, d]
type = removeexplod
trigger1 = !time
id = 2102

[State -2, e]
type = removeexplod
trigger1 = !time
id = 107

[State -2, f]
type = removeexplod
trigger1 = !time
id = 2107

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77700)
trigger1 = time= 0
anim = 77700
id = 77700
name = "propulsor"
postype = P1
pos = -36,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 12

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77701)
trigger1 = time= 0
anim = 77700
id = 77701
name = "propulsor2"
postype = P1
pos = 10,64
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 12

[State 50, 0]
type = PlaySnd
trigger1 = StateNo = 50
trigger1 = animelem = 2
value = 30,1

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 660, Turn]
type = Turn
trigger1 = P2Dist X < -10

[State 50, 1]
type = VelSet
triggerall = prevstateno=11045 && Time < 20
trigger1 = command = "holdback"
x = -2.55

[State 50, 1]
type = VelSet
triggerall = prevstateno=11045 && Time < 20
trigger1 =  command = "holdfwd"
x = 2.55

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 2]
type = null;ChangeAnim
trigger1 = Anim != 42 && vel x >= 0
value = 42

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0


[State 240, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 30, 1
channel=4


[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = animelem=2
anim = 77700
id = 77701
name = "propulsor"
postype = P1
pos = -25,10
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 22

[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = animelem=3
anim = 77700
id = 77702
name = "propulsor"
postype = P1
pos = -27,-25
ownpal = 1
sprpriority =-3
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 22

[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = animelem=4
anim = 77700
id = 77703
name = "propulsor"
postype = P1
pos = -15,-25
ownpal = 1
sprpriority =-3
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 22

[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = animelem=5
anim = 77700
id = 77704
name = "propulsor"
postype = P1
pos = -5,-17
ownpal = 1
sprpriority =-3
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 7


[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = !time;m = 2
anim = 77700
id = 77700
name = "propulsor"
postype = P1
pos = -35,60
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 22

[State 250, e]
type = removeexplod
trigger1 = animelem=2
id = 77700

[State 250, e]
type = removeexplod
trigger1 = animelem=3
id = 77701

[State 250, e]
type = removeexplod
trigger1 = animelem=4
id = 77702

[State 250, e]
type = removeexplod
trigger1 = animelem=5
id = 77703

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = 1
value = 0

[State 5120, 5]
type = NotHitBy
trigger1 = AnimTime = 0
value = , AT
time = 6

[State 5120, 5]
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 1

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
;trigger2 = time >= 5 && p2dist x < 0
value = 0;ifelse(p2dist x < 0,11,0)
ctrl = 1

;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 20,6
volume=500
channel=2

[State 170,1]
type = AssertSpecial
trigger1 = Time = [0,750]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 20,6
volume=500
channel=2


[State 175,1]
type = AssertSpecial
trigger1 = Time = [0,750]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,100

;[State 180, helper]
;type = Helper
;trigger1 = !NumHelper(6000)
;trigger1 = MatchOver
;stateno = 6200
;postype = p1
;pos = 0,0
;name = "Win Quotes"
;id = 6200

[State 180, 2]
type = ChangeState
trigger1 = Var(1) = [0,32]
value = 181

[State 180, 3]
type = ChangeState
trigger1 = Var(1) = [33,65]
value = 182
;
[State 180, 4]
type = ChangeState
trigger1 = Var(1) = [66,100]
value = 183

;-----------------------
; Winpose #1
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[state 183, A3]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181,0]
type = PlaySnd
trigger1 = Time = 10
value = 80, 0
channel=2

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = !MatchOver
trigger1 = Time = [0,300]
flag = RoundNotOver

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = MatchOver
trigger1 = Time = [0,300]
flag = RoundNotOver

;-----------------------
; Winpose #2
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[state 183, A3]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181,0]
type = PlaySnd
trigger1 = Time = 10
value = 20, 8
channel=2

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = !MatchOver
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = MatchOver
trigger1 = Time = [0,200]
flag = RoundNotOver

;-----------------------
; Winpose #3
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 183, A3]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181,0]
type = PlaySnd
trigger1 = Time = 10
value = 20, 0
volume=200
channel=2

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = !MatchOver
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = MatchOver
trigger1 = Time = [0,200]
flag = RoundNotOver



;---------------------------------------------------------------------------
; INTRO decider
[Statedef 190]
type = S

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,100

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,32]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [33,65]
value = 192

[State 190, 4]
type = ChangeState
trigger1 = Var(1) = [66,100]
value = 193

;---------------------------------------------------------------------------

; Intro #3
[Statedef 193]
type = S
ctrl = 0
anim = 191
velset = 0,0

[state 183, A3]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay

[State 191, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, 1]
type = PlaySnd
trigger1 = Time = 10
value = 20,3
channel=2

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(192)
trigger1 = !time
anim = 192
id = 192
name = "alkhema1"
postype = P1
pos = -30,3
ownpal = 1
sprpriority = 6
facing = 1
bindtime = -1
removetime = 120;-1

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(193)
trigger1 = time =120
anim = 193
id = 193
name = "alkhema2"
postype = P1
pos = -30,3
ownpal = 1
sprpriority = 6
facing = 1
bindtime = 1
removetime = 100
vel = -6,-7

[State 777, hsp]; Superjump FX helper
type = helper
trigger1 = time =120
helpertype = normal
stateno = 8715
ID = 2999
name = "superjump"
postype = p1
pos = -30,-10
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1


[State 1045, 8]
type = PlaySnd
trigger1 =time =120
value = 8,0

[State 4002, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
trigger1 =time =120
persistent = 0
ID = 60
anim = 60
postype = p1
pos = -30, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1


[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-----------------------------------------------------------------------------

;---------------------------------------------------------------------------

; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[state 183, A3]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay

[State 191, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 1]
type = PlaySnd
trigger1 = Time = 10
value = 7,0
channel=2


[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-----------------------------------------------------------------------------
; Intro #2
[Statedef 192]
type = S
ctrl = 0
anim=8787
ctrl=0
velset=0,0

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1


[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1 = RoundState = 0
value = 4002

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)= 0
trigger1 = RoundState = 0
value = 4003


[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,2
channel=0

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,1

[State 4002, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
trigger1= var(8)!= 0 && animelem=11
trigger2= var(8)= 0 && animelem=24
persistent = 0
ID = 60
anim = 60
postype = p1
pos = -7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, Landing Sound]
type = PlaySnd
trigger1= var(8)!= 0 && animelem=11
trigger2= var(8)= 0 && animelem=24
value = 8, 1

[State 20]
type = envshake
triggerall = var(8)!= 0
trigger1 = animelem = 11
time = 10
ampl = -2

[State 20]
type = envshake
triggerall = var(8)= 0
trigger1 = animelem = 24
time = 20
ampl = -14

[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, c]
type = removeexplod
trigger1 = !time
id = 102

[State 195, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 195, c]
type = removeexplod
trigger1 = !time
id = 107

[State 195, d]
type = removeexplod
trigger1 = !time
id = 2107


[State 192, 1]
type = PlaySnd
trigger1 = Time = 2
value = 20,7
channel=2

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Electricity FX Spawner Red
[Statedef 7730]
type = A
movetype = I
physics = N
anim = 8787

[State 730, 1]
type = VarRandom
trigger1 = 1
v = 16
range = 35, 135

[State 730, 2]
type = VarRandom
trigger1 = time = 0
v = 17
value = -20, 20

[State 730, 3]
type = VarRandom
trigger1 = time = 0
v = 19
value = -120, -20

[State 730, 4]
type = Explod
trigger1 = time = 0
trigger2 = time = 4
ID = 11
anim = 6080
postype = p2
pos = 10,-75;var(17), var(19),-
random = 0, 15
bindtime = -1
removetime = var(16)
sprpriority = 6

[State 730, 5]
type = Explod
trigger1 = time = 10 && (Random <= 499)
ID = 11
anim = 6080
postype = p2
pos =  10,-45;var(17), var(19)
random = 0, 15
bindtime = -1
removetime = var(16)
sprpriority = -3

[State 730, 6]
type = PlaySnd
trigger1 = time = 1
trigger1 = NumExplod(11) > 0
value = 45, 4
channel=4

[State 730, 7]
type = DestroySelf
trigger1 = NumExplod(11) = 0


;---------------------------------------------------------------------------
; Electricity FX Spawner green
[Statedef 7731]
type = A
movetype = I
physics = N
anim = 8787

[State 730, 1]
type = VarRandom
trigger1 = 1
v = 16
range = 35, 135

[State 730, 2]
type = VarRandom
trigger1 = time = 0
v = 17
value = -20, 20

[State 730, 3]
type = VarRandom
trigger1 = time = 0
v = 19
value = -120, -20

[State 730, 4]
type = Explod
trigger1 = time = 0
trigger2 = time = 4
ID = 11
anim = 1727
postype = p2
pos = 10,-75;var(17), var(19),-
random = 0, 15
bindtime = -1
removetime = var(16)
sprpriority = 6

[State 730, 5]
type = Explod
trigger1 = time = 10 && (Random <= 499)
ID = 11
anim = 1727
postype = p2
pos =  10,-45;var(17), var(19)
random = 0, 15
bindtime = -1
removetime = var(16)
sprpriority = -3

[State 730, 7]
type = DestroySelf
trigger1 = NumExplod(11) = 0
;---------------------------------------------------------------------------
;Guard Push
;---------------------------------------------------------------------------
[Statedef 8200]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 8200 ; add this anim on the character
sprpriority = 2


[State 8200, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 8200, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 8200, Width]
type = Width
trigger1 = 1
value = 10,0

[State 8200, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 20


[State 6300, a6]
type = Explod
trigger1 = !Time
anim = 6355
postype = p1
pos = 73,-80 ; Adjust
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7

[State 8100, circlebeam]
type = Explod
triggerall = !NumExplod(727)
trigger1 = AnimElem = 3
anim = 727
id = 727
ontop = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit=1
pos= -13,-7
flag = noshadow
ownpal = 1

[State 777, hdf]
type = Explod
triggerall = !NumExplod(729)
trigger1 = projguarded =726
anim = 727
id = 729
ontop = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit=1
postype = p2
pos = -30,-7
flag = noshadow
ownpal = 1

[state 711, snd]
type = playsnd
trigger1 = animelem = 3
value = 45,13

[State 8100, 3]
type = Projectile
trigger1 = animelem = 3
attr = S, SP
projID = 726
projanim = 726
projhitanim = 726
projshadow = -1
projremovetime = 15
projhits = 1
projheightbound = -300, 0
pausemovetime = 999999
offset = 0,-3
velocity = 8,0
damage = 60,4
animtype = Hard
guardflag = MA
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound   = S2,2
guardsound = S45,8
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10, -1
air.animtype = Back
air.velocity = -2.5,-5
fall = 1
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1

[State 777, hsp]
type = helper
trigger1 = projhit =726
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 15,-85
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = projguarded =726
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 15,-85
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 8200, Guard Push Helper]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 8201
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6300, a6]
type = Explod
trigger1 = !Time
anim = 6355
postype = p1
pos = 73,-50 ; Adjust
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7

[State 8100, Darken]
type = BGPalFX
trigger1 = Time = 5
time = 25
add = -100,-100,-100

[State 8200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Push (Helper)
;---------------------------------------------------------------------------
[Statedef 8201]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 8201
sprpriority = -4

[State 8201, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 8201, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 8201, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 8201, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 8201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8201, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18

;---------------------------------------------------------------------------
; Liedown Roll Forward
;---------------------------------------------------------------------------
[Statedef 8300]
type    = C       ;It's a crouching type move
movetype= I       ;The character is 'idle' while doing the recovery roll
physics = N
poweradd= 0
velset = 5,0      ;Just change the vel x to -8 if you want to roll backwards
ctrl = 0
anim = 8300
sprpriority = -1

[State 8300, PlayerPush] ;So you can roll 'through' the opponent
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]   ;Stop once the recovery roll is over
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8300, MakeDust]  ;Just some dust effects
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8300, NotHitBy]  ;Can't get hit while rolling
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


[State 250, e]
type = removeexplod
trigger1 = !time
id = 77700

[State 250, e]
type = removeexplod
trigger1 = !time
id = 77701


[State 8300, snd]
type = PlaySnd
trigger1 = StateNo = 8300
trigger1 = animelem = 1
value = 30,1

[State 8300, propulsor]
type = Explod
triggerall = !NumExplod(102)
trigger1 = StateNo = 8300
trigger1 = animelem = 1
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = -40,15
ownpal = 1
sprpriority = 4
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 48

[State 8300, propulsor]
type = Explod
triggerall = !NumExplod(225)
trigger1 = StateNo = 8300
trigger1 = animelem = 1
anim = 225
id = 225
name = "propulsor"
postype = P1
pos = -60,0
ownpal = 1
sprpriority = -4
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 48

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302
ctrl = 0
;---------------------------------------------------------------------------
; Liedown Roll Backwards
;---------------------------------------------------------------------------
[Statedef 8305]
type    = C       ;It's a crouching type move
movetype= I       ;The character is 'idle' while doing the recovery roll
physics = N
poweradd= 0
velset = -5,0      ;Just change the vel x to -8 if you want to roll backwards
ctrl = 0
anim = 8300
sprpriority = -1

[State 8305, PlayerPush] ;So you can roll 'through' the opponent
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]   ;Stop once the recovery roll is over
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8305, MakeDust]  ;Just some dust effects
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8305, NotHitBy]  ;Can't get hit while rolling
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 250, e]
type = removeexplod
trigger1 = !time
id = 77700

[State 250, e]
type = removeexplod
trigger1 = !time
id = 77701


[State 8300, snd]
type = PlaySnd
trigger1 = StateNo = 8305
trigger1 = animelem = 1
value = 30,1

[State 8300, propulsor]
type = Explod
triggerall = !NumExplod(102)
trigger1 = StateNo = 8305
trigger1 = animelem = 1
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = -26,15
ownpal = 1
sprpriority = 4
facing = -1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 48

[State 8300, propulsor]
type = Explod
triggerall = !NumExplod(225)
trigger1 = StateNo = 8305
trigger1 = animelem = 1
anim = 225
id = 225
name = "propulsor"
postype = P1
pos = 40,0
ownpal = 1
sprpriority = -4
facing = -1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 48


[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302           ;Change to crouching state
ctrl = 0

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 8302]
type    = C
movetype= I
physics = N
velset = 0,0
ctrl=0
anim = 5120

[State 0, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 30, 1
channel=4


[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = animelem=2
anim = 77700
id = 77701
name = "propulsor"
postype = P1
pos = -25,10
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 22

[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = animelem=3
anim = 77700
id = 77702
name = "propulsor"
postype = P1
pos = -27,-25
ownpal = 1
sprpriority =-3
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 22

[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = animelem=4
anim = 77700
id = 77703
name = "propulsor"
postype = P1
pos = -15,-25
ownpal = 1
sprpriority =-3
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 22

[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = animelem=5
anim = 77700
id = 77704
name = "propulsor"
postype = P1
pos = -5,-17
ownpal = 1
sprpriority =-3
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 7


[State 100, propulsor]
type = Explod
;triggerall = !NumExplod(77700)
trigger1 = !time;m = 2
anim = 77700
id = 77700
name = "propulsor"
postype = P1
pos = -35,60
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 22

[State 250, e]
type = removeexplod
trigger1 = animelem=2
id = 77700

[State 250, e]
type = removeexplod
trigger1 = animelem=3
id = 77701

[State 250, e]
type = removeexplod
trigger1 = animelem=4
id = 77702

[State 250, e]
type = removeexplod
trigger1 = animelem=5
id = 77703

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]
[State -2, c]
type = removeexplod
trigger1 = !time
id = 102

[State -2, d]
type = removeexplod
trigger1 = !time
id = 2102

[State -2, e]
type = removeexplod
trigger1 = !time
id = 107

[State -2, f]
type = removeexplod
trigger1 = !time
id = 2107

[State -2 , 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5000) && (anim <= 5009)
trigger1 = time = 1
value = 4,0

[State -2 , 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5010) && (anim <= 5019)
trigger1 = time = 1
value = 4,1

[State -2 , 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = anim >= 5020
trigger1 = time = 1
value = 4,1

[State -2 , 51]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5000) && (anim <= 5009)
trigger1 = time = 1
value = 4,2

[State -2 , 5a]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5010) && (anim <= 5019)
trigger1 = time = 1
value = 4,2

[State -2 , 5a]
type = PlaySnd
triggerall = stateno = 5001
triggerall = anim >= 5020
trigger1 = time = 1
value = 4,2


[State -2 , 6]
type = PlaySnd
triggerall = stateno = 5010
trigger1 = time = 1
value = 4,2

[State -2 , 7]
type = PlaySnd
triggerall = stateno = 5020
trigger1 = time = 1
value = 4,1

[State -2 , 6a]
type = PlaySnd
triggerall = stateno = 5010
trigger1 = time = 1
value = 4,2

[State -2 , 7a]
type = PlaySnd
triggerall = stateno = 5020
trigger1 = time = 1
value = 4,1

[State -2 , 8]
type = PlaySnd
triggerall = stateno = 5030
trigger1 = time = 1
value = 4,1

[State -2 , 7]
type = PlaySnd
triggerall = stateno = 5050
trigger1 = time = 1
trigger1 = Life <= 1
value = 11,0


[State -2 , 7aa]
type = PlaySnd
triggerall = stateno = 5100
trigger1 = time = 1
value = 4,1

[State -2, 4]
type = PlaySnd
triggerall = StateNo = 9001
trigger1 = anim=4500 && animelemtime(1)<=1
trigger2 = anim=4501 && animelemtime(1)<=1
trigger3 = anim=4502 && animelemtime(1)<=1
trigger4 = anim=4503 && animelemtime(1)<=1
value = 30,1
volume =-200
persistent=0

;---------------------------
[State -2, Hit Wall] ;Based in HIT WALL CODES - Thanks to DG && SMI (Bia)
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0
triggerall = target(0),  StateNo != 9020
triggerall = target(0), vel X < -6;-7
trigger1 = StateNo = 220 && movehit
trigger1 = target(0), BackEdgeBodyDist <= 20
trigger1 = var(50) :=1
trigger2 = StateNo = 220 && movehit
trigger2 = target(0), FrontEdgeBodyDist <= 20
trigger2 = var(50) :=1
trigger3 = StateNo = 245 && movehit
trigger3 = target(0), BackEdgeBodyDist <= 20
trigger3 = var(50) :=1
trigger4 = StateNo = 245 && movehit
trigger4 = target(0), FrontEdgeBodyDist <= 20
trigger4 = var(50) :=1
trigger5 = StateNo = 1505 && Time > 20
trigger5 = target(0), BackEdgeBodyDist <= 20
trigger5 = var(50) :=1
trigger6 = StateNo = 1505 && Time > 20
trigger6 = target(0), FrontEdgeBodyDist <= 20
trigger6 = var(50) :=1
trigger7 = (StateNo = [1300,1320]) && (movehit)&& (P2BodyDist X > 75)
trigger7 = target(0), BackEdgeBodyDist <= 20
trigger7 = var(50) :=1
trigger8 = (StateNo = [1300,1320]) && (movehit)&& (P2BodyDist X > 75)
trigger8 = target(0), FrontEdgeBodyDist <= 20
trigger8 = var(50) :=1
value = 9020
ID = 0

[State -2, a9];p2 bounce ground mvsc style
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0
triggerall = target(0),  StateNo != 9023
trigger1 = !var(1) && StateNo = 620 && movehit
trigger1 = target(0), stateno=5100
trigger1 = var(50) :=1
trigger2 = !var(1) && StateNo = 650 && movehit
trigger2 = target(0), stateno=5100
trigger2 = var(50) :=1
trigger3 = !var(1) && prevStateNo = 620
trigger3 = target(0), stateno=5100
trigger3 = var(50) :=1
trigger4 = !var(1) && prevStateNo = 650
trigger4 = target(0), stateno=5100
trigger4 = var(50) :=1
value = 9023
ID = 0

[State -2, reset var(50)]
type = VarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0
ignorehitpause = 1

[State -2, reset parent var(50)]
type = ParentVarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0
ignorehitpause = 1


[State -2, Hit Wall Spark]
type = Explod
triggerall =!var(55)
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time=0
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H
trigger2 = target(0), Time = 1
anim = 8720
pos = floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = left
sprpriority = 3
ownpal = 1
facing = ifelse(Target, Pos X >= 0,1,-1)
ignorehitpause = 1
bindtime = -1
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit Wall Spark]
type = Explod
triggerall =var(55)=1
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time=0
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H
trigger2 = target(0), Time = 1
anim = 72 ;ifelse(!var(55),8720,Fifelse(72))
pos = floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = left
sprpriority = 3
ownpal = 1
facing = ifelse(Target, Pos X >= 0,-1,1)
ignorehitpause = 1
bindtime = -1
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit ground Spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9023
trigger1 = target(0), Time=0
anim = 8725
pos = 0,0;floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = p2
sprpriority = 9
ownpal = 1
ignorehitpause = 1
bindtime = 4
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit Wall Sound]
type = PlaySnd
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time = 1
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H
trigger2 = target(0), Time = 1
value = 40, 2
ignorehitpause = 0
supermovetime =99
pausemovetime = 99

[State -2, Hit ground Sound]
type = PlaySnd
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9023
trigger1 = target(0), Time = 1
value = 40, 1
ignorehitpause = 0
supermovetime =99
pausemovetime = 99


;---------------------------
;Alternative stand var controller
[State -2, Varset]
type = Varset
trigger1 = life >= 250
var(42) = 1

[State -2, Varset]
type = Varset
trigger1 = RoundNo = 2
var(42) = 1

[State -2]
type = Varset
trigger1 = life <= 250
var(42) = 0

;----------------------------------------------------
; Display "Danger" Message Teamside = 1
[State -2, Create Helper]
type = Helper
triggerall = var(17) = 0
triggerall = !NumHelper(7100)
triggerall = teamside= 1
trigger1 = Life <= 250
ID = 7100
name = "Vida"
StateNo = 7100
postype = back
facing = (facing)
pos = 0, 0
ownpal = 1

;--------------
[State 8787, a4]
type = Explod
triggerall = var(17) = 0
triggerall = !Numexplod(7000)
triggerall = teamside= 1 && facing = -1
trigger1 = Life <= 250
anim = 7000
id=7000
pos = 320,0
facing=(facing)
postype= back
bindtime = -1
supermovetime =999
pausemovetime =999
sprpriority = 39
removetime = 25
scale = 1,1
IgnoreHitPause = 1
ownpal = 1

[State 8787, a4]
type = Explod
triggerall = var(17) = 0
triggerall = !Numexplod(7000)
triggerall = teamside= 1 && facing = 1
trigger1 = Life <= 250
anim = 7000
id=7000
pos = 0,0
facing=(facing)
postype= back
bindtime = -1
supermovetime =999
pausemovetime =999
sprpriority = 39
removetime = 25
scale = 1,1
IgnoreHitPause = 1
ownpal = 1

;----------------------------------------------------
; Display "Danger" Message Teamside = 2
[State -2, Create Helper]
type = Helper
triggerall = var(17) = 0
triggerall = !NumHelper(7101)
triggerall = teamside= 2
trigger1 = Life <= 250
ID = 7101
name = "Vida"
StateNo = 7101
postype = back
facing = (facing)
pos = 0, 0
ownpal = 1

;--------------
[State 8787, a4]
type = Explod
triggerall = var(17) = 0
triggerall = !Numexplod(7000)
triggerall = teamside= 2 && facing = -1
trigger1 = Life <= 250
anim = 7000
id=7000
pos =87,0
facing=(facing)
postype= back
bindtime = -1
supermovetime =999
pausemovetime =999
sprpriority = 39
removetime = 25
scale = 1,1
IgnoreHitPause = 1
ownpal = 1

[State 8787, a4]
type = Explod
triggerall = var(17) = 0
triggerall = !Numexplod(7000)
triggerall = teamside= 2 && facing = 1
trigger1 = Life <= 250
anim = 7000
id=7000
pos = 233,0
facing=(facing)
postype= back
bindtime = -1
supermovetime =999
pausemovetime =999
sprpriority = 39
removetime = 25
scale = 1,1
IgnoreHitPause = 1
ownpal = 1


[State -2]
type = Varset
trigger1 = life <= 250
var(17) = 1




;---------------------------
; Superjump opponent locator
[State -2, P2 locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -150) && (P2Dist Y > 50)
ID = 0
pos = Floor(P2Dist X), 20
postype = p1
stateno = 9100
facing = -1
ownpal = 1

;---------------------------
;
[State -2, stp]
type = StopSnd
trigger1 = !time
channel=2

;--------------------------------------

;---------------------------------------

[State -2, attackvarbyhits]
type=varset
trigger1= numenemy
fvar(10)= ifelse(enemynear,gethitvar(hitcount)<3, 24, ifelse(enemynear,gethitvar(hitcount)>=24, 2, 26-enemynear,gethitvar(hitcount)))/24.0
ignorehitpause=1
[State -2, attackvarbyhits]
type=varset
trigger1= numenemy && var(20)
fvar(10)= .72 * (10-ifelse(enemynear,gethitvar(hitcount)>=9, 9, enemynear,gethitvar(hitcount))) / 10.0
ignorehitpause=1
[State -2, attackvarbyhitsreset]
type=varset
trigger1= numenemy
trigger1= (enemynear,movetype!=H)
trigger2= !numenemy
fvar(10)= ifelse(var(20), .72, 1)
ignorehitpause=1

[State -2, dampenervar]
type=varset
trigger1= 1
fvar(12)= fvar(10) + (var(29)*.2)
ignorehitpause=1
[State -2, dampener]
type=attackmulset
trigger1= 1
value=fvar(12)
ignorehitpause=1

[State -2, Free Juggling]
type=assertspecial
trigger1= var(20)>0
trigger2= roundstate!=2
trigger3= stateno=1200 && p2statetype=L
flag=nojugglecheck
ignorehitpause=1
[State -2, Original Combo Guard]
type=assertspecial
trigger1= var(20)>0
flag= nostandguard
flag2=nocrouchguard
flag3=noairguard
ignorehitpause=1

;------------------------
;"Gold Mode"
;-------------------------
[State -2]
type = VarSet
triggerall = Var(8) != 1
triggerall = Var(8) != 2
triggerall = Var(8) != 3
trigger1 = PalNo = 7
v = 8
value = 2

[State -2]
type = VarSet
triggerall = Var(8) != 1
triggerall = Var(8) != 2
triggerall = Var(8) != 3
trigger1 = PalNo = 8
v = 8
value = 2

[State -2]
type = VarSet
triggerall = Var(8) != 1
triggerall = Var(8) != 2
triggerall = Var(8) != 3
trigger1 = PalNo = 9
v = 8
value = 2

[State -2]
type = VarSet
triggerall = Var(8) != 1
triggerall = Var(8) != 2
triggerall = Var(8) != 3
trigger1 = PalNo = 10
v = 8
value = 2

[State -2]
type = VarSet
triggerall = Var(8) != 1
triggerall = Var(8) != 2
triggerall = Var(8) != 3
trigger1 = PalNo = 11
v = 8
value = 2

[State -2]
type = VarSet
triggerall = Var(8) != 1
triggerall = Var(8) != 2
triggerall = Var(8) != 3
trigger1 = PalNo = 12
v = 8
value = 2

; Super Armor
[State -2]
type = VarSet
triggerall = var(8) = 0
trigger1 = Life > 1
trigger1 = MoveType != H
trigger1 = StateNo != 8623
var(46) = StateNo
ignorehitpause = 1

[State -2]
type = VarSet
triggerall = var(8)= 0
trigger1 = Life > 1
trigger1 = StateNo = [120,159]
trigger1 = StateNo != 8623
var(46) = StateNo
ignorehitpause = 1

;----------------------------------
[State -2] ;Absorbing
type = Changestate
trigger1 = var(23) =1
value = 1720
ctrl =1
[State -2] ;Absorbing  2
type = Changestate
trigger1 = var(24) =1
value = 1760
ctrl =1
[State -2] ;Absorbing  3
type = Changestate
trigger1 = var(25) =1
value = 1790
ctrl =1

;---------------------------------------

[State -2, PalFX]
type = PalFX
triggerall = var(5) = 1
trigger1 = (var(15) % 30) = 0
time = 2
add = 190,0,0
mul = 266,256,256
sinadd = 180,0,0,30
invertall = 0
color = 256
ignorehitpause = 1


[State -2, Add to Timer]
type = VarAdd
trigger1 = var(5) = 1 || var(5) = -1
v = 15
value = 1

[State -2, Turn off]
type = VarSet
trigger1 = command = "flying"
trigger2 = stateno = [5000,5350]
trigger3 = stateno = [140,160]
trigger4 = stateno = [660,700]
trigger5 = Pos Y >= 0
v = 5
value = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

[State -3, AI Activation]
type = VarSet
trigger1 = command = "ai"
trigger2 = command = "ai1"
trigger3 = command = "ai2"
trigger4 = command = "ai3"
trigger5 = command = "ai4"
trigger6 = command = "ai5"
trigger7 = command = "ai6"
trigger8 = command = "ai7"
trigger9 = command = "ai8"
trigger10 = command = "ai9"
trigger11 = command = "ai10"
trigger12 = command = "ai11"
trigger13 = command = "ai12"
trigger14 = command = "ai13"
var(7) = 1

[State -3, varrandom]
type = VarRandom
triggerall = stateno != [200,700]
trigger1 = Time = 0
v = 28
range = 0,3

;-------------------------------------
;Combo Damage Control
[State -3, a1]
type = varadd
trigger1 = time = 1 && movetype = A && fvar(10)<.8
fvar(10)= ifelse((stateno = [3000,4999]),.35,ifelse((stateno = [1000,2999]),.25,.15))
ignorehitpause = 1

[State -3, a2];reset
type = varset
trigger1 = numenemy && fvar(10)
trigger1 = (enemynear,movetype!=H)
fvar(10) = 0
persistent = 0
ignorehitpause = 1

[State -3, a3]
type = attackmulset
trigger1 = 1
value = ifelse(fvar(10)>=.8,.1,1-fvar(10))
ignorehitpause = 1

;---------------------------
;special\hyper finish effects
[State -3,special finish] ;based on tutorial Flowagirl archive codes
type = Helper
triggerall = (WinKO) && (!NumHelper(8740)) && (!NumHelper(8787))
trigger1 =(StateNo = [200,700])
trigger2 =(StateNo = [1000,1600])
trigger3 =(StateNo = [12100,12650])
helpertype = Normal
name = "SpecialFinish"
id = 8740
pos = 0, -1500
postype = back
facing = 0
stateno = 8740
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -3, WINKO]
type = Helper
triggerall = (WinKO) && (!NumHelper(8787)) && (enemy,time=1)
trigger1 =(StateNo = [3000,3800])
helpertype = Normal
name = "WinKO"
id = 8787
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno = 8787
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1
;---------------------------
;---------------------------
;Landing FX and sound

[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = StateNo = 42 ;Jump Forward
trigger5 = StateNo = 43 ;Jump Backward
trigger6 = PrevStateNo = 52 && StateNo = 47 ;Jump land/crouch
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 1

;.--------------------------------------
[State -3, AfterImagePersist]
type=afterimagetime
trigger1= stateno=50 && var(9)=3 && vel y<-1
trigger2= var(20)
trigger3= (stateno=[3000,4999]) && anim!=1103 && stateno!=3752
trigger4= (stateno=[710,725])
time=2

[State -3, Corner Push]
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= target,hitover || (target,gethitvar(hitshaketime)>0 && target,time<=0)
fvar(5)= 0

[State -3, Corner Push]
type= varset
trigger1= movecontact=1 && numtarget
fvar(5)= target,gethitvar(xvel)
ignorehitpause= 1

[State -3, Corner Push]
type= posadd
triggerall= fvar(5)
triggerall= (statetype=S || statetype=C) && numtarget
triggerall= !hitpausetime && target,gethitvar(hitshaketime)<=0
triggerall= (target,statetype=S || target,statetype=C) && !(target,gethitvar(yvel)) && !(target,hitfall)
trigger1= target,frontedgebodydist<=abs(target,vel x)
trigger1= (target,gethitvar(xvel) * target,facing)>0
trigger2= target,backedgebodydist<=abs(target,vel x)
trigger2= (target,gethitvar(xvel) * target,facing)<0
x= ifelse(target,frontedgebodydist<=0, -1, 1) * (target,facing) * fvar(5)

[State -3, Corner Push]
type= varset
trigger1= numtarget
trigger1= target,gethitvar(hitshaketime)<=0
fvar(5)= fvar(5)*.85

[State -3, Moles-B-Gon]
type=targetbind
trigger1= movehit=1
trigger1= numtarget && numenemy
trigger1= (target,time<=1) && (target,ID = enemynear,ID)
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y)
ignorehitpause=1

[State -3, Prevent Crossup]
type=width
trigger1= movetype!=H
edge= 8, 0
ignorehitpause=1

[State -3, Variable Height]
type=playerpush
triggerall= statetype=A && movetype!=H && numenemy=1
triggerall= p2bodydist x = [-(enemynear,const(size.ground.back) + enemynear,const(size.ground.front)) , 0]
trigger1= p2statetype=S
trigger1= p2dist y >= (enemynear,const(size.height) - 30)
trigger2= p2statetype=C
trigger2= p2dist y >= (enemynear,const(size.height) - 56)
trigger3= p2statetype=L
trigger3= p2dist y >= 12
value=0
ignorehitpause=1
;The armor effect
[State -3]
type = HitOverride
triggerall = var(8)= 0
trigger1 = Random <= 800
trigger1 = MoveType != H
trigger1 = Anim != 5300
trigger1 = StateNo != [120,159]
trigger1 = PrevStateNo != 8623
time = 1
slot = 7
attr = SCA, NA, SA, NP, SP
stateno = 8623

; Defense sound
[State -3, sound]
type = PlaySnd
triggerall = Time = 0
triggerall = Alive
trigger1 = stateno = 150
trigger2=  stateno = 152
trigger3=  stateno = 154
value = 3,3
channel = 0






