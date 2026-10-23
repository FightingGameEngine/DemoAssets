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
;Berserker Claw X

[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 171,5


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 7
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 7
Time = 60
;anim =-1;s3012
pos = -20,-90
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


;about 8 ticks before 3110
;[State 3000]
;type = Helper
;trigger1 = Time = 13
;stateno = 33117
;supermovetime = 9999
;pausemovetime = 9999
;pos = 0,-200
;ownpal = 1
;postype = back
;size.xscale = 1
;size.yscale = 1

;[State 3000]
;type = Helper
;trigger1 = Time = 21
;stateno = 33110
;id = 33110
;supermovetime = 9999
;pausemovetime = 9999
;pos = -12,-90
;ownpal = 1


[State 3000]
type = ChangeState
trigger1 = animtime = 0
value = 3001
ctrl = 0


;---------------------------------------------------------------------------
;Berserker Claw X
[Statedef 3001]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 2
facep2 = 1

[State 3001]
type = PlayerPush
trigger1 = 1
value = 0

[State 3001]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3001]
type = PlaySnd
trigger1 = Time = 1
value = 0,3

[State 3001]
type = VelSet
trigger1 = AnimElem = 3
x = 20
persistent = 0





[State 3001]
type = VelSet
trigger1 = FrontEdgeDist < -30
x = 1
persistent = 0

[State 3001]
type = VelAdd
triggerall = Vel X > 0; && !MoveContact
trigger1 = AnimElem = 5, >= 0
x = -0.3


[State 3001]
type = HitDef
attr = S, HA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage =50
animtype = Hard
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-40
hitsound   = s172,10
guardsound = 6,0
sparkno = 3
ground.type = Low
ground.slidetime = 10
ground.hittime  = 60
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = 50,25
palfx.time = 1
palfx.add = 256,256,256
;sprpriority = 3

[State 3001]
type = ChangeAnim
trigger1 = MoveContact
value = 3007
ignorehitpause = 0
persistent = 0


[State 3001]
type = ChangeAnim
trigger1 = Anim = 3007 && FrontEdgeDist < 10
value = 3007
elem = 5
ignorehitpause = 0
persistent = 0

[State 3001]
type = Explod
trigger1 = AnimElem = 4
anim = 21244
sprpriority = 5
ownpal = 1
removeongethit = 1
bindtime = -1

[State 3001]
type = Helper
trigger1 = MoveContact
stateno = 21240
id = 21240
name = "Slash"
ownpal = 1
persistent = 0
pos = 0,-20





[State 3001]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 3007
value = 3002
ctrl = 0


[State 3001]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 3001
trigger2 = time > 100
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Berserker Claw X
[Statedef 3002]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 2
facep2 = 1


[State 3002]
type = PlayerPush
trigger1 = 1
value = 0

[State 3002]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 3002]
type = PlaySnd
trigger1 = Time = 1
value = 0,3

[State 3002]
type = VelSet
trigger1 = AnimElem = 3
x = 20
persistent = 0



[State 3002]
type = VelSet
trigger1 = FrontEdgeDist < -30
x = 1
persistent = 0

[State 3002]
type = VelAdd
triggerall = Vel X > 0 && !MoveContact
trigger1 = AnimElem = 5, >= 0
x = -0.3


[State 3002]
type = HitDef
attr = S, HA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 50
animtype = Hard
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-40
hitsound   = S172,8
guardsound = 6,0
sparkno = 3
ground.type = High
ground.slidetime = 10
ground.hittime  = 60
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 1
palfx.add = 256,256,256


[State 3002]
type = ChangeAnim
trigger1 = MoveContact
value = 3007
ignorehitpause = 0
persistent = 0


[State 3002]
type = ChangeAnim
trigger1 = Anim = 3007 && FrontEdgeDist < 10
value = 3007
elem = 5
ignorehitpause = 0
persistent = 0

[State 3002]
type = Explod
trigger1 = AnimElem = 4
anim = 21244
sprpriority = 5
ownpal = 1
removeongethit = 1
bindtime = -1

[State 3002]
type = Helper
trigger1 = MoveContact
stateno = 21240
id = 21240
name = "Slash"
ownpal = 1
persistent = 0
pos = 0,-20





[State 3002]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 3007
value = 3003
ctrl = 0


[State 3002]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 3001
trigger2 = time > 100
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Berserker Claw X
[Statedef 3003]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 2
facep2 = 1

[State 3003]
type = PlayerPush
trigger1 = 1
value = 0

[State 3003]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3003]
type = PlaySnd
trigger1 = Time = 1
value = 0,3

[State 3003]
type = VelSet
trigger1 = AnimElem = 3
x = 20
persistent = 0

[State 3003]
type = VelSet
trigger1 = FrontEdgeDist < -30
x = 1
persistent = 0

[State 3003]
type = VelAdd
triggerall = Vel X > 0 && !MoveContact
trigger1 = AnimElem = 5, >= 0
x = -0.3


[State 3003]
type = HitDef
attr = S, HA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 50
animtype = Hard
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-40
hitsound   = S172,8
guardsound = 6,0
sparkno = 3
ground.type = Low
ground.slidetime = 10
ground.hittime  = 60
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = 50,25
palfx.time = 1
palfx.add = 256,256,256


[State 3003]
type = ChangeAnim
trigger1 = MoveContact
value = 3007
ignorehitpause = 0
persistent = 0


[State 3003]
type = ChangeAnim
trigger1 = Anim = 3007 && FrontEdgeDist < 10
value = 3007
elem = 5
ignorehitpause = 0
persistent = 0

[State 3003]
type = Explod
trigger1 = AnimElem = 4
anim = 21244
sprpriority = 5
ownpal = 1
removeongethit = 1
bindtime = -1

[State 3003]
type = Helper
trigger1 = MoveContact
stateno = 21240
id = 21240
name = "Slash"
ownpal = 1
persistent = 0
pos = 0,-20





[State 3003]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 3007
value = 3004
ctrl = 0


[State 3003]
type = ChangeState
trigger1 = AnimTime = 0 && Anim = 3001
trigger2 = time > 100
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Berserker Claw X
[Statedef 3004]
type    = S
movetype= A
physics = N
juggle  = 1
;poweradd=
velset = 0,0
anim = 3004
ctrl = 0
sprpriority = 2
facep2 = 1


[State 3004]
type = PlayerPush
trigger1 = 1
value = 0

[State 3004]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 3004]
type = PlaySnd
trigger1 = Time = 1
value = 0,3

[State 3004]
type = VelSet
trigger1 = AnimElem = 3
x = 20
persistent = 0

[State 3004]
type = VelSet
trigger1 = FrontEdgeDist < -30
x = 1
persistent = 0

[State 3004]
type = VelAdd
triggerall = Vel X > 0 && !MoveContact
trigger1 = AnimElem = 5, >= 0
x = -0.3


[State 3004]
type = HitDef
attr = S, HA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 50
animtype = Hard
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-40
hitsound   = S172,8
guardsound = 6,0
sparkno = 3
ground.type = High
ground.slidetime = 10
ground.hittime  = 60
ground.velocity = 3,-11
air.velocity = 3,-11
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = 50,25
palfx.time = 1
palfx.add = 256,256,256


[State 3004]
type = ChangeAnim
trigger1 = MoveContact
value = 3008
ignorehitpause = 0
persistent = 0

[State 3004]
type = Explod
trigger1 = AnimElem = 4
anim = 21244
sprpriority = 5
ownpal = 1
removeongethit = 1
removetime = 18
bindtime = -1

[State 3004]
type = Helper
trigger1 = MoveContact
stateno = 21240
id = 21240
name = "Slash"
ownpal = 1
persistent = 0
pos = 0,-20


[State 3004]
type = Helper
trigger1 = MoveContact
stateno = 21241
id = 21241
name = "Slash"
ownpal = 1
persistent = 0
pos = 0,-80

[State 0, SuperPause]
type = SuperPause
triggerall = anim = 3008
trigger1 =animelem = 1
time = 20
anim = -1
sound = -1
move = 0
darken = 0;1





[State 3004]
type = ChangeState
trigger1 = FrontEdgeDist < 10 && Anim = 3008
trigger2 = time > 100
value = 3009
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;Berserker Claw End
[Statedef 3009]
type = S
movetype = I
physics =N
anim = 3009
ctrl = 0
sprpriority = 4
velset = 0,0



[State 3009]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1




;;---------olverinecode

;feral rage
[StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3300
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 171,1

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
pos = 55,-60
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
trigger1 = time = 6
value = 171,6


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
pos = 2,-70
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

;--------------3100
;Berserker Claw X

[Statedef 3100]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 2
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 0,1
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
pos = -45,-125
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


[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 50
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = S3106
sparkxy = -30,-60
hitsound = s172,10
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 4,0
air.type = Low
air.hittime = 5
air.velocity = 2,1
;p1stateno = 3101
kill = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
trigger1 = !moveguarded
value = 3101
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[StateDef 3101]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3101
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 8
value = 0,1


[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3101
trigger1 = time > 50
value = 3102

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3102
trigger1 = time > 100
value = 3103

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3103
trigger1 = time > 150
value = 3104

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3104
trigger1 = time > 200
value = 3105

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 0,1



[State 240, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 7
attr = S,NA
damage = 6,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = S3106
sparkxy = -45,floor(-70 + random/50)
hitsound = s172,10
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -0.3,0
air.type = Low
air.hittime = 5
air.velocity = -1,1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0



[State 240, HitDef]
type = HitDef
triggerall = anim = 3105
trigger1 = animelem = 1
attr = S,NA
damage = 5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = S3106
sparkxy = -10,-60
hitsound = s172,8
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
kill = 0
p2stateno = 3102




[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3105
trigger1 = animelem = 7
value = 172,13


[State 3110, back to stance]
type = ChangeState
triggerall = anim = 3105
trigger1 = animtime = 0
;trigger2 = enemynear,movetype != H
value = 0
ctrl = 1



[StateDef 3102]
type    = A
physics = N
movetype = H
ctrl = 0
velset = -2,0
anim = 5002

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 =  anim = 5002 && time > 15;animtime = 0
value = 5300

[State 0, VelSet]
type = VelSet
trigger1 = anim = 5300
x = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 70
value = -5
kill = 1

[State 0, SelfState]
type = SelfState
trigger1 = time = 90
value = 5100
;ctrl = 1
;anim =
;ctrl =
;ignorehitpause = 0
;persistent = 1


[State 0, SelfState]
type = SelfState
triggerall = time = 0
trigger1 = pos y != 0
value = 5100





