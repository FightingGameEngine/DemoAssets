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

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 50)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1000



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1001
ctrl = 0

[StateDef 1001]
type = S
movetype = A
physics = N
ctrl = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 720,0


[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 9
y = 0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = moveguarded
x = 0
y = 0


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1001

[State 0, Explod]
type = Explod
trigger1= timemod = 2,1
anim = 62
ID = 62
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 1003
ID = 1003
pos = -10,0
postype = p1  ;p2,front,back,left,right
removetime = 6
scale = 1,1
sprpriority = -10
ownpal = 1




[State 220, HitDef]
type = HitDef
triggerall= moveguarded = 0
trigger1 = time = 0
attr = S,NA
damage = 110,10
animtype = High
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -12,-3
air.type = Low
air.hittime = 18
air.velocity = -12,-4
fall= 1
air.fall = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 15 && vel x > 0
x = -0.5



[State 1000, changestate]
type = ChangeState
trigger1 = time > 40 && PrevStateNo != 9000
trigger2 = time >= 0 && PrevStateNo = 9000
value = 1002
ctrl = 0


[StateDef 1002]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1002

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;------------------------------
; Special 1
[StateDef 1010]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 50)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1000



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1011
ctrl = 0

[StateDef 1011]
type = A
movetype = A
physics = N
ctrl = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 720,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0;revStateNo != 9000
x = 7
y = -3

[State 0, VelSet]
type = VelSet
trigger1 = moveguarded
x = 0
y = 0


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1002

;[State 0, Explod]
;type = Explod
;trigger1= timemod = 2,1
;anim = 62
;ID = 62
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;removetime = -2
;scale = 1,1
;sprpriority = 10
;ownpal = 1

[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 1004
ID = 1004
pos = -10,0
postype = p1  ;p2,front,back,left,right
removetime = 6
scale = 1,1
sprpriority = -10
ownpal = 1




[State 220, HitDef]
type = HitDef
triggerall= moveguarded = 0
trigger1 = time = 0
attr = S,NA
damage = 110,10
animtype = High
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -90
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -12,-3
air.type = Low
air.hittime = 18
air.velocity = -12,-4
fall= 1
air.fall = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 30 && vel x > 0
x = -0.5
y = 0.2



[State 1000, changestate]
type = ChangeState
trigger1 = time > 45 && PrevStateNo != 9000
trigger2 = time >= 0 && PrevStateNo = 9000
value = 948
ctrl = 1


;------------------------------
; Special 1
[StateDef 1020]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 50)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1000



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1021
ctrl = 0

[StateDef 1021]
type = A
movetype = A
physics = N
ctrl = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 720,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0;PrevStateNo != 9000
x = 2
y = -7

[State 0, VelSet]
type = VelSet
trigger1 = moveguarded
x = 0
y = 0


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1002

;[State 0, Explod]
;type = Explod
;trigger1= timemod = 2,1
;anim = 62
;ID = 62
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;removetime = -2
;scale = 1,1
;sprpriority = 10
;ownpal = 1

[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 1004
ID = 1004
pos = -10,0
postype = p1  ;p2,front,back,left,right
removetime = 6
scale = 1,1
sprpriority = -10
ownpal = 1




[State 220, HitDef]
type = HitDef
triggerall= moveguarded = 0
trigger1 = time = 0
attr = S,NA
damage = 110,10
animtype = High
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -90
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -12,-3
air.type = Low
air.hittime = 18
air.velocity = -12,-4
fall= 1
air.fall = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 15 && vel x > 0
x = -0.1
y = 0.5



[State 1000, changestate]
type = ChangeState
trigger1 = time > 20 && PrevStateNo != 9000
trigger2 = time >= 0 && PrevStateNo = 9000
value = 948
ctrl = 1




;------------------------------
; Special 1
[StateDef 1100]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
sprpriority = -5
poweradd = ifelse(PrevStateNo = 9000, 0, 50)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1100



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101
ctrl = 0

[StateDef 1101]
type = S
movetype = A
physics = N
ctrl = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 720,0

[State 0, VelSet]
type = VelSet
trigger1 = PrevStateNo != 9000
x = 7
y = 0

[State 0, Explod]
type = Explod
trigger1= timemod = 2,1
anim = 62
ID = 62
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 800]
type = HitDef
trigger1 = hitcount < 1
attr = S, NT          ;Attributes: Standing, Normal Throw
guardflag = MA
hitflag = MAF         ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 1110       ;On success, changes to state 810
p2stateno = 1120       ;If hit, p2 changes to state 820
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S3,1
id = 800


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1101

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1102
ctrl = 0


[StateDef 1102]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1102

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 1110]
type    = A
movetype= A
physics = N
anim = 1110
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = -2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 7730,0


[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1111
ID = 1111
pos = 0,5
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = -10
ownpal = 1
removeongethit = 1


[State 0, SprPriority]
type = SprPriority
trigger1 = animelem= 2
trigger2 = animelem= 7
trigger3 = animelem= 17
value = 2

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem= 4
trigger2 = animelem= 14
trigger3 = animelem= 21
value = -2




[State 0, VelSet]
type = VelSet
trigger1 = time > 40
y = -0.5

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 1
pos = 75,0

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 2
pos = 60,-60

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 3
pos = 50,-60

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 4
pos = 30,-50

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 5
pos = 0,-50

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 6
pos = -50,-70

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 7
pos = -40,-80

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 8
pos = -30,-70

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 9
pos = -25,-80

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 10
pos = 0,-85

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 11
pos = 0,-115

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 12
pos = 65,-110

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 13
pos = 60,-110

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 14
pos = 40,-90

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 15
pos = -5,-100

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 16
pos = -80,-120

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 17
pos = -50,-120

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 18
pos = 0,-100

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 19
pos = 65,-100

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 20
pos = 64,-97

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElem = 21
pos = 30,-90

[State 810]
type = TargetLifeAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = AnimElem = 19
trigger10 = AnimElem = 21
value = -10
kill= 0

[State 650, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = AnimElem = 22
value = 8,3


[State 810]
type = TargetLifeAdd
trigger1 = AnimElem = 22
value = -5
kill= 1

[State 810]
type = TargetState
trigger1 = AnimElem = 22
value = 1130







[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


[Statedef 1120]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 820]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 820]
type = ChangeAnim2
trigger1 = Time = 0
value = 1120

[Statedef 1130]
type    = A
movetype= H
physics = N
velset = 10,-8
poweradd = 50

[State 0, PosAdd]
type = PosAdd
trigger1 =  time = 0
x = 59

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) ;&& (!SelfAnimExist(5060));Not if hit off ground anim
value = 1130

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











[StateDef 1200]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 1200

[State 650, grunt]
type = PlaySnd
trigger1 = time = 5
value = 32720,0

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 5
value = 171,13
channel= -1


[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 1202
ID = 1202
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = -80
ownpal = 1
removeongethit = 0


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 5
time = 15
freq = 80
ampl = -4

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 8400
ID = 8400
sprpriority = 10

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 8401
ID = 8401
sprpriority = -10

[State 0, HitOverride]
type = HitOverride
triggerall = time >= 5
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1299
time = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = floor(life)


[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
value = 1201
ctrl = 0


[StateDef 1201]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0


[State 0, Turn]
type = Turn
triggerall = enemynear, statetype !=A
trigger1 = p2bodydist x < 0
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = life <=0
value = 5100

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 1299
trigger1 = time = 0
value = 1201

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1299
time = 1

[State 1003, ]
type = Veladd
triggerall = Vel X >= -2 && time >= 3
trigger1 = command = "holdback"
x = -1

[State 1003, ]
type = Veladd
triggerall = Vel X <= 2 && time >= 3
trigger1 = command = "holdfwd"
x = 1

[State 1003, 3]
type = ChangeAnim
trigger1 = vel x > 0 && anim != 1220
value = 1220

[State 1003, 4]
type = ChangeAnim
trigger1 =  vel x < 0 && anim != 1221
value = 1221

[State 1003, 5]
type = ChangeAnim
trigger1 =  vel x = 0  && anim != 1201
value = 1201

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "z"
value = 1230
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "y"
trigger2 = win
value = 1240
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "x"
value = 1250
ctrl = 0



 [StateDef 1230]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 1299
trigger1 = time = 0
value = 1231

[State 0, ChangeState]
type = ChangeState
trigger1 = life <=0
value = 5100

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 3
value = 720,0

[State 0, HitOverride]
type = HitOverride
trigger1 = time < 19
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1299
time = 1

[State 0, Projectile]
type = Projectile
triggerall = numproj = 0
trigger1 =  animelem = 3
ProjID = 1240
projanim = 1240
projhitanim =1250
projremanim = 1250
projcancelanim = 1250
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 10,0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 30,-85
postype = p1         ;p2,front,back,left,right
projshadow = 110,110,110
supermovetime = 0
pausemovetime = 0
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 80,5
pausetime = 8,8
sparkno = 3
sparkxy = 0,0
hitsound = s8,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -5,-1
air.velocity = -5,-1
sprpriority = 1
fall =1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


 [StateDef 1240]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 1299
trigger1 = time = 0
value = 1230

[State 0, ChangeState]
type = ChangeState
trigger1 = life <=0
value = 5100

[State 0, HitOverride]
type = HitOverride
trigger1 = time < 17
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1299
time = 1

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 3
value = 720,0


[State 0, Projectile]
type = Projectile
triggerall = numproj = 0
trigger1 =  animelem = 3
ProjID = 1241
projanim = 1241
projhitanim =1251
projremanim = 1251
projcancelanim = 1251
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 9,-9
projpriority = 1
projsprpriority = 3
projedgebound = 140
projstagebound = 140
projheightbound = -340
offset = 10,-120
postype = p1         ;p2,front,back,left,right
projshadow = 110,110,110
supermovetime = 0
pausemovetime = 0
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 90,5
pausetime = 8,8
sparkno = 3
sparkxy = 0,0
hitsound = s8,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -5,-1
air.velocity = -5,-1
sprpriority = 1
fall =1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[StateDef 1250]
type = A
movetype = A
physics = N
ctrl = 0
velset = 0,-7

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 1299
trigger1 = time = 0
value = 1232

[State 0, ChangeState]
type = ChangeState
trigger1 = life <=0
value = 5100

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
y = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
y = 0

[State 0, HitOverride]
type = HitOverride
trigger1 = time < 17
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 1299
time = 1

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 3
value = 720,0


[State 0, Projectile]
type = Projectile
triggerall = numproj = 0
trigger1 =  animelem = 3
ProjID = 1242
projanim = 1242
projhitanim =1252
projremanim = 1252
projcancelanim = 1252
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 10,0
projpriority = 1
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 20,-110
postype = p1         ;p2,front,back,left,right
projshadow = 110,110,110
supermovetime = 0
pausemovetime = 0
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 90,5
pausetime = 8,8
sparkno = 3
sparkxy = 0,0
hitsound = s8,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -5,-1
air.velocity = -5,-1
sprpriority = 1
fall =1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 948
ctrl = 1


[StateDef 1299]
type = A
movetype= H
physics = N
;anim = 1201
ctrl = 0

[State 4500, PalfX]
type = PalFX
trigger1 = time = 1
add = 100,100,100
mul = 256,256,256
time = 3
ignorehitpause = 1


[State 0, Explod]
type = Explod
triggerall = numexplod(1242) = 0
trigger1 = var(41) - floor(life) > 100
trigger2 = (prevstateno = 1230)||(prevstateno = 1240)||(prevstateno = 1250)
anim = 1260
ID = 1260
pos = 0,-120
postype = p1  ;p2,front,back,left,right
vel = -2,-3
accel = 0,0.3
removetime = -2
scale = 1,1
sprpriority = 10
shadow = 110,110,110
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =


[State 0, ChangeState]
type = ChangeState
trigger1 = var(41) - floor(life) > 100
trigger2 = (prevstateno = 1230)||(prevstateno = 1240)||(prevstateno = 1250)
value = 5050
ctrl = 1



[state 4000, gethit]
type = hitoverride
trigger1 = 1
time = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 1299

[State 0, ChangeState]
type = ChangeState
trigger1 = time > 2
value = 1201
ctrl = 0

















