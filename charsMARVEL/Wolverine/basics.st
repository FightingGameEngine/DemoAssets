triggerall = Var(59) && (stateno != [7720,7721]) && (stateno != [3000,3500]) ; States file for {character} -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)

;  10: limite do fator de cura passivo
;  11: feralrage
;  41: basic combo pra mais de um ataque no mesmo botão
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

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1
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
anim = 175
velset = 0,0

[state 175]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,2
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

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, ChangeState]
type = ChangeState
trigger1 =  numexplod(3301)>0
value = 189
ctrl = 0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 3) / 1000)     ; change the 1 to however many winposes you have


; Winpose #1 - do better
[Statedef 189]
type = S
ctrl = 0
anim = 189
velset = 0,0

[state 189]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 172,8
channel = 0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver
;-----------------------
; Winpose #1 - do better
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[state 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181,0]
type = PlaySnd
trigger1 = animelem = 5
value = 172,6
channel = 0

[State 181,0]
type = PlaySnd
trigger1 = animelem = 13
value = 0,0
channel = 1

[State 181,0]
type = PlaySnd
trigger1 = animelem = 14
value = 172,15
channel = 0

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,320]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Mission accomplished
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181,0]
type = PlaySnd
trigger1 = animelem = 2
value = 172,6
channel = 0

[State 181,0]
type = PlaySnd
trigger1 = animelem = 9
value = 0,0
channel = 0

[State 181,0]
type = PlaySnd
trigger1 = animelem = 10
value = 172,1
channel = 0

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver


[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[state 183]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181,0]
type = PlaySnd
trigger1 = animelem = 2
value = 171,4
channel = 0

[State 181,0]
type = PlaySnd
trigger1 = animelem = 4
value = 172,0
channel = 0

[State 181,1]
type = AssertSpecial
trigger1 = Time = [0,220]
flag = RoundNotOver

[Statedef 19171]
type = S
movetype = I
physics = N
ctrl = 0
anim = 0
velset = 0,0
spriority = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 100
flag = Intro

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, 2]
type = ChangeState
triggerall = time = 0
trigger1 = enemynear, name = "BastionBoss"
trigger2 = enemynear, name = "helibonus"
value = 19171

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 0
value = 191 + ((Random * 4) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0
sprpriority = -2

[State 181, VarSet]
type = VarSet
trigger1 = var(35)!=1
v = 35
value = 1

[State 181,0]
type = PlaySnd
trigger1 = time = 0
value = 173,0
channel = 11

[State 181,0]
type = PlaySnd
trigger1 = time = 70
value = 8,0
channel = 11


[State 181,0]
type = PlaySnd
trigger1 = time = 83
trigger2 = time = 95
trigger3 = time = 107
value = 171,7
channel = 11

[State 181,0]
type = PlaySnd
trigger1 = time = 140
value = 171,0
channel = 11

[State 181,0]
type = PlaySnd
trigger1 = time = 145
value = 171,5
channel = 11

[State 181,0]
type = PlaySnd
trigger1 = time = 150
value = 173,1
channel = 11



[State 0, Explod]
type = Explod
trigger1 = time = 70
anim = 1905
ID = 1905
pos = -50,-50
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = -2
shadow = 100,100,100
ownpal = 1
bindtime = -1


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1900
ID = 1900
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 0
shadow = 100,100,100
ownpal = 1
bindtime = -1

[State 181,0]
type = PlaySnd
trigger1 = time = 219
value = 173,2


[State 0, Explod]
type = Explod
trigger1 = time = 219
anim = 1904
ID = 1904
pos = 2,-112
scale = 1.4,1.4
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
shadow = 100,100,100
ownpal = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 219
time = 20
freq = 60
ampl = -4



[State 0, Explod]
type = Explod
trigger1 = time = 140
anim = 1903
ID = 1903
pos = 0,-140
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = 150
anim = 1903
ID = 1903
pos = 0,-100
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = 160
anim = 1903
ID = 1903
pos = 0,-60
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 140
helpertype = normal ;player
name = "head"
ID = 1900
stateno = 1900
pos = 20,-140
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,282]
flag = Intro

[Statedef 1900]
type = A
physics = A
ctrl = 0
anim = 1901
velset = 2,-5
sprpriority = 3

[State 3301,Turn]
type = Turn
trigger1 = P2bodydist X < -10 ;uhuturn

[State 0, Explod]
type = Explod
triggerall = numexplod(1902) = 0
trigger1 = anim = 9999
anim = 1902
ID = 1902
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
sprpriority = -20
shadow = 100,100,100
ownpal = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = pos y > -10
statetype = S       ;S,A,C,L
movetype = I        ;I,A,H
physics = N
        ;A,C,S,N
[State 0, PosSet]
type = PosSet
trigger1 = pos y > -10
y = 0

[State 0, VelSet]
type = VelSet
trigger1 =  pos y = 0
x = 0
y = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = time = 20
value = -20

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = parent, stateno = 1910
id = 1902

[State 0, ChangeAnim]
type = destroyself
trigger1 =  parent, stateno = 1910

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 0
trigger1 = anim != 9999 && pos y = 0
value = 9999


[StateDef 1910]
type = S
movetype = A
physics = S
anim = 1990
ctrl = 0
poweradd = 60
velset = 0,0

[State 1910, VarSet]
type = VarSet
trigger1 = var(35)=1
v = 35
value = 0

[State 1910,0]
type = PlaySnd
trigger1 = time = 0
value = 0,2
channel = 11

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim =  1991
ID =  1991
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = -20
shadow = 100,100,100
ownpal = 1
removeongethit = 1
;ignorehitpause =
;persistent =

[State 0, Projectile]
type = Projectile
trigger1 = animelem = 4
ProjID = 1992
projanim = 1992
projhitanim = 1906
projremanim = 1906
projcancelanim = 1906
projscale = 1,1
projremove = 1
projremovetime = -1
velocity = 10,-7
accel = 0,0.5
projsprpriority = 3
projedgebound = 40
projstagebound = 40
projheightbound = -240
offset = 40,-20
postype = p1         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = hard
;fall.animtype = Back
priority = 2,Hit   ;Hit,Miss,Dodge
damage = 100,5
pausetime = 3,3
;guard.pause,0
sparkno = -1
sparkxy = 0,0
hitsound = s30,0
guardsound = s30,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -10,-3
air.velocity = -10,-6
fall = 1

 [State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0
sprpriority = -2

[State 181,0]
type = PlaySnd
trigger1 = time = 0
value = 174,5
channel = 11

[State 181,0]
type = PlaySnd
trigger1 = time = 110
value = 8,0
channel = 11

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1910
ID = 1910
pos = 0,0
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
shadow = 100,100,100

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1911
ID = 1911
pos = 0,0
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 11
ownpal = 1


[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,228]
flag = Intro

[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0
sprpriority = -2

[State 181,0]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
value = 172,6
channel = 11

[State 182, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
id = 196
anim = 196
pos = -10,-60
sprpriority = 2
bindtime = 1
supermovetime = 99999999
pausemovetime = 99999999
;shadow = 68,68,68
ownpal = 1

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,90]
flag = Intro


[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0
sprpriority = -2

[State 181,0]
type = PlaySnd
trigger1 = AnimElem = 1
value = 172,11
channel = 11

[State 181,0]
type = PlaySnd
trigger1 =AnimElem = 7
value = 172,6
channel = -1
channel = 11

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = Intro





[Statedef 195]
anim = 195
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 181,0]
type = PlaySnd
trigger1 =AnimElem = 2
value = 172,6
channel = -1

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200 + var(11)
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
juggle = 0; = 4
poweradd = 20

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,2



[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA   
air.cornerpush.veloff = -20
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit ;uhu
pausetime = 8,8
hitsound = S171,7
guardsound = 6,0
sparkno = 0
sparkxy = -10,-60
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210 + var(11)
ctrl = 0
type = S
movetype = A
physics = S
juggle = 0; = 2
velset = 0,0
poweradd = 20

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA   
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
hitflag = MAF
priority = 3, Hit ;uhu
pausetime = 4,4
hitsound = S171,6
guardsound = 6,0
sparkno = 1
sparkxy = -10,-60
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -5
air.velocity = -3,-6

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "y"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = Animelem = 6 && var(41)=1
value = 215
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=0
value = 0
ctrl = 1

[StateDef 215]
anim = 215 + var(11)
ctrl = 0
type = S
movetype = A
physics = S
juggle = 0; = 2
velset = 0,0
poweradd = 20

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA   
air.cornerpush.veloff = -20
damage = 15
guardflag = MA
hitflag = MAF
priority = 3, Hit ;uhu
pausetime = 4,4
hitsound = S171,6
guardsound = 6,0
sparkno = 1
sparkxy = -10,-60
animtype = Medium
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -5
air.velocity = -3,-6

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "y"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = Animelem = 6 && var(41)=1
value = 210
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220 + var(11)
ctrl = 0
type = S
movetype = A
physics = S
juggle = 0; = 4
velset = 0,0
poweradd = 60


;[State 0, ChangeAnim]
;type = changestate
;triggerall = pos y = 0 && time = 0
;triggerall = backedgedist <= helper(1900),backedgedist + 20
;triggerall = backedgedist >= helper(1900),backedgedist - 20
;trigger1 = stateno = 220
;value = 1910

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 171,0

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 172,10
channel = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 221
ID = 221
pos = 5,2
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
removeongethit = 1
ownpal = 1



[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 80
guardflag = MA
hitflag = MAF
priority = 4, Hit ;f
pausetime = 10,10
hitsound = S171,5
guardsound = 6,0
sparkno = 2
sparkxy = -10,-50
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -11,-3
guard.velocity = -5
air.velocity = -8,8
fall = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230 + var(11)
ctrl = 0
type = S
movetype = A
physics = S
juggle = 0; = 4
velset = 0,0
poweradd = 20

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0



[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit ;uhu
pausetime = 8,8
hitsound = s2,0
guardsound = 6,0
sparkno = 0
sparkxy = -10,-30
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240 + var(11)
ctrl = 0
type = S
movetype = A
physics = S
juggle = 0; = 3
velset = 0,0
poweradd = 20

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 5


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 4
;y = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 30
guardflag = MA
hitflag = MAF
priority = 3, Hit ;uhu
pausetime = 9,9
hitsound = S2,1
guardsound = 6,0
sparkno = 1
sparkxy = -10,-60
animtype = Medium
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "b"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = Animelem = 5 && var(41)=1
value = 245
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=0
value = 0
ctrl = 1


; Stand Medium Kick
[StateDef 245]
anim = 245 + var(11)
ctrl = 0
type = S
movetype = A
physics = S
juggle = 0; = 3
velset = 0,0
poweradd = 20

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 2
value = 171,3


[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 30
guardflag = MA
hitflag = MAF
priority = 3, Hit ;uhu
pausetime = 13,13
hitsound = S2,1
guardsound = 6,0
sparkno = 1
sparkxy = -10,-85
animtype = Medium
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250 + var(11)
ctrl = 0
type = A
movetype = A
physics = N
juggle = 0; = 4
velset = 0,0
poweradd = 60

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 5
value = 171,3

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 5
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 172,9
channel = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 7
y = -4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 6
y = -3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 5
y = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 5
y = 0

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA   
air.cornerpush.veloff = -20
damage = 45
guardflag = MA
hitflag = MAF
priority = 3, Hit ;uhu
pausetime = 12,12;L6,6
hitsound = S2,2
guardsound = 6,0
sparkno = 2
sparkxy = -10,-90
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = 0,-8.5
p2stateno = 5060
;p2getp1state = 0


[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400 + var(11)
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 0; = 4
poweradd = 30

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 171,2


[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
hitflag = M
guardflag = L
priority = 3, Hit ;uhu
pausetime = 8,8
hitsound = S171,7
guardsound = 6,0
sparkxy = -10,-30
sparkno = 0
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410 + var(11)
ctrl = 0
type = C
movetype = A
physics = C
juggle = 0; = 4
velset = 0,0
poweradd = 50

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 171,1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 4
;y = -4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 2
;y = -4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 2
;y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 2
;y = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 0
;y = 0

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 7
y = 0
;ignorehitpause =
;persistent =

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 411
ID = 411
pos = 30,5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit ;uhu
pausetime = 9,9
hitsound = S171,6
guardsound = 6,0
sparkno = 1
sparkxy = -10,-40
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420 + var(11)
ctrl = 0
type = C
movetype = A
juggle = 0; = 4
physics = C
velset = 12,0
poweradd = 70

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 171,0

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 8
value = 172,6


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 8
anim = 421
ID = 421
pos = -20,5
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 420, HitDef]
type = HitDef
trigger1 = animelem = 7
attr = C, NA
damage = 50
guardflag = MA
hitflag = MAF
priority = 4, Hit ;uhu
pausetime = 10,10
hitsound = S171,5
guardsound = 6,0
sparkxy = -10,-40
sparkno = 2
animtype = Heavy
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
fall = 1

[State 420, HitDef]
type = HitDef
triggerall = movehit = 0
trigger1 = animelem = 8
attr = C, NA
damage = 50
guardflag = MA
hitflag = MAF
priority = 4, Hit ;uhu
pausetime = 10,10
hitsound = S171,5
guardsound = 6,0
sparkxy = -10,-40
sparkno = 2
animtype = Heavy
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
fall = 1


[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430 + var(11)
ctrl = 0
juggle = 0; = 4
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
hitflag = MAF
guardflag = MA
priority = 3, Hit ;uhu
pausetime = 8,8
hitsound = S2,0
guardsound = 6,0
sparkxy = -10,0
sparkno = 0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440 + var(11)
ctrl = 0
type = C
movetype = A
juggle = 0; = 4
physics = C
velset = 0,0
poweradd = 50

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1


[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
hitflag = MAF
guardflag = L
priority = 3, Hit ;uhu
pausetime = 9,9
hitsound = S2,1
guardsound = 6,0
sparkxy = -10,-10
sparkno = 1
animtype = light;Back
ground.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -4,-6

;animtype = light          ;light,medium,hard,back,up,diagup
;ground.type = High      ;Low,Trip,None

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450 + var(11)
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 60
juggle = 0; = 4

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 15

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 9
x = 0

[State 460, Dust]
type = Explod
trigger1 = animelem = 7, >= 0
;trigger1 = animelem = 8, < 0
trigger1 = timemod = 4,0
scale = const(size.xscale)
id = 451
anim = 451
pos = -45,0
sprpriority = 2
bindtime = 1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1


[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 60
guardflag = MA
hitflag = MAF
priority = 3, Hit ;uhu
pausetime = 10,10
hitsound = S2,2
guardsound = 6,0
sparkno = 2
sparkxy = -10,-30
animtype = Medium
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3
fall = 1

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600 + var(11)
ctrl = 0
type = A
juggle = 0; = 2
movetype = A
physics = A
poweradd = 25

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 171,2

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = S171,7
guardsound = 6,0
sparkno = 0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610 + var(11)
ctrl = 0
type = A
juggle = 0; = 2
movetype = A
physics = A
poweradd = 20

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 171,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = S171,6
guardsound = 6,0
sparkxy = 0,-70
sparkno = 1
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-3

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "y"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = Animelem = 4 && var(41)=1
value = 615
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=0
value = 948
ctrl = 1

; Air Medium Punch
[StateDef 615]
anim = 615 + var(11)
ctrl = 0
type = A
juggle = 0; = 2
movetype = A
physics = A
poweradd = 20

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 171,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = S171,6
guardsound = 6,0
sparkxy = 0,-70
sparkno = 1
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,-3

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 41
value = 0

[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "y"
v = 41
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = Animelem = 5 && var(41)=1
value = 610
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(41)=0
value = 948
ctrl = 1



;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620 + var(11)
ctrl = 0
type = A
movetype = A
juggle = 0; = 2
physics = A
poweradd = 60
sprpriority = -1

[State 250, swoosh]
type = PlaySnd
trigger1 = animelem = 1
value = 171,0

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 80
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
hitsound = S171,5
guardsound = 6,0
sparkxy = -10,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -8
guard.velocity = -7
air.velocity = -2,5
fall = 1

[State 0, SprPriority]
type = SprPriority
trigger1 =  animelem = 7
value = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 621
ID = 621
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 0
removeongethit = 1
ownpal = 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630 + var(11)
ctrl = 0
type = A
movetype = A
juggle = 0; = 2
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 22
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = S2,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-40
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640 + var(11)
ctrl = 0
type = A
movetype = A
juggle = 0; = 2
physics = A
poweradd = 50

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
hitsound = S2,1
guardsound = 6,0
sparkno = 1
sparkxy = -10,-60
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Down Kick Hard
[Statedef 645]
type    = A
movetype= A
physics = N
juggle = 0;  = 2
poweradd= 40
ctrl = 0
velset = 0,0
anim = 645
sprpriority = 0
facep2 = 1

[State 645, PosAdd]
type = PosAdd
triggerall = time = 1
trigger1 = enemynear, statetype = A
y = -40

[State 645]
type = Turn
trigger1 = Time = 0
trigger1 = FrontEdgeBodyDist <= 5

[State 645]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 645]
type = VelSet
trigger1 = Time = 0
x = 9
y = 11

[State 645]
type = VelAdd
trigger1 = 1
y = 0.4

[State 645]
type = PlaySnd
trigger1 = Time = 5
value = 210,0

[State 645]
type = HitDef
triggerall = !movecontact
trigger1 = p2statetype != A
trigger2 = p2statetype = A
trigger2 = var(40) != 0
attr = A, SA
animtype  = Medium
damage    = 7*var(30),floor(var(30)/2)
guardflag = HA
pausetime = 7,7
sparkno = 1;S(8220+random%2)
;guard.sparkno = S8430
sparkxy = -10,-64+floor(P2Dist Y)
hitsound   = S1,5
guardsound = 4,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -7
air.velocity = -7,-4
getpower = 40,14

[State 645]
type = HitDef
triggerall = !movecontact
triggerall = p2statetype = A
trigger1 = var(40) = 0
attr = A, SA
animtype  = Medium
damage    = 7*var(30),floor(var(30)/2)
guardflag = HA
pausetime = 7,7
sparkno = 1;S(8220+random%2)
;guard.sparkno = S8430
sparkxy = -10,-64+floor(P2Dist Y)
hitsound   = S1,5
guardsound = 4,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -7,-4
air.velocity = -7,-4
getpower = 40,14
p2stateno = 5130
;p2getp1state = 0

[State 645, VarSet]
type = VarSet
trigger1 = movecontact
v = 40
value = 1

[State 645]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650 + var(11)
ctrl = 0
type = A
movetype = A
physics = A
juggle = 0; = 4
poweradd = 60

[State 650, grunt]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 5
value = 0,1

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 75
sparkno = 2
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1,10
hitsound = S2,2
guardsound = 6,0
sparkxy = -10,-50
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,5
fall = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = time > 40
value = 948
ctrl = 1


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


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

;---------------------------------------------------------------------------
; Triangle Jump
[Statedef 7730]
type = A
movetype = I
physics = N
anim = 7730
;velset = -2*Vel X,-7
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,3

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)
;ignorehitpause =
;persistent =


[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -1*(backedgebodydist)

[State 0, PlaySnd]
type = PlaySnd
triggerall = command = "holdup"
trigger1 = anim = 7743 && animtime = 0
value = 171,3

[State 0, PlaySnd]
type = PlaySnd
triggerall = command = "holdup"
trigger1 = anim = 7745 && animtime = 0
value = 171,3


[State 0, PlaySnd]
type = PlaySnd
triggerall = command = "holddown"
trigger1 = anim = 7741 && animtime = 0
value = 171,3


[State 0, PlaySnd]
type = PlaySnd
triggerall = command = "holddown"
trigger1 = anim = 7745 && animtime = 0
value = 171,3



 [State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 7730 && animtime = 0
value = 7740

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holdup"
trigger1 = anim = 7740 && animtime = 0
value = 7741

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holdup"
trigger1 = anim = 7741 && animtime = 0
value = 7742

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holdup"
trigger1 = anim = 7742 && animtime = 0
value = 7743

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holdup"
trigger1 = anim = 7743 && animtime = 0
value = 7744

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holdup"
trigger1 = anim = 7744 && animtime = 0
value = 7745

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holdup"
trigger1 = anim = 7745 && animtime = 0
value = 7740

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holdup"
triggerall = anim = 7740
trigger1 = animelem = 1
y = -9
x = -1

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holdup"
triggerall = anim = 7741
trigger1 = animelem = 1
y = -6

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holdup"
triggerall = anim = 7742
trigger1 = animelem = 1
y = -21

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holdup"
triggerall = anim = 7743
trigger1 = animelem = 1
y = -12

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holdup"
triggerall = anim = 7744
trigger1 = animelem = 1
y = -14
x = 1

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holdup"
triggerall = anim = 7745
trigger1 = animelem = 1
y = -24

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holddown"
trigger1 = anim = 7740 && animtime = 0
value = 7745

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holddown"
trigger1 = anim = 7741 && animtime = 0
value = 7740

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holddown"

trigger1 = anim = 7742 && animtime = 0
value = 7741

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holddown"

trigger1 = anim = 7743 && animtime = 0
value = 7742

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holddown"
trigger1 = anim = 7744 && animtime = 0
value = 7743

 [State 0, ChangeAnim]
type = ChangeAnim
triggerall = command = "holddown"
trigger1 = anim = 7745 && animtime = 0
value = 7744

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holddown"
triggerall = anim = 7740
trigger1 = animelem = 1
y = 6
x = 1      ;-5

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holddown"
triggerall = anim = 7741
trigger1 = animelem = 1
y = 21   ;-3

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holddown"
triggerall = anim = 7742
trigger1 = animelem = 1
y = 12   ;-19

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holddown"
triggerall = anim = 7743
trigger1 = animelem = 1
y = 14
 ;-9

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holddown"
triggerall = anim = 7744
trigger1 = animelem = 1
y = 24
x = -1    ;-1

[State 0, PosAdd]
type = PosAdd
triggerall = command = "holddown"
triggerall = anim = 7745
trigger1 = animelem = 1
y = 9    ;-12

[State 600, EndState]
type = ChangeState
triggerall = time > 10;animtime = 0
trigger1 =  command = "holdfwd"
value = 7731
ctrl = 0

[State 600, EndState]
type = ChangeState
trigger1 =  pos y > -10;command = "holdfwd"
trigger2 = command = "a"
trigger3 = command = "b"
trigger4 = command = "c"
trigger5 = (ScreenPos Y <= 80) &&  (ScreenPos Y >= 75)
trigger6 = time > 350
trigger7 = win
trigger8 = lose
trigger9 = pos y < -300
value = 948
ctrl = 1

[State 600, EndState]
type = ChangeState
trigger1 = command = "z"
value = 7750
ctrl = 0

[State 600, EndState]
type = ChangeState
trigger1 = command = "y"
value = 7760
ctrl = 0

[State 600, EndState]
type = ChangeState
trigger1 = command = "x"
value = 7770
ctrl = 0

[Statedef 7731]
type = A
movetype = I
physics = N
anim = 7731
;velset = -2*Vel X,-7
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall =animelem = 2
trigger1 = anim = 7731
value = 8,0

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = animtime = 0 ;&& anim !=
value = 7732

[State 0, VelSet]
type = VelSet
trigger1 = animtime = 0
x = 6
y = -9

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

[Statedef 7750]
type = A
movetype = A
physics = N
anim = 7731
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall =animelem = 2
trigger1 = anim = 7731
value = 8,0

[State 7740, loclcamera]
type = ScreenBound
trigger1 = anim = 7731
value = 0
movecamera = 0,floor(pos y)

[State 0, VelSet]
type = VelSet
triggerall = anim = 7731
trigger1 = animtime = 0
x = 9;5
y = -9;-5

[State 650, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
attr = A, NA
damage = 20,2
sparkno = 2      ;uhu
guardflag = MA
priority = 4, Hit
hitflag = MAF
pausetime = 5,5
hitsound = s171,7
guardsound = 6,0
sparkxy = -20,-100
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,-5
fall = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 7731
trigger1 = animtime = 0 ;&& anim !=
value = 7750

[State 0, VelAdd]
type = VelAdd
triggerall = anim = 7750
trigger1 = vel x < 6 && vel y > -6
x = 1
y = -1

[State 0, ChangeState]
type = ChangeState
triggerall = anim = 7750
trigger1 = animtime = 0
value = 948
ctrl = 1

;---

[Statedef 7760]
type = A
movetype = A
physics = N
anim = 7731
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall =animelem = 2
trigger1 = anim = 7731
value = 8,0

[State 7740, loclcamera]
type = ScreenBound
trigger1 = anim = 7731
value = 0
movecamera = 0,floor(pos y)

[State 0, VelSet]
type = VelSet
triggerall = anim = 7731
trigger1 = animtime = 0
x = 10;6
;y = -4

[State 650, HitDef]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
attr = A, NA
damage = 20,2
sparkno = 2
guardflag = MA
priority = 4, Hit
hitflag = MAF
pausetime = 5,5
hitsound = S171,7
guardsound = 6,0
sparkxy = -20,-45
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,-5
fall = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 7731
trigger1 = animtime = 0 ;&& anim !=
value = 7760

[State 0, VelAdd]
type = VelAdd
triggerall = anim = 7760
trigger1 = vel x < 7 ;&& vel y > -5
x = 1
;y = -1

[State 0, ChangeState]
type = ChangeState
triggerall = anim = 7760
trigger1 = animtime = 0
value = 948
ctrl = 1

[Statedef 7770]
type = A
movetype = A
physics = N
anim = 7733
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall =animelem = 2
trigger1 = anim = 7733
value = 8,0

[State 7740, loclcamera]
type = ScreenBound
trigger1 = anim = 7733
value = 0
movecamera = 0,floor(pos y)

[State 0, VelSet]
type = VelSet
triggerall = anim = 7733
trigger1 = animtime = 0
x = 9;5
y = 4

[State 650, HitDef]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 8
attr = A, NA
damage = 20,2
priority = 4, Hit
sparkno = 2
guardflag = MA
hitflag = MAF
pausetime = 5,5
hitsound = S171,7
guardsound = 6,0
sparkxy = -20,-10
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,5
fall = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 7733
trigger1 = animtime = 0 ;&& anim !=
value = 7770

[State 0, VelAdd]
type = VelAdd
triggerall = anim = 7770
trigger1 = vel x < 6 && vel y < 5
x = 1
y = 1

[State 0, ChangeState]
type = ChangeState
triggerall = anim = 7770
trigger1 = animtime = 0
value = 948
ctrl = 1

[State 3600, ChangeState]
type = ChangeState
trigger1 = pos y  > -6
value =  1202



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

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,0

[State 800, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = ifelse(Command = "holdfwd",-1,1)
p2facing = -1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = ifelse(PalNo > 6, 0, 1)
fall.recover = 0
fall.damage = 0


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

[State 100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,7

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 0,0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 0,2


[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60,-50

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 60,-70

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 10,-80

[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 40,-80

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = -8

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0



[State 810, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 10,-80

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 6
value = -40

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 6
value = 830




[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 820]
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
value = 820

[Statedef 830]
type    = A
movetype= H
physics = N
velset = -10,-8
poweradd = 50

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

;--------------------------------------------------------------------------------------------
; Guard Push (stand)
[Statedef 7610]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 7610
sprpriority = 0
facep2 = 1


[State 7610, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 7610, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 7610, Width]
type = Width
trigger1 = 1
value = 10,0

[State 7610, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 23


[State 7610, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 30

[State 7610, PlaySnd 2]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 7610, Spark]
type = Explod
trigger1 = AnimElem = 2;Time = 0
anim = 7020
postype = p1
pos = 31,-47
ownpal = 1
vel = 0,0
scale = .5,.5
ignorehitpause = 1
sprpriority = 5

[State 7610, Guard Push Helper]
type = Helper
trigger1 = AnimElem = 2;Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 7611
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 7610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Push (Helper)

[Statedef 7611]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = Parent,Anim
sprpriority = -4


[State 7611, PlayerPush]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 7611, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 7611, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 25

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 15

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 7611, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 10

[State 7611, DestroySelf]
type = DestroySelf
trigger1 = Time >= 14
