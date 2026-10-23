;Summon Board-------------------------------------
[Statedef 725]
type = S
movetype = I
physics = S
ctrl = 0
velset = 0,0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value =  1700
;elem =
;ignorehitpause = 0
;persistent = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value =  1703
;elem =
;ignorehitpause = 0
;persistent = 1

[State 180, 1]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0, 100

[State 180, 2]
type = playsnd
triggerall = Var(30)= 0
trigger1 = var(0) = [0,50]
trigger1 = time = 0
value = 13,5

[State 180, 2]
type = playsnd
triggerall = Var(30)= 0
trigger1 = var(0) = [51,100]
trigger1 = time = 0
value = 13,11

[State 180, 2]
type = playsnd
triggerall = Var(30)= 1
trigger1 = time = 0
value = 16,17

[State 200, 3]
type = PlaySnd
trigger1 = time = 1
value = 3, 18

[State 1025, flames]
type=helper
trigger1 = time = 2
helpertype=normal
stateno=727
name="board"
pos = -280,-35
ID = 725
postype=p1
ownpal=0
persistent=1
supermovetime = 100
pausemovetime = 100
size.xscale = 1.05
size.yscale = 1.05

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 25
ID = 725
;ignorehitpause = 0
;persistent = 1

[State 730, 21]
type = ChangeState
trigger1 = time = 25
value = 730
ctrl = 1

;Summon Board (Air)-------------------------------------
[Statedef 726]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0

[State 0, Gravity]
type = Gravity
trigger1 = timemod = 4,0
;ignorehitpause = 0
;persistent = 1

[State 0, VelSet]
type = Veladd
;trigger1 = vel X < 0
trigger1 = timemod = 3,0
x = -.3

;[State 0, VelSet]
;type = Veladd
;trigger1 = vel X > 0
;trigger1 = timemod = 3,0
;x = .6

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(30)=0
trigger1 = time = 0
value =  1701

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(30)=1
trigger1 = time = 0
value =  1702

[State 180, 1]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0, 100

[State 180, 2]
type = playsnd
triggerall = Var(30)= 0
trigger1 = var(0) = [0,50]
trigger1 = time = 0
value = 13,5

[State 180, 2]
type = playsnd
triggerall = Var(30)= 0
trigger1 = var(0) = [51,100]
trigger1 = time = 0
value = 13,11

[State 180, 2]
type = playsnd
triggerall = Var(30)= 1
trigger1 = time = 0
value = 16,17

[State 200, 3]
type = PlaySnd
trigger1 = time = 1
value = 3, 18



[State 0, Explod]
type = Explod
triggerall = var(30)=0
trigger1 = time =  2
anim = 4002
ID = 725
pos = -180,-5
vel = 5,2
removetime = 150
scale = 1.05, 1.05
;sprpriority = 0
;ontop = 0
shadow = 75,75,75
;removeongethit = 0
;ignorehitpause = 0

[State 0, Explod]
type = Explod
triggerall = var(30)=1
trigger1 = time =  2
anim = 4004
ID = 725
pos = -180,-5
vel = 5,2
removetime = 150
scale = 1.05, 1.05
;sprpriority = 0
;ontop = 0
shadow = 75,75,75
;removeongethit = 0
;ignorehitpause = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 30
ID = 725
;ignorehitpause = 0
;persistent = 1




 [State 730, 21]
type = ChangeState
trigger1 = time = 33
value = 730
ctrl = 1

[Statedef 727]
type = S
movetype = I
physics = S
ctrl = 0
;anim = 4002

[State 670, 1]
type = ChangeAnim
triggerall = root,Var(30)= 0
trigger1 = time = 0
value = 4002

[State 670, 1]
type = ChangeAnim
triggerall = root,Var(30)= 1
trigger1 = time = 0
value = 4004

[State 0, VelAdd]
type = Velset
trigger1 = time = 0
x = 4
y =  1

[State 0, VelAdd]
type = VelAdd
trigger1 = timemod = 1,0
x = 1.2
y =  -.03

[State 0, VelAdd]
type = Veladd
trigger1 = root,stateno != 725 && timemod = 3,0
x = -8
y =  -2

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
;ignorehitpause = 0
;persistent = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = root,stateno != 725 && timemod = 3,0
value = -2
;ignorehitpause = 0
;persistent = 1



[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno = 730
;ignorehitpause = 0
;persistent = 1

[State 1006, end]
type=destroyself
trigger1=frontedgedist<-420||backedgedist<-420


[Statedef 730]
type = A
movetype = I
physics = N
ctrl = 0
;anim = 1
velset = 0,0

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 4

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = timemod = 5,0
value = 10
;ignorehitpause = 0
;persistent = 1

[State 2000, A4]
type = PlaySnd
trigger1 = anim = 49
value = 3,18
persistent=0

[State 2000, A4]
type = PlaySnd
trigger1 = anim = 52
value = 3,18
persistent=0

[State 2000, A4]
type = PlaySnd
trigger1 = anim = 112
value = 3,18
persistent=0

[State 2000, A4]
type = PlaySnd
trigger1 = anim = 113
value = 3,18
persistent=0

[State 2000, A4]
type = PlaySnd
trigger1 = anim = 23
value = 3,18
persistent=0

[State 2000, A4]
type = PlaySnd
trigger1 = anim = 22
value = 3,18
persistent=0

[State 2000, A4]
type = PlaySnd
trigger1 = anim = 28
value = 3,18
persistent=0

[State 2000, A4]
type = PlaySnd
trigger1 = anim = 32
value = 3,18
persistent=0

[State 730, 1.1]
type = PlaySnd
trigger1 = time = 1
value = 210,3
channel = 0

[State 730, 1.2]
type = Playsnd
trigger1 = time = 1
value = 5200,0
channel = 1

[State 730, 2.2]
type = VarSet
trigger1 = Time = 0 && Var(14) = 0
v = 15
value = 0




[State 730, 3]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Var(12) = 0
x = 0
y = 0

[State 730, 4]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Anim != 1
value = 1

[State 730, 4]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Anim != 4
value = 4

[State 730, 5.1]
type = VarSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Var(12) != 2
trigger2 = Var(12) = 2
trigger2 = Vel Y >= 1
v = 12
value = 1

[State 730, 5.2]
type = VarSet
trigger1 = Var(12) = 1
trigger1 = Vel Y <= -1
v = 12
value = 2

[State 730, 6]
type = RemoveExplod
trigger1 = Time = 0
ID = 8480

[State 730, 7.1]
type = VelAdd
trigger1 = Var(12) = 1
y = -0.1

[State 730, 7.2]
type = VelAdd
trigger1 = Var(12) = 2
y = 0.1

[State 730, 8]
type = VelSet
triggerall = Var(12) != 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
y = 0

[State 730, 9]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
v = 12
value = 0

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 730, 10.2]
type = VelSet
trigger1 = command = "holdup"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0

[State 730, 11]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 49
trigger1 = command = "holdup"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
value = 49

[State 730, 11]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 52
trigger1 = command = "holdup"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
value = 52

[State 730, 12.2]
type = VelSet
trigger1 = command = "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0

[State 730, 13]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 112
trigger1 = command = "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
value = 112

[State 730, 13]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 113
trigger1 = command = "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
value = 113

[State 730, 14.1]
type = VelSet
trigger1 = command = "holdback"
x = -3.6

[State 730, 14.2]
type = VelSet
trigger1 = command = "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
y = 0

[State 730, 15]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 23
trigger1 = command = "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
value = 23

[State 730, 15]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 28
trigger1 = command = "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
value = 28

[State 730, 16.1]
type = VelSet
trigger1 = command = "holdfwd"
x = 4.1

[State 730, 16.2]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
y = 0

[State 730, 17]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 22
trigger1 = command = "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
value = 22

[State 730, 18]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 22
trigger1 = command = "holdfwd" && command = "holdup"
trigger2 = command = "holdfwd" && command = "holddown"
value = 22

[State 730, 17]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 32
trigger1 = command = "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
value = 32

[State 730, 18]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 32
trigger1 = command = "holdfwd" && command = "holdup"
trigger2 = command = "holdfwd" && command = "holddown"
value = 32

[State 730, 19]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 23
trigger1 = command = "holdback" && command = "holdup"
trigger2 = command = "holdback" && command = "holddown"
value = 23

[State 730, 19]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 28
trigger1 = command = "holdback" && command = "holdup"
trigger2 = command = "holdback" && command = "holddown"
value = 28

[State 730, 20]
type = Turn
trigger1 = P2Dist X < 0

[State 730, 21]
type = ChangeState
trigger1 = command = "FF"
value = 110
ctrl = 1

[State 730, 21]
type = ChangeState
trigger1 = command = "BB"
value = 115
ctrl = 1

[State 730, 21]
type = ChangeState
trigger1 = Time = 700
;trigger2 = win
value = 50
ctrl = 1

[State 730, 21]
type = ChangeState
trigger1 = win
value = 183
;value = 50
ctrl = 0

;Board Dash Forward=======================================
[Statedef 110]
type = A
movetype = I
physics = N
ctrl = 0
;anim = 25

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 25

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 35


;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 730, 3]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
y = 0

[State 730, 3]
type = VelAdd
trigger1 = command = "holddown"
y = .5

[State 730, 3]
type = VelAdd
trigger1 = command = "holdup"
y = -.5

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 18
length = 20
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 120,120,220
;palpostbright = 0,0,0
;paladd = 10,10,25
;palmul = .65,.65,.75
;timegap = 1
framegap = 4
;trans =
;ignorehitpause = 0
;persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3,19

[State 100, 3]
type = velset
trigger1 = Time = 0
x = 12

[State 100, 3]
type = velset
trigger1 = Time = 0
trigger1 = vel y >= 0
y = 0

[State 100, 3]
type = velset
trigger1 = Time = 5
trigger1 = vel y < 0
y = 0

;[State 100, 3]
;type = posadd
;trigger1 = Time = 0
;y = -10

[State 600, 4.2]
type = ChangeState
triggerall = Var(30)= 1
trigger1 = command = "Boulderyb"
value = 11010

[State 600, 4.2]
type = ChangeState
trigger1 = time = 20
value = 730

;----------------------------------------------------

[Statedef 11010]
type = A
movetype = A
physics = N
ctrl = 0
;anim = 25


[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 37


;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 730, 3]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
y = 0

[State 730, 3]
type = VelAdd
trigger1 = command = "holddown"
y = .5

[State 730, 3]
type = VelAdd
trigger1 = command = "holdup"
y = -.5

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 1010, 3]
type = Explod
triggerall = Var(30)= 1
trigger1 = time >= 3
trigger1 = time < 13
ID = 7089
anim = 7089
postype = p1
vel = -5,0
pos = 0, -50
random = 30,50
scale = .2, .2
removetime = -2
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 881
ID = 881
pos = 0,-50
ontop = 1
ownpal = 1
scale = .5,.5
vel = -3,0
removetime = 10

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
time = 5
;freq = 60
;ampl = -4
;phase =
;ignorehitpause = 0
;persistent = 1


[State 200, 6]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 9

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 18
length = 20
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;timegap = 1
framegap = 4
;trans =
;ignorehitpause = 0
;persistent = 1

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 200, 1]
type = HitDef
triggerall = Var(30)= 1
trigger1 = !movecontact
attr = S, NA
damage = 115
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 11, 11
guard.sparkno=S910
sparkno=S930
sparkxy = -10, -50
hitsound = S0, 5
guardsound = S0, 9
ground.type = High
ground.slidetime = 11
ground.hittime  = 12
ground.velocity = -6.5 - (var(19) * 1.5)
air.type = Low
air.velocity = -4.5 - (var(19) * 1.5), -2
air.hittime = 12
guard.slidetime = 9
guard.hittime = 18
guard.velocity = -5.8 - (var(19) * 1.5)
givepower = 20
getpower = 35
fall = 1

[State 100, 3]
type = velset
trigger1 = Time = 0
x = 25

[State 100, 3]
type = velset
trigger1 = Time = 0
trigger1 = vel y >= 0
y = 0

[State 100, 3]
type = velset
trigger1 = Time = 5
trigger1 = vel y < 0
y = 0

;[State 100, 3]
;type = posadd
;trigger1 = Time = 0
;y = -10

[State 600, 4.2]
type = ChangeState
trigger1 = time = 20
value = 730

;Board Dash Back=======================================
[Statedef 115]
type = A
movetype = I
physics = N
ctrl = 0
;anim = 24

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 24

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 34

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 730, 3]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
y = 0

[State 730, 3]
type = VelAdd
trigger1 = command = "holddown"
y = .5

[State 730, 3]
type = VelAdd
trigger1 = command = "holdup"
y = -.5

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 18
length = 20
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 120,120,220
;palpostbright = 0,0,0
;paladd = 10,10,25
;palmul = .65,.65,.75
;timegap = 1
framegap = 4
;trans =
;ignorehitpause = 0
;persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3,19

[State 100, 3]
type = velset
trigger1 = Time = 0
x = -8

[State 100, 3]
type = velset
trigger1 = Time = 0
trigger1 = vel y >= 0
y = 0

[State 100, 3]
type = velset
trigger1 = Time = 5
trigger1 = vel y < 0
y = 0

;[State 100, 3]
;type = posadd
;trigger1 = Time = 0
;y = -10

[State 600, 4.2]
type = ChangeState
trigger1 = time = 20
value = 730

;Taunt 2=============================
[Statedef 196]
type = A
ctrl = 0
;anim = 198
velset = 0,0
movetype = I
physics = N
sprpriority = 2

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 198

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 199

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(30)= 1
trigger1 = time = 0
value = 16, 11
;volume = 0
;channel = -1
;lowpriority =
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1


;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = timemod = 5,0
value = 10
;ignorehitpause = 0
;persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause = 0
;persistent = 1


[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

;Light Punch========================================
[Statedef 201]
type = A
movetype = A
physics = N
;anim = 201
ctrl = 0
juggle = 8
poweradd = 30
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 201

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 203

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 730, 3]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0
y = 0

[State 730, 3]
type = Velset
trigger1 = command = "holddown"
y = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdup"
y = -3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdfwd"
x = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdback"
x = -3.6

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 200, 1]
type = HitDef
triggerall = Var(30)= 0
trigger1 = AnimElem = 2
attr = S, NA
damage = 30 + (12 * var(19))
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 11, 11
guard.sparkno=S910
sparkno=S930
sparkxy = -10, -63
hitsound = S0, 3
guardsound = S0, 9
ground.type = High
ground.slidetime = 11
ground.hittime  = 12
ground.velocity = -6.5 - (var(19) * 1.5)
air.type = Low
air.velocity = -4.5 - (var(19) * 1.5), -2
air.hittime = 12
guard.slidetime = 9
guard.hittime = 18
guard.velocity = -5.8 - (var(19) * 1.5)
givepower = 20
getpower = 35

[State 200, 1]
type = HitDef
triggerall = Var(30)= 1
trigger1 = AnimElem = 3
attr = S, NA
damage = 30 + (12 * var(19))
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 11, 11
guard.sparkno=S910
sparkno=S930
sparkxy = -10, -63
hitsound = S0, 3
guardsound = S0, 9
ground.type = High
ground.slidetime = 11
ground.hittime  = 12
ground.velocity = -6.5 - (var(19) * 1.5)
air.type = Low
air.velocity = -4.5 - (var(19) * 1.5), -2
air.hittime = 12
guard.slidetime = 9
guard.hittime = 18
guard.velocity = -5.8 - (var(19) * 1.5)
givepower = 20
getpower = 35

[State 200, 3]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, Icefist]
type = VarAdd
triggerall = var(19)
trigger1 = MoveContact
v = 20
value = 1
persistent = 0
ignorehitpause = 1

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = win
value = 730
ctrl = 1

;Medium Punch=================================
[Statedef 221]
type = A
movetype = A
physics = N
;anim = 221
ctrl = 0
juggle = 8
poweradd = 30
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 221

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 224

[State 0, Explod]
type = Explod
trigger1 = Var(30)= 1
trigger1 = time = 0
anim = 223
postype = p1
;ID = 7090
pos = 90,-105
ontop = 1
bindtime = -1
removetime = -2
scale = .75,.75
ownpal = 1
pausemovetime = 1
removeongethit = 1
persistent = 1

[State 220, 2]
type = PlaySnd
triggerall = Var(30)= 1
trigger1 = AnimElem = 1
value = 3, 36
channel = 0

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 730, 3]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0
y = 0

[State 730, 3]
type = Velset
trigger1 = command = "holddown"
y = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdup"
y = -3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdfwd"
x = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdback"
x = -3.6

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 0, Explod]
type = Explod
triggerall = Var(30)= 0
trigger1 = AnimElem = 1
anim = 1621
ID = 1621
pos = -10,-20
vel = 0,0
ontop = 1
bindtime = -1
removetime = -2
ownpal = 1
pausemovetime = 1
removeongethit = 1
;persistent = 1


[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 2

[State 220, 2]
type = PlaySnd
triggerall = Var(30)= 0
trigger1 = AnimElem = 4
value = 3, 10
channel = 0

[State 220, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
hitflag = MAFD
guardflag = MA
;pausetime = 11, 11
damage = 85 + (33 * var(19))
animtype = Hard
priority = 4, Hit
guard.sparkno=S900
sparkno=S930
sparkxy = -10, -53
hitsound = S0, 5
fall =1
guardsound = S0, 9
ground.type = High
ground.slidetime = 15
ground.hittime = 23
ground.velocity = -8, -5
air.velocity = -6, -8
air.hittime = 25
down.velocity = -3, 0
down.hittime = 18
guard.slidetime = 13
guard.hittime = 17
guard.velocity = -7.6 - (var(19) * 1.5)
givepower = 50
getpower = 70
sprpriority = 2
palfx.time = 10
palfx.add = 0,200,200
palfx.sinadd = 0,200,50,24
palfx.color = 0
palfx.invertall = 1

[State 1025, flames]
type=helper
trigger1=movehit
helpertype=normal
stateno=7180
ID=7181
name="cosmic_sparks"
postype=p2
bindtime=1000
ownpal=1
facing=-1
size.ground.front=0
size.ground.back=0
ignorehitpause=1
persistent=0



[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

;Board Energy Shot (Charging)
[Statedef 603]
type = A
movetype = I
physics = N
;anim = 602
ctrl = 0
velset = 0,0
juggle = 8
poweradd = 30
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 602

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 607

[State 730, 2.2]
type = VarSet
trigger1 = Time = 0 && Var(14) = 0
v = 15
value = 0

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1


[State 730, 3]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Var(12) = 0
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time > 10
trigger1 = timemod = 12,0
value = 3, 16

[State 730, 4]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Anim != 602
value = 22

[State 730, 4]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Anim != 607
value = 22


[State 730, 5.1]
type = VarSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Var(12) != 2
trigger2 = Var(12) = 2
trigger2 = Vel Y >= 1
v = 12
value = 1

[State 730, 5.2]
type = VarSet
trigger1 = Var(12) = 1
trigger1 = Vel Y <= -1
v = 12
value = 2

[State 730, 6]
type = RemoveExplod
trigger1 = Time = 0
ID = 8480

[State 730, 7.1]
type = VelAdd
trigger1 = Var(12) = 1
y = -0.1

[State 730, 7.2]
type = VelAdd
trigger1 = Var(12) = 2
y = 0.1

[State 730, 8]
type = VelSet
triggerall = Var(12) != 0
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
y = 0

[State 730, 9]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
v = 12
value = 0

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 10.2]
type = VelSet
trigger1 = command = "holdup"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0

[State 730, 11]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 602
trigger1 = command = "holdup"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
value = 602

[State 730, 11]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 607
trigger1 = command = "holdup"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
value = 607

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 730, 12.2]
type = VelSet
trigger1 = command = "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0

[State 730, 13]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 602
trigger1 = command = "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
value = 602

[State 730, 13]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 607
trigger1 = command = "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
value = 607

[State 730, 14.1]
type = VelSet
trigger1 = command = "holdback"
x = -3.6

[State 730, 14.2]
type = VelSet
trigger1 = command = "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
y = 0

[State 730, 15]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 602
trigger1 = command = "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
value = 602

[State 730, 15]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 607
trigger1 = command = "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
value = 607

[State 730, 16.1]
type = VelSet
trigger1 = command = "holdfwd"
x = 4.1

[State 730, 16.2]
type = VelSet
trigger1 = command = "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
y = 0

[State 730, 17]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 22
trigger1 = command = "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
value = 602

[State 730, 17]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 22
trigger1 = command = "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
value = 607

[State 730, 18]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 602
trigger1 = command = "holdfwd" && command = "holdup"
trigger2 = command = "holdfwd" && command = "holddown"
value = 602

[State 730, 18]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 607
trigger1 = command = "holdfwd" && command = "holdup"
trigger2 = command = "holdfwd" && command = "holddown"
value = 607

[State 730, 19]
type = ChangeAnim
triggerall = Var(30)= 0
triggerall = Anim != 602
trigger1 = command = "holdback" && command = "holdup"
trigger2 = command = "holdback" && command = "holddown"
value = 602

[State 730, 19]
type = ChangeAnim
triggerall = Var(30)= 1
triggerall = Anim != 607
trigger1 = command = "holdback" && command = "holdup"
trigger2 = command = "holdback" && command = "holddown"
value = 607

[State 730, 20]
type = Turn
trigger1 = P2Dist X < 0

[State 1025, flames]
type=helper
trigger1 = time > 20
trigger1= timemod = 12,0
helpertype=normal
stateno=7181
name="black_spots"
pos = -51,-93
postype=p1
ownpal=1
persistent=1
supermovetime = 100
pausemovetime = 100

[State 1025, flames]
type=helper
trigger1 = time = 0
helpertype=normal
stateno=7182
name="glow"
postype=p1
ownpal=1
persistent=1
supermovetime = 100
pausemovetime = 100


[State 1050:        Changestate]
type                = ChangeState
trigger1            = command != "holdz" && time < 40
;trigger2            = time = 100
value               = 604

[State 1050:        Changestate]
type                = ChangeState
trigger1 =  time >= 40
trigger1 =  time < 80
trigger1            = command != "holdz"; && time > 40 && time < 80
;trigger2            = time > 80
value               = 605

[State 1050:        Changestate]
type                = ChangeState
trigger1            = command != "holdz" && time >= 80
trigger2            = time = 200
value               = 607

[State 1050:        Changestate]
type                = ChangeState
triggerall = Var(30)= 0
trigger1            = command = "ArcticAttack" && time >= 80
trigger1            = power >= 1000
value               = 3200

[Statedef 604]
type = A
movetype = A
physics = N
anim = 601
ctrl = 0
juggle = 8
poweradd = 30
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 601

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 606

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 730, 3]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0
y = 0

[State 730, 3]
type = Velset
trigger1 = command = "holddown"
y = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdup"
y = -3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdfwd"
x = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdback"
x = -3.6

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 0, Helper]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "fireball"
ID = 8796
pos = 60,-50
postype = p1
stateno = 6011
ownpal = 1
size.xscale = .75
size.yscale = .75



[State 0, Explod]
type = Explod
triggerall = Var(30)= 0
trigger1 = time = 0
anim = 1905
;ID = 1905
pos = -50,-90
removetime = 8
bindtime = 8
scale = .3, .3
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = Var(30)= 1
trigger1 = time = 0
anim = 3904
;ID = 1905
pos = -50,-90
removetime = 8
bindtime = 8
scale = .3, .3
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 0, Explod]
type = Explod
triggerall = Var(30)!= 1
trigger1 = animelem = 2
anim = 1905
;ID = 1905
pos = 19,-100
removetime = 4
bindtime = 4
scale = .4, .4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = Var(30)= 1
trigger1 = animelem = 2
anim = 3904
;ID = 1905
pos = 19,-100
removetime = 4
bindtime = 4
scale = .4, .4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = Var(30)!= 1
trigger1 = animelem = 3
anim = 1905
;ID = 1905
pos = 60,-60
removetime = 8
bindtime = 8
scale = .5, .5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = Var(30)= 1
trigger1 = animelem = 3
anim = 3904
;ID = 1905
pos = 60,-60
removetime = 8
bindtime = 8
scale = .5, .5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1025, flames]
type=helper
trigger1 = animelem = 3
helpertype=normal
stateno=7181
name="black_spots"
pos = 60,-60
postype=p1
ownpal=1
persistent=1
supermovetime = 100
pausemovetime = 100

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

[Statedef 605]
type = A
movetype = A
physics = N
;anim = 601
ctrl = 0
juggle = 8
poweradd = 30
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 601

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 608

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 730, 3]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0
y = 0

[State 730, 3]
type = Velset
trigger1 = command = "holddown"
y = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdup"
y = -3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdfwd"
x = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdback"
x = -3.6

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 701:         helper escudo]
type                = helper
triggerall          = !numhelper(606)
trigger1 = animelem = 3
ID                  = 8796
stateno             = 606
postype             = p1
pos                 = 0,0
sprpriority         = 5
ownpal              = 1
helpertype          = normal
keyctrl             = 0
name                = "ChargedShot"
size.xscale = 2
size.yscale = 2

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

[Statedef 606]
type=A
physics=N
movetype=A
anim=604
ctrl=0
velset=0,0
sprpriority=4

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = root,var(30)=1
trigger1 = time=0
time = 100
add = 50,-100,-200
mul = 256,256,256
sinadd = 40,80,40,1
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 3055, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=609
ignorehitpause=1

[State 3055,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1


[State 1006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3, 33

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 58,-63
;ignorehitpause = 0
;persistent = 1

[State 220, 3]
type = HitDef
triggerall = root,var(30)=0
trigger1 = !movecontact
attr = S, NA
hitflag = MAFD
guardflag = MA
;pausetime = 11, 11
damage = 91, 3
animtype = Hard
priority = 4, Hit
sparkno = S900
guard.sparkno = S910
sparkxy = -10, 30
hitsound = S0, 5
fall =1
guardsound = S0, 9
ground.type = High
ground.slidetime = 15
ground.hittime = 23
ground.velocity = -8, -5
air.velocity = -6, -8
air.hittime = 25
down.velocity = -3, 0
down.hittime = 18
guard.slidetime = 13
guard.hittime = 17
guard.velocity = -7.6 - (var(19) * 1.5)
givepower = 50
getpower = 70
sprpriority = 10
palfx.time = 30
palfx.add = 0,200,200
palfx.sinadd = 0,200,50,24
palfx.color = 0
palfx.invertall = 1

[State 220, 3]
type = HitDef
triggerall = root,var(30)=1
trigger1 = !movecontact
attr = S, NA
hitflag = MAFD
guardflag = MA
;pausetime = 11, 11
damage = 91, 3
animtype = Hard
priority = 4, Hit
sparkno = S900
guard.sparkno = S910
sparkxy = -10, 30
hitsound = S0, 5
fall =1
guardsound = S0, 9
ground.type = High
ground.slidetime = 15
ground.hittime = 23
ground.velocity = -8, -5
air.velocity = -6, -8
air.hittime = 25
down.velocity = -3, 0
down.hittime = 18
guard.slidetime = 13
guard.hittime = 17
guard.velocity = -7.6 - (var(19) * 1.5)
givepower = 50
getpower = 70
sprpriority = 10
palfx.time = 30
palfx.add = 200,100,0
palfx.sinadd = 200,100,0,24
palfx.color = 0
palfx.invertall = 1

[State 1025, flames]
type=helper
trigger1=movehit
helpertype=normal
stateno=7180
ID=7181
name="cosmic_sparks"
postype=p2
bindtime=1000
ownpal=1
facing=-1
size.ground.front=0
size.ground.back=0
ignorehitpause=1
persistent=0


[State 1006, end]
type=destroyself
trigger1=time = 7

[Statedef 607]
type = A
movetype = A
physics = N
;anim = 601
ctrl = 0
juggle = 8
poweradd = 30
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 601

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 609

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 730, 3]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0
y = 0

[State 730, 3]
type = Velset
trigger1 = command = "holddown"
y = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdup"
y = -3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdfwd"
x = 3.6

[State 730, 3]
type = Velset
trigger1 = command = "holdback"
x = -3.6

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 730, 10.1]
type = VelSet
trigger1 = command = "holdup"
y = ifelse(Pos Y > -240, -3.7, 0)

[State 730, 12.1]
type = VelSet
trigger1 = command = "holddown"
y = ifelse(Pos Y < -10, 4.0, 0)

[State 701:         helper escudo]
type                = helper
triggerall          = !numhelper(606)
trigger1 = animelem = 3
ID                  = 8796
stateno             = 608
postype             = p1
pos                 = 0,0
sprpriority         = 5
ownpal              = 1
helpertype          = normal
keyctrl             = 0
name                = "ChargedShot"

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

[Statedef 608]
type=A
physics=N
movetype=A
anim=603
ctrl=0
velset=0,0
sprpriority=4

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = root,var(30)=1
trigger1 = time=0
time = 100
add = 50,-100,-200
mul = 256,256,256
sinadd = 40,80,40,1
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 1121:         BgPalfx]
type                = bgpalfx
trigger1            = time = 1
add                 = 155, 155, 155
sinadd              = -155,-155,-155,90
time                = 20

[State 0, Explod]
type = Explod
triggerall = root,Var(30)= 0
trigger1 = time = 0
anim = 1905
ID = 1905
pos = 0,0
bindtime = -1
removetime = -2
supermove = 1
scale = 1.5, 1.5
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
triggerall = root,Var(30)= 1
trigger1 = time = 0
anim = 3904
;ID = 1905
pos = 0,0
removetime = 8
bindtime = 8
scale = 1.5, 1.5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3055, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=609
ignorehitpause=1

[State 3055,hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1


[State 1006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3, 17

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 58,-60
;ignorehitpause = 0
;persistent = 1

[State 220, 3]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = MAFD
guardflag = MA
;pausetime = 11, 11
damage = 141, 3
animtype = Hard
priority = 4, Hit
sparkno = S900
guard.sparkno = S910
sparkxy = -10, 30
hitsound = S0, 5
fall =1
guardsound = S0, 9
ground.type = High
ground.slidetime = 15
ground.hittime = 23
ground.velocity = -8, -5
air.velocity = -6, -8
air.hittime = 25
down.velocity = -3, 0
down.hittime = 18
guard.slidetime = 13
guard.hittime = 17
guard.velocity = -7.6 - (var(19) * 1.5)
givepower = 50
getpower = 70
sprpriority = 10
palfx.time = 30
palfx.add = 0,200,200
palfx.sinadd = 0,200,50,24
palfx.color = 0
palfx.invertall = 1

[State 1025, flames]
type=helper
trigger1=movehit
helpertype=normal
stateno=7180
ID=7181
name="cosmic_sparks"
postype=p2
bindtime=1000
ownpal=1
facing=-1
size.ground.front=0
size.ground.back=0
ignorehitpause=1
persistent=0


[State 1006, end]
type=destroyself
trigger1=time = 7

[Statedef 609]
type=A
physics=N
movetype=A
anim=9741
ctrl=0
velset=0,0
sprpriority=4

[State 1006, end]
type=destroyself
trigger1=time = 7

;Light Kick============================
[Statedef 231]
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 10
ctrl = 0
;anim = 231
sprpriority = 2

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 231

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 233

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = timemod = 1,0
x = .2
y = .1

[State 730, 12.1]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3,19

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 35
length = 15
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 120,120,220
;palpostbright = 0,0,0
;paladd = 10,10,25
;palmul = .65,.65,.75
;timegap = 2
framegap = 6
;trans = 1
;ignorehitpause = 0
;persistent = 1


[State 230, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = MAF
animtype  = Medium
damage    = 35
guardflag = MA
pausetime = 11,11
priority = 3, Hit
guard.sparkno=S910
sparkno=S930
sparkxy = -10,0
hitsound   = S0, 6
guardsound = S0, 9
ground.type = Low
ground.slidetime = 11
ground.hittime  = 13
ground.velocity = -6,-2
air.velocity = -4, -2
air.hittime = 11
guard.slidetime = 13
guard.hittime = 17
guard.velocity = -5
givepower = 20
getpower = 30

[State 230, 3]
type = ChangeState
trigger1 = animtime = 0
value = 730
ctrl = 1

;Medium Kick============================
[Statedef 241]
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 10
ctrl = 0
;anim = 241
sprpriority = 2

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 241

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 243

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = timemod = 1,0
x = .3
y = .2

[State 730, 12.1]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3,19

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 35
length = 20
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 120,120,220
;palpostbright = 0,0,0
;paladd = 10,10,25
;palmul = .65,.65,.75
;timegap = 2
framegap = 6
;trans = 1
;ignorehitpause = 0
;persistent = 1

[State 230, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = MAF
animtype  = Hard
damage    = 55
guardflag = MA
pausetime = 11,11
priority = 3, Hit
guard.sparkno=S910
sparkno=S930
sparkxy = -10,0
hitsound   = S0, 6
guardsound = S0, 9
ground.type = Low
ground.slidetime = 11
ground.hittime  = 13
ground.velocity = -8,-2
air.velocity = -6, -2
air.hittime = 11
guard.slidetime = 13
guard.hittime = 17
guard.velocity = -5
givepower = 20
getpower = 30

[State 0, ChangeAnim]
type = ChangeState
trigger1 = Pos Y >= 0
value = 2411
ctrl = 1

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

[Statedef 2411]
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 10
ctrl = 0
;anim = 2411
sprpriority = 2

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 2411

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 2412

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 255, hit]
type=hitdef
trigger1=!movecontact
attr = C, NA
damage    = 51
priority = 4
animtype = Medium
hitflag = MAFD
guardflag = L
pausetime = 11,11
guard.sparkno=S910
sparkno=S930
sparkxy = -5,-21
hitsound   = S0,7
guardsound = S0,9
ground.type=trip
ground.slidetime=16
ground.hittime=16
ground.velocity=-1.33,-6.85
air.type=Low
air.velocity=-1.33,-6.85
air.cornerpush.veloff=0
down.velocity=-2,-4
getpower=180*!var(20)
yaccel=.5
fall=1

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

;High Kick============================
[Statedef 251]
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 10
ctrl = 0
;anim = 251
sprpriority = 2

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 251

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 253

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = timemod = 1,0
x = .4
y = .3

[State 730, 12.1]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3,19

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 1
time = 35
length = 25
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 120,120,220
;palpostbright = 0,0,0
;paladd = 10,10,25
;palmul = .65,.65,.75
;timegap = 2
framegap = 6
;trans = 1
;ignorehitpause = 0
;persistent = 1

[State 230, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = MAF
animtype  = Hard
damage    = 55
guardflag = MA
pausetime = 11,11
priority = 3, Hit
guard.sparkno=S910
sparkno=S900
sparkxy = -10,0
hitsound   = S0, 6
guardsound = S0, 9
ground.type = Low
ground.slidetime = 11
ground.hittime  = 13
ground.velocity = -10,-2
air.velocity = -8, -2
air.hittime = 11
guard.slidetime = 13
guard.hittime = 17
guard.velocity = -5
givepower = 20
getpower = 30

[State 0, ChangeAnim]
type = ChangeState
trigger1 = Pos Y >= 0
value = 2511
ctrl = 1

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

[Statedef 2511]
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 10
ctrl = 0
anim = 2511
sprpriority = 2

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 2511

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 2512

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 255, hit]
type=hitdef
trigger1=!movecontact
attr = C, NA
damage    = 51
priority = 4
animtype = Medium
hitflag = MAFD
guardflag = L
pausetime = 11,11
guard.sparkno=S910
sparkno=S900
sparkxy = -5,-21
hitsound   = S0,7
guardsound = S0,9
ground.type=trip
ground.slidetime=16
ground.hittime=16
ground.velocity=-1.33,-6.85
air.type=Low
air.velocity=-1.33,-6.85
air.cornerpush.veloff=0
down.velocity=-2,-4
getpower=180*!var(20)
yaccel=.5
fall=1

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

; Avalanche
[Statedef 2011]
type = A
movetype = A
physics = N
ctrl = 0
;anim = 2041
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 2041

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 2043

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause = 0
;persistent = 1


[State 2010, 1]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 6

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 2010, 2]
type = VarSet
trigger1 = time = 0
v = 0
value = EnemyNear, Life

[State 2010, 2a]
type = VarSet
trigger1 = 1
v = 1
value = EnemyNear, Life

[State 2010, 2b]
type = VarSet
trigger1 = time = 0
v = 18
value = 0

[State 2010, 2c]
type = VarSet
trigger1 = (var(0) - var(1)) >= 300
v = 18
value = 1
persistent = 0

[State 2010, 2d]
type = VarSet
trigger1 = time = 0
v = 27
value = 0

[State 2000, 7]
type = Explod
triggerall = var(30)=0
trigger1 = AnimElem = 2
ID = 4084
anim = 7100
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = 30
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0

[State 2000, 7]
type = Explod
triggerall = var(30)=1
trigger1 = AnimElem = 2
ID = 4084
anim = 7101
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = 30
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0

[State 2010, 5]
type = EnvColor
trigger1 = AnimElem = 2
value = 0, 0, 0
time = 50
under = 1
persistent = 0

[State 2010, 6]
type = SuperPause
trigger1 = AnimElem = 2
time = 50
anim = S7130
pos = 42, -120
sound = S3, 0
movetime = 50
poweradd = -1000
p2defmul = 1
unhittable = 1
persistent = 0

[State 2010, 7]
type = RemoveExplod
trigger1 = time = 56
ID = 4084

[State 2010, 8]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 6
channel = 0

[State 2010, 9]
type = Helper
trigger1 = AnimElem = 6
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 80, -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 9a]
type = Helper
trigger1 = AnimElem = 6 = 2
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 100, -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 9b]
type = Helper
trigger1 = AnimElem = 6
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 140, -40 -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 9c]
type = Helper
trigger1 = AnimElem = 6
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 170, -40 -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 9d]
type = Helper
trigger1 = AnimElem = 6 = 2
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 210, -40 -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 9e]
type = Helper
trigger1 = AnimElem = 6
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 250, -40 -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 9f]
type = Helper
trigger1 = AnimElem = 7
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 150, -40 -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 9g]
type = Helper
trigger1 = AnimElem = 7
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 70, -40 -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 9h]
type = Helper
trigger1 = AnimElem = 7
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 200, -40 -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 9i]
type = Helper
trigger1 = AnimElem = 7 = 2
name = "Ice Shard"
ID = 867
StateNo = 2020
postype = p1
pos = 190, -40 -(floor(ScreenPos Y))
ownpal = 1

[State 2010, 10]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3, 4

[State 2010, 11]
type = EnvShake
trigger1 = AnimElem = 6
time = 40
freq = 150
ampl = -4

[State 2010, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

; Board Throw - Attempt
[Statedef 850]
type = A
movetype = A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 811
sprpriority = 2

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 811

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 817

[State 800, 1]
type = HitDef
triggerall = Var(30)= 0
Trigger1 = Time = 0
attr = A, NT
hitflag = A-
priority = 1, Miss
sparkno = -1
hitsound = S2, 2
sprpriority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 860
p2stateno = 870
guard.dist = 0
fall = 1

[State 800, 1]
type = HitDef
triggerall = Var(30)= 1
Trigger1 = Time = 0
attr = A, NT
hitflag = A-
priority = 1, Miss
sparkno = -1
hitsound = S2, 2
sprpriority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 861
p2stateno = 871
guard.dist = 0
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 730
ctrl = 1

;---------------------------------------------------------------------------
; Z Throw - Throwing Opponent
[Statedef 860]
type = A
movetype = A
physics = N
ctrl = 0
anim = 812
velset = 0, 0
sprpriority = 1
poweradd = 80

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 2,2



[State 0, VelAdd]
type = VelAdd
trigger1 = timemod = 3,0
x = .1
y = -.2
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = Velset
trigger1 = time = 92
x = 0
y = 0

[State 810, 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50, -40
time = 100

[State 810, 1]
type = TargetState
trigger1 = time = 0
value = 870

[State 810, 11]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -98


[State 810, 14]
type = TargetDrop
trigger1 = AnimElem = 4

[State 0, TargetState]
type = TargetState
trigger1 = AnimElem = 4
value = 825
;ID =
;ignorehitpause = 0
;persistent = 1


[State 810, 16]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

; Z Throw - Throwing Opponent
[Statedef 861]
type = A
movetype = A
physics = N
ctrl = 0
anim = 816
velset = 0, 0
sprpriority = 1
poweradd = 80

[State 1005, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 16, 11
volume = 255

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 3904
ID = 1910
pos = 90,-100
ontop = 1
bindtime = 30
removetime = 30

[State 1010, 2]
type = Helper
trigger1 = AnimElem = 3
ID = 880
name = "Ice Beam"
StateNo = 880
postype = p1
pos = 80,-100
ownpal = 1

[State 810, 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, -20
time = 20

[State 810, 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 100, -20
time = 20

[State 810, 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 100, -20
time = 1

[State 810, 16]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

; Board Throw - P2 Being Thrown
[Statedef 870]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 60
sprpriority = 0

[State 820, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 820

[State 820, 1]
type = ChangeAnim2
triggerall = name = "SilverSurferv2" && Authorname = "T.O.P.S"
trigger1 = Var(30)= 1
trigger1 = time = 0
value = 720

[State 820, 2]
type = ScreenBound
trigger1 = 1
value = 0

[State 820, 3]
type = SelfState
trigger1 = time = 99
value = 5050

; Board Throw - P2 Being Thrown
[Statedef 871]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 60
sprpriority = 0

[State 820, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 823

[State 820, 1]
type = ChangeAnim2
triggerall = name = "SilverSurferv2" && Authorname = "T.O.P.S"
trigger1 = Var(30)= 1
trigger1 = time = 0
value = 723

[State 820, 2]
type = ScreenBound
trigger1 = 1
value = 0

[State 820, 3]
type = SelfState
trigger1 = time >50
value = 5050

[Statedef 872]
type = A
movetype = H
physics = N
ctrl = 0
poweradd = 60
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = -5
;y =
;ignorehitpause = 0
;persistent = 1


[State 820, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 822

[State 820, 2]
type = ScreenBound
trigger1 = 1
value = 0

[State 820, 3]
type = SelfState
trigger1 = time = 99
value = 5050

[Statedef 880]
type = A
movetype = A
physics = N
sprpriority = 2
juggle = 15
hitdefpersist = 1

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = root,var(30)=1
trigger1 = time = 0
time = 100
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 1005, 3]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1211
attr = SCA, NP, SP, HP
ignorehitpause = 1

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 1005, Increment Counter]
type = VarAdd
trigger1 = 1
v = 2
value = 1

[State 1005, Get Parent AA Flag]
type = VarSet
trigger1 = time = 0
v = 6
value = parent, var(24)

[State 1005, 9]
type = VarSet
trigger1 = 1
v = 11
value = NumTarget
ignorehitpause = 1

[State 1005, 10]
type = VarSet
triggerall = NumTarget > 0
trigger1 = PlayerIdExist(Target(var(12)), ID)
v = 13
value = 1
ignorehitpause = 1
persistent = 0

[State 1005, 11]
type = VarAdd
trigger1 = 1
v = 12
value = 1
ignorehitpause = 1

[State 1005, 12]
type = VarSet
trigger1 = var(12) > NumTarget
v = 12
value = 0
ignorehitpause = 1

[State 1005, 12a]
type = VarAdd
trigger1 = var(13) > 0
v = 13
value = 1
ignorehitpause = 1

 [State 1005, Change Anim]
type = ChangeAnim
trigger1 = time = 0
value = 1080

[State 1005, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

[State 1005, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 5



[State 220, 3]
type = HitDef
trigger1 = timemod = 6,0
attr = S, NA
hitflag = MAFD
guardflag = MA
;pausetime = 11, 11
damage = 50 + (33 * var(19))
animtype = Hard
priority = 4, Hit
sparkno = s900
sparkxy = -10, 0
hitsound = S0, 5
fall =1
guard.sparkno=S910
guardsound = S0, 9
ground.type = High
ground.slidetime = 15
ground.hittime = 23
ground.velocity = -8, -2
air.velocity = -6, -2
air.hittime = 25
down.velocity = -3, 0
down.hittime = 18
guard.slidetime = 13
guard.hittime = 17
guard.velocity = -7.6 - (var(19) * 1.5)
givepower = 50
getpower = 70
sprpriority = 2
palfx.time = 30
palfx.add = 150,50,0
palfx.sinadd = 150,50,0,24
palfx.color = 0
palfx.invertall = 1


[State 1005, 14]
type = DestroySelf
trigger1 = animtime = 0
;trigger2 = Parent, MoveType = H

;Cosmic Javalin======================================
[statedef 3200]
type = A
movetype = A
physics = N
sprpriority = 2
shadow = 0,0,0
anim = 3200

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;ignorehitpause = 0
;persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause = 0
;persistent = 1

[State 2000, a]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 6

[State 2000, 7]
type = Explod
trigger1 = AnimElem = 2
ID = 4084
anim = 7100
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = 30
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0


[State 2000, 8a]
type = PosFreeze
trigger1 = time = [7,57]
value = 1

[State 2000, 8b]
type = EnvColor
trigger1 = AnimElem = 2
value = 0, 0, 0
time = 50
under = 1
persistent = 0

[State 2000, 9]
type = SuperPause
trigger1 = AnimElem = 2
time = 25
anim = S7130
pos = -50,-93
sound = S3, 0
movetime = 50
poweradd = -1000
p2defmul = 1
unhittable = 1
persistent = 0
ignorehitpause = 1

[State 1025, flames]
type=helper
trigger1 = animelem = 1
helpertype=normal
stateno=3201
ID = 8796
name="Javalin"
pos = -50,-95
postype=p1
ownpal=1
persistent=1
;supermovetime = 100
;pausemovetime = 100

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1905
;ID = 1905
pos = -50,-93
removetime = 51
bindtime = 51
scale = .4, .4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1905
;ID = 1905
pos = 0,-100
removetime = 2
bindtime = 2
scale = .4, .4
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1905
;ID = 1905
pos = 65,-45
removetime = 4
bindtime = 4
scale = .5, .5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 730
ctrl = 1

[Statedef 3201]
type = A
movetype = A
physics = N
sprpriority = 20
anim = 3201
juggle = 15
hitdefpersist = 1
shadow = 0,0,0

[State 0, Explod]
type = Explod
trigger1 = time  = [10,20]
trigger1 = timemod = 3,0
anim = 1905
ID = 196
pos = 20,0
removetime = 10
vel = 3+(random%2),-3+(random%2)
supermove = 1
scale = .1, .1
random = 5,5
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time  = [20,30]
trigger1 = timemod = 3,0
anim = 1905
ID = 196
pos = 40,0
removetime = 10
vel = 3+(random%2),-3+(random%2)
supermove = 1
scale = .1, .1
random = 5,5
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time  = [30,40]
trigger1 = timemod = 3,0
anim = 1905
ID = 196
pos = 60,0
removetime = 10
vel = 3+(random%2),-3+(random%2)
supermove = 1
scale = .1, .1
random = 5,5
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time  = [40,50]
trigger1 = timemod = 3,0
anim = 1905
ID = 196
pos = 80,0
removetime = 10
vel = 3+(random%2),-3+(random%2)
supermove = 1
scale = .1, .1
random = 5,5
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time  = [10,20]
trigger1 = timemod = 3,0
anim = 1905
ID = 196
pos = -20,0
removetime = 10
vel = -3+(random%2),-3+(random%2)
supermove = 1
scale = .1, .1
random = 5,5
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time  = [20,30]
trigger1 = timemod = 3,0
anim = 1905
ID = 196
pos = -40,0
removetime = 10
vel = -3+(random%2),-3+(random%2)
supermove = 1
scale = .1, .1
random = 5,5
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time  = [30,40]
trigger1 = timemod = 3,0
anim = 1905
ID = 196
pos = -60,0
removetime = 10
vel = -3+(random%2),-3+(random%2)
supermove = 1
scale = .1, .1
random = 5,5
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time  = [40,50]
trigger1 = timemod = 3,0
anim = 1905
ID = 196
pos = -80,0
removetime = 10
vel = -3+(random%2),-3+(random%2)
supermove = 1
scale = .1, .1
random = 5,5
ontop = 1
ownpal = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 3,34
;volume = 0
;channel = -1
;lowpriority =
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1


[State -2, Hyper Combo Finish]
type = Helper
triggerall = NumHelper(111) = 0
trigger1 = parent,WinKO
trigger1 = movecontact
name = "Hyper Combo Finish"
ID = 111
StateNo = 9030
postype = p1
pos = 0, 0
ownpal = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = time = 0
time = 51
;facing = 0
pos = -50,-93
;ignorehitpause = 0
;persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 4
time = 2
;facing = 0
pos = -27,-118
;ignorehitpause = 0
;persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = parent, animelem = 5
time = 4
;facing = 0
pos = 45,-87
;ignorehitpause = 0
;persistent = 1

[State 3055, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,NP,SP,HP
stateno=3202
ignorehitpause=1

[State 3055,hitby]
type=nothitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 11
x = 10
y = 3
;ignorehitpause = 0
;persistent = 1

[State 220, 3]
type = HitDef
trigger1 = !movecontact
attr = S, NA
hitflag = MAFD
guardflag = MA
;pausetime = 11, 11
damage = 200, 10
animtype = Hard
priority = 20, Hit
sparkno = S900
guard.sparkno = S910
sparkxy = -10, 0
hitsound = S0, 5
fall =1
guardsound = S0, 9
ground.type = High
ground.slidetime = 15
ground.hittime = 23
ground.velocity = -8, -5
air.velocity = -6, -8
air.hittime = 25
down.velocity = -3, 0
down.hittime = 18
guard.slidetime = 13
guard.hittime = 17
guard.velocity = -7.6 - (var(19) * 1.5)
givepower = 50
getpower = 70
sprpriority = 10
palfx.time = 30
palfx.add = 0,200,200
palfx.sinadd = 0,200,50,24
palfx.color = 0
palfx.invertall = 1

[State 1025, flames]
type=helper
trigger1=movehit
helpertype=normal
stateno=7180
ID=7181
name="cosmic_sparks"
postype=p2
bindtime=1000
ownpal=1
facing=-1
size.ground.front=0
size.ground.back=0
ignorehitpause=1
persistent=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 57
value = 3,14

[State 0, ChangeState]
type = ChangeState
trigger1 = parent, stateno != 3200
trigger1 = time < 57
value = 3202

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
;trigger1 = Pos Y = 0
value = 3202

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3202

[Statedef 3202]
type = A
movetype = A
physics = N
sprpriority = 20
anim = 3202
juggle = 15
hitdefpersist = 1
shadow = 0,0,0

[State 0, VelSet]
type = Veladd
trigger1 = timemod = 3,0
x = -.5
y = -.1
;ignorehitpause = 0
;persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 3,0
value = 3,1
;volume = 0
;channel = -1
;lowpriority =
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1

[State -2, Hyper Combo Finish]
type = Helper
triggerall = NumHelper(111) = 0
trigger1 = WinKO
;trigger1 = movecontact
name = "Hyper Combo Finish"
ID = 111
StateNo = 9030
postype = p1
pos = 0, 0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = timemod = 1,0
anim = 1905
ID = 196
pos = 0,0

removetime = 10
vel = -5+(random%2),-1+(random%2)
supermove = 1
scale = .1, .1
random = 100,10
ontop = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = timemod = 1,0
anim = 1905
ID = 196
pos = 0,0
removetime = 10
vel = -5+(random%2),-1+(random%2)
supermove = 1
scale = .1, .1
random = 100,10
ontop = 1
ownpal = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
;ignorehitpause = 0
;persistent = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 1
;ignorehitpause = 0
;persistent = 1

[State 0]
type = trans
trigger1 = 1
trans = add

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;ignorehitpause = 0
;persistent = 1


;Light speed dash (on board)
[Statedef 3603]
type=A
physics=N
movetype=A
anim=24
ctrl=0
velset=-10,0
juggle=15

[State 2000, a]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 6

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 2000, 7]
type = Explod
trigger1 = AnimElem = 2
ID = 4084
anim = 7100
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = 30
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0

[State 2000, 8]
type = Explod
triggerall = StateType != A
trigger1 = AnimElem = 5
ID = 857
anim = 7080
postype = p1
pos = 0, 8
bindtime = 1
removetime = -2
sprpriority = 3
supermovetime = 9999
ownpal = 1


[State 2000, 8b]
type = EnvColor
trigger1 = AnimElem = 2
value = 0, 0, 0
time = 50
under = 1
persistent = 0

[State 2000, 9]
type = SuperPause
trigger1 = AnimElem = 2
time = 50
anim = S7130
pos = 3, -72
sound = S3, 0
movetime = 50
poweradd = -1000
p2defmul = 1
unhittable = 1
persistent = 0
ignorehitpause = 1

[State 4000, nhb]
type=nothitby
trigger1=1
time=1
value=SCA

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera=0,1

[State 0, PosSet]
type = velset
trigger1 = time = 49
x= 0
y= -25

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 50
value = 3601
ctrl = 0

; Ultra Cosmic beam board
[Statedef 3012]
type = A
movetype = A
physics = N
anim = 3011
ctrl = 0
sprpriority = 1

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 18
value = 16, 6
volume = 250



[State 2000, a]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 6

[State 2000, b]
type = VarSet
trigger1 = time = 0
fv = 0
value = ifelse(var(24) = 1, 3, 0)

[State 2000, 4]
type = VelSet
triggerall = StateType = A
trigger1 = 1
x = 0

[State 2000, 4]
type = VelSet
triggerall = StateType = A
trigger1 = 1
y = 0

[State 2000, 5]
type = StateTypeSet
triggerall = StateType != A
trigger1 = time = 0
Physics = S

[State 2000, Initialize Projectile Count]
type = VarSet
trigger1 = time = 0
v = 18
value = 0

[State 2000, 7]
type = Explod
trigger1 = AnimElem = 1
ID = 4084
anim = 7101
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = -1
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0

[State 2000, 8a]
type = PosFreeze
trigger1 = time = [7,57]
value = 1

[State 2000, 8b]
type = EnvColor
trigger1 = AnimElem = 1
value = 0, 0, 0
time = 50
under = 1
persistent = 0

[State 2000, 9]
type = SuperPause
trigger1 = AnimElem = 1
time = 50
anim = S7130
pos = -14, -50
sound = S3, 0
movetime = 50
poweradd = -1000
p2defmul = 1
unhittable = 1
persistent = 0

[State 2000, 10]
type = RemoveExplod
trigger1 = time = 57
ID = 4084



[State 2000, 13a]
type = PlaySnd
trigger1 = time = 77
value = 3, 11



[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "beam"
ID = 3011
postype = p1
pos = -50,0
stateno = 3011
keyctrl = 0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3904
ID = 3904
ontop = 1
pos = 40, -85
bindtime = 50
supermove = 1
pausemovetime = 50
removetime = 50
scale = 1,1



[State 2000, 17]
type = ChangeState
trigger1 = animtime = 0
value = 730
ctrl = 1

;=============================================================
;Cosmic Explosion=============================================
;=============================================================

[statedef 3800]
type = A
movetype = A
physics = N
sprpriority = 2
shadow = 0,0,0
;anim = 3800

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 3800

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 3804

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State -2]
type=helper
trigger1=time > 5
trigger1=time < 60
trigger1=timemod = 10,0
helpertype=normal
stateno=9050
ID=9050
name="SuperAfterimage"
postype=p1
pausemovetime=65535
supermovetime=65535
ownpal=1
persistent = 1

[State 2000, a]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 6

[State 0, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0
;ignorehitpause = 0
;persistent = 1

[State -2, Hyper Combo Finish]
type = Helper
triggerall = NumHelper(111) = 0
trigger1 = WinKO
trigger1 = movecontact
name = "Hyper Combo Finish"
ID = 111
StateNo = 9030
postype = p1
pos = 0, 0
ownpal = 1


[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause = 0
;persistent = 1


[State 2000, 7]
type = Explod
triggerall = var(30)=0
trigger1 = AnimElem = 2
ID = 4084
anim = 7100
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = 30
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0

[State 2000, 7]
type = Explod
triggerall = var(30)=1
trigger1 = AnimElem = 2
ID = 4084
anim = 7101
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = 30
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0


[State 2000, 8a]
type = PosFreeze
trigger1 = time = [7,57]
value = 1

[State 2000, 8b]
type = EnvColor
trigger1 = AnimElem = 2
value = 0, 0, 0
time = 50
under = 1
persistent = 0

[State 2000, 9]
type = SuperPause
trigger1 = AnimElem = 2
time = 25
anim = S7130
pos = 3, -72
sound = S3, 0
movetime = 50
poweradd = -3000
p2defmul = 1
unhittable = 1
persistent = 0
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 7
anim = 3801
;ID =
pos = 0,-65
postype = p1
;removetime = -2
;supermove = 0
;pausemovetime = 0
;scale = 1, 1
sprpriority = 10
ontop = 1
;shadow = 0,0,0
;ownpal = 0
removeongethit = 1

[State 3000, superchargehelper]
type=helper
trigger1 = time = 7
helpertype=normal
stateno=3803
ID=3803
name="Boom"
postype=p1
pos = 0,-65
ownpal=1
persistent=1
supermovetime = 100
pausemovetime = 100

[State 3000, superchargehelper]
type=helper
trigger1 = time > 10
trigger1 = time < 39
trigger1 = timemod = 5,0
helpertype=normal
stateno=1920
ID=1920
name="Beam"
postype=p1
;pos=0,-95
ownpal=1
persistent=1
supermovetime = 100
pausemovetime = 100
size.xscale = .3
size.yscale = .3

[State 3000, superchargehelper]
type=helper
trigger1 = time > 15
trigger1 = time < 33
trigger1 = timemod = 8,0
helpertype=normal
stateno=1921
ID=1921
name="Halo"
postype=p1
;pos=0,-95
ownpal=1
persistent=1
supermovetime = 100
pausemovetime = 100
size.xscale = .75
size.yscale = .75

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 40
value = 3,27

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 40
value = 3,28

[State 1121:         BgPalfx]
type                = bgpalfx
trigger1            = time = 40
add                 = 255, 255, 255
sinadd              = -155,-155,-155,90
time                = 20

[State 3000, superchargehelper]
type=helper
trigger1 = time = 57
helpertype=normal
stateno=3802
ID=3802
name="Halo"
postype=p1
pos=0,-75
ownpal=1
persistent=1
size.xscale = 1
size.yscale = .3
supermovetime = 100
pausemovetime = 100


[State 0, HitDef]
type = HitDef
trigger1 = time = 46
attr = A, HP
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Back
priority = 88,Hit
damage = 650,75
;pausetime = 0,0
;guard.pausetime = 0,0
sparkno = S910
guard.sparkno = S930
sparkxy = 0,0
hitsound = S0,5
guardsound = S0,9
ground.velocity = -10, -7
air.velocity = -8, -9
fall = 1
air.fall = 1
getpower = 0,0


[State 0, EnvShake]
type = EnvShake
trigger1 = time = 50
time = 80
freq = 60
ampl = -4
;phase =
;ignorehitpause = 0
;persistent = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 100
value = 3801

[statedef 3801]
type = A
movetype = A
physics = N
sprpriority = 2
shadow = 0,0,0
;anim = 3803

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 3803

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 3805

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(30)= 0
trigger1 = time = 0
value = 13,8
channel = 12

[State 0, PlaySnd]
type = PlaySnd
triggerall = Var(30)= 1
trigger1 = time = 30
value = 16,23
channel = 12
volume = 200

[State 0, VelAdd]
type = VelAdd
trigger1 = timemod = 1,0
;x =
y = .1
;ignorehitpause = 0
;persistent = 1

[State 730, 12.1]
type = VelSet
trigger1 = Pos Y > 0
y = ifelse(Pos Y < -10, 4.0, 0)

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 730

;Explosion Ring=================================
[Statedef 3802]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3802
sprpriority = 5
velset = 0,0

[State 1006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = root,var(30)=1
trigger1 = time = 0
time = 200
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,1
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 0, AngleAdd]
type = changeanim
triggerall = parent, stateno = 1518
trigger1 = time = 0
value = 3103

[State 0, AngleAdd]
type = AngleAdd
trigger1 = parent, stateno = 1518
trigger1 = time = 0
value = 0+(random%360)
;ignorehitpause = 0
;persistent = 1

[State 0, BindToParent]
type = BindToParent
trigger1 = parent, stateno = 1518
trigger1 = time = 0
time = 99
;facing = 0
;pos = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1+(.05*time),1+(.05*time)

[State 0]
type = trans
trigger1 = 1
trans = add
;alpha =

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime  = 0

[Statedef 3803]
type = A
movetype = I
physics = N
anim = 3801
ctrl = 0
velset = 0,0
juggle = 8
poweradd = 30
sprpriority = 1

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = root,var(30)=1
trigger1 = time = 0
time = 200
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,1
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;ignorehitpause = 0
;persistent = 1


;--------------------------------------------------------------


[Statedef 1095]
type = A
movetype = A
physics = N
ctrl = 0
;anim = 1011
velset = 0, 0
poweradd = 65
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 1011

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 1018

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, Explod]
type = Explod
triggerall = Var(30)= 0
trigger1 = AnimElem = 5
anim = 1910
ID = 1910
pos = 45,-78
ontop = 1
bindtime = 20
removetime = 20

[State 0, Explod]
type = Explod
triggerall = Var(30)= 1
trigger1 = AnimElem = 3
anim = 3904
ID = 1910
pos = 90,-100
ontop = 1
bindtime = 20
removetime = 20

[State 1010, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3
channel = 0

[State 1010, 1]
type = PlaySnd
triggerall = var(30)=0
trigger1 = AnimElem = 1
value = 14, 1
volume = 1000

[State 1010, 1]
type = PlaySnd
triggerall = var(30)=1
trigger1 = AnimElem = 1
value = 16, 12
volume = 1000
channel = 0

[State 1010, 1a]
type = VarSet
trigger1 = time = 0
v = 0
value = 24

[State 1010, 1b]
type = VarSet
trigger1 = time = 0
v = 1
value = -62

[State 1010, 1c]
type = VarSet
trigger1 = time = 0
v = 18
value = 1080

[State 1010, 2]
type = Helper
triggerall = Var(30)= 0
trigger1 = AnimElem = 5
ID = 8796
name = "Ice Beam"
StateNo = 1210
postype = p1
pos = 30,-80
ownpal = 1

[State 1010, 2]
type = Helper
triggerall = Var(30)= 1
trigger1 = AnimElem = 3
ID = 8796
name = "Ice Beam"
StateNo = 1210
postype = p1
pos = 80,-100
ownpal = 1

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = win
value = 730
ctrl = 1

[Statedef 1210]
type = A
movetype = A
physics = N
sprpriority = 2
juggle = 15
hitdefpersist = 1

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = root,var(30)=1
trigger1 = time = 0
time = 100
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 1005, 3]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1211
attr = SCA, NP, SP, HP
ignorehitpause = 1

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 1005, Increment Counter]
type = VarAdd
trigger1 = 1
v = 2
value = 1

[State 1005, Get Parent AA Flag]
type = VarSet
trigger1 = time = 0
v = 6
value = parent, var(24)

[State 1005, 9]
type = VarSet
trigger1 = 1
v = 11
value = NumTarget
ignorehitpause = 1

[State 1005, 10]
type = VarSet
triggerall = NumTarget > 0
trigger1 = PlayerIdExist(Target(var(12)), ID)
v = 13
value = 1
ignorehitpause = 1
persistent = 0

[State 1005, 11]
type = VarAdd
trigger1 = 1
v = 12
value = 1
ignorehitpause = 1

[State 1005, 12]
type = VarSet
trigger1 = var(12) > NumTarget
v = 12
value = 0
ignorehitpause = 1

[State 1005, 12a]
type = VarAdd
trigger1 = var(13) > 0
v = 13
value = 1
ignorehitpause = 1

 [State 1005, Change Anim]
type = ChangeAnim
trigger1 = time = 0
value = 1080

[State 1005, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

[State 1005, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 5

[State 1005, 6]
type = HitDef
triggerall = root,var(30)=0
triggerall = Anim = 1080
triggerall = !var(6)
trigger1 = var(2) = 1 ;time = 0
attr = A, SP
hitflag = MAFD
guardflag = MA
pausetime = 1, 6
animtype = Back
damage = 16, 2
sparkno = S7090
sparkxy = -5,0
hitsound = S2, 4
guardsound = S0, 9
ground.velocity = -3, -8
ground.hittime = 30
air.velocity = -3, -8
air.hittime = 30
guard.slidetime = 8
guard.hittime = 16
guard.velocity = -5
down.velocity = -4, -5
down.hittime = 15
;numhits = 6
sprpriority = 2
palfx.time = 30
palfx.add = 0,200,200
palfx.sinadd = 0,200,50,24
palfx.color = 0
palfx.invertall = 1
givepower = 40
getpower = 60

[State 1005, 6]
type = HitDef
triggerall = root,var(30)=0
triggerall = Anim = 1080
triggerall = !var(6)
trigger1 = var(13) > 0 ;time = 0
trigger1 = (var(13) % 2) = 0
trigger1 = var(13) <= 10
attr = A, SP
hitflag = MAFD
guardflag = MA
pausetime = 1, 6
animtype = Back
damage = 16, 2
sparkno = S7090
sparkxy = -5,0
hitsound = S2, 4
guardsound = S0, 9
ground.velocity = -3, -8
ground.hittime = 30
air.velocity = -3, -8
air.hittime = 30
guard.slidetime = 8
guard.hittime = 16
guard.velocity = -5
down.velocity = -4, -5
down.hittime = 15
;numhits = 6
sprpriority = 2
palfx.time = 30
palfx.add = 0,200,200
palfx.sinadd = 0,200,50,24
palfx.color = 0
palfx.invertall = 1
givepower = 40
getpower = 60

[State 1005, 6]
type = HitDef
triggerall = root,var(30)=1
triggerall = Anim = 1080
triggerall = !var(6)
trigger1 = var(2) = 1 ;time = 0
attr = A, SP
hitflag = MAFD
guardflag = MA
pausetime = 1, 6
animtype = Back
damage = 16, 2
sparkno = S7096
sparkxy = -5,0
hitsound = S2, 4
guardsound = S0, 9
ground.velocity = -3, -8
ground.hittime = 30
air.velocity = -3, -8
air.hittime = 30
guard.slidetime = 8
guard.hittime = 16
guard.velocity = -5
down.velocity = -4, -5
down.hittime = 15
;numhits = 6
sprpriority = 2
palfx.time = 30
palfx.add = 200,100,0
palfx.sinadd = 200,100,0,24
palfx.color = 0
palfx.invertall = 1
givepower = 40
getpower = 60

[State 1005, 6]
type = HitDef
triggerall = root,var(30)=1
triggerall = Anim = 1080
triggerall = !var(6)
trigger1 = var(13) > 0 ;time = 0
trigger1 = (var(13) % 2) = 0
trigger1 = var(13) <= 10
attr = A, SP
hitflag = MAFD
guardflag = MA
pausetime = 1, 6
animtype = Back
damage = 16, 2
sparkno = S7096
sparkxy = -5,0
hitsound = S2, 4
guardsound = S0, 9
ground.velocity = -3, -8
ground.hittime = 30
air.velocity = -3, -8
air.hittime = 30
guard.slidetime = 8
guard.hittime = 16
guard.velocity = -5
down.velocity = -4, -5
down.hittime = 15
;numhits = 6
sprpriority = 2
palfx.time = 30
palfx.add = 200,100,0
palfx.sinadd = 200,100,0,24
palfx.color = 0
palfx.invertall = 1
givepower = 40
getpower = 60

[State 1005, 14]
type = DestroySelf
trigger1 = animtime = 0
;trigger2 = Parent, MoveType = H

[Statedef 1211]
type = A
movetype = A
physics = N
sprpriority = 2
juggle = 15
anim = 1081
hitdefpersist = 1

[State 1005, 14]
type = DestroySelf
trigger1 = animtime = 0
;trigger2 = Parent, MoveType = H

;----------------------------------------------------------------


[Statedef 1097]
type = A
movetype = A
physics = N
ctrl = 0
;anim = 1012
velset = 0, 0
poweradd = 65
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 1012

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 1019

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, Explod]
type = Explod
triggerall = Var(30)= 0
trigger1 = AnimElem = 5
anim = 1910
ID = 1910
pos = 45,-78
ontop = 1
bindtime = 20
removetime = 20

[State 0, Explod]
type = Explod
triggerall = Var(30)= 1
trigger1 = AnimElem = 3
anim = 3904
ID = 1910
pos = 90,-100
ontop = 1
bindtime = 30
removetime = 30

[State 0, Explod]
type = Explod
triggerall = Var(30)= 1
trigger1 = AnimElem = 8
anim = 3904
ID = 1910
pos = 50,-80
ontop = 1
bindtime = 30
removetime = 30

[State 1010, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3
channel = 0

[State 1010, 1]
type = PlaySnd
triggerall = var(30)=0
trigger1 = AnimElem = 1
value = 14, 1
volume = 1000

[State 1010, 1]
type = PlaySnd
triggerall = var(30)=1
trigger1 = AnimElem = 1
value = 16, 14
volume = 1000

[State 1010, 1]
type = PlaySnd
triggerall = var(30)=1
trigger1 = AnimElem = 7
value = 16, 15
volume = 1000

[State 1010, 1a]
type = VarSet
trigger1 = time = 0
v = 0
value = 24

[State 1010, 1b]
type = VarSet
trigger1 = time = 0
v = 1
value = -62

[State 1010, 1c]
type = VarSet
trigger1 = time = 0
v = 18
value = 1080

[State 1010, 2]
type = Helper
triggerall = var(30)=0
trigger1 = AnimElem = 5
ID = 8796
name = "Ice Beam"
StateNo = 1220
postype = p1
pos = 30,-80
ownpal = 1

[State 1010, 2]
type = Helper
triggerall = var(30)=1
trigger1 = AnimElem = 8
ID = 8796
name = "Ice Beam"
StateNo = 1220
postype = p1
pos = 40,-80
ownpal = 1

[State 1010, 2]
type = Helper
triggerall = Var(30)= 1
trigger1 = AnimElem = 3
ID = 8796
name = "Ice Beam"
StateNo = 1210
postype = p1
pos = 80,-100
ownpal = 1

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = win
value = 730
ctrl = 1

[Statedef 1220]
type = A
movetype = A
physics = N
sprpriority = 2
juggle = 15
hitdefpersist = 1

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = root,var(30)=1
trigger1 = time = 0
time = 100
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 1005, 3]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1211
attr = SCA, NP, SP, HP
ignorehitpause = 1

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 1010, 1a]
type = VarSet
trigger1 = time = 0
v = 0
value = 24

 [State 1005, Change Anim]
type = ChangeAnim
trigger1 = time = 0
value = 1110

[State 1005, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

[State 1005, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 5

[State 1005, Increment Counter]
type = VarAdd
trigger1 = 1
v = 2
value = 1

[State 1005, Get Parent AA Flag]
type = VarSet
trigger1 = time = 0
v = 6
value = parent, var(24)

[State 1005, 9]
type = VarSet
trigger1 = 1
v = 11
value = NumTarget
ignorehitpause = 1

[State 1005, 10]
type = VarSet
triggerall = NumTarget > 0
trigger1 = PlayerIdExist(Target(var(12)), ID)
v = 13
value = 1
ignorehitpause = 1
persistent = 0



[State 1005, 12a]
type = VarAdd
trigger1 = var(13) > 0
v = 13
value = 1
ignorehitpause = 1

[State 1005, 11]
type = VarAdd
trigger1 = 1
v = 12
value = 1
ignorehitpause = 1

[State 1005, 12]
type = VarSet
trigger1 = var(12) > NumTarget
v = 12
value = 0
ignorehitpause = 1


[State 1005, 6]
type = HitDef
triggerall = Anim = 1110
triggerall = !var(6)
trigger1 = var(2) = 1 ;time = 0
attr = A, SP
hitflag = MAFD
guardflag = MA
pausetime = 1, 6
animtype = Back
damage = 16, 2
sparkno = S7096
sparkxy = -5,0
hitsound = S2, 4
guardsound = S0, 9
ground.velocity = -3, -8
ground.hittime = 30
air.velocity = -3, -8
air.hittime = 30
guard.slidetime = 8
guard.hittime = 16
guard.velocity = -5
down.velocity = -4, -5
down.hittime = 15
;numhits = 6
sprpriority = 2
palfx.time = 30
palfx.add = 200,100,0
palfx.sinadd = 200,100,0,24
palfx.color = 0
palfx.invertall = 1
givepower = 40
getpower = 60

[State 1005, 6a]
type = HitDef
triggerall = Anim = 1110
triggerall = !var(6)
trigger1 = var(13) > 0 ;time = 0
trigger1 = (var(13) % 2) = 0
trigger1 = var(13) <= 15
attr = A, SP
hitflag = MAFD
guardflag = MA
pausetime = 1, 2
animtype = Back
damage = 16, 1
sparkno = S7096
sparkxy = -5,0
hitsound = S2, 4
guardsound = S0, 9
ground.velocity = -3, -8
ground.hittime = 30
air.velocity = -3, -8
air.hittime = 30
guard.slidetime = 8
guard.hittime = 16
guard.velocity = -5
down.velocity = -4, -5
down.hittime = 15
;numhits = 6
sprpriority = 2
palfx.time = 30
palfx.add = 200,100,0
palfx.sinadd = 200,100,0,24
palfx.color = 0
palfx.invertall = 1
givepower = 20
getpower = 10



[State 1005, 14]
type = DestroySelf
trigger1 = animtime = 0
;trigger2 = Parent, MoveType = H


;--------------------------------------------------------------

[Statedef 1099]
type = A
movetype = A
physics = N
ctrl = 0
;anim = 1014
velset = 0, 0
poweradd = 65
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 1014

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 1021

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 3904
ID = 3904
pos = 45,-78
ontop = 1
bindtime = 20
removetime = 20
scale = 1.3, 1.3

[State 1010, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3
channel = 0

[State 1010, 1]
type = PlaySnd
triggerall = var(30)=0
trigger1 = AnimElem = 1
value = 14, 1
volume = 1000

[State 1010, 1]
type = PlaySnd
triggerall = var(30)=1
trigger1 = AnimElem = 1
value = 16, 12
volume = 1000


[State 1010, 1a]
type = VarSet
trigger1 = time = 0
v = 0
value = 24

[State 1010, 1b]
type = VarSet
trigger1 = time = 0
v = 1
value = -62

[State 1010, 1c]
type = VarSet
trigger1 = time = 0
v = 18
value = 1080

[State 1040, 9]
type = Helper
triggerall = Var(30)= 1
trigger1 = AnimElem = 5
ID = 8796
name = "Fwd Burst"
StateNo = 10088
postype = p1
pos = 0,0
ownpal = 1
size.xscale = 1.4
size.yscale = 1.4



[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = win
value = 730
ctrl = 1

[Statedef 1230]
type = A
movetype = A
physics = N
sprpriority = 2
juggle = 15
hitdefpersist = 1

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
triggerall = root,var(30)=1
trigger1 = time = 0
time = 100
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1
[State 1005, 3]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1211
attr = SCA, NP, SP, HP
ignorehitpause = 1

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 1005, Increment Counter]
type = VarAdd
trigger1 = 1
v = 2
value = 1

[State 1005, Get Parent AA Flag]
type = VarSet
trigger1 = time = 0
v = 6
value = parent, var(24)

[State 1005, 9]
type = VarSet
trigger1 = 1
v = 11
value = NumTarget
ignorehitpause = 1

[State 1005, 10]
type = VarSet
triggerall = NumTarget > 0
trigger1 = PlayerIdExist(Target(var(12)), ID)
v = 13
value = 1
ignorehitpause = 1
persistent = 0



[State 1005, 12a]
type = VarAdd
trigger1 = var(13) > 0
v = 13
value = 1
ignorehitpause = 1

[State 1005, 11]
type = VarAdd
trigger1 = 1
v = 12
value = 1
ignorehitpause = 1

[State 1005, 12]
type = VarSet
trigger1 = var(12) > NumTarget
v = 12
value = 0
ignorehitpause = 1

 [State 1005, Change Anim]
type = ChangeAnim
trigger1 = time = 0
value = 1110

[State 1005, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

[State 1005, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 5


[State 1005, 6]
type = HitDef
trigger1 = Anim = 1110
triggerall = !var(6)
trigger1 = var(2) = 1 ;time = 0
attr = A, SP
hitflag = MAFD
guardflag = MA
pausetime = 1, 6
animtype = Back
damage = 16, 2
sparkno = S7090
sparkxy = -5,0
hitsound = S2, 4
guardsound = S0, 9
ground.velocity = -3, -8
ground.hittime = 30
air.velocity = -3, -8
air.hittime = 30
guard.slidetime = 8
guard.hittime = 16
guard.velocity = -5
down.velocity = -4, -5
down.hittime = 15
;numhits = 6
sprpriority = 2
palfx.time = 30
palfx.add = 0,200,200
palfx.sinadd = 0,200,50,24
palfx.color = 0
palfx.invertall = 1
givepower = 40
getpower = 60

[State 1005, 6a]
type = HitDef
trigger1 = Anim = 1110
triggerall = !var(6)
trigger1 = var(13) > 0 ;time = 0
trigger1 = (var(13) % 2) = 0
trigger1 = var(13) <= 20
attr = A, SP
hitflag = MAFD
guardflag = MA
pausetime = 1, 2
animtype = Back
damage = 16, 1
sparkno = S7090
sparkxy = -5,0
hitsound = S2, 4
guardsound = S0, 9
ground.velocity = -3, -8
ground.hittime = 30
air.velocity = -3, -8
air.hittime = 30
guard.slidetime = 8
guard.hittime = 16
guard.velocity = -5
down.velocity = -4, -5
down.hittime = 15
;numhits = 6
sprpriority = 2
palfx.time = 30
palfx.add = 0,200,200
palfx.sinadd = 0,200,50,24
palfx.color = 0
palfx.invertall = 1
givepower = 20
getpower = 10



[State 1005, 14]
type = DestroySelf
trigger1 = animtime = 0
;trigger2 = Parent, MoveType = H

;--------------------------------------------

[Statedef 3025]
type = A
movetype = A
physics = N
anim = 3020
ctrl = 0
sprpriority = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 78
value =  3022
;elem =
;ignorehitpause = 0
;persistent = 1

[State 2000, a]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 6

[State 2000, 7]
type = Explod
triggerall = var(30)=0
trigger1 = AnimElem = 2
ID = 4084
anim = 7100
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = 30
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0

[State 2000, 7]
type = Explod
triggerall = var(30)=1
trigger1 = AnimElem = 2
ID = 4084
anim = 7101
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = 30
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0

[State 2000, 8]
type = Explod
triggerall = StateType != A
trigger1 = AnimElem = 5
ID = 857
anim = 7080
postype = p1
pos = 0, 8
bindtime = 1
removetime = -2
sprpriority = 3
supermovetime = 9999
ownpal = 1

[State 2000, 8a]
type = PosFreeze
trigger1 = time = [7,57]
value = 1

[State 2000, 8b]
type = EnvColor
trigger1 = AnimElem = 2
value = 0, 0, 0
time = 50
under = 1
persistent = 0

[State 2000, 9]
type = SuperPause
trigger1 = AnimElem = 2
time = 50
anim = S7130
pos = 3, -72
sound = S3, 0
movetime = 50
poweradd = -1000
p2defmul = 1
unhittable = 1
persistent = 0
ignorehitpause = 1

[State 2000, 4]
type = VelSet
triggerall = StateType = A
trigger1 = 1
x = 0

[State 2000, 4]
type = VelSet
triggerall = StateType = A
trigger1 = 1
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = command =  "holdfwd" && time >=5
x = 3
;y =
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = command =  "holdback" && time >=5
x = -3

[State 3000, superchargehelper]
type=helper
trigger1 = time = 48
helpertype=normal
stateno=59784
ID=59784
name="tornado"
postype=p1
;pos=0,-95
ownpal=1
persistent=1
supermovetime = 100
pausemovetime = 100

[State 1000, 3]
type = Explod
triggerall = Pos Y > -130
trigger1 = timemod = 10,0
;ID = 857
anim = 7080
postype = p1
vel = -2,0
pos = -20, 110
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1000, 3]
type = Explod
triggerall = Pos Y > -130
trigger1 = timemod = 10,0
;ID = 857
anim = 7080
postype = p1
vel = 2,0
facing = -1
pos = 20, 110
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1

[State 2000, 17]
type = ChangeState
trigger1 = time = 225
value = 730
ctrl = 1

;---------------------------------------------

[statedef 59784]
type=A
physics=N
movetype=A
;anim = 4444
ctrl = 0
sprpriority = 10

[State 0, PlaySnd]
type = PlaySnd
triggerall =  time = [0,24]
trigger1 = timemod = 10,0
value = 3, 42

[State 0, PlaySnd]
type = PlaySnd
triggerall =  time = [24,190]
trigger1 = timemod = 10,0
value = 3, 41

[State 1006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 0]
type = Trans
trigger1 = 1
trans = add

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1.4,1.4

[State -2, Hyper Combo Finish]
type = Helper
triggerall = NumHelper(111) = 0
trigger1 = Parent,WinKO
trigger1 = movecontact
name = "Hyper Combo Finish"
ID = 111
StateNo = 9030
postype = p1
pos = 0, 0
ownpal = 1




;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 2000, a]
type = NotHitBy
trigger1 = 1
value = SCA
time = 5

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 3028
;elem =
ignorehitpause = 1
persistent = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 24
value = 3025
;elem =
ignorehitpause = 1
persistent = 1


[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 9999
;facing = 0
pos = 0, 110
;ignorehitpause = 0
;persistent = 1

[State 2000, 13]
type = hitdef
trigger1 = timemod = 10,0
postype = p1
attr = A, HP
hitflag = MAFD
guardflag = MA
animtype = Hard
damage = 25,5
sparkno = -1
sparkxy = 0, -100
hitsound = S3, 39
guardsound = S0, 9
sprpriority = 10
ground.type = Low
ground.slidetime = 11
ground.hittime = 15
ground.velocity = 1, -3
air.hittime = 20
air.velocity =  1, -3
down.velocity = 1, -5
down.hittime = 15
guard.slidetime = 10
guard.hittime = 12
guard.velocity = -5
fall = 1
fall.recover = 0
givepower = 15
getpower = 0
projremovetime = 59





[State 0, Explod]
type = Explod
trigger1 = time = 185
anim = 3029
;ID =
pos = 0,0
postype = p1
facing = -1
bindtime = 9999
removetime = 24
scale = 1.4,1.4
sprpriority = 10
ontop = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root, stateno != 3025
;ignorehitpause = 0
;persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 190
;ignorehitpause = 0
;persistent = 1


;-----------------------------------------------------------------


[Statedef 2000]
type = A
movetype = A
physics = N
anim = 2000
ctrl = 0
sprpriority = 1

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 13, 2
volume = 200

[State 2000, a]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 6

[State 0, Explod]
type = Explod
trigger1 = time = 8
anim = 1910
ID = 1910
pos = -12,-136
ontop = 1
bindtime = 30
supermove = 1
pausemovetime = 20
removetime = 30
scale = 1.5,1.5

[State 3000, superchargehelper]
type=helper
triggerall =  time > 8
trigger1 = timemod = 3,0
trigger1 = time < 40
helpertype=normal
stateno=1920
ID=1920
name="Beams"
postype=p1
;pos=0,-95
ownpal=1
persistent=1
supermovetime = 100
pausemovetime = 100


[State 2000, b]
type = VarSet
trigger1 = time = 0
fv = 0
value = ifelse(var(24) = 1, 3, 0)

[State 2000, 4]
type = VelSet
triggerall = StateType = A
trigger1 = 1
x = 0

[State 2000, 4]
type = VelSet
triggerall = StateType = A
trigger1 = 1
y = 0

[State 2000, 5]
type = StateTypeSet
triggerall = StateType != A
trigger1 = time = 0
Physics = S

[State 2000, Initialize Projectile Count]
type = VarSet
trigger1 = time = 0
v = 18
value = 0

[State 2000, 7]
type = Explod
trigger1 = AnimElem = 3
ID = 4084
anim = 7100
postype = front
pos = 0, 0
facing = ifelse(Facing = -1, -1, 1)
bindtime = -1
removetime = -1
sprpriority = -2
ownpal = 1
supermovetime = 9999
removeongethit = 1
persistent = 0

[State 2000, 8a]
type = PosFreeze
trigger1 = time = [7,57]
value = 1

[State 2000, 8b]
type = EnvColor
trigger1 = AnimElem = 3
value = 0, 0, 0
time = 50
under = 1
persistent = 0

[State 2000, 9]
type = SuperPause
trigger1 = AnimElem = 3
time = 50
anim = S7130
pos = -14, -138
sound = S3, 0
movetime = 50
poweradd = -1000
p2defmul = 1
unhittable = 1
persistent = 0

[State 2000, 10]
type = RemoveExplod
trigger1 = time = 57
ID = 4084



[State 2000, 13a]
type = PlaySnd
trigger1 = time = 77
value = 3, 11



[State 0, Helper]
type = Helper
trigger1 = animelem = 23
helpertype = normal
name = "beam"
ID = 2001
postype = p1
stateno = 2001
keyctrl = 0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = 77
anim = 1910
ID = 1999
pos = 50, -77
ontop = 1
bindtime = 50
supermove = 1
pausemovetime = 50
removetime = 50
scale = 1.5,1.5





[State 2000, 17]
type = ChangeState
trigger1 = animtime = 0
value = 730
ctrl = 1

;---------------------------------------------------------------------------
[statedef 2001]
type=A
physics=N
movetype=A
;anim = 4444
ctrl = 0
sprpriority = 10

[State 1006, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State -2, Hyper Combo Finish]
type = Helper
triggerall = NumHelper(111) = 0
trigger1 = Parent,WinKO
trigger1 = movecontact
name = "Hyper Combo Finish"
ID = 111
StateNo = 9030
postype = p1
pos = 0, 0
ownpal = 1

;Immune to air throws
[State 8061:    NotHitBy]
type            = NotHitBy
trigger1        = 1
time            = 1
value           = , NT, ST, HT
ignorehitpause  = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 10
ignorehitpause = 1
persistent = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 4444
;elem =
ignorehitpause = 1
persistent = 1


[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 9999
;facing = 0
pos = 42, 15
;ignorehitpause = 0
;persistent = 1

[State 2000, 13]
type = hitdef
trigger1 = timemod = 9,0
postype = p1
attr = A, HP
hitflag = MAFD
guardflag = MA
animtype = Hard
damage = 58,5
sparkno = S2030
sparkxy = 0, -100
hitsound = S3, 3
guardsound = S0, 9
ground.type = Low
ground.slidetime = 11
ground.hittime = 15
ground.velocity = -5, -3
air.hittime = 20
air.velocity =  -4.5, -3
down.velocity = -5, -5
down.hittime = 15
guard.slidetime = 10
guard.hittime = 12
guard.velocity = -5
fall = 1
fall.recover = 0
givepower = 15
getpower = 0
projremovetime = 59

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;ignorehitpause = 0
;persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,anim != 2000
;ignorehitpause = 0
;persistent = 1




;---------------------------------

[Statedef 1120]
type = A
movetype = A
physics = N
ctrl = 0
;anim = 1101
poweradd = 70
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 1101

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 1102

[State 1100, a]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 1100, 2]
type = Explod
triggerall = StateType != A
trigger1 = time = 0
ID = 857
anim = 7080
postype = p1
pos = 0, 8
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1110, 3]
type = Helper
trigger1 = time = 17
ID = 8409
name = "Boulder"
StateNo = 1080
postype = p1
pos = 70, -220
size.xscale = .75
size.yscale = .75
ownpal = 1

[State 1100, 8]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 600, 4.2]
type = ChangeState
trigger1 = animtime = 0
value = 730

;---------------------------------

[Statedef 1121]
type = A
movetype = A
physics = N
ctrl = 0
;anim = 1101
poweradd = 70
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 0
trigger1 = time = 0
value = 1101

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 1102

[State 1100, a]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 12, 0

[State 1100, 2]
type = Explod
triggerall = StateType != A
trigger1 = time = 0
ID = 857
anim = 7080
postype = p1
pos = 0, 8
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1100, 3]
type = Helper
trigger1 = time = 17
ID = 8409
name = "Boulder"
StateNo = 1080
postype = p1
pos = -30, -1200
ownpal = 1

[State 1100, 8]
type = VelSet
trigger1 = time = 0
x = 0
y = 0



[State 600, 4.2]
type = ChangeState
trigger1 = animtime = 0
value = 730

[Statedef 1122]
type = A
movetype = A
physics = N
ctrl = 0
;anim = 1101
poweradd = 70
sprpriority = 1

[State 670, 1]
type = ChangeAnim
triggerall = Var(30)= 1
trigger1 = time = 0
value = 1102

[State 1100, a]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 12, 0

[State 1100, 2]
type = Explod
triggerall = StateType != A
trigger1 = time = 0
ID = 857
anim = 7080
postype = p1
pos = 0, 8
bindtime = 1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1100, 3]
type = Helper
trigger1 = time = 17
ID = 8409
name = "Boulder"
StateNo = 10855
postype = p1
pos = -30, -1200
ownpal = 1

[State 1100, 8]
type = VelSet
trigger1 = time = 0
x = 0
y = 0



[State 600, 4.2]
type = ChangeState
trigger1 = animtime = 0
value = 730

