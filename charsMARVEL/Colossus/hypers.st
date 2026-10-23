;Hyper2

[Statedef 3000]
type    = S
movetype= A
physics = N
velset = 0,0
poweradd = 0
ctrl = 0
sprpriority = 2

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3000


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = PrevStateNo != 9000
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = PrevStateNo != 9000
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = -14,-75
sound = S8889,0
poweradd = -1000
movetime = 60



[State -2, Helper]
type = Helper
triggerall = PrevStateNo != 9000
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
triggerall = PrevStateNo != 9000
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
triggerall = PrevStateNo != 9000
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


;--------------------------------------------



[State 3000, End]
type = ChangeState
trigger1 = time > 75 && PrevStateNo != 9000
trigger2 = animtime = 0 && PrevStateNo = 9000
value = 3001
ctrl = 1

;-------------
[Statedef 3001]
type    = S
movetype= A
physics = N
velset = 8,0
poweradd = 0
ctrl = 0
sprpriority = 2


[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 9
value = 8,1

[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = (gametime%6)=0 ;&& var(21)=1
time = 50
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3001

[State 220, HitDef]
type = HitDef
trigger1 = time > 1
;trigger1 = hitcount < 7
;trigger1 = moveguarded =! 1
trigger1 = timemod = 5,0
attr = S,NA
damage = 12,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 5,0
sparkno = 3
sparkxy = -15, -70
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -4,0
air.hittime = 10
air.velocity = -3,-1
envshake.time = 5
envshake.ampl = 5

[State 3000, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = hitcount =0
value = 3003
ctrl = 0

[State 3000, End]
type = ChangeState
trigger1 = hitcount >= 60
trigger2 = time > 100
value = 3003
ctrl = 0

;-------------
[Statedef 3003]   ;state to give time for explode to erase
type    = S
movetype= A
physics = N
velset = 5,0
poweradd = 0
ctrl = 0
sprpriority = 2


[State 100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 720,0

[State 420, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 20,20
animtype = up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 14,12
sparkno = 3
sparkxy = -20, -103
hitsound = 5,4
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = 8, -14
air.velocity = 8,-14
airguard.velocity = -6,0
yaccel = 0.39+(enemynear,const(movement.yaccel)/2)
fall = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3004


[State 3000, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1




[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0
poweradd = 0
ctrl = 0
sprpriority = 2

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = S15,8



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = PrevStateNo != 9000
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = PrevStateNo != 9000
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = -14,-75
sound = S8889,0
poweradd = -1000
movetime = 60



[State -2, Helper]
type = Helper
triggerall = PrevStateNo != 9000
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
triggerall = PrevStateNo != 9000
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
triggerall = PrevStateNo != 9000
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


;--------------------------------------------



[State 3000, End]
type = ChangeState
trigger1 = time > 70 && PrevStateNo != 9000
trigger2 = animtime = 0 && PrevStateNo = 9000
value = 3101
ctrl = 0


[Statedef 3101]
type    = A
movetype= A
physics = N
velset = 0,-8
poweradd = 0
ctrl = 0
anim = 3101
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 105,1


[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = (gametime%6)=0 ;&& var(21)=1
time = 50
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1

[State 420, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 120,5
animtype = up
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 14,12
sparkno = 3
sparkxy = -20, -103
hitsound = s1,30
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -4,-5
air.velocity = -4,-5
airguard.velocity = -6,0
yaccel = 0.39+(enemynear,const(movement.yaccel)/2)
fall = 1


[State 3000, End]
type = ChangeState
trigger1 = time > 30
trigger2 = command = "z"
trigger3 = command = "x"
trigger4 = command = "y"
value = 3102
ctrl = 0

[Statedef 3102]
type    = A
movetype= A
physics = N
velset = 10,10
poweradd = 0
ctrl = 0
anim = 3102
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 105,1


[State 3000,7]; cor do modo blindado
type = PalFX
trigger1 = (gametime%6)=0 ;&& var(21)=1
time = 50
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1

[State 420, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 140,20
animtype = up
hitflag = MAFD
guardflag = L
priority = 5, Hit
pausetime = 14,12
sparkno = 3
sparkxy = -20, -10
hitsound = s1,30
ground.type = High
ground.slidetime = 30
ground.hittime  = 40
ground.velocity = -8,14
air.velocity = -8,14
airguard.velocity = -6,0
yaccel = 0.39+(enemynear,const(movement.yaccel)/2)
fall = 1


[State 3000, End]
type = ChangeState
trigger1 = pos y > 20;70
value = 3103
ctrl = 0


[Statedef 3103]
type    = S
movetype= I
physics = S
velset = 0,0
poweradd = 0
ctrl = 0
anim = 3103
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 32720,0


[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8400
ID = 8400
sprpriority = 10

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8401
ID = 8401
sprpriority = -10


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 100
ampl = -4

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause =
;persistent =





[Statedef 3200]
type    = S
movetype= A
physics = N
velset = 0,0
poweradd = 0
ctrl = 0
sprpriority = 2

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3200

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 171,13


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = PrevStateNo != 9000
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = PrevStateNo != 9000
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = -14,-75
sound = S8889,0
poweradd = -1000
;movetime = 60



[State -2, Helper]
type = Helper
triggerall = PrevStateNo != 9000
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
triggerall = PrevStateNo != 9000
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
triggerall = PrevStateNo != 9000
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


;--------------------------------------------
[State -3, sense bar]
type = Explod
triggerall = animelem = 3
trigger1 = numexplod(3201)=0
anim = 3201
id = 3201
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State -3, sense bar]
type = Explod
triggerall = animelem = 3
trigger1 = numexplod(3202)=0
anim = 3202
id = 3202
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 5
value = 171,14


[State 3000, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1






