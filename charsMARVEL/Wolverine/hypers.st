;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 2
value = 174,0

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 2
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 2
Time = 60
;anim =-1;s3012
pos = 34,-30
sound = S8889,0
poweradd = -1000

[State 3000, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 4
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

[State 3000, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 4
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

[State 3000, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 4
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

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 8
value = S171,1

[State 3000, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 8
attr = S, HA
damage = 6,1
hitflag = MAFD
guardflag = MA
priority = 4, Hit
pausetime = 0,0
hitsound = S171,5
guardsound = 6,0
sparkno = 2
sparkxy = -40,-40-floor(random/33)
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -3,-1
guard.velocity = -4
air.velocity = -4,-1
air.fall = 1
getpower = 0

[State 3000, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1001
ID = 1001
pos = -10,10
postype = p1  ;p2,front,back,left,right
bindtime = -1
scale = 0.8,0.8
removetime = -2
scale = 1,1
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 3000, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1002
ID = 1002
pos = -30,0
scale = 0.8,0.8
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 3000, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 4

[State 3000, VelAdd]
type = VelAdd
triggerall = time > 9
trigger1 = vel x < 8
x = 1

[State 3000, Explod]
type = Explod
trigger1 = time = 10
anim = 3202
ID = 3202
pos = -80,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = -2
removeongethit = 1

[State 3000, VarSet]
type = VarSet
trigger1 = movecontact
fv = 29
value = 1

[State 3000, changestate]
type = ChangeState
trigger1 = time > 80
value = 3010

;------------------------------
[StateDef 3010]
type = S
movetype = A
physics = S
anim = 3010
velset = 0,0

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S171,0

[State 3010, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 40,4
hitflag = MAFD
guardflag = MA
priority = 4, Hit
pausetime = 0,0
hitsound = S171,5
guardsound = 6,0
sparkno = 3
sparkxy = -40,-60
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -13,-1
guard.velocity = -4
air.velocity = -14,-1
air.fall = 1
fall = 1
getpower = 0

[State 3010, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------
;hyper throw
;Hyper 1 -- Mega beam
[StateDef 3100]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0

 [State 100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 100, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 3
value = S171,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 2
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 2
Time = 60
;anim =-1;s3012
pos = -4,-65
sound = S8889,0
poweradd = -1000


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 4
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
trigger1 = time = 4
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
trigger1 = time = 4
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

 [State 1270]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-       ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 3110;+(StateType = A)
p2stateno = 3120;+(StateType = A)
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S1,9
id = 800
;guardflag = MA
guardsound = S4,0
guard.sparkno = S8430
;damage = 4*var(30),var(30)/2
sparkxy = -10,-60
getpower = 0
kill = 0

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 3110]
type    = S
movetype= A
physics = N
anim = 3110
sprpriority = -1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,5

 [State 100, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 7
value = 171,5

 [State 100, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 8
value = 172,8

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3111
ID = 3111
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 0
removeongethit = 1

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 6
value = -45
kill = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 100,-40

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70,-45

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50,-75

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 5,-85

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -5,-90

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = -20,-100

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 7
value = 3130

;[State 0, EnvShake]
;type = EnvShake
;trigger1 = AnimElem = 7
;time = 5
;freq = 20
;ampl = -2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 3112
ID = 3112
pos = 90,-40
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 6
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 3112
ID = 3112
pos = -15,-100
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 6
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 3114
ID = 3113
pos = -15,-100
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 7
ownpal = 1
removeongethit = 0
scale = 1.2,1.2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 3112
ID = 3112
pos = -35,-100
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 6
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 3114
facing = -1
ID = 3113
pos = -35,-100
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 7
ownpal = 1
removeongethit = 0
scale = 1.2,1.2

[State 0, ChangeState]
type = ChangeState
trigger1 = enemynear, stateno = 3140
value = 3115
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

 [Statedef 3115]
type    = C
movetype= A
physics = C
anim = 3115
velset = 0,0
sprpriority = 1
juggle = 0; = 0

 [State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 5
value = 171,2

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 5
attr = S, HA
guardflag = MA        ;HLA
getpower = 0,0
givepower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 3
pausetime = 2,2
sparkno = -1
hitsound = S171,5
guardsound = 6,0
guard.sparkno = 0
sparkxy = -40,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
kill =0
p2stateno = 3140

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3117
ID = 3117
pos = 10,-5
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 3117
ID = 3117
pos = -20,-5
postype = p1  ;p2,front,back,left,right
facing = -1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
pos = 0,0

[State 3600, ChangeState]
type = ChangeState
trigger1 = time > 150
value =  3116
ctrl = 0

 [Statedef 3116]
type    = C
movetype= A
physics = C
anim = 3116
velset = 0,0
sprpriority = 1
juggle = 0; = 0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,1

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 411
ID = 411
pos = 20,5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
guardflag = MA        ;HLA
getpower = 0,0
givepower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 10
pausetime = 0,0
sparkno = 1
sparkxy = -40,0
hitsound = S171,6
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 20
ground.hit = 20
air.hittime = 20
hittime = 20
ground.velocity = -8,-2
air.velocity = -8,-2
kill =1
fall = 1

[State 3600, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =  11;3116
ctrl = 1



[Statedef 3120]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3120

[State 816, SelfState]
type = SelfState
trigger1 = enemynear, name = "Wolverine" && enemynear, stateno != 3110
value = 5100
ctrl = 0

[Statedef 3130]
type    = A
movetype= A
physics = N
velset = 0,-3
poweradd = 0
sprpriority = 1

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0);&& (!SelfAnimExist(5051));Not if hit off ground anim
value = 3130



[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -10
Y = 40

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.3

[State 0, LifeAdd]
type = LifeAdd
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = -30
kill = 0

[State 816, SelfState]
type = changestate
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 3140
ctrl = 0

[Statedef 3140]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 0
sprpriority = 10

[State 0, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0
;ignorehitpause =
;persistent =


[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0);&& (!SelfAnimExist(5051));Not if hit off ground anim
value = 1226

;[State 816, SelfState]
;type = SelfState
;trigger1 = enemynear, name = "Wolverine" && enemynear, stateno = 3116
;value = 5120
;ctrl = 0



;weapon x
[StateDef 3200]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 0,0

 [State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 172,6
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 8
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 8
Time = 60
;anim =-1;s3012
pos = -4,-55
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


[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 3201

 [StateDef 3201]
type = S
movetype = A
physics = S
anim = 3201
velset = 25,0

[State 200, swoosh]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 0, VelAdd]
type = VelAdd
trigger1 = vel x < 25
x = 2
;ignorehitpause =
;persistent =


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3202
ID = 3202
pos = -80,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = -2
removeongethit = 1
;ignorehitpause =
;persistent =


[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 40,10
guardflag = MA
pausetime = 0,0
hitsound = S171,5
guardsound =6,0
priority = 4, Hit
sparkno = 3
sparkxy = -40,-60
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 25
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,1
p1stateno = 3202
getpower = 0


[State 1020, changestate]
type = ChangeState
trigger1 = time > 20
value = 3205
ctrl = 0


 [StateDef 3202]
type = S
movetype = A
physics = S
anim = 3203
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),0
;ignorehitpause =
;persistent =


[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 30
 ;2  5 11 17 23 29 33 35 40 52 55 59 63  65 68 72 78


[State 250, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 11
trigger4 = animelem = 17
trigger5 = animelem = 23
trigger6 = animelem = 29
trigger7 = animelem = 33
trigger8 = animelem = 35
trigger9 = animelem = 39
trigger10 = animelem = 51
trigger11 = animelem = 54
trigger12 = animelem = 58
trigger13 = animelem = 62
trigger14 = animelem = 64
trigger15 = animelem = 69
trigger16 = animelem = 71
trigger17 = animelem = 77
attr = S, HA
damage = 6,2
guardflag = MA
pausetime = 0,0
hitsound = S171,7
guardsound = 6,0
sparkno = 1
sparkxy = -40,-30-floor(random/33)
animtype = Heavy
ground.type = low
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0,1
getpower = 0

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 3203
ctrl = 0

[StateDef 3203]
type = A
movetype = A
physics = N
anim = 3204
velset = 2,-2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 9
x = 10
y = -2

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 10
x = 6
y = -1

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 11
x = 4
y = -1

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 12
x = 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 9
anim = 3205
ID = 3205
pos = 12,-40
postype = p2  ;p2,front,back,left,right
facing = 1
removetime = -2
scale = 1,1
sprpriority = -3
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 9
anim = 3205
ID = 3205
pos = -12,-40
postype = p2  ;p2,front,back,left,right
facing = -1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 0




[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 50,10
guardflag = MA
pausetime = 11,11
hitsound = S171,5
guardsound = 6,0
sparkno = -1;3
sparkxy = -40,-60
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10,-5
guard.velocity = -8
air.velocity = -10,-5
fall = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -40
;ignorehitpause =
;persistent =


[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

[StateDef 3205]
type = S
movetype = A
physics = N
anim = 3206
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
;x = 6
y = 0

[State 460, Dust]
type = Explod
trigger1 = animelem = 1, >= 0
;trigger1 = animelem = 8, < 0
trigger1 = timemod = 3,0
scale = const(size.xscale)
id = 451
anim = 451
pos = -45,0
sprpriority = 2
bindtime = 1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1


[State 3600, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =  11
ctrl = 1

;feral rage
[StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3300
velset = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 172,6

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 6
value = 174,4


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 6
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 6
Time = 60
;anim =-1;s3012
pos = -4,-45
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

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3301)=0
anim = 3301
id = 3301
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
triggerall = animelem = 6
trigger1 = numexplod(3302)=0
anim = 3302
id = 3302
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1


[State 0, VarSet]
type = VarSet
trigger1 = animelem = 6
v = 11    ;fv = 10
value = 3



[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



;fator de cura
[StateDef 3400]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3400
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  time = 6
value = 174,7


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 6
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 6
Time = 60
;anim =-1;s3012
pos = -4,-70
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

;[State 0, VarSet]
;type = VarSet
;trigger1 = time = 0
;v = 11    ;fv = 10
;value = 0

;[State 0, VarSet]
;type = VarSet
;trigger1 = animelem = 2
;v = 11    ;fv = 10
;value = 80

[State 0, LifeAdd]
type = LifeAdd
triggerall = life < 50
trigger1 = animelem = 2
value = 50

[State -3, sense bar]
type = Explod
triggerall = animelem = 2
trigger1 = numexplod(3401)=0
anim = 3401
id = 3401
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
triggerall = animelem = 2
trigger1 = numexplod(3402)=0
anim = 3402
id = 3402
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time > 60
value = 0
ctrl = 1


