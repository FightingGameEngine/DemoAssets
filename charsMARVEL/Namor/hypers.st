; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

[Statedef 3000]
type    = S
movetype= A
physics = N
juggle = 0;  = 1
velset = 0,0
poweradd = 0
anim = 3000
ctrl = 0
sprpriority = 2


;-------------------
; DCvM hyper portrait/BG

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = 50,-40
sound = S8889,0
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

; end DCvM stuff
;-------------------

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 5


[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HT
hitflag = M-
priority = 1, Miss
sparkno = -1
damage = 36
pausetime = 0,0
hitsound = 5,1
guardsound = 6,0
sparkno = -1
sparkxy = 0,-46
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 2,-8
guard.velocity = -5
air.velocity = -1,-8
p1stateno = 3010
p2stateno = 3020
getpower = 0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;948
ctrl = 1

 [Statedef 3010]
type    = S
movetype= A
physics = N
anim = 3010
poweradd = 0
sprpriority = 0

[State 650, grunt]
type = PlaySnd
trigger1 = time = 0
value = 3,1

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 3
value = 10

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 10
trigger3 = animelem = 26
value = 8,0

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 21
value = 3,1

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 5
value = 0,2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0
y = -10


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0
y = -15

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = -5
y = -4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = -4
y = -3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = -3
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 8
x = -3
y = 3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 9
x = -3
y = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 10
x = 3
y = 18

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 11
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 =  animelem = 11
y = 0

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 11
trigger2 = animelem = 15
trigger3 = animelem = 19
value = 2,2

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 11
trigger2 = animelem = 15
trigger3 = animelem = 19
time = 20
freq = 320
ampl = -5

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 11
value = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 11
anim = 662
ID = 662
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = -100

;[State 0, Explod]
;type = Explod
;trigger1 = animelem = 11
;trigger2 = animelem = 15
;trigger3 = animelem = 19
;anim = 663
;ID = 663
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;bindtime = 1
;removetime = -2
;sprpriority = 49





[State 0, Explod]
type = Explod
trigger1 = animelem = 11
trigger2 = animelem = 15
trigger3 = animelem = 19
anim = 8400
ID = 8400
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 40
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 11
trigger2 = animelem = 15
trigger3 = animelem = 19
anim = 8401
ID = 8401
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = -102
ownpal = 1
removeongethit = 0




[State 810, Hurt]
type = TargetLifeAdd
trigger1 = animelem = 11
trigger2 = animelem = 15
trigger3 = animelem = 19
value = -75



[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 80,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 40,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 35,-110
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 4
pos = 15,-100
time = 10

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 5
pos = -5,-110
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 6
pos = -15,-100
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 7
pos = -15,-90
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 8
pos = 0,-60
time = 5

[State 175,0]
type = PlaySnd
trigger1 = animelem = 8
value = 175,4

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 9
pos = 0,-60
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 10
pos = 0,-40
time = 14

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 11
pos = 0,0
time = 10

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 12
pos = 0,0
time = 5

[State 175,0]
type = PlaySnd
trigger1 = animelem = 12
value = 175,0

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 13
pos = 0,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 14
pos = 0,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 15
pos = 0,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 16
pos = 0,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 17
pos = 0,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 18
pos = 0,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 19
pos = 0,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 20
pos = 0,0
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 21
pos = -10,-40
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 22
pos = -20,-65
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 23
pos = -10,-70
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 24
pos = 30,-75
time = 5

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 25
pos = 40,0
time = 5



[State 830, TargetState]
type = TargetState
trigger1 = AnimElem = 26
value = 3030



[State 810, a]
type = Turn
trigger1 = !AnimTime
persistent = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3020]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2
poweradd = 0

[State 835, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3020

;---------------------------------------------------------------------------------------------
;P2
[Statedef 3030]
type    = A
movetype= H
physics = N
velset = -12,-5
sprpriority = 2
poweradd = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.4
;ignorehitpause =
;persistent =

[State 835, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3030


[State 836, Turn]
type = Turn
trigger1 = Vel Y > 0
trigger1 = pos Y >= 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = -10
kill = 1

[State 650, grunt]
type = PlaySnd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 2,2


[State 0, EnvShake]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20
freq = 320
ampl = -5

[State 836, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---fim


;Hyper2

[Statedef 3100]
type    = S
movetype= A
physics = N
juggle = 0;  = 1
velset = 0,0
poweradd = 0
anim = 3100
ctrl = 0
sprpriority = 2
poweradd = 0

;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = time = 6
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 6
Time = 60
;anim =-1;s3012
pos = -30,-65
sound = S8889,0
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1



[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 2
value = 8,0


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 14

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 7

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0

[State 650, grunt]
type = PlaySnd
triggerall = time < 76
trigger1 = timemod = 2,1
value = 173,0

[State 210, HitDef]
type = HitDef
triggerall = time < 76
trigger1 = timemod = 2,1
attr = S,HA
damage = 27,4
animtype = high
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 1,1
sparkno = 2
sparkxy = -40,-70
hitsound = 10,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-3
air.type = Low
air.hittime = 15
air.velocity = (-1+random/500),-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 3
envshake.ampl = 6
getpower = 0

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 24
value = 173,1

[State 210, HitDef]
type = HitDef
trigger1 = animelem = 24
attr = S,HA
damage = 45,15
animtype = high
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1,1
sparkno = 3
sparkxy = -40,-70
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5,-10
air.type = Low
air.hittime = 15
air.velocity =  -5,-10
envshake.time = 1
envshake.ampl = 1
fall = 1
air.fall = 1
getpower = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 1001
ID = 3101
pos = 20,10
postype = p1  ;p2,front,back,left,right
removetime = -1
bindtime = -1
sprpriority = 3
removeongethit = 1
;ignorehitpause =
;persistent =


[State 3100, End]
type = ChangeState
trigger1 = animtime=0 || p2bodydist X <= -30
value = 0
ctrl = 1







;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3300]
type    = S
physics = S
ctrl = 0
anim = 3300
velset = 0,0
poweradd = 0

;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = time = 6
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = time = 6
Time = 60
;anim =-1;s3012
pos = 20,-70
sound = S8889,0
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

; end DCvM stuff
;-------------------


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 172,0
channel = -1



[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 3313
ID = 3313
pos = 0,0
postype = back
bindtime = -1
removetime = -2
supermove = 999
pausemovetime = 999
sprpriority = 999999
ownpal = 1
ontop = 1

[State 3300, 2]
trigger1 = Animtime = 0
type = ChangeState
value = 3301
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3301]
type    = A
movetype= H
physics = N
ctrl = 0
anim = 3303
velset = 0,0
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 50
trigger2 = time = 150
trigger3 = time = 250
trigger4 = time = 350
trigger5 = time = 450
trigger6 = time = 550
trigger7 = time = 650
value = 172,0
channel = -1


[State 7140, Bubbles]
type = Explod
scale = const(size.xscale)
trigger1 = random < 80 ;&& time <= 115;
anim = 3311 + (random < 500)
postype = p1
pos = 25,-120
random = 20,10
bindtime = 1
ownpal = 1
sprpriority = 5
velocity = 0,-1

[State 7140, Bubbles]
type = Explod
scale = const(size.xscale)
trigger1 = random < 80 ;&& time <= 115;
anim = 3311 + (random < 500)
postype = p2
pos = 0,-120
random = 20,10
bindtime = 1
ownpal = 1
sprpriority = 5
velocity = 0,-1

[State 3000, portraitBG]
type = Explod
trigger1 = time > 3 && numexplod(3310)=0
anim = 3310
ID = 3310
pos = -5,-5
postype = back
bindtime = -1
removetime = -1
supermove = 999
pausemovetime = 999
sprpriority = 999999
ownpal = 1
ontop = 1
scale = 1.5,1.5


[State 3100, a]
type = NotHitBy
trigger1 = var(4) > 540
value = SCA, AA, AT, AP
;---------------------------------------

;[State 3301, HO]
;type = HitOverride
;trigger1 = 1
;attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;time = -1
;stateno = 3101

;---------------------------------------
[State 3000, portraitBG]
type = Explod
triggerall = time > 3
trigger1 = var(10) = 0
trigger2 = Win = 1
trigger3 = Lose = 1
trigger4 = command = "qcb_2k"
;trigger5 = var(59) && time >= 200
anim = 3314
ID = 3314
pos = 0,0
postype = back
bindtime = -1
removetime = -2
supermove = 999
pausemovetime = 999
sprpriority = 999999
ownpal = 1
ontop = 1

;--------saida ai
[State 3000, portraitBG]
type = Explod
triggerall = time >= 200
trigger1 = var(59)
anim = 3314
ID = 3314
pos = 0,0
postype = back
bindtime = -1
removetime = -2
supermove = 999
pausemovetime = 999
sprpriority = 999999
ownpal = 1
ontop = 1

[State 3301, Fly_Mode_End]
triggerall = time >= 200
trigger1 = var(59)
type = ChangeState
value = 50
ctrl = 1

;------------fim ai

[State 3301, Fly_Mode_End]
triggerall = time > 3
trigger1 = var(10) = 0
trigger2 = Win = 1
trigger3 = Lose = 1
trigger4 = command = "qcb_2k"
;trigger5 = var(59) && time >= 200
type = ChangeState
value = 50
ctrl = 1

;[State 3301,uhu]
;type = ChangeState
;triggerall = (var(59) != 0)
;triggerall = (Ctrl)
;trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,900])
;value = 3310



;[State 3301, Fly_Mode_End]
;trigger1 = command = "binary"  && power >= 1000
;type = ChangeState
;value = 3310
;ctrl = 0

;faço raio pra binary?
[State 3301, Ray]
type = ChangeState
trigger1 = (command = "qcf_a") || (command = "qcf_b") || (command = "qcf_c")
value = 3380

[State 3301, Check_for_Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
trigger5 = Pos Y < -205
trigger6 = Pos Y > -20
x = 0
y = 0

[State 3301, Check_for_Stop2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
triggerall = anim != 3303
value = 3303 ;parado

[State 3301, Back]
type = ChangeAnim
trigger1 = command = "holdback"
trigger1 = Anim != 3302
value = 3302 ;pra tras

[State 3101, Forward]
type = ChangeAnim
trigger1 = command = "holdfwd"
trigger1 = Anim != 3305
value = 3305   ;pra frente

[State 3101, Up]
type = ChangeAnim
trigger1 = command = "holdup"
trigger1 = Anim != 3304
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
;triggerall = command != "Hyper2"
value = 3304   ;pra cima

[State 3301, Down]
type = ChangeAnim
trigger1 = command = "holddown"
trigger1 = Anim != 3301
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
;triggerall = command != "Hyper2"
value = 3301 ;pra baixo

[State 3301,Turn]
type = Turn
trigger1 = P2bodydist X < -20 && anim = 3303

[State 3301,Turn]
type = Turn
trigger1 = P2bodydist X < -100 && anim = 3305

[State 3301, MoveUp]
type = VelSet
trigger1 = command = "holdup"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
;triggerall = command != "Hyper2"
y = -3

[State 3301, MoveDown]
type = VelSet
trigger1 = command = "holddown"
triggerall = command != "x"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "a"
triggerall = command != "b"
triggerall = command != "c"
;triggerall = command != "Hyper2"
y = 3

[State 3301, MoveBack]
type = VelSet
trigger1 = command = "holdback"
x = -4

[State 3301, MoveForward]
type = VelSet
trigger1 = command = "holdfwd"
x = 6

[State 3301, UpBorder]
type = PosSet
trigger1 = Pos Y < -200
y = -200

[State 3301, DownBorder]
type = PosSet
trigger1 = Pos Y > -20
y = -20

[State 3301, Jump_Light_Punch]
type = ChangeState
trigger1 = command = "x"
value = 3320

[State 3301, Jump_Medium_Punch]
type = ChangeState
trigger1 = command = "y"
value = 3330

[State 3301, Jump_Strong_Punch]
type = ChangeState
trigger1 = command = "z"
trigger2 = var(59) && P2BodyDist X < 70  && Random < 250 && P2BodyDist Y = [-50,50]
value = 3340

[State 3301, Jump_Light_Kick]
type = ChangeState
trigger1 = command = "a"
value = 3350

[State 3301, Jump_Medium_Kick]
type = ChangeState
trigger1 = command = "b"
value = 3360

[State 3301, Jump_Strong_Kick]
type = ChangeState
trigger1 = command = "c"
trigger2 = var(59) && P2BodyDist X < 70  && Random < 250 && P2BodyDist Y = [-50,50]
value = 3370


;golpes voando fly
;soco fraco
[Statedef 3320]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
ctrl = 0
anim = 600
poweradd = 0
sprpriority = 2

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 25
guardflag = HA
priority = 3, Hit
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-70
sparkno = 0
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-1
getpower = 0

[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "a"
value = 3350

[State 3110, 4]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "y"
value = 3330


[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "z"
value = 3340

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping medium punch

[Statedef 3330]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
ctrl = 0
anim = 610
poweradd = 0
sprpriority = 2

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 50
guardflag = HA
priority = 3, Hit
pausetime = 10,10
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-1
getpower = 0

[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "z"
value = 3340

[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "b"
value = 3360

[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "c"
value = 3370

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping strong punch

[Statedef 3340]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
ctrl = 0
anim = 620
poweradd = 0
sprpriority = 2

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 80
guardflag = HA
priority = 3, Hit
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,5
fall = 1
air.fall = 1
getpower = 0

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping light kick

[Statedef 3350]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
ctrl = 0
anim = 630
poweradd = 0
sprpriority = 2

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 22
guardflag = HA
priority = 3, Hit
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = 0
sparkxy = 0,-50
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-1
getpower = 0

[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "y"
value = 3330

[State 3110, 4]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "b"
value = 3360


[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "c"
value = 3370

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping medium kick
[Statedef 3360]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
ctrl = 0
anim = 640
poweradd = 0
sprpriority = 2

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 50
guardflag = HA
priority = 3, Hit
pausetime = 10,10
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-50
sparkno = 1
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-1
getpower = 0

[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "z"
value = 3340

[State 3110, 6]
type = ChangeState
trigger1 = MoveContact
trigger1 = command = "c"
value = 3370

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;---------------------------------------------------------------------------------------------
;Jumping strong kick




[Statedef 3370]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
ctrl = 0
anim = 650
poweradd = 0
sprpriority = 2
velset = 0,0

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 80
guardflag = HA
priority = 3, Hit
pausetime = 12,12
hitsound = S2,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,-30
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,5
fall = 1
air.fall = 1
getpower = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301

;teste 2 armor
; Hyper Armor custom hit state

[Statedef 3210]
MoveType = H

[State 3210, 1]
type = VelSet
trigger1 = time = 0
y = 0
x = -8

[State 3210, 2]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP
time = 1

[State 3210, 3]
type = ChangeAnim
trigger1 = time = 2
value = Anim
elem = AnimElemNo(0)

[State 3210, 4]
type = PalFX
trigger1 = time = 2
add = 100, 100, 100
time = 7
color = 50

[State 3210, 5]
type = ChangeState
trigger1 = time = 3
value = 3301


[Statedef 3380]
type    = A
movetype= A
physics = N
juggle = 0;  = 4
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1110
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1102
ID = 1102
pos = 10,-10
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 2
removeongethit = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Raio Reto"
ID = 3381
stateno = 3381
pos = 15,-105
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0
sprpriority = 5


[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301


[Statedef 3381]
type = A
movetype = A
physics = N
anim = 1101
velset = 0,0
sprpriority = 5
poweradd = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 220, HitDef]
type = HitDef
triggerall = enemynear, name != "Prime Sentinels"
triggerall = enemynear, name != "helibonus"
triggerall = enemynear, name != "Trainingroom"
trigger1 = timemod= 3,1
attr = S, HA
damage = 8
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = -1
sparkxy = -30,0
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,-4
guard.velocity = -5
air.velocity = -14,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall= 1
fall = 1
palfx.time = 25
palfx.add = 0,0,150
p2stateno = 1111
getpower = 0

[State 220, HitDef]
type = HitDef
triggerall = enemynear, name = "Prime Sentinels" || enemynear, name = "helibonus" || enemynear, name = "Trainingroom"
trigger1 = timemod= 3,1
attr = S, HA
damage = 8
guardflag = MA
pausetime = 0,0
hitsound = S2,2
guardsound = S3,0
sparkno = -1
sparkxy = -30,0
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15,-4
guard.velocity = -5
air.velocity = -14,8
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall= 1
fall = 1
palfx.time = 25
palfx.add = 0,0,150
getpower = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 1110
;ignorehitpause =
;persistent =

;rex

[Statedef 3200]
type    = S
movetype= A
physics = N
juggle = 0;  = 1
velset = 0,0
poweradd = 0
anim = 3200
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,17


;-------------------
; DCvM hyper portrait/BG

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
trigger1 = AnimElem = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimElem = 5
Time = 60
;anim =-1;s3012
pos = 62,-97
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

; end DCvM stuff
;-------------------
[State 0, ChangeState]
type = ChangeState
trigger1 = time = 77
value = 3201
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


[Statedef 3201]
type    = S
movetype= A
physics = N
juggle = 0;  = 1
velset = 0,0
poweradd = 0
anim = 3201
ctrl = 0
sprpriority = 5

[State 0, PlaySnd]
type = PlaySnd
triggerall = time < 190
trigger1 = timemod = 15,1
value = 0,2


[State 0, VarRandom]
type = VarRandom
trigger1 = timemod = 2,1
v = 40
range = 0,5

[State 0, Projectile]
type = Projectile
triggerall = time < 190
trigger1 = timemod = 6,1
ProjID = 3211
projanim = 3211 + var(40)
projhitanim = -1;3510 + var(40)
projremanim = -1;3510 + var(40)
projcancelanim = -1;3510 + var(40)
projscale = 1.1,1.1
projremove = 0
projremovetime = -1
velocity = 11,2;+floor(random/500),0;-3+floor(random/500)
remvelocity = 0,0
accel = 0,-0.1
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 3
projedgebound = 340
projstagebound = 340
projheightbound = -240
offset = -230,-60-floor(random/8)
postype = p1         ;p2,front,back,left,right
projshadow = 100,100,100
supermovetime = 0
pausemovetime = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 18,1
pausetime = 5,5
sparkno = 3
sparkxy = 20,0
hitsound = s2,0
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 20
ground.hittime = 25
air.hittime = 25
ground.velocity = -6,-4
air.velocity = -3,-1.9
sprpriority = 1
p1getp2facing = 0
fall = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
persistent = 1
getpower = 0

[State 0, Projectile]
type = Projectile
trigger1 = time  = 180
ProjID = 3210
projanim = 3210
projhitanim = -1;3510 + var(40)
projremanim = -1;3510 + var(40)
projcancelanim = -1;3510 + var(40)
projscale = 1,1
projremove = 0
projremovetime = -1
velocity = 12,0;+floor(random/500),0;-3+floor(random/500)
remvelocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 1
projsprpriority = 10
projedgebound = 340
projstagebound = 340
projheightbound = -240
offset = -230,(enemynear,pos y)-50
postype = p1         ;p2,front,back,left,right
projshadow = 100,100,100
supermovetime = 0
pausemovetime = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 100,10
pausetime = 15,15
sparkno = 3
sparkxy = 20,0
hitsound = s2,2
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 20
ground.hittime = 25
air.hittime = 25
ground.velocity = -10,-4
air.velocity = -12,-1.9
sprpriority = 10
p1getp2facing = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
persistent = 1
getpower = 0

[State 0, VarSet]
type = VarSet
trigger1 = fvar(27) != 1
fv = 27
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause =
;persistent =




