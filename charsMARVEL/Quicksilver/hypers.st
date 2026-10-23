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

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 5
Time = 60
;anim =-1;s3012
pos = -4,-85
sound = S8889,0
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !Var(29)
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
triggerall = !Var(29)
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
triggerall = !Var(29)
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

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 10
FrameGap = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = -30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 171,13

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41    ;fv = 10
value = 0
;ignorehitpause =
;persistent =



[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 0

[StateDef 3001]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 3001
velset = 60,0
sprpriority = -20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,13

[State 3001]
type = PlayerPush
trigger1 = 1
value = 0

[State -2]
type = ScreenBound
;triggerall = var(10) != 1
trigger1 = 1
value = p2bodydist x < 30 && BackEdgeDist < 30



[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 41    ;fv =
value = 1



[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 20,5
animtype = hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = 3
sparkxy = -10, -70
hitsound = 5,0
guardsound = 6,0
ground.type = low
ground.slidetime = 35
ground.hittime  = 35 ;1
ground.velocity = -35,0
air.type = Low
air.hittime = 30
air.velocity = -6,-1
fall = ifelse(var(41)=10,1,0)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = movehit
statetype = S       ;S,A,C,L
movetype = I        ;I,A,H
physics = N
sprpriority = -20


[State 3110, back to stance]
type = ChangeState
trigger1 = var(41) > 10
trigger2 = moveguarded
trigger3 = time = 15 && !movehit
value = 1202
ctrl = 0

[State 0, Explod]
type = Explod
trigger1 = timemod = 4,1
anim = 918
ID =  918
pos = -30,15
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = -15
ownpal = 1
removeongethit = 0
scale = 3,0.8

[State 0, Turn]
type = Turn
trigger1 = time > 10

[State 3110, back to stance]
type = ChangeState
trigger1 = time > 10
value = 3002
ctrl = 0


;trigger1 = p2bodydist x < 0

[StateDef 3002]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 3001
velset = 60,0
sprpriority = 20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,11


[State 0, Explod]
type = Explod
trigger1 = timemod = 4,1
anim = 918
ID =  918
pos = -30,20
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 25
ownpal = 1
removeongethit = 0
scale = 3,0.8

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = movehit
statetype = S       ;S,A,C,L
movetype = I        ;I,A,H
physics = N
sprpriority = 20

[State 3001]
type = PlayerPush
trigger1 = 1
value = 0

[State -2]
type = ScreenBound
;triggerall = var(10) != 1
trigger1 = 1
value = p2bodydist x < 30 && BackEdgeDist < 30


;ignorehitpause =
;persistent =




[State 3110, back to stance]
type = ChangeState
trigger1 = var(41) > 10
trigger2 = moveguarded
trigger3 = time = 15 && !movehit
value = 1202
ctrl = 0


[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 41    ;fv =
value = 1


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 20,5
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5,5
sparkno = 0
sparkxy = -10, -70
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 35
ground.hittime  = 35 ;2
ground.velocity = -35,0;-2
air.type = Low
air.hittime = 30
air.velocity = -6,-1
fall = ifelse(var(41)=10,1,0)


[State 0, Turn]
type = Turn
trigger1 = time > 10

[State 3110, back to stance]
type = ChangeState
trigger1 = time > 10
value = 3001
ctrl = 0


;trigger1 = p2bodydist x < 0



; Hyper 1 -- Mega beam
[StateDef 3100]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3100
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = -4,-85
sound = S8889,0
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !Var(29)
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
triggerall = !Var(29)
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
triggerall = !Var(29)
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




[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101
ctrl = 0


[StateDef 3101]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3101
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod =3,1
value = 0,1



[State 200, HitDef]
type = HitDef
trigger1 = timemod =2,1
attr = S,SA
damage = 5,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 1,1
sparkno = 3
sparkxy = -10, -80 + floor(random/20)
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 4
ground.velocity = 0
air.type = Low
air.hittime = 4
air.velocity = 0,0
getpower = 0
fall= 1
air.fall= 1
guard.velocity = -2
airguard.velocity = -2


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3102
ID = 3102
pos = 90,-80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 10
shadow = 100,100,100
removeongethit = 1
;ignorehitpause =
;persistent =



[State 3110, back to stance]
type = ChangeState
trigger1 =time > 100
value = 0
ctrl = 1


; Hyper 1 -- Mega beam
[StateDef 3200]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3202
velset = 0,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 7
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 7
Time = 60
;anim =-1;s3012
pos = 20,-80
sound = S8889,0
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !Var(29)
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
triggerall = !Var(29)
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
triggerall = !Var(29)
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

[State 800, Hitdef]
type = HitDef
Trigger1 = Time = 1
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = S3, 1
sprpriority = 0
p1facing =  1
p2facing = 1
p1stateno = 3210
p2stateno = 3220
guard.dist = 0
fall = 1
getpower= 0


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause =
;persistent =


;Throw 1 - P1
[Statedef 3210]
type = S
movetype = I
physics = N
anim = 1310
velset = 0, 0
sprpriority = 0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3,1

[State 0, PlaySnd]
type = PlaySnd
triggerall = time < 80
trigger1 = timemod = 6,1
value = 171,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = time >= 80 && time < 160
trigger1 = timemod = 4,1
value = 171,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = time >= 160
trigger1 = timemod = 2,1
value = 171,0

[State 0, PosSet]
type = PosSet
trigger1 =  time = 0
x = 90*facing

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 35, -70
time = 250

;[State 0, VelAdd]
;type = VelAdd
;trigger1 =  time > 0 && vel x < 40
;x = 1.5



[State 0, Explod]
type = Explod
triggerall= time < 185 || time > 225
trigger1 = timemod = 4,1
anim = 3204
ID =  3204
pos = -40,5
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit = 0
scale = 3,1

[State 0, Explod]
type = Explod
triggerall= time > 185
triggerall= time < 225
trigger1 = timemod = 2,1
anim = 3203
ID =  3203
pos = 10,5
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit = 0
scale = 3,1.5


;ignorehitpause =
;persistent =
;[state 1101, twister]
;type = afterimage
;trigger1 = time = 0
;time = -1
;ignorehitpause = 1
;PalBright = 0, 0, 0
;PalContrast =  105,105,105;255
;PalAdd = 0, 0, 0
;PalMul = 1,1,1
;trans = add1;AS250D250;none
;Length = 30
;FrameGap = 3

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3206
ID =  3206
pos = -40,0
postype = p1;,right
bindtime = -1
removetime = 250
sprpriority = -20
ownpal = 1
removeongethit = 1
scale = 1.,1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3207
ID =  3207
pos = -80,0
postype = p1;,right
bindtime = -1
removetime = 250
sprpriority = -21
ownpal = 1
removeongethit = 1
scale = 1.,1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3208
ID =  3208
pos = -120,0
postype = p1;,right
bindtime = -1
removetime = 250
sprpriority = -22
ownpal = 1
removeongethit = 1
scale = 1.,1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3209
ID =  3209
pos = -160,0
postype = p1;,right
bindtime = -1
removetime = 250
sprpriority = -23
ownpal = 1
removeongethit = 1
scale = 1.,1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3210
ID =  3210
pos = -200,0
postype = p1;,right
bindtime = -1
removetime = 250
sprpriority = -24
ownpal = 1
removeongethit = 1
scale = 1.,1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3210
ID =  3210
pos = -240,0
postype = p1;,right
bindtime = -1
removetime = 250
sprpriority = -24
ownpal = 1
removeongethit = 1
scale = 1.,1




[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3201
ID =  3201
pos = 0,0
postype = left;,right
bindtime = -1
removetime = 250
sprpriority = 200
ownpal = 1
removeongethit = 1
ontop = 1
scale = 1.3,1.3

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3200
ID =  3200
pos = 0,0;ifelse(facing,0,0)
postype = left;,right
removetime = 245
sprpriority = -40
ownpal = 1
facing = facing
removeongethit = 1
vel = -20*facing,0
accel = -0.3*facing,0


[State 810, Hits]
type = TargetLifeAdd
trigger1 = time > 250
value = -210
kill = 0

;[State 0, ScreenBound]
;type = ScreenBound
;trigger1 = 1
;value = 0
;movecamera = 15,0
;ignorehitpause =
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time > 250
trigger2 = time = 0
value = 30,0

[State 0, TargetState]
type = TargetState
trigger1 = time > 250
value = 3230 ;uhu


[State 810, Change State]
type = ChangeState
trigger1 = time > 250
value = 1202
ctrl = 0


;------------------------
;Throw 1 - P2
[Statedef 3220]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0
poweradd = 80
sprpriority = -2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 150,0
;ignorehitpause =
;persistent =

[State 820, Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 1320


[Statedef 3230]
type    = A
movetype= H
physics = N
velset = -50,-1

[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = 5
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 3

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -1
kill = 1
absolute = 0

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 830

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 40

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0




