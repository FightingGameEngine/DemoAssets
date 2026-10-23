;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------
;Hyper Blast

[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1400,4
volume = 200
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S10,14
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S10,6
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S10,9
volume = 100
channel = -1
freqmul = 1.0
loop = 0
pan = 0


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
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

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 1102
sprpriority = 3
postype = p1
pos = -30,-60
bindtime = -1
ownpal = 1
id = 1200
name = "shield burst"
persistent = 0

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1102
sprpriority = 3
postype = p1
pos = 30,-60
bindtime = -1
ownpal = 1
id = 1200
name = "shield burst"
persistent = 0

[State 3000, superbg RemoveExplod 1.2]
type = RemoveExplod
trigger1 = time > 300 ;time BG remains on screen
id =10010

[state 3000,pro]                          ;'
type = projectile                            ;'
trigger1 = animelem = 8
projid = 3001
projanim = 3001
projhitanim = 3002
projremanim = 3002
offset = 0,-100
projremovetime = 80
projhits = 44
projmisstime = 5
postype = p1
damage = 10,1
attr = C, NP
hitflag = MAF
guardflag = MA
animtype = heavy
fall.animtype = back
air.animtype = back
pausetime = 2, 2
guard.pausetime = 6, 6
sparkno = -1
sparkxy = -10,-68
hitsound = 5,4
guardsound = 6,0
ground.type = high
air.type = low
ground.slidetime = 8
guard.slidetime = 18
ground.hittime = 18
guard.hittime = 23
air.hittime = 23
ground.velocity = -1
air.velocity = -2, -2
getpower = 20
givepower = 0

[State 3000, EnvColor]
type = EnvColor
trigger1 = AnimElem = 4
value = 255,255,255
time = 2
under = 1
;ignorehitpause =
;persistent =

[State 3000, PalFX]
type = PalFX
trigger1 = AnimElem = 5
trigger2 = Time % 4 = 0
time = 2
add = 150,200,255
mul = 156,206,256
sinadd = 150,200,100,200
invertall = 1
color = 256

[State 3000, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 50
ctrl = 1



;---------------------------------------------------------------------------
; Hyper 2 Forcefield
;---------------------------------------------------------------------------
;Forcefield

[Statedef 3200]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 20
anim = 3200
ctrl = 0
sprpriority = 2

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

[State 3200, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 3200


[State 3200, Helper]
type = Helper
trigger1 = Animelem = 9
helpertype = player
name = "shielddash"
ID = 4003
stateno = 4003
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
;supermovetime = 500
;pausemovetime = 0


[State 3200, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 400
stateno = 4004


[State 3200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 400

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S10,8
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3203, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3201
ID = 3203
pos = 0,-55
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 470
vel = 0,0
accel = 0,0
random = 0,0
removetime = 470
;supermove
;pausemove
scale = .5,.5
sprpriority = 1
ontop = 1
shadow = 0,0,100
ownpal = 0
removeongethit = 0
;ignorehitpause =
persistent = 1

[State 3203, Trans]
type = Trans
trigger1 = var(26) > 0
trans =add;none, add, addalpha, add1, sub
;alpha = 256,256
;ignorehitpause =
;persistent =

[State 3200, VarSet]
type = VarSet
trigger1 = animelem = 4
v = 26    ;fv = 10
value = 400
;ignorehitpause =
;persistent =


[State 3200, End]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1


[Statedef 3203]
type    = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3202
ctrl = 0
sprpriority = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime=400
;ignorehitpause =
;persistent =

[Statedef 3204]
type    = A
movetype= I
physics = N

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time =400
;ignorehitpause =
;persistent =


;---------------------------------------------------------------------------
; Hyper 3 hyper combo
;---------------------------------------------------------------------------
[Statedef 3100]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 2

[State 3100, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 52
value = S800,10
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0


[State 3100, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000

[State 3100, Hyper Dust]
type = Explod
trigger1 = animelem = 1
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

[State 3100, VelSet]
type = VelSet
trigger1 = Time >= 1
x = 10


[State 3100, HitDef]
type = HitDef
trigger1 = animelem = 11
trigger2 = animelem = 18
trigger3 = animelem = 26
trigger4 = animelem = 34
trigger5 = animelem = 39
trigger6 = animelem = 40
trigger7 = animelem = 46
trigger8 = animelem = 48
trigger9 = animelem = 54
trigger10 = animelem = 58
trigger11 = animelem = 62
trigger12 = animelem = 63
trigger13 = animelem = 67
attr = S, HA
animtype  = Hard
damage    = 25,0
hitflag = MA
priority = 6, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8022
getpower = 0,0
givepower = 0,0
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

[State 3101, next]
type = changestate
trigger1 = animelem = 70
value = 3130
ctrl = 0

;; === Finishing Strike ===
[Statedef 3130]
type    = S
movetype= A
physics = S
anim = 3130
ctrl = 0
velset = 0,0



[State 3130, hitdef2]
type = HitDef
trigger1 = animelem = 4
attr = S, HA
forcestand = 1
animtype  = back;DiagUp
damage    = 100
getpower = 0,0
givepower = 0,0
priority = 6, Hit
guardflag = MA
pausetime = 40,40
sparkno =  s8222
sparkxy = -30,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S8000,6
ground.type = Low
fall = 1
air.fall = 1
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -10,-10
fall.recover = 0
envshake.time = 35
envshake.freq = 60
envshake.ampl = -10
envshake.phase = -90


[State 3130, SuperPause]
type = SuperPause
trigger1 =  animelem = 1
time = 10
sound = S180,0
anim = -1

[State 3130, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000, 3

[state 3130,end]  ;End of Hyper I
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------

;------------------------------------------------------------------------

[Statedef 3150]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3150
ctrl = 0
sprpriority = 2

[State 100, 5]
type = PlaySnd
trigger1 = AnimElem = 1
channel = 2
value = 3150,0

[State 3000, Explod]
type = Explod
trigger1 = animelem = 1
anim = 7023
ID = 7023
pos = -40,20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = .9,.9
sprpriority = 0
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
supermovetime = 9999
pausemovetime =  9999

[State 3000]
type = Helper
trigger1 = animelem = 1
stateno = 33110
id = 33110
supermovetime = 9999
pausemovetime = 9999
pos = 22,-97
ownpal = 1

[State 3000]
type = Helper
trigger1 = animelem = 1
stateno = 33117
supermovetime = 9999
pausemovetime = 9999
pos = 0,-200
ownpal = 1
postype = back
size.xscale = 1
size.yscale = 1


[State 3000, SuperPause]
type = SuperPause
trigger1 = Animelem = 1
Time = 60
poweradd = -1000
movetime = 4
darken = 0

[State 3001]
type = Helper
trigger1 = animelem=3
stateno = 33120
ownpal = 1


[State 3150, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3160
p2stateno = 3170
fall = 1



[State 3000, End]
type = ChangeState
trigger1 = animtime=0
;trigger1 = BackEdgeBodyDist > -1
value = 0
ctrl = 1



;--------------------------------------------------------------------
[Statedef 3160]
type = S
movetype= A
physics = N
anim = 3151
poweradd = 60

[State 3001]
type = Helper
trigger1 = animelem=1
stateno = 33120
ownpal = 1


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State 3160, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 184, -59
[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 211, -100

[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 3
pos =190, -134

[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 4
pos =110, -158

[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 5
pos =27, -190

[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 6
pos =1, -205

[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 7
pos =31, -229

[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 8
pos =124, -173

[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 9
pos =236, -169

[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 10
pos =241, -163


[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 11
pos = 262, -152


[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 12
pos =299, -120


[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 13
pos =359, -84

[State 3160, Bind 2]
type = TargetBind
trigger1 = AnimElem = 14
pos =418, -26



[State 3160, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 14
value = -200

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 14
time = 60
freq = 90
ampl = -4
phase = 90
;ignorehitpause =
;persistent =


[State 3160, Throw]
type = TargetState
trigger1 = AnimElem = 14
value = 3171

[State 3160, State End]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = BackEdgeBodyDist > -1
value = 0
ctrl = 1

[State 1100, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist < -1
value = 3165
ctrl = 1

[Statedef 3165]
type = S
physics = S
anim = 100

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause =
;persistent =

[State 3165, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 3165, assert]
type = AssertSpecial
trigger1 = 1
flag = nowalk

[State 3165, 2]
type = ChangeState
trigger1 = BackEdgeBodyDist > 30
value = 0
;----------------------------------------------------------------------
[Statedef 3170]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3170, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3152

;----------------------------------------------------------------------
[Statedef 3171]
type = A
movetype = H
physics = N
velset = -5,5
poweradd = 40

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3171, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 3171, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 3171, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 3171, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
;Invisible Perminent = Transperency
;---------------------------------------------------------------------------
[Statedef 2100]
type = S
movetype = I
physics = S
anim = 180
ctrl = 0

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1700,0
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -3000

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
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

[State 2100, VarSet]
type = VarSet
trigger1 = AnimTime = 0
v = 25
value = 1

[State 2100, Invisibility Effect]
type = AfterImage
trigger1 = var(0) = 1
time = 375
length = 375
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S900,2
;volume = -40
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 2100, 6]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,1


[State 2100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Visible
;---------------------------------------------------------------------------
[Statedef 2101]
type = S
movetype = I
physics = S
anim = 178
ctrl = 0



[State 2101, VarSet]
type = VarSet
trigger1 = AnimTime = 0
v = 25
value = 0


[State 2101, Invisibility Effect]
type = AfterImage
trigger1 = time = 0
time = 37
length = 37
palcolor = 0
palinvertall = 1
timegap = 1
framegap = 1
trans = add

[State 2101, 6]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,1


[State 2101, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; END
