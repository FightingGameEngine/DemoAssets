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
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3000
velset = 0,0

 [State 220, swoosh]
type = PlaySnd
trigger1 = time = 4
value = 171,1
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 5
Time = 60
;anim =-1;s3012
pos = 0,-70
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
[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
y = -0.6

[State 0, Explod]
type = Explod
triggerall = time > 8
trigger1 = 1
anim =  1105
ID =  1105
pos = 0,-63
postype = p1  ;p2,front,back,left,right
vel = -1+(random/300),(random/500)
accel = 0,0.35
random = 0,0
removetime = 45
scale = .25,.25
sprpriority = -5
ownpal = 1


[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3001
ID = 3001
pos = 0,-60
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 170
scale = 1,1
sprpriority = -10
ownpal = 1
removeongethit = 1
;triggerall = time > 7
;triggerall = time < 170
;trigger1 = timemod = 2,1

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 24
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 104
trigger8 = time = 120
trigger9 = time = 136
trigger10 = time = 152
trigger11 = time = 168
value = 172,1

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 12
trigger2 = time = 28
trigger3 = time = 44
trigger4 = time = 60
trigger5 = time = 76
trigger6 = time = 92
trigger7 = time = 108
trigger8 = time = 124
trigger9 = time = 140
trigger10 = time = 156
trigger11 = time = 172
value = 172,1

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 18
trigger2 = time = 34
trigger3 = time = 50
trigger4 = time = 66
trigger5 = time = 82
trigger6 = time = 98
trigger7 = time = 114
trigger8 = time = 130
trigger9 = time = 148
trigger10 = time = 162
trigger11 = time = 178
value = 172,1


[State 0, Projectile]
type = Projectile
trigger1 = time = 8
trigger2 = time = 24
trigger3 = time = 40
trigger4 = time = 56
trigger5 = time = 72
trigger6 = time = 88
trigger7 = time = 104
trigger8 = time = 120
trigger9 = time = 136
trigger10 = time = 152
trigger11 = time = 168
ProjID = 3002
projanim = 3002
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 0,-70
velocity = 9,0
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 20,1
pausetime = 3,3
sparkno = 2
sparkxy = 20,0
hitsound = s172,4
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
ground.velocity = -1,-4
air.velocity = -2,-3.6

[State 0, Projectile]
type = Projectile
trigger1 = time = 10
trigger2 = time = 26
trigger3 = time = 42
trigger4 = time = 58
trigger5 = time = 74
trigger6 = time = 90
trigger7 = time = 106
trigger8 = time = 122
trigger9 = time = 138
trigger10 = time = 154
trigger11 = time = 170
ProjID = 3002
projanim = 3002
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 0,-70
velocity = 9,-9
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 20,1
pausetime = 3,3
sparkno = 2
sparkxy = 20,0
hitsound = s172,4
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
ground.velocity = -1,-4
air.velocity = -2,-3.6


[State 0, Projectile]
type = Projectile
trigger1 = time = 12
trigger2 = time = 28
trigger3 = time = 44
trigger4 = time = 60
trigger5 = time = 76
trigger6 = time = 92
trigger7 = time = 108
trigger8 = time = 124
trigger9 = time = 140
trigger10 = time = 156
trigger11 = time = 172
ProjID = 3002
projanim = 3002
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 0,-70
velocity = 0,-9
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 20,1
pausetime = 3,3
sparkno = 2
sparkxy = 20,0
hitsound = s172,4
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
ground.velocity = -1,-4
air.velocity = -2,-3.6

[State 0, Projectile]
type = Projectile
trigger1 = time = 14
trigger2 = time = 30
trigger3 = time = 46
trigger4 = time = 62
trigger5 = time = 78
trigger6 = time = 94
trigger7 = time = 110
trigger8 = time = 126
trigger9 = time = 142
trigger10 = time = 158
trigger11 = time = 174
ProjID = 3002
projanim = 3002
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 0,-70
velocity = -9,-9
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 20,1
pausetime = 3,3
sparkno = 2
sparkxy = 20,0
hitsound = s172,4
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
ground.velocity = -1,-4
air.velocity = -2,-3.6


[State 0, Projectile]
type = Projectile
trigger1 = time = 16
trigger2 = time = 32
trigger3 = time = 48
trigger4 = time = 64
trigger5 = time = 80
trigger6 = time = 96
trigger7 = time = 112
trigger8 = time = 128
trigger9 = time = 144
trigger10 = time = 160
trigger11 = time = 176
ProjID = 3002
projanim = 3002
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 0,-70
velocity = -9,0
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 20,1
pausetime = 3,3
sparkno = 2
sparkxy = 20,0
hitsound = s172,4
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
ground.velocity = -1,-4
air.velocity = -2,-3.6


[State 0, Projectile]
type = Projectile
trigger1 = time = 18
trigger2 = time = 34
trigger3 = time = 50
trigger4 = time = 66
trigger5 = time = 82
trigger6 = time = 98
trigger7 = time = 114
trigger8 = time = 130
trigger9 = time = 148
trigger10 = time = 162
trigger11 = time = 178
ProjID = 3002
projanim = 3002
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 0,-70
velocity = -9,9
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 20,1
pausetime = 3,3
sparkno = 2
sparkxy = 20,0
hitsound = s172,4
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
ground.velocity = -1,-4
air.velocity = -2,-3.6

[State 0, Projectile]
type = Projectile
trigger1 = time = 20
trigger2 = time = 36
trigger3 = time = 52
trigger4 = time = 68
trigger5 = time = 84
trigger6 = time = 100
trigger7 = time = 116
trigger8 = time = 132
trigger9 = time = 150
trigger10 = time = 164
trigger11 = time = 180
ProjID = 3002
projanim = 3002
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 0,-70
velocity = 0,9
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 20,1
pausetime = 3,3
sparkno = 2
sparkxy = 20,0
hitsound = s172,4
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
ground.velocity = -1,-4
air.velocity = -2,-3.6

[State 0, Projectile]
type = Projectile
trigger1 = time = 22
trigger2 = time = 38
trigger3 = time = 54
trigger4 = time = 70
trigger5 = time = 86
trigger6 = time = 102
trigger7 = time = 118
trigger8 = time = 134
trigger9 = time = 152
trigger10 = time = 166
trigger11 = time = 182
ProjID = 3002
projanim = 3002
projhitanim = 1011
projremanim = 1011
projcancelanim = 1011
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 0,-70
velocity = 9,9
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 20,1
pausetime = 3,3
sparkno = 2
sparkxy = 20,0
hitsound = s172,4
ground.slidetime = 15
ground.hittime = 15
air.hittime = 20
ground.velocity = -1,-4
air.velocity = -2,-3.6

[State 3110, back to stance]
type = ChangeState
trigger1 = time = 200
value = 948
ctrl = 1

;tiro pulo
[StateDef 3100]
type = S
movetype = A
physics = S
anim = 3100
ctrl = 0
poweradd = 0
velset = 0,0



[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 3105
ID = 3105
pos = 50,-70
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = .5,.3
sprpriority = 10
shadow = 0,0,0
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 171,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,5

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = animelem = 5
flag = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = animelem = 5
Time = 60
;anim =-1;s3012
pos = 15,-65
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
[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HT
guardflag = MA
hitflag = MAF
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = -1
p1stateno = 3110
p2stateno = 3120
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80



[State 3110, back to stance]
type = ChangeState
trigger1 = time = 30
value = 3101
ctrl = 0

[StateDef 3101]
type = S
movetype = I
physics = S
anim = 3101
ctrl = 0
poweradd = 0
velset = 0,0

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3110]
type    = S
movetype= A
physics = N
anim = 3110
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 96
value = 172,2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim =  3102
ID = 3102
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 116
scale = .5,.5
sprpriority = 2
shadow = 255,255,255
ownpal = 0
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 7
ID = 3102
scale = .55,.55

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 3102
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 11
ID = 3102
scale = .65,.65

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 13
ID = 3102
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 15
ID = 3102
scale = .75,.75

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 17
ID = 3102
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 19
ID = 3102
scale = .85,.85

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 21
ID = 3102
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 23
ID = 3102
scale = .95,.95

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 25
ID = 3102
scale = 1,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 25
value = 171,0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 96
ID = 3102
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 98
ID = 3102
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 100
ID = 3102
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 102
ID = 3102
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 104
ID = 3102
scale = .55,.55

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 106
ID = 3102
scale = .5,.5

[State 810, TargetBind]
type = TargetBind
trigger1 = time = 0
pos = 60,0


[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 82
value = -235

[State 0, Explod]
type = Explod
trigger1 = time = 82
anim = 8400
ID = 8400
pos = 0,0
postype = p2  ;p2,front,back,left,right
removetime = -2
scale = .5,.5
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 82
anim = 8401
ID = 8401
pos = 0,0
postype = p2  ;p2,front,back,left,right
removetime = -2
scale = .5,.5
sprpriority = -10
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = time = 82
anim = f2
ID = 1
pos = 3,-20
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
removetime = -2
scale = 1,1
sprpriority = 15
ownpal = 1
removeongethit = 0


[State 0, Explod]
type = Explod
trigger1 = time = 82
anim = 8401
ID = 8401
pos = 0,0
postype = p2  ;p2,front,back,left,right
removetime = -2
scale = .5,.5
sprpriority = -10
ownpal = 1
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 82
value = 2,2



[State 801, ChangeState]
type = ChangeState
trigger1 = time = 116
value = 11
ctrl = 1

[Statedef 3120]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim =  5300
ID = 5300
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 81
scale = 1,1
sprpriority = 0
shadow = 255,255,255
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 3
ID = 5300
scale = .95,.95

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 5300
scale = .9,.9

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 9
ID = 5300
scale = .85,.85

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 12
ID = 5300
scale = .8,.8

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 15
ID = 5300
scale = .75,.75

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 18
ID = 5300
scale = .7,.7

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 21
ID = 5300
scale = .65,.65

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 24
ID = 5300
scale = .6,.6

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 27
ID = 5300
scale = .55,.55

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time = 30
ID = 5300
scale = .5,.5



[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3110

[State 0, Turn]
type = Turn
trigger1 =time = 81

[State 0, SelfState]
type = changeState
trigger1 = time = 81
value = 3130
ctrl =  1

[Statedef 3130]
type    = A
movetype= H
physics = N
velset = -8,-5
poweradd = 50


[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 3130

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 10

[State 816, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 816, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0


 ;-------------------
 ;tiro pulo
[StateDef 3200]
type = S
movetype = A
physics = N
anim = 3200
ctrl = 0
poweradd = 0
velset = -4,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 171,8

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
pos = 5,-65
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



[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 3201
ctrl = 0

[StateDef 3201]
type = A
movetype = A
physics = N
anim = 3201
ctrl = 0
poweradd = 0
velset = 15,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,3


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 25,5
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 0,0
sparkno = 0
sparkxy = -1, -55 -var(42)
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -3,-2
p1stateno = 3210

[State 0, Explod]
type = Explod
trigger1 = 1
anim =  1105
ID =  1105
pos = 3,-65
postype = p1  ;p2,front,back,left,right
vel = -2-(random/500),-1 -(random/500)
accel = 0,0.2
random = 0,0
removetime = 20
scale = .15,.15
sprpriority = -5
ownpal = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = time = 30
value = 948
ctrl = 1

[StateDef 3210]
type = A
movetype = A
physics = N
anim = 3202
ctrl = 0
poweradd = 0
velset = 14,0

[State 0, VarAdd]
type = VarAdd
trigger1 = time =0
v = 41    ;fv =
value = 1


[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 42
range = 0,30

[State 0, PosSet]
type = PosSet
trigger1 = time= 0
y = var(42)

[State 0, Explod]
type = Explod
trigger1 = 1
anim =  1105
ID =  1105
pos = 3,-65
postype = p1  ;p2,front,back,left,right
vel = -2-(random/500),-1 -(random/500)
accel = 0,0.2
random = 0,0
removetime = 20
scale = .15,.15
sprpriority = -5
ownpal = 1

[State 0, Turn]
type = Turn
triggerall = var(41)<10
trigger1 = time = 10

[State 3110, back to stance]
type = ChangeState
triggerall = var(41)<10
trigger1 = time = 10
value = 3201
ctrl = 0

[State 3110, back to stance]
type = ChangeState
trigger1 = var(41)>=10
value = 3211
ctrl = 1

[StateDef 3211]
type = A
movetype = A
physics = N
anim = 3202
ctrl = 0
poweradd = 0
velset = 9,-0.3

[State 0, VarAdd]
type = Varset
trigger1 = time =0
v = 42    ;fv =
value = 0

[State 0, PosSet]
type = PosSet
trigger1 = time= 0
y = 0

[State 0, Explod]
type = Explod
trigger1 = 1
anim =  1105
ID =  1105
pos = 3,-65
postype = p1  ;p2,front,back,left,right
vel = -2-(random/500),-1 -(random/500)
accel = 0,0.2
random = 0,0
removetime = 20
scale = .15,.15
sprpriority = -5
ownpal = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = time = 20
value = 948
ctrl = 1












