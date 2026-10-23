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
poweradd = 0


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 2
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 2
Time = 60
;anim =-1;s3012
pos = 15,-80
sound = S10,0
poweradd = -1000
darken = 0

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

[State 0, Helper]
type = Helper
triggerall = numhelper(3010) = 0
trigger1 = animelem = 4
helpertype = normal ;player
name = "missi"
ID = 3010
stateno = 3010
pos = 25,-82
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = time = 160
value = 3001
ctrl = 0

[StateDef 3001]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 3001
velset = -3,0
poweradd = 0

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3010]
type = A
movetype = A
physics = N
anim = 3010
velset = 0,0
sprpriority = 99
poweradd = 0

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 9*facing
y = parent, Pos Y - 80

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod= 4,1
value = 173,0

[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
damage = 5,1
guardflag = MA
pausetime = 0,1
hitsound = S7,1
guardsound = S171,4
sparkno = S3009
;guard.sparkno = S6004
sparkxy = -20, -5+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6,-2
guard.velocity = -5
air.velocity = -5,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 5
envshake.ampl = 4
fall = 1
getpower = 0



[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, anim != 3000

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 140
value =  3011
ctrl = 0

[Statedef 3011]
type = A
movetype = A
physics = N
anim = 9999
velset = 0,0
sprpriority = 99
poweradd = 0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3011
ID = 3011
pos = 20,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 18
scale = 1,.9
sprpriority = 99
shadow = 0,0,0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 1
ID =  3011
scale = 1,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID =  3011
scale = 1,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 3
ID =  3011
scale = 1,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID =  3011
scale = 1,.5

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 5
ID =  3011
scale = 1,.4

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID =  3011
scale = 1,.3

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 7
ID =  3011
scale = 1,.2

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID =  3011
scale = 1,.1




[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 10



[StateDef 3100]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0
sprpriority = 0
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 29
value = 173,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 28
trigger4 = animelem = 30
value = 172,18


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 7
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 7
Time = 60
;anim =-1;s3012
pos = 25,-80
sound = S10,0
poweradd = -1000
darken = 0

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

[State 0, Explod]
type = Explod
trigger1 =  animelem = 5
anim = 3104
ID = 3104
pos = 34,-68
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 68
scale = 1,1
sprpriority = 9
removeongethit = 1
supermovetime = 999
pausemove = 999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 10
trigger3 = animelem = 12
trigger4 = animelem = 14
trigger5 = animelem = 16
trigger6 = animelem = 18
trigger7 = animelem = 20
trigger8 = animelem = 22
trigger9 = animelem = 24
trigger10 = animelem = 26
value = 173,5

[State 0, Explod]
type = Explod
trigger1 = animelem = 8
trigger2 = animelem = 11
trigger3 = animelem = 14
trigger4 = animelem = 17
trigger5 = animelem = 20
trigger6 = animelem = 23
trigger7 = animelem = 26
anim = 3101
ID = 3101
pos = 50,-60
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
shadow = 0,0,0
ownpal = 1
removeongethit = 1


[State 0, VarRandom]
type = VarRandom
trigger1 = animelem = 8
trigger2 = animelem = 10
trigger3 = animelem = 12
trigger4 = animelem = 14
trigger5 = animelem = 16
trigger6 = animelem = 18
trigger7 = animelem = 20
trigger8 = animelem = 22
trigger9 = animelem = 24
trigger10 = animelem = 26
v =  41
range = 0,4

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 8
trigger2 = animelem = 10
trigger3 = animelem = 12
trigger4 = animelem = 14
trigger5 = animelem = 16
trigger6 = animelem = 18
trigger7 = animelem = 20
trigger8 = animelem = 22
trigger9 = animelem = 24
trigger10 = animelem = 26
ProjID = 3110+var(41)
projanim = 3110+var(41)
projhitanim = 3103
projremanim = 3103
projcancelanim = 3103
projscale = .75,.75
projremove = 1
projremovetime = -1
projheightbound = -440
velocity = 7,ifelse(var(41)=2,-2,-6)
remvelocity = 0,0
accel = 0,ifelse(var(41)=0,0.3,(ifelse(var(41)=3,0.2,(ifelse(var(41)=4,0.4,0)))))
velmul = 1
projhits = 2
projmiss = 0
projpriority = 5
projsprpriority = 5
offset = 55,-65
postype = p1         ;p2,front,back,left,right
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 3,Hit   ;Hit,Miss,Dodge
damage = 7,2
pausetime = 3,3
sparkno = 3
sparkxy = 30,0
hitsound = 0,0
guardsound = 0,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 25
air.hittime = 20
ground.velocity = -3,-6
air.velocity = -2,-4
envshake.time = 9
envshake.ampl = 5
fall = 1
getpower = 0


[State 0, VarRandom]
type = VarRandom
trigger1 = animelem = 8
trigger2 = animelem = 10
trigger3 = animelem = 12
trigger4 = animelem = 14
trigger5 = animelem = 16
trigger6 = animelem = 18
trigger7 = animelem = 20
trigger8 = animelem = 22
trigger9 = animelem = 24
trigger10 = animelem = 26
v =  41
range = 0,4

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 8
trigger2 = animelem = 10
trigger3 = animelem = 12
trigger4 = animelem = 14
trigger5 = animelem = 16
trigger6 = animelem = 18
trigger7 = animelem = 20
trigger8 = animelem = 22
trigger9 = animelem = 24
trigger10 = animelem = 26
ProjID = 3110+var(41)
projanim = 3110+var(41)
projhitanim = 3103
projremanim = 3103
projcancelanim = 3103
projscale = .75,.75
projremove = 1
projremovetime = -1
projheightbound = -440
velocity = 7,ifelse(var(41)=2,-2,-6)
remvelocity = 0,0
accel = 0,ifelse(var(41)=0,0.3,(ifelse(var(41)=3,0.2,(ifelse(var(41)=4,0.4,0)))))
velmul = 1
projhits = 2
projmiss = 0
projpriority = 5
projsprpriority = 5
offset = 40,-82
postype = p1         ;p2,front,back,left,right
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 3,Hit   ;Hit,Miss,Dodge
damage = 7,2
pausetime = 3,3
sparkno = 3
sparkxy = 30,0
hitsound = 0,0
guardsound = 0,0
ground.type = High      ;Low,Trip,None
ground.slidetime = 15
ground.hittime = 25
air.hittime = 20
ground.velocity = -3,-6
air.velocity = -2,-4
envshake.time = 9
envshake.ampl = 5
fall = 1
getpower = 0



[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;;;;3200
; Hyper 1 -- Mega beam
[StateDef 3200]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3201
velset = -5,-1
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 8,0

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 4
Time = 60
;anim =-1;s3012
pos = 33,-42
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
value = 3201
ctrl = 0

[StateDef 3201]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 3200
velset = -2,-1
sprpriority = -20
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 6
value = 172,15

[State 3201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
persistent = 1


[State 0, VelSet]
type = VelSet
trigger1 = time = 6
x = 22


[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -20;16

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 105,2

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
attr = S,HA
air.cornerpush.veloff = -20
damage = 50,5
animtype = hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = S3309
sparkxy = -10, -70
hitsound = 5,0
guardsound = 6,0
ground.type = low
ground.slidetime = 65
ground.hittime  = 65 ;1
ground.velocity = 1,-9
air.type = Low
air.hittime = 50
air.velocity = 2,-7
fall = 0
envshake.time = 7
envshake.ampl = 3
getpower = 0

;[State 0, StateTypeSet]
;type = StateTypeSet
;trigger1 = movehit
;statetype = S       ;S,A,C,L
;movetype = I        ;I,A,H
;physics = N
;sprpriority = -20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(41) > 3
value = 171,4

[State 3110, back to stance]
type = ChangeState
trigger1 = moveguarded
trigger2 = time = 25 && !movehit
value = 948
ctrl = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = var(41) > 3
value = 3250
ctrl = 0

[State 0, Turn]
type = Turn
trigger1 = time > 25

[State 3110, back to stance]
type = ChangeState
trigger1 = time > 25
value = 3202
ctrl = 0


;trigger1 = p2bodydist x < 0

[StateDef 3202]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 3200
velset = -2,-1
sprpriority = 20
poweradd = 0

[State 3201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 6
x = 22

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(41) > 3
value = 171,4

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -20;16

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 105,2

;[State 0, StateTypeSet]
;type = StateTypeSet
;trigger1 = movehit
;statetype = S       ;S,A,C,L
;movetype = I        ;I,A,H
;physics = N
;sprpriority = 20

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


[State 0, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = var(41) >3
value = 171,4

[State 3110, back to stance]
type = ChangeState
trigger1 = moveguarded
trigger2 = time = 25 && !movehit
value = 948
ctrl = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = var(41) > 3
value = 3250
ctrl = 0





[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 41    ;fv =
value = 1


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,HA
air.cornerpush.veloff = -20
damage = 50,5
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5,5
sparkno = S3309
sparkxy = -10, -70
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 65
ground.hittime  = 65 ;2
ground.velocity = 1,-9
air.type = Low
air.hittime = 50
air.velocity = 2,-7
fall = 0
envshake.time = 7
envshake.ampl = 3
getpower = 0

[State 0, Turn]
type = Turn
trigger1 = time > 25

[State 3110, back to stance]
type = ChangeState
trigger1 = time > 25
value = 3201
ctrl = 0



[StateDef 3250]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 3250
velset = -4,18
sprpriority = 20
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,15

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
persistent = 1

[State 0, Turn]
type = Turn
trigger1 = time= 0;facing=enemynear,facing

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -320;16

[State 0, PosAdd]
type = Posset
trigger1 = time = 0
x = enemynear,pos x - 120*facing


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,HA
air.cornerpush.veloff = -20
damage = 120,5
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15,15
sparkno = s3252
sparkxy = -10, -5
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 65
ground.hittime  = 65 ;2
ground.velocity = -5,19
air.type = Low
air.hittime = 40
air.velocity = -7,19
fall = 1
envshake.time = 10
envshake.ampl = 5
getpower = 0



[State 3110, back to stance]
type = ChangeState
trigger1 = pos y > 0
value = 3251
ctrl = 0

[Statedef 3251]
type    = C
movetype= I
physics = C
juggle = 0;  = 0
velset = 0,0
ctrl = 0
anim = 3251
sprpriority = 2
poweradd = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 173,7

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3250
trigger1 = time = 40
value = 171,4

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 10
freq = 60
ampl = 4

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3203
ID = 3203
pos = 0,43
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 90
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1





;------ 3200 end
[StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3300
velset = 0,0
poweradd = 0

[State 3300, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = animelem = 1
value = S3300,0
volume = 255
channel = 5

[State 3300, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = animelem = 5
value = S3300,1
volume = 255
channel = 5

[State 0, Explod]
type = null;Explod
trigger1 = animelem = 4
anim =  3302
ID = 3302
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 111
ontop = 0
removeongethit = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 5
value = -99



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 4
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 4
Time = 60
;anim =-1;s3012
pos = 15,-80
sound = S10,0
poweradd = -1000
darken = 0

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

[State 0, Helper]
type = Helper
triggerall = numhelper(3010) = 0
trigger1 = animelem = 3
helpertype = normal ;player
name = "energia"
ID = 3310
stateno = 3310
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = time = 160
value = 3301
ctrl = 0

[StateDef 3301]
type    = S
movetype = I
physics = S
ctrl = 0
anim = 3303
velset = 0,0
poweradd = 0

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 3310]
type = A
movetype = A
physics = N
anim = 3301
velset = 0,0
sprpriority = 99
poweradd = 0

[State 0, Explod]
type = Explod
trigger1 = time = 9
anim =  3305
ID = 3305
pos = -105,7
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 119
ontop = 0
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 9
anim =  3305
ID = 3305
pos = 105,7
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 119
ontop = 0
removeongethit = 1


[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X ;+ 9*facing
y = parent, Pos Y;- 80

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 6,1
value = 172,5

[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
damage = 4,1
guardflag = MA
pausetime = 0,1
hitsound = S7,1
guardsound = S171,4
sparkno = S3309
;guard.sparkno = S6004
sparkxy = -5, -55+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0,-1
guard.velocity = -5
air.velocity = ifelse(time>140,-4,0),ifelse(time>140,-9,0)
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 5
envshake.ampl = 4
fall = 1
getpower = 0



[State 0, ChangeState]
type = ChangeState
trigger1 = parent, anim != 3300
value =  3311
ctrl = 0

[Statedef 3311]
type = A
movetype = A
physics = N
anim = 9999
velset = 0,0
sprpriority = 99
poweradd = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3305

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
