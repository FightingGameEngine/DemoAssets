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

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 10
anim = 3002
ID = 3002
pos = 0,0
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
supermovetime = 99
supermove = 99
pausemove = 99


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 10
anim = 3002
ID = 3002
pos = 50,50
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
supermovetime = 99
supermove = 99
pausemove = 99




;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 10
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 10
Time = 60
;anim =-1;s3012
pos = -35,-85
sound = S8889,0
poweradd = -1000
movetime = 60


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

;------------End of Hyper Effects
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
value = 0,0
channel=-1


[State 0, Snd]
type=playsnd
trigger1= animelem=2 && random<700 && var(1)!=2
value=171,7
channel=0

[State 0, Snd]
type=playsnd
trigger1= animelem=2 && random<700 && var(1)!=2
value=171,3
channel=0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = 3,1
channel=-1




 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 14
anim = 3011
ID = 3011
pos = 55,-65
postype = p1
bindtime = 999
removetime = -1
sprpriority = 6
ownpal = 1
removeongethit = 1
scale = .5,.5

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 14
anim = 3011
ID = 3012
pos = 65,-70
postype = p1
bindtime = 999
removetime = -1
sprpriority = 5
ownpal = 1
removeongethit = 1
scale = .5,.5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 15
value = 172,5


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 14
trigger2 = AnimElem = 15
ProjID = 3010
projanim = 3010
projhitanim = 1015
projremanim = 1015
projcancelanim = 1015
velocity = 16,(4 - random/125)
offset = 35,-65
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 6,1
pausetime = 4,4
sparkno = s3012
;guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,-0.5
air.velocity = -2,-1.1
fall = 1
air.fall = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = time >= 300
value = 3001

[StateDef 3001]
type    = S
physics = S
ctrl = 0
anim = 3001
velset = 0,0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3011

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 3012
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,1
channel=-1



[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 3003
ID = 3003
pos = 0,-90
postype = p1
bindtime = 1
removetime = 60
sprpriority = 6
ownpal = 1
vel = -9,-7
accel = 0.1,0.5


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 3003
ID = 3003
pos = 30,-40
postype = p1
bindtime = 1
removetime = 60
sprpriority = 5
ownpal = 1
vel = -12,-6
accel = 0.1,0.6






[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[StateDef 3100]
type    = S
physics = S
ctrl = 0
anim = 3100
velset = 0,0

[State 200, Fx]
type = PlaySnd
trigger1 = Time = 0
value = 10,2

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = 5,-140
sound = S8889,0
poweradd = -1000
movetime = 60


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
trigger1 = time >= 70
value = 3101


[StateDef 3101]
anim = 3101
ctrl = 0
type = S
movetype = A
physics = N
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 8,0


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 15
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 5
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0
y = 0

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 60,10
guardflag = MA
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
priority = 4,hit
sparkno = 3
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,4


[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 3102
ctrl = 0
;anim =
;ignorehitpause =
;persistent =




[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[StateDef 3102]
anim = 3102
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 0, HitOverride]
type = HitOverride
trigger1 = time < 113
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
stateno = 3103

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 1
trigger2 = animelem= 3
trigger3 = animelem= 5
trigger4 = animelem= 7
trigger5 = animelem= 11
trigger6 = animelem= 13
trigger7 = animelem= 15
trigger8 = animelem= 18
trigger9 = animelem= 21
trigger10 = animelem= 24
trigger11 = animelem= 27
trigger12 = animelem= 30
trigger13 = animelem= 33
trigger14 = animelem= 36
trigger15 = animelem= 40
value = 0,1
channel=-1



[State 0, VelSet]
type = VelSet
trigger1 = animelem= 2
trigger2 = animelem= 4
trigger3 = animelem= 6
trigger4 = animelem= 8
trigger5 = animelem= 32
trigger6 = animelem= 33
trigger7 = animelem= 36
trigger8 = animelem= 19
trigger9 = animelem= 38
trigger10 = animelem= 39
trigger11 = animelem= 40
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = animelem= 10
trigger2 = animelem= 43
x = 0


[State 220, HitDef]
type = HitDef
trigger1 = animelem= 2
trigger2 = animelem= 4
trigger3 = animelem= 6
trigger4 = animelem= 8
trigger5 = animelem= 12
trigger6 = animelem= 14
trigger7 = animelem= 16
trigger8 = animelem= 19
trigger9 = animelem= 22
trigger10 = animelem= 25
trigger11 = animelem= 28
trigger12 = animelem= 31
trigger13 = animelem= 34
trigger14 = animelem= 37
trigger15 = animelem= 41
attr = S, NA
damage = 10,2
guardflag = MA
pausetime = 10,10
hitsound = 5,1
guardsound = 6,0
priority = 4,hit
sparkno = 1
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -1 -10*(animelem=41)
guard.velocity = -2
air.velocity = -4,4
fall= (animelem=41)






[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1


[StateDef 3103]
anim = 3103
ctrl = 0
type = S
movetype = H
physics = S
velset = -3,-1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -20
kill = 0

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 5100
ctrl = 1




[StateDef 3200]
type    = S
physics = N
ctrl = 0
anim = 3200
velset = -8,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 3110, back to stance]
type = ChangeState
trigger1 = backedgebodydist = 0
value = 3201
ctrl = 0


[StateDef 3201]
anim = 3201
ctrl = 0
type = S
movetype = A
physics = N
velset = 0,0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
trigger1 = animelem = 6
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
supermove = 999
pausemove = 999


[State -3, Landing Sound]
type = PlaySnd
trigger1 = animelem = 6
value = 8, 1
channel = -1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = animelem = 6
value = 171,4



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
pos = 4,-35
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


[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 2999

[Statedef 2999]
type    = S
movetype= A
physics = S
juggle  = 4
anim = 3202
ctrl = 0
sprpriority = 0

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time = 0
value = 172,1


[State 1101,Turn]
type = Turn
trigger1 = P2Dist X < -20


[State 2500, projeção]
type = helper
stateno = 3250
helpertype = normal ;
triggerall = !var(59)
trigger1 = animelem = 1
pos = 80,-60
postype = p1
ID=3250
ownpal = 1
name = "projeção"
sprpriority = -3


[State 2500, projeção]
type = helper
stateno = 3250
helpertype = normal ;
triggerall = var(59)
trigger1 = animelem = 1
pos = 50-floor(random/10),-60
postype = p2
ID=3250
ownpal = 1
name = "projeção"
sprpriority = -3


[State 0, ChangeState]
type = ChangeState
triggerall = !var(59)
trigger1 = win
trigger2 = lose
trigger3 = command = "a"
trigger4 = command = "b"
trigger5 = command = "c"
trigger6 = command = "x"
trigger7 = command = "y"
trigger8 = command = "z"
value = 3203
ctrl = 0
;anim =
;ignorehitpause =
;persistent =
[State 0, ChangeState]
type = ChangeState
triggerall = var(59)
trigger1 = win
trigger2 = lose
trigger3 = time > 10
value = 3203
ctrl = 0


[Statedef 3203]
type    = S
movetype= I
physics = S
juggle  = 4
anim = 3203
ctrl = 0
sprpriority = 0

[State 200, Fx]
type = PlaySnd
trigger1 = Time = 0
value = 10,4

[State -3, Landing Sound]
type = PlaySnd
trigger1 = time = 0
value = 0,12

 [State 3000, superportrait]
type = Explod
trigger1 = time = 0
anim = 3220
ID = 1003
pos = 58,-55
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
scale = .5,.5
removeongethit = 1

 [State 3000, superportrait]
type = Explod
trigger1 = animelem= 5
anim = 3204
ID = 3204
pos = 0,-80
postype = p1
bindtime = 1
removetime = 50
sprpriority = 5
ownpal = 1
scale = 1,1
removeongethit = 0
vel = -10,-7
accel = 0.1,0.4


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause =
;persistent =




[Statedef 3250]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 3210
ctrl = 0
sprpriority = 200

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, Turn]
type = Turn
trigger1 = facing != parent,facing
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
trigger1 = parent,command !="holdup"
trigger1 = parent,command !="holddown"
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = parent,command ="holdup"
trigger1 = parent,command !="holddown"
;trigger1 = parent,command !="holdfwd"
;trigger1 = parent,command !="holdback"
y = -3


[State 0, VelSet]
type = VelSet
trigger1 = parent,command !="holdup"
trigger1 = parent,command ="holddown"
;trigger1 = parent,command !="holdfwd"
;trigger1 = parent,command !="holdback"
y = 3


[State 0, VelSet]
type = VelSet
trigger1 = parent,command !="holdfwd"
trigger1 = parent,command !="holdback"
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = parent,command ="holdfwd"
trigger1 = parent,command !="holdback"
x = 3;*parent,facing


[State 0, VelSet]
type = VelSet
trigger1 = parent,command !="holdfwd"
trigger1 = parent,command ="holdback"
x = -3;*parent,facing



[State 0, ChangeState]
type = ChangeState
trigger1 = parent,win
trigger2 = parent,lose
trigger3 = parent,stateno=3203
value = 3251
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno!=3203 && parent,stateno!=2999
;ignorehitpause =
;persistent =


[Statedef 3251]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 3211
ctrl = 0
sprpriority = 200

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage = 250
guardflag = -1;MA
pausetime = 10,10
hitsound = S172,2
guardsound = 6,0
sparkno = 4;S1002
sparkxy = 0,0
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,-3
fall = 1
air.fall = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1002
ID = 1002
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 220
ownpal = 1
removeongethit = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0





[StateDef 3300]
type    = S
physics = S
ctrl = 0
anim = 3300
velset = 0,0

[State 200, Fx]
type = PlaySnd
trigger1 = Time = 0
value = 10,3

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
pos = 20,-65
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


[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 3301


[StateDef 3301]
anim = 3301
ctrl = 0
type = S
movetype = A
physics = N
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 8,0


[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 40,10
guardflag = MA
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
priority = 4,hit
sparkno = 3
sparkxy = -20,-70
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -1
guard.velocity = -5
air.velocity = -4,4


[State 0, ChangeState]
type = ChangeState
trigger1 = movehit
value = 3302
ctrl = 0
;anim =
;ignorehitpause =
;persistent =




[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[StateDef 3302]
anim = 3302
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
stateno = 3103

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 3
trigger2 = animelem= 6
trigger3 = animelem= 9
trigger4 = animelem= 11
trigger5 = animelem= 15
trigger6 = animelem= 19
trigger7 = animelem= 22
trigger8 = animelem= 24
trigger9 = animelem= 28
trigger10 = animelem= 31
trigger11 = animelem= 33
trigger12 = animelem= 36
trigger13 = animelem= 40
trigger14 = animelem= 43
trigger15 = animelem= 46
trigger16 = animelem= 48
trigger17 = animelem= 52
trigger18 = animelem= 55
trigger19 = animelem= 58
trigger20 = animelem= 61
trigger21 = animelem= 63
trigger22 = animelem= 66
trigger23 = animelem= 70
value = 0,1
channel=-1



[State 0, VelSet]
type = VelSet
trigger1 = animelem= 4
trigger2 = animelem= 7
trigger3 = animelem= 10
trigger4 = animelem= 12
trigger5 = animelem= 16
trigger6 = animelem= 20
trigger7 = animelem= 23
trigger8 = animelem= 25
trigger9 = animelem= 29
trigger10 = animelem= 32
trigger11 = animelem= 34
trigger12 = animelem= 37
trigger13 = animelem= 41
trigger14 = animelem= 44
trigger15 = animelem= 47
trigger16 = animelem= 49
trigger17 = animelem= 53
trigger18 = animelem= 56
trigger19 = animelem= 59
trigger20 = animelem= 62
trigger21 = animelem= 64
trigger22 = animelem= 67
trigger23 = animelem= 2
x = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem= 69
x = 0


[State 220, HitDef]
type = HitDef
trigger1 = animelem= 4
trigger2 = animelem= 7
trigger3 = animelem= 10
trigger4 = animelem= 12
trigger5 = animelem= 16
trigger6 = animelem= 20
trigger7 = animelem= 23
trigger8 = animelem= 25
trigger9 = animelem= 29
trigger10 = animelem= 32
trigger11 = animelem= 34
trigger12 = animelem= 37
trigger13 = animelem= 41
trigger14 = animelem= 44
trigger15 = animelem= 47
trigger16 = animelem= 49
trigger17 = animelem= 53
trigger18 = animelem= 56
trigger19 = animelem= 59
trigger20 = animelem= 62
trigger21 = animelem= 64
trigger22 = animelem= 67
trigger23 = animelem= 71
attr = S, NA
damage = 9,2
guardflag = MA
pausetime = 3,3
hitsound = 5,1
guardsound = 6,0
priority = 4,hit
sparkno = 1
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -0.01 -10*(animelem=71)
guard.velocity = -2
air.velocity = -4,4
fall= (animelem=71)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0






[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1


