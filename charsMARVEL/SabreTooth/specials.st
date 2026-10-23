; States file for {character} -- Specials
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
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;;Berserker Claw Long Range
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 1

[State 1260]
type = Explod
trigger1 = AnimElem = 3
anim = 63
ownpal = 1
pos = 20,0
postype = p1
sprpriority = 10

[State 1260]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 7
value = 172,3


[State 1260]
type = VelSet
trigger1 = AnimElem = 3
x = 17

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,3

[State 1260]
type = VelAdd
triggerall = Vel X > 0
trigger1 = AnimElem = 5, >= 0
x = -0.3


[State 1260]
type = HitDef
attr = S, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80
animtype = Hard
priority  = 3, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-40
hitsound   = S172,8
guardsound = 6,0
sparkno = 3
ground.type = Low
ground.slidetime = 10
ground.hittime  = 25
ground.velocity = 3,-9
air.velocity = 3,-9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
palfx.time = 1
palfx.add = 256,256,256


[State 1260]
type = ChangeAnim
trigger1 = MoveContact
value = 1001
ignorehitpause = 0
persistent = 0


[State 1260]
type = Explod
trigger1 = AnimElem = 4
anim = 21244
sprpriority = 5
ownpal = 1
removeongethit = 1
bindtime = -1

[State 1260]
type = Helper
trigger1 = MoveHIT;Contact
stateno = 21240
id = 21240
name = "Slash"
ownpal = 1
persistent = 0
pos = 0,-30

;[State 1260]
;type = VarAdd
;trigger1 = !MoveContact && AnimElem = 5, >= 0
;var(9) = 1
;ignorehitpause = 1
;persistent = 0

[State 1260]
type = ChangeState
trigger1 = AnimTime = 0; && StateType != A
value = 0
ctrl = 1


;Berserker Claw
[Statedef 21240]
type = S
movetype = A
physics =N
anim = 9999
ctrl = 0
sprpriority = 4
velset = 0,0

[State 21240]
type = Explod
trigger1 = Time = 0
anim = 21242
sprpriority = 4
removetime = 16
ownpal = 1

[State 21240]
type = Explod
trigger1 = Time = 0
anim = 21243
sprpriority = 5
removetime = 16
ownpal = 1


[State 21240]
type = Explod
trigger1 = Time = 16
anim = 21241
sprpriority = 5
ownpal = 1

[State 21240]
type = DestroySelf
trigger1 = Time = 16



;------------------------------------------------------------------------------------------------------------
;Berserker Claw
[Statedef 21241]
type = S
movetype = A
physics =N
anim = 9999
ctrl = 0
sprpriority = 4
velset = 0,0

[State 21241]
type = Explod
trigger1 = Time = 0
anim = 21245
sprpriority = 4
removetime = 16
ownpal = 1


[State 21241]
type = Explod
trigger1 = Time = 0
anim = 21246
sprpriority = 5
removetime = 16
ownpal = 1


[State 21241]
type = Explod
trigger1 = Time = 16
anim = 21247
sprpriority = 5
ownpal = 1


[State 21241]
type = DestroySelf
trigger1 = Time = 16

;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4

;-------------------------------------

;Wild Fang Close
[Statedef 1100]
type    = A
movetype= A
physics = N
juggle  = 15
poweradd= 50
ctrl = 0
velset = 6,-6
anim = 1100
sprpriority = -5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,3

[State 1470]
type = HitDef
trigger1 = time = 0
attr = A, ST          ;Attributes: Standing, Normal Throw
guardflag = MA
hitflag = MAF;hitflag = MA-  ;uhu        ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 21450       ;On success, changes to state
p2stateno = 21460       ;If hit, p2 changes to state
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S172,9
id = 800
damage = 35

[State 1470]
type = VelAdd
trigger1 = 1
y = 0.35

[State 1470]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0


;Wild Fang Close
[Statedef 1110]
type    = A
movetype= A
physics = N
juggle  = 3
poweradd= 50
ctrl = 0
velset = 5,-7
anim = 1100
sprpriority = -5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,3

[State 1470]
type = HitDef
trigger1 = time = 0
attr = A, ST          ;Attributes: Standing, Normal Throw
guardflag = MA
hitflag = MAF          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 21450       ;On success, changes to state
p2stateno = 21460       ;If hit, p2 changes to state
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S172,9
id = 800
damage = 35

[State 1470]
type = VelAdd
trigger1 = 1
y = 0.35

[State 1470]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;Wild Fang Close
[Statedef 1120]
type    = A
movetype= A
physics = N
juggle  = 3
poweradd= 50
ctrl = 0
velset = 3,-8
anim = 1100
sprpriority = -5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,3

[State 1470]
type = HitDef
trigger1 = time = 0
attr = A, ST          ;Attributes: Standing, Normal Throw
guardflag = MA
hitflag = MAF         ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 21450       ;On success, changes to state
p2stateno = 21460       ;If hit, p2 changes to state
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S172,9
id = 800
damage = 35

[State 1470]
type = VelAdd
trigger1 = 1
y = 0.35

[State 1470]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0


[Statedef 21450]
type    = U
movetype= A
physics = N
anim = 1101
poweradd = 60
juggle  = 0
velset = 0,-4
ctrl = 0
sprpriority = -5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 0,3

[State 21450];Bind 1
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 45,-83


[State 21450];Bind 2
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = -16,-55

[State 21450];Bind 3
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = -33,-50

[State 21450];Bind 4
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = -32,-40


[State 21450];Bind 5
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = -61,-62


[State 21450];Bind 5
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = -68,-82

[State 21450]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.35



[State 21450]
type = VelSet
trigger1 = Pos Y > 0
y = 0

[State 21450]
type = PosSet
trigger1 = Pos Y > 0
y = 0





[State 21450]
type = TargetState
triggerall = Time > 24
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger2 = Pos Y = 0 && Vel Y = 0
value = 21461

[State 21450]
type = ChangeState
triggerall = Time > 24
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
trigger2 = Pos Y = 0 && Vel Y = 0
value = 21451
ctrl = 0


[State 21450]
type = ChangeState
trigger1 = !NumTarget(800) & StateType != A
value = 0
ctrl = 1



[State 21450]
type = ChangeState
trigger1 = !NumTarget(800) && StateType = A
value = 635
ctrl = 1


;---------------------------------------------------------------------------
; Throw

[Statedef 21451]
type    = S
movetype= A
physics = N
anim = 1102
poweradd = 0
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = -5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 0,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 172,3


[State 21451]
type = Explod
trigger1 = Time = 1
anim = 7052
sprpriority = -2
pos = 0,10

[State 21451];Bind 1
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = -37,-86

[State 21451];Bind 2
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = -2,-103

[State 21451];Bind 3
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 24,-99

[State 21451];Bind 4
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 44,-100

[State 21451]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -40

[State 21451]
type = TargetState
trigger1 = AnimElem = 4, = 3
value = 21463

[State 21451]
type = ChangeState
trigger1 = AnimElem = 4, = 3
value = 21452
ctrl = 0


[State 21451]
type = ChangeState
trigger1 = !NumTarget(800) & StateType != A
value = 0
ctrl = 1



[State 21451]
type = ChangeState
trigger1 = !NumTarget(800) && StateType = A
value = 635
ctrl = 1


;---------------------------------------------------------------------------
; Throw End

[Statedef 21452]
type    = U
movetype= I
physics = N
;anim = 1452
poweradd = 0
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = -5


[State 21452]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Thrown

[Statedef 21460]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 3

[State 21460]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 21460]
type = ChangeAnim2
trigger1 = Time = 0
value = 1120


[State 21460]
type = Turn
trigger1 = facing = enemynear,facing


[State 21460]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21460]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown

[Statedef 21461]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 3

[State 21461]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 21461]
type = ChangeAnim2
trigger1 = Time = 0
value = 1121


[State 21461]
type = Turn
trigger1 = facing = enemynear,facing


[State 21461]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21461]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown

[Statedef 21463]
type    = A
movetype= H
physics = N
velset = -12,-5
poweradd = 60

[State 21463]
type = Turn
trigger1 = facing = enemynear,facing

[State 21463]
type = ChangeAnim2
Trigger1 = Time = 0
value = 823


[State 21463] ;Gravity
type = VelAdd
trigger1 = 1
y = .4


[State 21463]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,0

[State 21463] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground




 ;;Berserker Claw Long Range
[Statedef 1200]
type    = S
movetype= A
physics = S
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2
facep2 = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1201


[Statedef 1201]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 1,-10
anim = 1201
sprpriority = 2
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
y = -3
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
y = 0

[State 620, HitDef]
type = HitDef
trigger1 = time = 1
attr = A,NA
damage = 50
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2
sparkxy = -10, -100
;guard.sparkno = 8430
hitsound = s172,9
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -1,-12
air.velocity = -2,-5
air.hittime = 25


[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "x" || command = "y" || command = "z"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = time > 10 && var(41)=1
value = 1202
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=0
value = 948
ctrl = 1

[Statedef 1202]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 0,0
anim = 1202
sprpriority = 2
facep2 = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = -0.2
;ignorehitpause =
;persistent =
[State 620, HitDef]
type = HitDef
trigger1 = time = 1
attr = A,NA
damage = 60
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2
sparkxy = -30, -103
;guard.sparkno = 8430
hitsound = s172,9
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.hittime = 25
air.fall = 1
fall= 1
envshake.time = 10
envshake.freq = 10
;envshake.ampl = 10
envshake.phase = 10

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 ;&& var(41)=0
value = 948
ctrl = 1




 ;---------- corrida
 ;special------------------
;Throw 1
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 1300
ctrl = 0
sprpriority = 0



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
p1stateno = 1310
p2stateno = 1320
guard.dist = 0
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------
;Throw 1 - P1
[Statedef 1310]
type = S
movetype = I
physics = N
anim = 1310
poweradd = 60
velset = 0, 0
sprpriority = 0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 172,7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 8
value = 172,6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 52, -75
time = 5

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70, -60
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 10, -0
time = 12

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 24
pos = 45, -10
time = -1

[State 0, VelAdd]
type = VelAdd
trigger1 =  time > 24 && vel x < 15
x = 0.5

[State 0, Explod]
type = Explod
trigger1 = animelem= 4
anim = 1301
ID = 1301
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 10
removeongethit = 1
;ignorehitpause =
;persistent =




[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 5
value = S15,1


[State 810, Hits]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -5
kill = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1= timemod = 10,1
value = 8,2

[State 0, Explod]
type = Explod
triggerall = time > 23
trigger1= timemod = 2,1
anim = 62
ID = 62
pos = 60,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1


[State 0, TargetState]
type = TargetState
trigger1 = frontEdgeBodyDist < 50
value = 1330 ;uhu


[State 810, Change State]
type = ChangeState
trigger1 = frontEdgeBodyDist < 50
value = 1340
ctrl = 0

;------------------------
;Throw 1 - P2
[Statedef 1320]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0
poweradd = 80
sprpriority = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 5,0
;ignorehitpause =
;persistent =

[State 820, Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 1320



[Statedef 1340]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1340
poweradd= 10
ctrl = 0
sprpriority = 0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,7

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time= 0
id = 1301
;ignorehitpause =
;persistent =
[State 1260]
type = Helper
trigger1 = time= 0;Contact
stateno = 21240
id = 21240
name = "Slash"
ownpal = 1
persistent = 0
pos = 0,-30

[State 220, 4]
type = HitDef
trigger1 = time = 0
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = Hard
pausetime = 9, 9
priority = 5, Miss
damage = 60
sparkno = 3
guard.sparkno = s6767
sparkxy = -10, -66
hitsound = s172,8
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 24
ground.velocity = -16, -8
guard.slidetime = 13
guard.hittime = 31
guard.velocity = -10
air.velocity = -10, -8
air.hittime = 45
;p2stateno = 221
fall.recovertime = 40
air.fall = 1
fall = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20, -20
time = 1

[State 810, Change State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;------------------------
[Statedef 1330]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 50

;[State 816, ChangeAnim]
;type = ChangeAnim
;trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
;value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0); && (!SelfAnimExist(5060));Not if hit off ground anim
value = 1330

[State 816, SelfState]
type = SelfState
trigger1 = time > 15
value = 5100
ctrl = 0



