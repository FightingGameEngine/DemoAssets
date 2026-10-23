;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1 = Ninja Training
;---------------------------------------------------------------------------
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 10,0
poweradd = -1000
anim = 410
ctrl = 0
sprpriority = 2

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 5
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 0, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 200 ;time BG remains on screen
id =10010

[State 3001, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3001
p2stateno = 1502
guard.dist = 0

[state 3000,end]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3001, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 23
anim = -1
sound = S15,0
pos = 10,-70

[State 3001, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0.5
y = 0

[State 3001, HitDef]
type = HitDef
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 19
trigger4 = animelem = 24
trigger5 = animelem = 29
trigger6 = animelem = 35
trigger7 = animelem = 38
trigger8 = animelem = 44
attr = C, HA
animtype  = Hard
damage    = 25,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8022
getpower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Medium
ground.type = High
ground.slidetime = 1
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-2

[State 3001, next]
type = changestate
trigger1 = animelem = 46
value = 3030
ctrl = 0

;; === Finishing Strike ===
[Statedef 3030]
type = S
movetype = I
physics = N
anim = 1110
poweradd = 60
velset = 4, 0
sprpriority = 1
ctrl = 0

[State 3030, Change State]
type = ChangeState
trigger1 = animelem = 7
value = 3031
ctrl = 0

;---------------------------------------------------------------------------
; Strike
[Statedef 3031]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 1130
poweradd= 10
ctrl = 0
sprpriority = 0
facep2 = 0

[State 3031, Turn]
type = Turn
trigger1 = time = 0

[State 3031, 4]
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
sparkxy = -10, -66
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 24
ground.velocity = -16, -8
guard.slidetime = 13
guard.hittime = 31
guard.velocity = -10
air.velocity = -10, -8
air.hittime = 45
fall.recovertime = 40
air.fall = 1
fall = 1

[State 3031, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20, -20
time = 1

[State 3031, SuperPause]
type = SuperPause
trigger1 =  animelem = 3
time = 30
sound = S180,0
anim = -1


[State 3031, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000, 3

[state 3031,end]  ;End of Hyper I
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hyper 2 = Excalibur
;---------------------------------------------------------------------------

[Statedef 3100]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = -1000
anim = 3100
ctrl = 0
sprpriority = 2

[State 3100, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3100, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 3100, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3100, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3100, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3100, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3100, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3100, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3100, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3100, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3100, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 5
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 3100, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 200 ;time BG remains on screen
id =10010

[State 3100, Helper]
type = Helper
trigger1 = animelem = 1
helpertype = normal ;player
name = "WISDOM"
ID = 3100
stateno = 3103
pos = 0,0
postype = front    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 3100, 2]
type = SuperPause
trigger1 = AnimElem = 2
time = 53
anim = -1
sound = S22,3
pos = 10,-70
channel = 2

[State 3100, 2]
type = SuperPause
trigger1 = AnimElem = 3
time = 1
anim = -1
sound = S3600,2
pos = 10,-70

[State 3100, VelSet]
type = VelSet
trigger1 = Time >= 35
x = 10.5

[State 3100, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 12
trigger4 = animelem = 17
trigger5 = animelem = 20
trigger6 = animelem = 27
trigger7 = animelem = 29
trigger8 = animelem = 32
attr = C, HA
animtype  = Hard
damage    = 25,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8022
getpower = 0,0
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -5
air.velocity = -2,-2

[State 3100, end]
type = changestate
trigger1 = animelem = 33
value = 3101
ctrl = 0

;----------------------------------
[Statedef 3101]
type = S
movetype = I
physics = N
anim = 3101
poweradd = 60
velset = 5, 0
sprpriority = 1
ctrl = 0

[State 3101, Turn]
type = Turn
trigger1 = anim = 3101 && animtime = 10
trigger2 = p2bodydist x < -10

[State 3101, Change State]
type = ChangeState
trigger1 = animelem = 3
value = 3102
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3102]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 12,0
anim = 3102
poweradd= 10
ctrl = 0
sprpriority = 0
facep2 = 0

[State 3102, Turn]
type = Turn
trigger1 = anim = 3102 && animtime = 0
trigger2 = p2bodydist x < 200

[State 3102, 4]
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
sparkxy = -10, -66
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 13
ground.hittime = 24
ground.velocity = -16, -8
guard.slidetime = 13
guard.hittime = 31
guard.velocity = -10
air.velocity = -10, -8
air.hittime = 45
fall.recovertime = 40
air.fall = 1
fall = 1

[State 3102, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal
name = "EXCALIBUR"
ID = 3102
stateno = 3105
pos = 0,-60
postype = p1
facing = -1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 3102, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000, 3

[state 3102,end]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------------------
;Hi Petey!
[Statedef 3103]
type = S
movetype = I
physics = N
anim = 3103
poweradd = 60
velset = 7, 0
sprpriority = 1
ctrl = 0

[State 3103, HitDef]
type = HitDef
trigger1 = movehit
trigger1 = !moveguarded
attr = C,NA
damage = 2,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 19,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s3600,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 30
ground.hittime  = 14
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0



[State 3103, Turn]
type = Turn
trigger1 = !movehit
trigger1 = animelem = 8

[State 3103, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 0
y = 0

[State 3103, Change State]
type = ChangeState
trigger1 = animelem = 8
value = 3104
ctrl = 0

[Statedef 3104]
type = S
movetype = I
physics = N
anim = 3104
poweradd = 60
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x = -2
y = 0

[State 3104,DestroySelf]
type = DestroySelf
trigger1 = Animelem = 12

;----------------------------------
[Statedef 3105]
type = A
movetype = A
physics = N
anim = 3105
poweradd = 60
velset = 0, 0
sprpriority = 34
ctrl = 0

[State 3105, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 10
y = 0

[State 3105, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 120,4
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 30
ground.hittime  = 14
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0

[State 3105,DestroySelf]
type = DestroySelf
trigger1 = time = 100

;---------------------------------------------------------------------------
; Hyper 3 = Phased Float
;---------------------------------------------------------------------------
[Statedef 3200]
type    = S
movetype= A
physics = N
velset = 0,0
poweradd = 0
ctrl = 0
sprpriority = 2

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = ctrl

[State 3200, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1400,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S10,7
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0


[State 3200, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3200, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3200, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3200, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3200, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3200, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3200, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3200, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3200, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3200, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 5
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1
              ;ll;l
[State 3200, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 300 ;time BG remains on screen
id =10010

;--------------------------------------------
[State 3200, sense bar]
type = Explod
trigger1 = animelem = 1
anim = 3201
id = 3200
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State 3200, sense bar]
type = Explod
trigger1 = animelem = 1
anim = 3202
id = 3200
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1
;--------------------------------------------
;Phase Ability

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = var(26) =1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 300
stateno = 3200

[State 3200, 6]
type = VarSet
trigger1 = animelem = 1
v = 26
value = 1

[State 3200, PalFX]
type = PalFX
trigger1 = var(25) = 1
time = 300
add = 0, 35, 75
mul = 200, 220, 255
sinadd = 15,35,55,85
trans = 0
ignorehitpause = 1

[State 3203, End]
type = ChangeState
trigger1 = time = 0
value = 2000
ctrl = 1

;--------------------------------------------

[Statedef 3203]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
poweradd = 20
anim = 3203
ctrl = 1
sprpriority = 2

[State 3203, VarSet]
type = VarSet
trigger1 = var(26) =1
time = 0
v = 26
value = 0

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S18,8
volume = 255
channel = 2

[State 3203, End]
type = ChangeState
trigger1 = time = 35
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shield hyper
[Statedef 3600]
type    = S
movetype= A
physics = N
juggle  = 1
velset = -10,-2
anim = 3600
ctrl = 0
sprpriority = 2

[State 3600, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1400,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S10,7
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0


[State 3600, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3600, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3600, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3600, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3600, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3600, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 3600, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 5
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1
              ;ll;l
[State 3600, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 300 ;time BG remains on screen
id =10010


[State 3600, VelSet]
type = VelSet
trigger1 = animelem = 2
x = -5
y = 2

[State 3600, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0
y = 0

[State 3600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3601
ctrl = 0

;-------------------------------------------------------------------------------

;Shield Hyper
[Statedef 3601]
type = A
movetype = I
physics = N
velset = 0,0
anim = 3601
ctrl = 1
sprpriority = 3

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 10
value = 10

[State 0, VarSet]
type = VarSet
trigger1 = time
v = 11
value = ifelse((anim = 3603),-4,0)

[State 3601, VarSet]
type = VarSet
trigger1 = time = 0
v = 15
value = 0

[State 3601, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3601, VarAdd]
type = VarAdd
trigger1 = (gametime%20) = 0
v = 15
value = 1

[State 3601, ChangeState]
type = ChangeState
trigger1 = var(15) >= 5
trigger2 = time >= 100
value = 0

[State 3601, Helper]
type = Helper
triggerall = anim != 3600
trigger1 = (gametime%18) = 0
helpertype = normal
name = "Bullet"
ID = 3602
stateno = 3602
pos = ifelse((anim = 3601),48,0),ifelse((anim = 3601),-70,-61)
ownpal = 1

[State 3601, Helper]
type = Helper
triggerall = anim != 3600
trigger1 = (gametime%13) = 0
helpertype = normal
name = "Bullet"
ID = 3602
stateno = 3602
pos = ifelse((anim = 3601),48,0),ifelse((anim = 3601),-72,-62)
ownpal = 1

[State 3601, Helper]
type = Helper
triggerall = anim != 3600
trigger1 = (gametime%8) = 0
helpertype = normal
name = "Bullet"
ID = 3602
stateno = 3602
pos = ifelse((anim = 3601),48,0),ifelse((anim = 3601),-71,-60)
ownpal = 1

[State 3601, VarAdd]
type = VarAdd
trigger1 = (gametime%80) = 0
v = 15
value = 1

[State 3601, ChangeState]
type = ChangeState
trigger1 = time >= 220
value = 0

;-------------------------------------------------------------------------------
;Bullets
[Statedef 3602]
type = A
movetype = A
physics = N
velset = 10,0
anim = 3602
ctrl = 0
sprpriority = 3

[State 3602, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 5,1
volume = 200

[State 3602, Helper]
type = Helper
trigger1 = time = 2
helpertype = normal
name = "Shell Casing"
ID = 3603
stateno = 3603
pos = -20,-3
postype = p1
facing = 1
ownpal = 1

[State 3602, Trans]
type = Trans
trigger1 = time
trans = addalpha
alpha = 200, 80

[State 3602, PlayerPush]
type = PlayerPush
trigger1 = time
value = 0

[State 3602, ScreenBound]
type = ScreenBound
trigger1 = time
value = 0

[State 3602, 1]
type = HitDef
trigger1 = time
attr = S, NA
damage = 2,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 0,2
sparkno = s8022
sparkxy = 0, 0
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -1,0
airguard.velocity = -1,0
air.type = high
air.velocity = -1.4,1
air.hittime = 12
getpower = 0,15
givepower = 10, 5

[State 3602, DestroySelf]
type = DestroySelf
trigger1 = time >= 200

;-------------------------------------------------------------------------------
;Shell Casing
[Statedef 3603]
type = A
movetype = A
physics = A
velset = -1.5,-2
anim = 3603
ctrl = 0
sprpriority = 34

[State 3603, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = time >= 300

[State 0, MakeDust]
type = MakeDust
trigger1 = ishelper(3603)
pos = -2,5
spacing = 6



;---------------------------------------------------------------------------
; Lockheed's "Scorched Earth"
;---------------------------------------------------------------------------
; Lockheed Hyper "Scorched Earth"

[Statedef 4000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = -2000
anim = 6000
ctrl = 0
sprpriority = 2

[State 4000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 4000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70

[State 4000, Hyper Dust]
type = Explod
trigger1 = animelem = 4
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 4000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 4000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 4000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 4000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 4000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10004
ID = 10004
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 4000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 4000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 4000, superbg 1] ;Use this & 1.2 for timed hypers where user sets the BG remove time
type = Explod
trigger1 = AnimElem = 5
anim = 10010
ID = 10010
pos = -60,-5
postype = left
bindtime = -1
removetime = -1 ;infinite time
supermove = 40
pausemovetime = 40
removeongethit = 1
sprpriority = -2
ownpal = 1
scale = 1.1,1.1

[State 4000, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 200 ;time BG remains on screen
id =10010


[State 4000, 2]
type = SuperPause
trigger1 = AnimElem = 3
time = 1
anim = -1
sound = S6000,1
pos = 10,-70

[State 4000, lockheed]
type = Helper
trigger1 = AnimElem = 1
ID = 4002
stateno = 4002
postype = back
pos = -20,-120
name = "Lockheed"
ownpal = 1


[State 4000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Running In
;[Statedef 4001]
;type    = S
;movetype= A
;physics = N
;juggle  = 1
;poweradd = 0
;anim = 6001
;ctrl = 0
;sprpriority = 4
;velset = 4,0

;[State 4001, VelSet]
;type = VelSet
;trigger1 = AnimElem = 1
;x = 6
;y = 1

;[State 4001, VelSet]
;type = VelSet
;trigger1 = AnimElem = 2
;x = 0
;y = 0

;[State 4001, 5]
;type = HitOverride
;trigger1 = 1
;attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
;stateno = 6005
;time = -1

;[State 4001, End]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 4002
;ctrl = 1

;-------------------------------------------------------------------------------
;Lockheed Attack
[Statedef 4002]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd = 0
anim = 4002
ctrl = 0
sprpriority = 1
velset = 2,0

[State 4002,1]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 6005
time = -1

[State 4002, Explod]
type = Explod
trigger1 =  AnimElem = 5
anim = 4003
ID = 4003
pos = 20,-10
postype = p1
facing = 1
vfacing = 1
bindtime = 50
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 34
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 4002, Explod]
type = Explod
trigger1 =  AnimElem = 7
anim = 4003
ID = 4003
pos = 22,-12
postype = p1
facing = 1
vfacing = 1
bindtime = 50
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1.1,1.4
sprpriority = 34
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 4002, 4]
type = hitdef
trigger1 = time = 0
attr = S,HA
damage = 35
scale = 1,1
getpower = 5
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
fall = 1
palfx.time = 40
palfx.add = 100,-50,-200
palfx.mul = 255,200,100
palfx.sinadd = 50,10,0,15
palfx.invertall = 1
palfx.color = 25
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2


[State 4002, blast]
type = Helper
trigger1 = animelem = 5
ID = 4003
stateno = 4003
postype = p1
pos = 20,-10
name = "Flame"
ownpal = 1


[State 4002, 5]
type = HitOverride
trigger1 = 1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 6005
time = -1

[State 4002, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 4004
ctrl = 1

;-------------------------------------------------------------------------------
;Fire Blast
[Statedef 4003]
type = A
movetype = A
physics = N
ctrl = 0
anim = 4004
sprpriority = 0
hitcountpersist = 1
poweradd = 40

[State 4003, AfterImage]
type = AfterImage
trigger1 = Time = 0
paladd = 500,150,0
length = 8
framegap = 4
trans = add
time = 25

[State 4003, SprPriority]
type = SprPriority
trigger1 = animtime = 0
value = 4003

[State 4003, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 4003, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 4002, blast]
type = Helper
trigger1 = animelem = 3
ID = 4005
stateno = 4005
postype = back
pos = 150,10
name = "Flame Ground"
ownpal = 1



[State 4003, 4]
type = hitdef
;trigger1 = time = 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
trigger9 = AnimElem = 11
trigger10 = AnimElem = 12
trigger11 = AnimElem = 13
trigger12 = AnimElem = 14
trigger13 = AnimElem = 15
trigger14 = AnimElem = 16
trigger15 = AnimElem = 17
trigger16 = AnimElem = 18
trigger17 = AnimElem = 19
trigger18 = AnimElem = 20
trigger19 = AnimElem = 21
trigger20 = AnimElem = 22
attr = S,HA
damage = 50,10
scale = 1,1
getpower = 5
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 10,5
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = high
ground.slidetime = 4
ground.velocity = -5
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -5,1
air.juggle = 5
fall.animtype = Hard
fall = 0
palfx.time = 40
palfx.add = 100,-50,-200
palfx.mul = 255,200,100
palfx.sinadd = 50,10,0,15
palfx.invertall = 1
palfx.color = 25
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 4003, 7]
type = DestroySelf
trigger1 = Animelem = 27


;-------------------------------------------------------------------------------
;Running Out
[Statedef 4004]
type = A
movetype = A
physics = N
ctrl = 0
anim = 6001
sprpriority = 9
hitcountpersist = 1

[State 4004, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8
y = -2

[State 4004, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 4004]
type = DestroySelf
trigger1 =Time = 200

;-------------------------------------------------------------------------------
;Fire Blast Ground
[Statedef 4005]
type = A
movetype = A
physics = N
ctrl = 0
anim = 4005
sprpriority = 35
hitcountpersist = 1
poweradd = 40

[State 4005, AfterImage]
type = AfterImage
trigger1 = Time = 0
paladd = 500,150,0
length = 8
framegap = 4
trans = add
time = 25

[State 4005, SprPriority]
type = SprPriority
trigger1 = animtime = 0
value = 4005

[State 4005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 4005, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 4005, 4]
type = hitdef
;trigger1 = time = 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
attr = S,HA
damage = 4
scale = 1.2,1.5
getpower = 5
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 5,3
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = high
ground.slidetime = 4
ground.velocity = -7
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -7,1
air.juggle = 5
fall.animtype = Hard
fall = 0
palfx.time = 40
palfx.add = 100,-50,-200
palfx.mul = 255,200,100
palfx.sinadd = 50,10,0,15
palfx.invertall = 1
palfx.color = 25
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 4005, 4]
type = hitdef
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 13
trigger4 = AnimElem = 14
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
trigger7 = AnimElem = 17
trigger8 = AnimElem = 18
trigger9 = AnimElem = 19
trigger10 = AnimElem = 20
attr = S,HA
damage = 20,3
scale = 1,1
getpower = 5
animtype  = Hard
givepower = 25
hitflag = MAF
guardflag = MA
pausetime = 2,1
sparkno = S8002
guard.sparkno = S8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = high
ground.slidetime = 4
ground.velocity = -10
airguard.velocity = -5
guard.velocity = -5
air.type = Low
air.velocity = -10,1
air.juggle = 5
fall.animtype = Hard
fall = 1
palfx.time = 40
palfx.add = 100,-50,-200
palfx.mul = 255,200,100
palfx.sinadd = 50,10,0,15
palfx.invertall = 1
palfx.color = 25
EnvShake.time       = 40
EnvShake.freq       = 60
EnvShake.ampl       = -2

[State 4005, 7]
type = DestroySelf
trigger1 = Animelem = 27
; END
