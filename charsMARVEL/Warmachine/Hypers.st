;---------------------------------------------------------------------------
; Super machine
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 3000]
type = S
ctrl = 0
anim = 3001
velset = 0,0
movetype = I
physics = S
sprpriority = 1

[State 3500, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3500, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1


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
trigger1 =  time = 5
Time = 40
pos = -18, -78
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = back;left    ;p2,front,back,left,right
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
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 5,2



[State 410]
type=Explod
Anim=7003
trigger1 = time= 13
postype=P1
pos=40,-87
bindtime=-1
removeTime=85
sprpriority=4
ownpal=1
scale= 0.5, 0.5
ignorehitpause= 0
removeongethit=1

[State 410]
type=Explod
Anim=7003
trigger1 = time= 13
postype=P1
pos=55,-83
bindtime=-1
removeTime=85
sprpriority=4
ownpal=1
scale= 0.2, 0.2
ignorehitpause= 0
removeongethit=1

[State 410]
type=Explod
Anim=7003
trigger1 = time= 13
postype=P1
pos=-12,-70
bindtime=-1
removeTime=85
sprpriority=4
ownpal=1
scale= 0.2, 0.2
ignorehitpause= 0
removeongethit=1


[State 8010, 1]
type = Helper
trigger1 = time= 13
name = "p_bala"
postype = p1
pos = 20,-100
sprpriority = 4
ignorehitpause = 1
stateno = 13011
id = 13011

[State 1000, 2]
type = Projectile
trigger1 = time = [13,100]
ProjID = 1011
projanim = 1011
projhitanim = 8200
projremanim = 8200
projcancelanim = 8200
velocity = 16,(4 - random/125)
offset = -20,-76
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 4,1
pausetime = 4,4
sparkno = s3012
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,-0.5
air.velocity = -2,-1.1
fall = 1
air.fall = 1


[State 1000, 2]
type = Projectile
trigger1 = time = [13,100]
ProjID = 1011
projanim = 1011
projhitanim = 8200
projremanim = 8200
projcancelanim = 8200
velocity = 16,(4 - random/125)
offset = 33,-102
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 4,1
pausetime = 4,4
sparkno = s3012
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,-0.5
air.velocity = -2,-1.1
fall = 1
air.fall = 1

[State 1000, 2]
type = Projectile
trigger1 = time = [13,100]
ProjID = 1011
projanim = 1011
projhitanim = 8200
projremanim = 8200
projcancelanim = 8200
velocity = 16,(4 - random/125)
offset = 45,-86
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 6,1
pausetime = 4,4
sparkno = s3012
hitsound = s8000,2
guardsound = S8500,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,-0.5
air.velocity = -2,-1.1
fall = 1
air.fall = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 13
value = 190,4

[State 2400]
type = Explod
trigger1 = time= 13
anim = 8170
pos = -20,0
ownpal = 1
scale = 0.8, 0.8
sprpriority = -2

[State 1000, 11]
type = Width
trigger1 = Time = [46, 130]
player = 30, 10

[State 1000, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
;bala
[Statedef 90001]
type    = S
movetype = A
physics = N
velset = 10,0
anim = 1001
sprpriority = 4
velset = 0, 0

[State 3850, a1]
type = Veladd
trigger1 = time = 1
x = 14

[State 3850, a1]
type = VelSet
trigger1 = time = 30
x = 0

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 1023,0

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,30]
flag = Noshadow

[State 1001, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage   = 20,10
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,100
hitsound = s8000,2
guardsound = S8500,0
sparkno = S8200
guard.sparkno = S8100
sparkxy = 5,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4
fall = 0
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0

[State 1002,end]
type = DestroySelf
trigger1 = frontedgedist< -105 || backedgedist < -120
trigger2 = Movecontact
trigger3= time=50

;--------------------------------------------------------------
;p.bala
[Statedef 13011]
type = S
anim = 1013
sprpriority = -1
velset = 0, 0

[State 3850, a1]
type = Veladd
trigger1 = time = 1
x = -4
y = -2

[State 3850, a1]
type = VelSet
trigger1 = time = 4
x = -2
y = 3

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 1023,0

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,25]
flag = Noshadow

[State 3020,4]
type = destroyself
trigger1 = (Time >= 10) || (Pos Y >= 0)


;---------------------------------------------
;AIR missile
[Statedef 3001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 3500, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3500, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1


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
trigger1 =  time = 5
Time = 40
;anim =-1;s3012
pos = 0, -60
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 5,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S3041,0+random%6


[State 1105, helper]
type = Helper
triggerall = time =[16,99]
trigger1 = timemod = 3,1
name = "bullet2"
id = 7111
stateno = 7111
postype = p1
pos = ifelse(random<500,0,5),ifelse(random<500,0,-10)
ownpal = 1

[State 1105, helper]
type = Helper
triggerall = time =[16,99]
trigger1 = timemod = 5,1
name = "bullet2"
id = 7111
stateno = 7111
postype = p1
pos = ifelse(random<500,0,5),ifelse(random<500,0,-8)
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time=16
anim = 77712
ID = 77712
pos = 0,0
postype = p1  
facing = 1
bindtime = -1
removetime = 80
scale = 1,1
sprpriority = 9
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 190,5

[State 2400]
type = Explod
trigger1 = animelem = 1
anim = 8170
pos = -20,0
ownpal = 1
scale = 0.8, 0.8
sprpriority = -2


[State 3001,end]
type = changestate
trigger1 = time = 100
value = 0
ctrl = 1
;--------------------------------------------------------------
;misil2
[Statedef 7111]
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 9,-5
anim = 7711
sprpriority = -9

[State 1006, 3]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = 7, 0
guardflag = MA
pausetime = 2,2
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = S8200
guard.sparkno = S8100				;Spark anim no (Def: set above)
sparkxy = -15,-80
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -5
air.type = High
air.velocity = -4, -2
air.hittime = 25
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

[State 100, Fire]
type = Explod
triggerall= !Numexplod(7707)
trigger1 = Movehit = 1
anim = 7707
id=7707
random = 50, 80
pos = -15,-50
postype = p2
sprpriority = 7
bindtime = 1

[State 1006, 7]
type = Changestate
trigger1 = Movecontact = 1
trigger2 = time= 50
value=7712

;----------------------------------------------------------
;end bullet
;----------------------------------------------------------
[Statedef 7712]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 0
anim = 77711
sprpriority=10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S8000,5

[State 0, end]
type = destroyself
trigger1 = animtime=0

;--------------------------------------------------------------------------
;Super beam
[Statedef 3008]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 1016

[State 3500, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3500, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 5,2

[State 1020,0]
type = PlaySnd
trigger1 = time = 26
value = 192,10

[State 1020,0]
type = PlaySnd
trigger1 = time = 30
value = 192,10


[State 1020,0]
type = PlaySnd
trigger1 = time = 2
value = 192,9
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
trigger1 =  time = 5
Time = 40
pos = 0, -80
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 1000, shake it]
Type = EnvShake
trigger1 = time = 62
Time = 100
freq = 60
ampl = 10
phase = 0
ignorehitpause = 1


[State 3200, flash]
type = explod
trigger1 = AnimElem = 3
anim = 7721
pos = 0,0
postype = p1
sprpriority = 16
ignorehitpause = 1
removetime = 40
removeongethit = 1
ownpal = 1
scale = 1,1

[State 1001, Helper]
type = Helper
trigger1 = animelem = 16
name = "electry ray"
ID = 193
stateno = 19002
pos = 80,-77
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
size.xscale= 1.5
size.yscale=0.8

[State -2, globalnoshadow]
type = assertspecial
trigger1= 1
flag = globalnoshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 42
value = 191,3

[State 2400]
type = Explod
trigger1 = animelem = 1
anim = 8170
pos = -20,0
ownpal = 1
scale = 0.8, 0.8
sprpriority = -2

[State 3200, 7]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
;electry ray
[Statedef 19002]
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 7710
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 190,13
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 1015 , 1]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
trigger3 = AnimElem = 9
trigger4 = AnimElem = 10
trigger5 = AnimElem = 11
trigger6 = AnimElem = 12
trigger7 = AnimElem = 13
trigger8 = AnimElem = 14
trigger9 = AnimElem = 15
trigger10 = AnimElem = 16
trigger11 = AnimElem = 17
trigger12 = AnimElem = 18
trigger13 = AnimElem = 19
trigger14 = AnimElem = 20
trigger15 = AnimElem = 21
trigger16 = AnimElem = 22
trigger17 = AnimElem = 23
trigger18 = AnimElem = 24
trigger19 = AnimElem = 25
trigger20 = AnimElem = 26
trigger21 = AnimElem = 27
trigger22 = AnimElem = 28
trigger23 = AnimElem = 29
trigger24 = AnimElem = 30
trigger25 = AnimElem = 31
trigger26 = AnimElem = 32
trigger27 = AnimElem = 33
trigger28 = AnimElem = 34
trigger29 = AnimElem = 35
trigger30 = AnimElem = 36
trigger31 = AnimElem = 37
trigger32 = AnimElem = 38
attr = SCA, HP
damage    = 9,1
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = S8200
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
fall=1

[State 240]
type = explod
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.4,0.4

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9002
pos = 0,0



[State 99]
type = DestroySelf
trigger1 = time = 70


;==========================================================================
;Electric whip
[Statedef 3040]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 7806
ctrl = 0
sprpriority = 2

[State 3500, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3500, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 5,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem= 4
value = 190,3
channel=6

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
trigger1 =  time = 5
Time = 40
pos = 0, -80
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 193, sand]
type = Explod
trigger1 = AnimElem = 6
anim = 7510
pos = 150,0
sprpriority = -999
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
scale = 1.5,1

[State 193, sand]
type = Explod
trigger1 = AnimElem = 1
anim = 7704
pos = -40,-10
sprpriority = 9
supermovetime = -1
postype = p1
bindtime = -1
removetime = 20
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
scale = .5,.7

[State 193, sand]
type = Explod
trigger1 = AnimElem = 6
anim = 8676
pos = 150,0
sprpriority = 9
supermovetime = -1
postype = p1
bindtime = -1
removetime = 20
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
scale = 1.5,.5

[State 3002, HitDef]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
attr = S, HA
animtype  = Hard
damage    = 75
hitflag = MAFD
priority = 28, Hit
guardflag = MA
pausetime = 3,3
sparkno =  s8022
getpower = 0,0
givepower = 0,0
sparkxy = -45,-90
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8500,0
animtype = Hard
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,-2
down.velocity = -2,-3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100
fall = AnimElem = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 7
value = 190,15

[State 2400]
type = Explod
trigger1 = animelem = 1
anim = 8170
pos = -20,0
ownpal = 1
scale = 0.8, 0.8
sprpriority = -2

[State 2400]
type = Explod
triggerall= !Numexplod(77806)
trigger1 =time =[10,22]
anim = 77806
id= 77806
pos = 0,-3
ownpal = 1
sprpriority = 9
removetime=40
scale=1,1.2
velocity=4,0


[State 200, Explod]
type = Explod
triggerall= !Numexplod(77704)
trigger1 = movecontact
anim = 77704
id=77704
pos = 0,0
ontop = 1
bindtime = -1
scale = 1,1
postype = p2
removetime=14
ownpal=1


[State 3005, goto Attack State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Rocket rain
[StateDef 3400]
type    = S
movetype= A
physics = S
juggle  = 15
ctrl = 0
anim = 7810
sprpriority = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 5,2

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
trigger1 =  time = 5
Time = 40
pos = -18, -78
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = back;left    ;p2,front,back,left,right
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
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 2400]
type = Explod
triggerall= !NumExplod(8170)
trigger1 = animelem = 4
trigger2 = AnimElem = 13;7
trigger3 = AnimElem = 17;9
trigger4 = AnimElem = 21;11
trigger5 = AnimElem = 25;13
trigger6 = AnimElem = 29;15
trigger7 = AnimElem = 33;17
trigger8 = AnimElem = 5
trigger9 = AnimElem = 7
trigger10 = AnimElem = 11;9
trigger11 = AnimElem = 15;11
anim = 8170
id=8170
pos = -20,0
ownpal = 1
scale = 0.8, 0.8
sprpriority = -2


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9;5
trigger2 = AnimElem = 13;7
trigger3 = AnimElem = 17;9
trigger4 = AnimElem = 21;11
trigger5 = AnimElem = 25;13
trigger6 = AnimElem = 29;15
trigger7 = AnimElem = 33;17
trigger8 = AnimElem = 5
trigger9 = AnimElem = 7
trigger10 = AnimElem = 11;9
trigger11 = AnimElem = 15;11
value = S8000,2


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9;5
trigger2 = AnimElem = 13;7
trigger3 = AnimElem = 17;9
trigger4 = AnimElem = 21;11
trigger5 = AnimElem = 25;13
trigger6 = AnimElem = 29;15
trigger7 = AnimElem = 33;17
trigger8 = AnimElem = 5
trigger9 = AnimElem = 7
trigger10 = AnimElem = 11;9
trigger11 = AnimElem = 15;11
value = S8000,2


;Missils
[State 3150, helper]
type = Helper
triggerall = time = [20,139]
trigger1 = timemod = 15,6
name = "missil"
StateNo = 3006
id = 3006
postype = p1
pos = 54,-25
sprpriority = -6
ownpal = 1

[State 3150, helper]
type = Helper
triggerall = time = [20,139]
trigger1 = timemod = 20,6
name = "missil2"
StateNo = 3006
id = 3006
postype = p1
pos = 54,-16
sprpriority = -6
ownpal = 1


[State 3150, helper]
type = Helper
triggerall = time = [20,139]
trigger1 = timemod = 10,6
name = "missil2"
StateNo = 3006
id = 3006
postype = p1
pos = 54,-6
sprpriority = -6
ownpal = 1

[State 2400]
type = Explod
triggerall= !NumExplod(78100)
trigger1 = time = [20,139]
anim = 78100
id=78100
pos = 0,0
ownpal = 1
scale = 1, 1
sprpriority = 6
removeongethit=1
bindtime=-1

[State 3101, Snd]
type = PlaySnd
trigger1 = Time = 0
value = S3000, 0

[State 3301, end]
type = ChangeState
;trigger1 = movehit
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------------------------------------------------------
;Misil Helper
;-------------------------------------------------------------------------------
[Statedef 3006]
type = S
movetype = A
physics = S
poweradd = 0
anim = 7009
sprpriority = -6

[State 78101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 3007
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 78101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 78101, vel]
type = VelSet
trigger1 = 1
x = 9

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 30,1

[State 78101, fire]
type = Explod
;triggerall = !NumExplod(1032)
trigger1 = time= 0
pos=0,0
id= 77009
anim =  77009
bindtime = -1
ownpal=1
removetime=-1
removeongethit = 1

[State 78101, 0]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 12, 1
pausetime = 0,9
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = -1
guard.sparkno = S8100				;Spark anim no (Def: set above)
sparkxy = -15,-50
ground.type = High
ground.slidetime = 0
ground.hittime = 15
ground.velocity = -7,-3
air.velocity = -7, -4
priority = 9
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1
air.fall = 1

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 80
pos = -15,-70
postype = p2
sprpriority = 7
bindtime = -1

[state 3151, destroy]
type = Changestate
trigger1 = movecontact = 1
trigger2 = time = 40
value=3007
;-------------------------------------------
; end missil
;-------------------------------------------
[Statedef 3007]
type = S
movetype = A
physics = S
poweradd = 0
anim = 7010
sprpriority = 6

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S8000,5


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 77009

[state 3151, destroy]
type = Destroyself
trigger1 = animtime = 0


;---------------------------------------------------------------------------
; Proto cannon
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 3009]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
anim = 3002
ctrl=0
poweradd = -1000

[State 3500, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3500, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1


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
trigger1 =  time = 5
Time = 40
pos = -7, -80
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = back    ;p2,front,back,left,right
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
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = back    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 3100, 5]
type = PlaySnd
trigger1 = Time = 0
value = 5,2

[State 3000,00]
type = BGPalfx
trigger1 = 1
mul = 90,90,90
sinadd = 100, 100, 100,0
time = 1
ignorehitpause = 1


[State 4110, 6]
type = AfterImage
trigger1 = time = 0
time = 30
TimeGap  = 1
FrameGap = 4
length = 15

[State 3000, beam2]
type = Explod
trigger1 = time = 15
anim = 7702
pos = 0,10
id = 77622
sprpriority = 5
scale = 1,1
postype = P1
bindtime = -1
removetime = 50
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 3300, xplod1]
type = explod
triggerall = !NumExplod(3004)
trigger1 = StateNo = 3009
trigger1 = time = 39;animelem = 1
ID = 3004
anim = 3004
postype = P1
pos = 0,0
ownpal = 1
bindtime= -1
sprpriority = 3
facing = 1
removetime = 21
;pausemovetime = 40

[State 3300, 3]
type = PlaySnd
trigger1 = time = 0
value = 192,11

[State 2400]
type = Explod
trigger1 = animelem = 1
anim = 8170
pos = -20,0
ownpal = 1
scale = 0.8, 0.8
sprpriority = -2


[State 3000, end]
type = ChangeState
trigger1 = !AnimTime ;Time = 175
value = 3344
ctrl = 1
;------------------------------
; Start
[Statedef 3344]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3003
juggle =4
sprpriority = 2

[State 3344,0]
type = PlaySnd
trigger1 = time = 0
value = 192,13

[State 3000, air]
type = Explod
trigger1 = AnimElem = 13
anim = 7816
pos = 20,0
id = 7816
sprpriority = 5
scale = 1.5,1
postype = P1
bindtime = -1
removetime = 32
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 3300, xplod1]
type = explod
triggerall = !NumExplod(3008)
trigger1 = StateNo = 3344
trigger1 = time = 0
ID = 3008
anim = 3008
postype = P1
pos = 0,-2
ownpal = 1
bindtime= -1
sprpriority = -9
facing = 1
removetime = 110
;pausemovetime = 40


[State 3344, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH out
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3344, hit]
type=hitdef
trigger1=time=0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 0, 2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = 2,2
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
priority = 3
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
getpower = 0,0
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8

[State 3000, beam]
type = Explod
trigger1 = AnimElem = 13
anim = 7728
pos = 120,-91
id = 3304
sprpriority = 5
scale = 1,.8
postype = P1
bindtime = -1
removetime = 100
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 3000, beam]
type = Explod
trigger1 = AnimElem = 13
anim = 7728
pos = 120,-76
id = 3304
sprpriority = 5
scale = 1,.8
postype = P1
bindtime = -1
removetime = 100
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 3000, beam]
type = Explod
trigger1 = AnimElem = 13
anim = 7728
pos = 106,-110
id = 3304
sprpriority = 5
scale = 1,.8
postype = P1
bindtime = -1
removetime = 100
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 1300, helper]
type = Helper
triggerall = !Numhelper(3304)
;triggerall = stateno= 3344
trigger1 = AnimElem = 13
name = "ProtonBeam"
StateNo = 3304
id =3304
postype = p1
sprpriority = 9
pos = 101, -61
ownpal = 1

[State 1300, helper]
type = Helper
;triggerall = stateno= 3344
trigger1 = AnimElem = 13
name = "ProtonBeam"
StateNo = 3304
id =3304
postype = p1
sprpriority = 9
pos = 120,-82
ownpal = 1

[State 1300, helper]
type = Helper
;triggerall = stateno= 3344
trigger1 = AnimElem = 13
name = "ProtonBeam"
StateNo = 3304
id =3304
postype = p1
sprpriority = 9
pos = 106,-102
ownpal = 1


[State 3344, end]
type = ChangeState
trigger1 = Time = 110
value = 3305
ctrl = 1

;----------------------------------------------------------------------------
;Cannon shot
;--------------------------------------------------------------------------
[statedef 3304]
type = A
movetype = A
physics = N
anim = 7728
sprpriority = 9
hitdefpersist = 1
juggle = 4

[State 3344,0]
type = PlaySnd
trigger1 = time = 0
value = 192,7

[State 1305, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1000, shake it]
Type = EnvShake
trigger1 = AnimElem = 7
Time = 50
freq = 60
ampl = 10
phase = 0
ignorehitpause = 1


[State 1015 , 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
trigger17 = AnimElem = 17
trigger18 = AnimElem = 18
attr = SCA, HP
damage    = 2,0
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = S8200
guard.sparkno = S8100
hitsound   = S0,25
guardsound = S0,42
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
Palfx.color = 0
palfx.invertall = 1
fall=1

[State 240]
type = explod
trigger1 = moveguarded
persistent = 7
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.4,0.4

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 3
bindtime = 1

[State 188, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 90
pos = -10,-75
postype = p2
sprpriority = 3
bindtime = 1

[state 1015, 8]
type = BindToParent
trigger1 = parent, stateno = 9002
pos = 0,0


[State 1005, 8]
type = DestroySelf
trigger1 = Time = 100
;------------------------------
; Proton Cannon - (move end)
[Statedef 3305]
type    = S
physics = S
ctrl = 0
anim = 3007
sprpriority = 2

[State 3305, xplod1]
type = explod
triggerall = !NumExplod(3006)
trigger1 = StateNo = 3305
trigger1 = animelem = 1
ID = 3006
anim = 3006
postype = P1
pos = 0,0
ownpal = 1
bindtime= -1
sprpriority = -6
facing = 1
removetime = 21

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem = 1
value = 31,0
channel =0


[State 3201, d]
type = removeexplod
trigger1 = !time
id = 9999

[State 3005, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; END
;-------------------------------------------------------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

;[State 40001, Tile #1-7]
;type = Explod
;triggerall = !numexplod(15600)
;trigger1 = !time
;anim = 15600
;ID = 15600
;pos = 0,0
;postype = back  ;p2,front,back,left,right
;removetime = 10
;pausemovetime = -1
;supermovetime = -1
;scale = 1.1,1.1
;sprpriority = -20
;ownpal = 1
;ignorehitpause = 1
;bindtime = -1
;persistent = 0

[State 40001, Tile #1-7]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = back  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1.1,1.1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root, stateno !=[2000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = back ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
postype = back  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = back  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

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

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;------- End of Hyper effects helpers

;-------------------------------------------------------------------------------
;MvC Ko
[Statedef 9999]
ctrl = 0
anim = 9741

[State 9999,PlaySnd]
type = PlaySnd
trigger1 =!Time
value = s9999,4

[State 9999,PlaySnd]
type = PlaySnd
trigger1 = Time = 30
value = s230,11

[State 9999, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 55
flag = NoBarDisplay
flag2 = NoMusic

[State 9999, Explod]
type = Explod
trigger1 =!Time
anim = 9999
postype = back
pos = 0,0
bindtime = -1
sprpriority = 5
scale = 1,1
pausemovetime = 999999
supermovetime = 999999
removetime = 40

[State 9999,DestroySelf]
type = DestroySelf
trigger1 =!AnimTime
