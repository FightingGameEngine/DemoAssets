; States file for {character} -- Basics
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
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 170, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = animelem = 1
value = S175,0
volume = 255
channel = 0

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 175, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 175, PlaySnd]
type = null;Arkady;PlaySnd
trigger1 = animelem = 1
value = S175,0
volume = 255
channel = 0

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 181, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 22
value = 173,4
channel = 0

[State 181, PlaySnd]
type = PlaySnd
trigger1 = animelem = 30
value = 171,2
channel = 1

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,120]
flag = RoundNotOver

[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 182, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = 173,9
channel = 1

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = RoundNotOver

[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0
sprpriority = 5

[State 183, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 0, Explod]
type = Explod
trigger1 = time = 25
anim = 184
ID = 184
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 7
ownpal = 0
removeongethit = 1

[State 183, Explod]
type = Explod
trigger1 = time = 25
anim = 185
ID = 185
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = 6
ownpal = 0
removeongethit = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 173,3
channel = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = time = 50
value = 171,21
channel = 1

[State 183,1]
type = AssertSpecial
trigger1 = Time = [0,540]
flag = RoundNotOver



;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0


[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 3) / 1000)     ; change the 1 to however many intros you have

;---------------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 8

[State 191, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,2

[State 191, PlaySnd]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 1
value = 171,12
channel = 20

[State 191, PlaySnd]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 8
value = 173,2
channel = 20

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 50
trigger2 = time = 65
trigger3 = time = 80
trigger4 = time = 90
trigger5 = time = 100
value = 172,15
channel = 20

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 120
trigger2 = time = 140
trigger3 = time = 170
trigger4 = time = 190
value = 173,4
channel = 20

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time = 123
trigger2 = time = 143
trigger3 = time = 173
trigger4 = time = 193
value = 172,20
channel = 20

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time =240
value = 174,3
channel = 20

[State 191, PlaySnd]
type = PlaySnd
trigger1 = time =292
value = 172,19
channel = 20

[State 191, Explod]
type = Explod
trigger1 = time = 292
anim = 1845
ID = 1845
pos = -7,-103
bindtime = -1
removetime = -2
sprpriority = 12
ownpal = 1
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 292
anim = 1846
ID = 1846
pos = 0,-33
bindtime = -1
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 292
anim = 1847
ID = 1847
pos = -8,-30
bindtime = -1
removetime = -2
sprpriority = 13
ownpal = 1
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 190
anim = 1841
ID = 1820
pos = 10,-88
bindtime = -1
removetime = -1
supermove
pausemove
sprpriority = 12
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 50
anim = 1842
ID = 1820
pos = 2,0
vel = 0,3
removetime = 40
supermove
pausemove
sprpriority = 11
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 50
anim = 1840
ID = 1820
pos = 45,-55
facing = -1
bindtime = -1
removetime = 30
supermove
pausemove
scale = .5,.5
sprpriority = 11
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 110
anim = 1820
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 11
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 95
anim = 1821
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 11
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 100
anim = 1822
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 11
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 105
anim = 1823
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 11
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 50
anim = 1824
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 55
anim = 1825
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 60
anim = 1826
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 65
anim = 1827
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 80
anim = 1828
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 90
anim = 1829
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 85
anim = 1830
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 75
anim = 1831
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 1

[State 191, Explod]
type = Explod
trigger1 = time = 70
anim = 1832
ID = 1820
pos = 0,0
bindtime = -1
removetime = -1
supermove
pausemove
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 1

[State 191, RemoveExplod]
type = RemoveExplod
trigger1 =  time = 292
id = 1820

[State 191, 2]
type = AssertSpecial
trigger1 = time < 347
flag = Intro

[State 191, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

;---------------------------
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, PlaySnd]
type = PlaySnd
triggerall = anim != 0
trigger1 = animelem = 2
value = 173,3

[State 192, PlaySnd]
type = PlaySnd
trigger1 = time =16
value = 173,2
channel = 20

[State 192, PlaySnd]
type = PlaySnd
trigger1 = time =45
value = 171,13
channel = 20

[State 192, PlaySnd]
type = PlaySnd
trigger1 = time =140
value = 173,1
channel = -1
channel = 20

[State 192, Explod]
type = Explod
trigger1 = time = 16
anim = 193
ID = 193
pos = 14,-88
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 140
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 192, Explod]
type = Explod
trigger1 = time = 20
anim = 197
ID = 199
pos = 25,-68
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 150
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 192, Explod]
type = Explod
trigger1 = time = 36
anim = 198
ID = 199
pos = 43,-89
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 142
scale = 1,1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 192, Explod]
type = Explod
trigger1 = time = 28
anim = 199
ID = 199
pos = 63,-81
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 146
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 192, ModifyExplod]
type = ModifyExplod
trigger1 = time = 156
ID = 199
scale = 1.1,.9

[State 192, ModifyExplod]
type = ModifyExplod
trigger1 = time = 157
ID = 199
scale = 1.2,.8

[State 192, ModifyExplod]
type = ModifyExplod
trigger1 = time = 158
ID = 199
scale = 1.3,.7

[State 192, ModifyExplod]
type = ModifyExplod
trigger1 = time = 159
ID = 199
scale = 1.4,.6

[State 192, ModifyExplod]
type = ModifyExplod
trigger1 = time = 160
ID = 199
scale = 1.5,.5

[State 192, ModifyExplod]
type = ModifyExplod
trigger1 = time = 161
ID = 199
scale = 1.6,.4

[State 192, ModifyExplod]
type = ModifyExplod
trigger1 = time = 162
ID = 199
scale = 1.7,.3

[State 192, ModifyExplod]
type = ModifyExplod
trigger1 = time = 163
ID = 199
scale = 1.8,.2

[State 192, ModifyExplod]
type = ModifyExplod
trigger1 = time = 164
ID = 199
scale = 0,0

[State 192, 2]
type = AssertSpecial
trigger1 = time < 180
flag = Intro

[State 192, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

;---------------------------
[Statedef 193]
type = A
ctrl = 0
anim = 186
physics = N
velset = 0,3
sprpriority = 0

[State 193, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 172,0
channel = 20

[State 193, PlaySnd]
type = PlaySnd
trigger1 = time =50
value = 171,9
channel = 20

[State 193, PosSet]
type = PosSet
trigger1 = time = 0
y = -300

[State 193, Explod]
type = Explod
trigger1 = time = 0
anim = 188
ID = 188
pos = -25,-50
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -1
ownpal = 1

[State 193, ChangeState]
type = ChangeState
trigger1 = pos y > 0
value = 197
ctrl = 0

[State 193, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

;---------------------------
[Statedef 194]
type = S
ctrl = 0
anim = 187
physics = S
velset = 0,0

[State 194, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19
value = 3,1

[State 194, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19
value = 173,0
channel = -1

[State 194, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 188

[State 194, Explod]
type = Explod
trigger1 = time = 0
anim = 189
ID = 189
pos = -25,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 54
scale = 1,1
sprpriority = -1
ownpal = 1

[State 194, Explod]
type = Explod
trigger1 = animelem = 19
anim = 188
ID = 190
pos = -25,-50
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = 100
scale = 1,1
vel = 0,-6
sprpriority = -6
ownpal = 1

[State 194, Explod]
type = Explod
trigger1 = animelem = 19
anim = 190
ID = 190
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 0,-6
removetime = 100
supermove
pausemove
scale = 1,1
sprpriority = -5
shadow = 0,0,0
removeongethit = 1

[State 194, Landing Dust]
type = Explod
trigger1 = animelem = 25
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 194, Landing Sound]
type = PlaySnd
trigger1 = animelem = 25
value = 8, 1

[State 194, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 194, 2]
type = AssertSpecial
trigger1 = time < 80
flag = Intro

[State 194, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

;---------------------------
[Statedef 197]
type = S
ctrl = 0
anim = 187
physics = S
velset = 0,0

[State 197, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 188

[State 197, Explod]
type = Explod
trigger1 = time = 0
anim = 189
ID = 189
pos = -25,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 54
scale = 1,1
sprpriority = -1
ownpal = 1

[State 197, Explod]
type = Explod
trigger1 = animelem = 19
anim = 188
ID = 190
pos = -25,-50
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = 100
scale = 1,1
vel = 0,-6
sprpriority = -6
ownpal = 1

[State 197, Explod]
type = Explod
trigger1 = animelem = 19
anim = 190
ID = 190
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
vel = 0,-6
removetime = 100
supermove
pausemove
scale = 1,1
sprpriority = -5
shadow = 0,0,0
removeongethit = 1

[State 197, Landing Dust]
type = Explod
trigger1 = animelem = 25
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 197, Landing Sound]
type = PlaySnd
trigger1 = animelem = 25
value = 8, 1

[State 197, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 197, 2]
type = AssertSpecial
trigger1 = time < 80
flag = Intro

[State 197, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = animtime = 0
value = 0

;---------------------------
; Taunt
[StateDef 195]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 195
sprpriority = 2

[State 195, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 171,11

[State 195, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 9
value = 173,2
channel = -1
volume = 100

[State 195, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
type    = S
movetype= A
physics = S
juggle = 0;  = 1
ctrl = 0
anim = 200
poweradd = 15
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,24

[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
air.cornerpush.veloff = -20
damage = 30
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -15, -95
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 11
ground.velocity = -8
air.type = Low
air.hittime = 20
air.velocity = -3,-2

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
type    = S
movetype= A
physics = S
juggle = 0;  = 1
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,23

[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 50
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-75
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.type = Low
air.hittime = 15
air.velocity = -3,-2


[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
type    = S
movetype= A
physics = S
juggle = 0;  = 1
ctrl = 0
anim = 220
poweradd = 55
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,22

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 174,1

[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal ;player
name = "s.forte
ID = 221
stateno = 221
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0


[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 221]
type = A
movetype = A
physics = N
anim = 221
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 8

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10

[State 610, HitDef]
type = HitDef
triggerall = parent, var(37) = 0
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 75
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,9
sparkno = 3
sparkxy = 5,0
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -7,-10
air.velocity = -7, -9
envshake.time = 7
envshake.ampl = 4
fall = 1
p2stateno = 5045
;p2getp1state = 0

[State 610, HitDef]
type = HitDef
triggerall = parent, var(37) = 1
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 75
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3,9
sparkno = 3
sparkxy = 5,0
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -7
air.velocity = -7, 3
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = animelem = 3
v = 37
value = 1

[State 1510, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + 12*(facing)
y = parent, Pos Y - 60



[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = parent, anim != 220


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
type    = S
movetype= A
physics = S
juggle = 0;  = 1
ctrl = 0
anim = 230
poweradd = 15
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,24

[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -15, -55
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -2,-2

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
type    = S
movetype= A
physics = S
juggle = 0;  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = -10

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,23

[State 240, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S800,1
volume = 255
channel = 5

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 50
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-75
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -2,-2

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 241
ID = 241
pos = 106,-57
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
shadow = 255,255,255
ownpal = 0
removeongethit = 1

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
ctrl = 0
anim = 250
poweradd = 55
sprpriority = -10
velset = 10,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,22

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 174,3

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 251
ID = 251
pos = 24,-147
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
shadow = 255,255,255
ownpal = 0
removeongethit = 1

[State 250, HitDef]
type = HitDef
triggerall = var(30) = 0
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = 0,-8
air.type = Low
air.hittime = 5
air.velocity = 1,-8
envshake.time = 7
envshake.ampl = 4
fall= 1
air.fall = 1

[State 250, HitDef]
type = HitDef
triggerall = var(30) = 1
trigger1 = time = 0
attr = S,NA
air.cornerpush.veloff = -20
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -7,-1
air.type = Low
air.hittime = 5
air.velocity = -7,-1
envshake.time = 7
envshake.ampl = 4
fall= 1
air.fall = 1

[State 250, VarSet]
type = VarSet
trigger1 = movecontact
v = 30
value = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
type    = C
movetype= A
physics = C
juggle = 0;  = 1
ctrl = 0
anim = 400
poweradd = 15
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,24

[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 25
animtype = Light
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -50
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0


[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
type    = C
movetype= A
physics = C
juggle = 0;  = 1
ctrl = 0
anim = 410
poweradd = 35
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,23

[State 400, HitDef]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage = 45
priority = 3, hit
hitflag = MAF
guardflag = MA
pausetime = 9,9
sparkno = 2
sparkxy = -5, -90
hitsound = 5,2
guardsound = 6,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11
p2stateno = 5060
;p2getp1state = 0

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
type    = C
movetype= A
physics = C
juggle = 0;  = 2
ctrl = 0
anim = 420
poweradd = 55
sprpriority = 6

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 173,8

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 172,2

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 425
projanim = 425
projhitanim = 426
projremanim = 426
projcancelanim = 426
velocity = 8,0
offset = 35,-57
projpriority = 5
projsprpriority = 5
attr = S,SP
guardflag = MA
hitflag = MAF
animtype = low
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 65,0
pausetime = 4,4
;postype = P2
sparkno = 2
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,4
air.velocity = -8,6;-4,5
fall = 1
air.fall = 1
envshake.time = 7
envshake.ampl = 4




[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 421
ID = 421
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 7
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 422
ID = 422
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 4
shadow = 0,0,0
ownpal = 1
removeongethit = 1



[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
type    = C
movetype= A
physics = C
juggle = 0;  = 2
ctrl = 0
anim = 430
poweradd = 15
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,24

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 20
animtype = Light
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -10, -5
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
air.type = Low
air.hittime = 3
air.velocity = -1,1


[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
type    = C
movetype= A
physics = C
juggle = 0;  = 2
ctrl = 0
anim = 440
poweradd = 35
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,23

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 174,2

[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 35
animtype = Medium
hitflag = M
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-20
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-2
air.type = Low
air.hittime = 15
air.velocity = -1,-2.5

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
type    = C
movetype= A
physics = C
juggle = 0;  = 2
ctrl = 0
anim = 450
poweradd = 55
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,22

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 174,3

[State 450, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 60
animtype = HARD
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -20
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = trip
ground.velocity = -5, -5
guard.slidetime = 11
guard.hittime = 24
guard.velocity = -10
fall = 1
fall.recover = 0
air.type = Low
air.hittime = 5
air.velocity = -4,3
envshake.time = 7
envshake.ampl = 4

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
type    = A
movetype= A
physics = A
juggle = 0;  = 1
ctrl = 0
anim = 600
poweradd = 15
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,24

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 0
sparkxy = -10, -75
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -6
air.fall = 0
air.velocity = 0,((vel y)-.2)

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
type    = A
movetype= A
physics = A
juggle = 0;  = 1
ctrl = 0
anim = 610
poweradd = 35
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 174,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,24

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 35
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2,8
sparkno = 1
sparkxy = -10,-80
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0,((vel y)-.2)

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
type    = A
movetype= A
physics = A
juggle = 0;  = 1
ctrl = 0
anim = 625
poweradd = 55
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = (vel x)/2
y = 0

[State 200, swoosh]
type = PlaySnd
trigger1 = Animtime = 0
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = Animelem = 1
value = 171,22

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = -0.3

[State 620, ChangeState]
type = ChangeState
triggerall = command = "holdup"
trigger1 = AnimTime = 0
value = 621
ctrl = 0

[State 620, ChangeState]
type = ChangeState
triggerall = command = "holddown"
trigger1 = AnimTime = 0
value = 622
ctrl = 0

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 623
ctrl = 0


[StateDef 621]
type    = A
movetype= A
physics = A
juggle = 0;  = 1
ctrl = 0
anim = 621
poweradd = 0
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 174,1

[State 621, VelAdd]
type = VelAdd
triggerall = vel y > 0
trigger1 = time < 27
y = -0.4

[State 621, 4]
type = HitDef
trigger1 = var(38) = 0
trigger1 = time = 0
attr = A, NA
hitflag = MAF
guardflag = HA
pausetime = 10,10
damage = 85
animtype = hard
sparkno = 2
priority= 4,hit
sparkxy = -5, -24
hitsound = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -8.5
air.velocity = -9, -9
guard.slidetime = 6
guard.hittime = 6
guard.velocity = -5.4
air.fall = 1
fall = 1
fall.recover = 0
p2stateno = 5045
;p2getp1state = 0

[State 621, 4]
type = HitDef
trigger1 = var(38) = 1
trigger1 = time = 0
attr = A, NA
hitflag = MAF
guardflag = HA
pausetime = 10,10
damage = 85
animtype = hard
sparkno = 2
priority= 4,hit
sparkxy = -5, -24
hitsound = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -8.5
air.velocity = -9, -2
guard.slidetime = 6
guard.hittime = 6
guard.velocity = -5.4
air.fall = 1
fall = 1
fall.recover = 0

[State 621, VarSet]
type = VarSet
trigger1 = movecontact
v = 38
value = 1

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

[StateDef 622]
type    = A
movetype= A
physics = A
juggle = 0;  = 1
ctrl = 0
anim = 622
poweradd = 0
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 174,1

[State 622, VelAdd]
type = VelAdd
triggerall = vel y > 0
trigger1 = time < 27
y = -0.4

[State 622, 4]
type = HitDef
triggerall = var(39) = 0
trigger1 = time = 0
attr = A, NA
hitflag = MAF
guardflag = HA
pausetime = 10,10
damage = 85
animtype = hard
sparkno = 2
priority= 4,hit
sparkxy = -5, -24
hitsound = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -8.5
air.velocity = -6, 6
guard.slidetime = 6
guard.hittime = 6
guard.velocity = -5.4
air.fall = 1
fall = 1
fall.recover = 0
p2stateno = 5130
;p2getp1state = 0

[State 622, 4]
type = HitDef
triggerall = var(39) = 1
trigger1 = time = 0
attr = A, NA
hitflag = MAF
guardflag = HA
pausetime = 10,10
damage = 85
animtype = hard
sparkno = 2
priority= 4,hit
sparkxy = -5, -24
hitsound = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -8.5
air.velocity = -6, 6
guard.slidetime = 6
guard.hittime = 6
guard.velocity = -5.4
air.fall = 1
fall = 1
fall.recover = 0

[State 622, VarSet]
type = VarSet
trigger1 = movecontact
v = 39
value = 1

[State 622, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


[StateDef 623]
type    = A
movetype= A
physics = A
juggle = 0;  = 1
ctrl = 0
anim = 620
poweradd = 0
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 174,1

[State 0, VelAdd]
type = VelAdd
triggerall = vel y > 0
trigger1 = time < 27
y = -0.4

[State 630, 4]
type = HitDef
trigger1 = time = 0
attr = A, NA
hitflag = MAF
guardflag = HA
pausetime = 10,10
damage = 85
animtype = hard
sparkno = 2
priority= 4,hit
sparkxy = -5, -24
hitsound = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -8.5
air.velocity = -8, -3
guard.slidetime = 6
guard.hittime = 6
guard.velocity = -5.4
air.fall = 1
fall = 1
fall.recover = 0

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1



;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
type    = A
movetype= A
physics = A
juggle = 0;  = 1
ctrl = 0
anim = 630
poweradd = 15
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,24

[State 630, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9;8,8
sparkno = 0
sparkxy = -10, -73
;guard.sparkno = 8430
hitsound = s2,0
guardsound = s3,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = 0,((vel y)-.2)
air.hittime = 25

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
type    = A
movetype= A
physics = A
juggle = 0;  = 1
ctrl = 0
anim = 640
poweradd = 35
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,23

[State 640, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 45
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12;8,8
sparkno = 1
sparkxy = -10,-53
;guard.sparkno = 8430
hitsound = s2,1
guardsound = s3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0,((vel y)-.2)
air.hittime = 25

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
type    = A
movetype= A
physics = A
juggle = 0;  = 1
ctrl = 0
anim = 650
poweradd = 55
sprpriority = 2

[State 0, VelAdd]
type = VelAdd
triggerall = vel y > 0
trigger1 = time < 27
y = -0.3

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,22

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 85
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
fall = 1

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 174,3

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 651
ID = 651
pos = 24,5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
shadow = 255,255,255
ownpal = 0
removeongethit = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

[StateDef 660]
type    = A
movetype= A
physics = N
juggle = 0;  = 1
ctrl = 0
anim = 660
poweradd = 55
sprpriority = 2

[State 0, VelAdd]
type = Velset
trigger1 = time = 0
y = 0
x = 0

[State 0, VelAdd]
type = Velset
trigger1 = animelem = 4
y = 8
x = 7

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 171,24

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 172,15

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = s2,2
guardsound = s3,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
fall = 1


[State 650, ChangeState]
type = ChangeState
trigger1 = pos y > 10
value = 661
ctrl = 0

[Statedef 661]
type    = C
movetype= I
physics = C
juggle = 0;  = 0
velset = 3,0
ctrl = 0
anim = 661
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
;ignorehitpause =
;persistent =


[State 650, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

 ;Throw 1
[Statedef 800]
type    = S
movetype= A
physics = S
juggle = 0;  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 2
value = 0,1

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse(command="holdfwd",1,-1)
p2facing = -1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 0
fall.recover = 0
fall.damage = 80

[State 800, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 800, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 171,4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 174,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 1,2

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60,0

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 70,-100

[State 0, SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 0, SprPriority]
type = SprPriority
trigger1 = AnimElem = 7
value = 5

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = -70

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 7
value = 830

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 8,2

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim = 821
ID = 821
pos = 70,-100
postype = p1
removetime = -2
bindtime = 1
scale = 1,1
sprpriority = 10
ownpal = 0
removeongethit = 0


[State 0, EnvShake]
type = EnvShake
trigger1 =  AnimElem = 7
time = 10
freq = 40
ampl = -4
phase = 40

[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[Statedef 830]
type    = A
movetype= H
physics = N
velset = 17,-3
poweradd = 50

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 10
mul = 156,156,256
sinadd = 110,110,210,30
color = 256

[State 0, Turn]
type = Turn
trigger1 = time = 0

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
value = 5060

[State 816, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060));Not if hit off ground anim
value = 830

[State 816, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 45

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
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50

[StateDef 949]
type = A
movetype = I
physics = A
ctrl = 1
sprpriority = 0

[State 949, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0)
value = 949

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 25,1
value = 172,15

[State 949, VelAdd]
type = VelAdd
trigger1 = 1
y = -0.5

[State 0, VelSet]
type = VelSet
trigger1 = command != "holdfwd" && command != "holdback"
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = command = "holdback"
x = -3

[State 0, VelSet]
type = VelSet
trigger1 = command = "holdfwd"
x = 3

[State 0, Explod]
type = Explod
triggerall = numexplod(950)=0
trigger1 = time = 0
anim = 950
ID = 950
pos = -7,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -2
removeongethit = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(951)=0
trigger1 = time = 0
anim = 950
ID = 951
pos = 5,-30
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -4
removeongethit = 1


[State 0, ChangeState]
type = ChangeState
trigger1 =command != "holdup"
value = 948

;======================================================
;Avengers Hyper Helpers================================
;======================================================
[Statedef 40001]
anim = 9999

[State 40001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

[State 40001, Background]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 41500
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
trigger1 = root, stateno !=[3000,4999]
value = stateno+1

[Statedef 40002]
anim = 9999

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0
volume = 200

[State 40002, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 41560
ID = 15640
pos = 0,0
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40002, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--AvX Portrait-----
[Statedef 40003]
anim = 9999

[State 40003, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 41550;15605
ID = 15650
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 40003, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 41551;15606
ID = 15651
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 40003, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 40003, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40003, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;-------------------------------------------------------------------------------
; Pause Menu

[StateDef 40500]
Type = S
Ctrl = 0
Anim = 9999

[State 40500, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(0) = %d"
params = var(0)

[State 40500, VarSet]
type = VarSet
trigger1 = time = 0
v = 0
value = 1

[State 40500, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 9999
value = 9999

[State 40500, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 40500, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9999

[State 40500]
type = ChangeState
triggerall = Parent,command != "Taunt"
triggerall = ailevel = 0
trigger1 = Parent,Alive
trigger1 = RoundState = 2
trigger1 = Command = "Pause"
trigger1 = Parent,Command = "Pause"
value = 40501

;-------------------------------------------------------------------------------
[StateDef 40501]
type = S
ctrl = 0

[State 40501, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Pause Detector"
ID = 40505
stateno = 40505

[State 40501, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S40500,2

[State 40501, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(0) = %d"
params = var(0)

[State 40501, NoFG]
Type = AssertSpecial
Trigger1 = 1
flag = nofg
flag2 = nobardisplay
flag3 = nomusic

[State 40502, PlaySnd]
type = PlaySnd
trigger1 = command = "Down"
trigger2 = command = "Up"
value = S40500,0

[State 40501, VarSet]
type = Varadd
trigger1 = command = "Down"
v = 0
value = 1

[State 40501, VarSet]
type = Varadd
trigger1 = command = "Up"
v = 0
value = -1

[State 40501, VarSet]
type = Varset
triggerall = var(0) > 3
trigger1 = command = "Down"
v = 0
value = 1

[State 40501, VarSet]
type = Varset
triggerall = var(0) < 1
trigger1 = command = "Up"
v = 0
value = 3

[State 40501, Explod]
type = Explod
trigger1 = numexplod(40500) = 0
anim = 40500
ID = 40500
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 9999
ontop = 0
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 40501, Explod]
type = Explod
triggerall = var(0) = 1
trigger1 = numexplod(40501) = 0
anim = 40501
ID = 40501
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 9999
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 40501, Explod]
type = Explod
triggerall = var(0) = 2
trigger1 = numexplod(40502) = 0
anim = 40502
ID = 40502
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 9999
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 40501, Explod]
type = Explod
triggerall = var(0) = 3
trigger1 = numexplod(40503) = 0
anim = 40503
ID = 40503
pos = 0,0
postype = left
facing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 9999
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = var(0)!= 1
id = 40501
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = var(0)!= 2
id = 40502
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = var(0)!= 3
id = 40503
ignorehitpause = 1

[State 40501, Pause]
type = Pause
trigger1 = 1
time = 10
moveTime = 10

[State 40501]
type = ChangeState
trigger1 = Time >= 6 && Command = "Pause"
trigger2 = ailevel != 0
value = 40502

;-------------------------------------------------------------------------------
[StateDef 40502]
type = S
ctrl = 0

[State 40502, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S40500,1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 40500
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 40501
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 40502
ignorehitpause = 1

[State 40502, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 40503
ignorehitpause = 1

[State 40502]
type = Pause
trigger1 = Time = 0
time = 0

[State 40502]
type = BGPalFX
trigger1 = Time = 0
time = 1

[State 40502]
type = ChangeState
trigger1 = Time = 1
value = 40500

;-------------------------------------------------------------------------------
[StateDef 40505]
Type = S
Ctrl = 0
Anim = 9999

[State 40505, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 40501
ignorehitpause = 1




;-----------------------
; Medium Foward Recovery Roll

[Statedef 832]
type    = C
movetype= I
physics = N
juggle = 0;  = 0
poweradd= 0
velset = 8,0
ctrl = 0
anim = 888
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,15

[State 832, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 832, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 832, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 832, 4]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 832, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 832, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 831, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
; Medium Backward Recovery Roll

[Statedef 855]
type    = C
movetype= I
physics = N
juggle = 0;  = 0
poweradd= 0
velset = -8,0
ctrl = 0
anim = 889
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 172,15

[State 855, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 855, 2]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 855, 3]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 855, 4]
type = MakeDust
trigger1 = Time >= 0
pos = 16,0
spacing = 6

[State 855, 5]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 855, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 831, Dead]
type = ChangeState
trigger1 = alive = 0
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
;Guard Push
[Statedef 6300]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 125
sprpriority = 2

[State 6300, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6300, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6300, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6300, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6300, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6300, a6]
type = Explod
trigger1 = Time = 0
anim = 7020
postype = p1
pos = 33,-70
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7
scale = .5,.5

[State 6300, a7]
type = PlaySnd
trigger1 = Time = 0
value = 4,0
volume = 255
channel = 1

[State 6300, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Guard Push (Helper)
[Statedef 6350]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 6350
sprpriority = -4

[State 6350, a1]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 6350, a2]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 6350, a3]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 6350, a4]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 6350, a5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6350, a6]
type = DestroySelf
trigger1 = Time >= 18
