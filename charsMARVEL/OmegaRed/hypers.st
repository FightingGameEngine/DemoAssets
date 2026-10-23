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
physics = S
ctrl = 0
anim = 3000
velset = 0,0

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
pos = -4,-55
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

[State 195]
type = PlaySnd
trigger1 = AnimElem = 6
value = 121,16

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 6
helpertype = normal
name = "deadfactor"
ID = 3001
stateno = 3001
pos = 0,0
sprpriority = 10
supermove

;[State 3000, portraitBG]
;type = Explod
;trigger1 = AnimElem = 1
;anim = 3002
;ID = 3002
;pos = 0,0
;postype = p1
;bindtime = -1
;movetime = 800
;removetime = 800
;sprpriority = 10
;removeongethit = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 3003
ID = 3003
pos = 0,0
postype = p1
bindtime = -1
removetime = 800
movetime = 800
sprpriority = -8
removeongethit = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Hyper 1 - beam helper
[StateDef 3001]
type = A
movetype = A
physics = C
anim = 3002
ctrl = 0
sprpriority = 10

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y ;- 125
sprpriority = 10

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10

[State 3010, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3010, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1



[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 50,0
attr = S,NA
hitflag = MAF
guardflag = MA
damage = 25,3
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = -1
sparkxy = 0,75
animtype = Heavy
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 2
guard.velocity = 2
air.velocity = 2,-2
kill = 0
guard.kill = 0
fall.kill = 0
palfx.time = 25
palfx.add = 0,64,0
;p2stateno = 3002


[State 3115, DestroySelf]
type = DestroySelf
trigger1 = Time = 800


; Super Armor State
[Statedef 3002]
type = U
movetype = H

[State 3002, PalFX]
type = PalFX
trigger1 = time = 0
time = 25
add = 0,0,0
mul = 100,255,100
sinadd = 0,100,0,10
invertall = 0
color = 256

[State 3002, ChangeState];Dead
type = SelfState
trigger1 = Life <= 0
value = ifelse(StateType = A, 5020,5000)

[State 3002, End]
type = SelfState
trigger1 = time >= 2
value = ifelse(StateType = A, 50,0)
ctrl = 1



; Hyper 2 omega naum sei o que-- Mega beam
[StateDef 3100]
type    = S
physics = S
ctrl = 0
anim = 3100
velset = 0,0

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
pos = 1,-55
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

[State 195]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000,0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "tentacles"
ID = 3101
stateno = 3101
pos = 0,0
sprpriority = -3
supermove

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "tentacles"
ID = 3101
stateno = 3101
pos = 0,0
sprpriority = -3
supermove
facing = -1


[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Hyper 1 - beam helper
[StateDef 3101]
type = A
movetype = A
physics = C
anim = 3101
ctrl = 0
sprpriority = -3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y ;- 125
sprpriority = -3

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10

[State 3010, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3010, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 12,0
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 20,3
pausetime = 0,0
hitsound = -1
guardsound = -1
sparkno = 2
sparkxy = -10,-70
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-3
guard.velocity = -2
air.velocity = -2,-2
kill = 1
guard.kill = 1
fall.kill = 1
;palfx.time = 25
;palfx.add = 0,64,0

[State 2047]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = Parent,stateno != 3100


; Hyper 1 -- Mega beam
[StateDef 3200]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 121,16


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
pos = 26,-45
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


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 121,17


[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 3
anim = 3201
ID = 3201
pos = 70,-10
postype = p1
bindtime = -1
removetime = -2
movetime = 800
sprpriority = 50
removeongethit = 1
scale = 1,1.5

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
hitsound = -1
guardsound = -1
sparkxy = -20,-30
sparkno = -1
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3
p2stateno = 3220

[State 3110, back to stance]
type = ChangeState
trigger1 = time > 90
value = 3210
ctrl = 0


[StateDef 3210]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3202
velset = 0,0

[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[StateDef 3220]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 5300
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, PalFX]
type = PalFX
trigger1 = timemod = 10,1
time = 10
add = 0,80,0
sinadd = 0,50,0,10
invertall = 0
color = 256

 [State 0, LifeAdd]
type = LifeAdd
trigger1 = timemod = 3,1
value = -1
kill = 0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = timemod = 2,1
value = -10
;ignorehitpause =
;persistent =





[State 3110, back to stance]
type = selfstate
trigger1 = time > 200
value = 0
ctrl = 1



[StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 800
velset = 0,0



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 5
Time = 60
;anim =-1;s3012
pos = -20,-75
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

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = -1
p1stateno = 3310
p2stateno = 3320
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80


[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 3310]
type    = S
movetype= A
physics = N
anim = 3300
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 10,1
value = 1240,0


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3301
ID = 3301
pos = -80,-10
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 10
removeongethit = 1
;ignorehitpause =
;persistent =
[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 200
add = 60,10,10
color = 128
sinadd = 60,10,10,10
color = 256
;ignorehitpause



[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 52,0



[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 90,-70

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 90,-70

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 200
value = 0,3


[State 810, TargetState]
type = TargetState
trigger1 = time > 200
value = 3330



[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = timemod= 3,1
value = -1

[State 810, TargetLifeAdd]
type = LifeAdd
trigger1 = timemod= 3,1
value = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time > 200
id = 3301

[State 801, ChangeState]
type = ChangeState
trigger1 = time > 200
value = 0
ctrl = 1

[Statedef 3320]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 200
add = 10,10,10
color = 128
sinadd = 10,10,10,-60
color = 256

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3320

[Statedef 3330]
type    = A
movetype= H
physics = N
velset = 5,-1
poweradd = 50

[State 0, Turn]
type = Turn
trigger1 = time = 0
;ignorehitpause =
;persistent =


[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060));Not if hit off ground anim
value = 3330

[State 816, SelfState]
type = SelfState
trigger1 = time >= 2
value = 5100
ctrl = 0





