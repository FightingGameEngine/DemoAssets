;-------------------------------------------------------------------------------
; Basics CNS File
;-------------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Air Attack Falling
;---------------------------------------------------------------------------
[Statedef 70]
type    = A
movetype= I
physics = A
anim = 70
sprpriority = 1
ctrl = 1

[State 70, 1]
type = Turn
trigger1 = P2Dist X < -5

[State 70, 2]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 70, End]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;---------------------------------------------------------------------------
; Run Forward
;---------------------------------------------------------------------------
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100, 1]
type = AfterImage
trigger1 = time = 0 
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= 0, 0, 0
palcontrast 	= 100,50,150
trans 		= add

[State 100, snd]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0

[State 0, Dust]
type = Explod
trigger1 = Time%12=0
anim = 104
ID = 104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Dust]
type = Explod
trigger1 = Time%4=0
anim = 102
ID = 102
pos = -20,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 100, 4]
type = PlaySnd
trigger1 = animelem = 1
value = 30,1

[State 100, propulsor]
type = Explod
trigger1 = animelem = 1
anim = 7701
id = 7701
postype = P1
pos = -4,-20
ownpal = 1
sprpriority = -6
facing = 1
removeongethit = 1
bindtime = -1
removetime = 20

[State 100, propulsor]
type = Explod
trigger1 = animelem = 1
anim = 7701
id = 7701
postype = P1
pos = -40,-16
ownpal = 1
sprpriority = -6
facing = 1
removeongethit = 1
bindtime = -1
removetime = 20

[State 100, 2]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 3] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 4] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, End]
type = ChangeState
trigger1 = time= 20
value = 0

;---------------------------------------------------------------------------
; Jump Backwards
;---------------------------------------------------------------------------
[Statedef 105]
type    = S
physics = S
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = AfterImage
trigger1 = time = 0 
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 105, snd]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0

[State 0, Dust]
type = Explod
trigger1 = Time%12=0
anim = 7816
ID = 7816
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Dust]
type = Explod
trigger1 = Time%4=0
anim = 102
ID = 102
pos = -20,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 100, 4]
type = PlaySnd
trigger1 = animelem = 1
value = 30,1

[State 100, propulsor]
type = Explod
trigger1 = animelem = 1
anim = 7701
id = 7702
postype = P1
pos = -15,-60
ownpal = -1
sprpriority = -6
facing = -1
removeongethit = 1
bindtime = -1
removetime = 20

[State 100, propulsor]
type = Explod
trigger1 = animelem = 1
anim = 7701
id = 7702
postype = P1
pos = 0,-76
ownpal = 1
sprpriority = -6
facing = -1
removeongethit = 1
bindtime = -1
removetime = 20

[State 105, 2]
type = VelSet
trigger1 = Time > 4
x = const(velocity.run.back.x)

[State 105, 3] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 105, 4] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[State 105, End]
type = ChangeState
trigger1 = time= 20
value = 106
;---------------------------------------------------------------------------
; Run Backwards 2 (land)
;---------------------------------------------------------------------------
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 47

[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, End]
type = ChangeState
trigger1 = Time = 10
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Air Dash Forward
;---------------------------------------------------------------------------
[Statedef 107]
type    = A
physics = N
anim = 107
sprpriority = 1
velset = 0,0

[State 107, 1]
type = AfterImage
trigger1 = time = 0 
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 100, 4]
type = PlaySnd
trigger1 = animelem = 1
value = 30,1

[State 100, propulsor]
type = Explod
trigger1 = time = 0
anim = 77701
id = 7703
postype = P1
pos = -45,-28
ownpal = -1
sprpriority = -6
facing = 1
removeongethit = 1
bindtime = -1
removetime = 20

[State 100, propulsor]
type = Explod
trigger1 = time = 0
anim =77701
id = 7703
postype = P1
pos = -25,-30
ownpal = 1
sprpriority = -6
facing = 1
removeongethit = 1
bindtime = -1
removetime = 20


[State 107, 2]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 107, 3] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 107, 4] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 107, 2]
type = VelSet
trigger1 = animtime=0
x = 0

[State 107, End]
type = ChangeState
trigger1 =time=28
value = 50

;---------------------------------------------------------------------------
; Air Dash Back
;---------------------------------------------------------------------------
[Statedef 108]
type    = A
physics = N
anim = 108
sprpriority = 1
velset = 0,0


[State 108, 1]
type = AfterImage
trigger1 = time = 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 100, 4]
type = PlaySnd
trigger1 = time =0
value = 30,1

[State 100, propulsor]
type = Explod
trigger1 = time = 0
anim = 77701
id = 7704
postype = P1
pos = 25,-30
ownpal = -1
sprpriority = -6
facing = -1
removeongethit = 1
bindtime = -1
removetime = 20

[State 100, propulsor]
type = Explod
trigger1 = time = 0
anim =77701
id = 7704
postype = P1
pos = 5,-30
ownpal = 1
sprpriority = -6
facing = -1
removeongethit = 1
bindtime = -1
removetime = 20

[State 108, 2]
type = VelSet
trigger1 = 1
x = const(velocity.run.back.x)

[State 108, 3] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 108, 4] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[State 107, 2]
type = VelSet
trigger1 = animtime=0
x = 0

[State 108, End]
type = ChangeState
trigger1 = time=28
value = 50


;-------------------------------------------------------------------------------
; Lose by Time Over
;-------------------------------------------------------------------------------
[Statedef 170]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 170]
type = PosSet
trigger1 = Time = 0
y = 0

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA

;-------------------------------------------------------------------------------
; DRAWGAME (Time over)
;-------------------------------------------------------------------------------
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;-------------------------------------------------------------------------------
; Win state decider
;-------------------------------------------------------------------------------
[Statedef 180]
type = S
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,100


[State 180, 2]
type = ChangeState
trigger1 = Var(1) = [0,32]
value = 181

[State 180, 3]
type = ChangeState
trigger1 = Var(1) = [33,65]
value = 182
;
[State 180, 4]
type = ChangeState
trigger1 = Var(1) = [66,100]
value = 183

;-------------------------------------------------------------------------------
; Win pose 1 - Win KO
;-------------------------------------------------------------------------------
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = -4

[State 188, Shock wave]
type = Explod
trigger1 = animelem = 4
anim = 7700
pos = 14,0
postype = p1
sprpriority = 5
bindtime = 1
removetime = 999
scale = 1,1
ontop = 1

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =4
value = 192,15

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 192,14

[State 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover

;-------------------------------------------------------------------------------
; Win pose 2- Win KO
;-------------------------------------------------------------------------------
;heroe

[Statedef 182]
type = S
ctrl = 0
physics = N
anim = 182
sprpriority = -4
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 =time =0
value = 192,13

[State 188, Shock wave]
type = Explod
trigger1 = time = 0
anim = 8100
pos = 10,-75
postype = p1
sprpriority = 5
bindtime = 1
removetime = 999
scale = 1,1
ontop = 1

[State 172, bgpalfx]
type = bgpalfx
trigger1 = time = 0
invertall = 1
add = -100,-100,-100
color = 0
time = 999

[State 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182]
type = varset
trigger1 = Time = 0
var(1) = random%2

[State 182]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover
;-------------------------------------------------------------------------------
; Win pose 2 - Win KO
;-------------------------------------------------------------------------------
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0
sprpriority = -4

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 190,3

[State 1007, Ground FX]
type = Explod
trigger1 = AnimElem = 3
anim = 8170
pos = 0,0
sprpriority = -8
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = 1,1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 45, 2];boost
type = Explod
trigger1 = time=24
ID = 9741
Anim = 741
Pos = -20, -52
sprpriority = -4
removetime = -1
removeongethit=1
Bindtime = -1
ownpal=1

[State 45, 2];boost
type = Explod
trigger1 = time=24
ID = 9741
Anim = 741
Pos = -14, -64
sprpriority = -4
removetime = -1
removeongethit=1
Bindtime = -1
ownpal=1

[State 0, VelSet]
type = VelSet
trigger1 = animelem =10
y = -5

[State 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181]
type = AssertSpecial
trigger1 = Time < 0
flag = roundnotover

;-------------------------------------------------------------------------------
; Win pose 3 - Time Over
;-------------------------------------------------------------------------------
[Statedef 189]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = -4

[State 189]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay


[State 189]
type = PlaySnd
trigger1 = time = 0
value = 192,13

[State 189]
type = AssertSpecial
trigger1 = Time < 90
flag = roundnotover

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Intro
;---------------------------------------------------------------------------
[Statedef 190]  ; intro selector
type = S

[State 190, 0]
type = ChangeState
trigger1 = p2name = "Ironman"
trigger2 = p2name = "ironman"
value = 192

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,100

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,32]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [33,65]
value = 192

[State 190, 4]
type = ChangeState
trigger1 = Var(1) = [66,100]
value = 193

;---------------------------------------------------------------------------
; Introduction ;recarga
;---------------------------------------------------------------------------
[Statedef 191]
type = S
anim = 191
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[state 183, A3]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay


[State 0,PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 2
value = 190,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 188, Fire]
type = Explod
trigger1 = time = 50
anim = 4000
pos =  40,-80
scale = .8,.8
removetime = 40
postype = p1
sprpriority = 5
bindtime = 1

[State 0,PlaySnd]
type = PlaySnd
trigger1 =  time = 50
value = 190,16
channel=6

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animtime =0
value = 0
;-------------------------------------------------------------------

;hombre de hierro
[Statedef 192]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 190,1

[State 191, Helper]
type = Helper
triggerall = p2name != "Ironman DCvsM"
triggerall = p2name != "ironman"
trigger1 = time =0
name = "ironman"
ID = 191
stateno = 1193
pos = -50,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
size.xscale = 1
size.yscale = 1

[State 188, Fire]
type = Explod
trigger1 = !Time
anim = 7001
pos =  0,0
postype = p1
sprpriority = 5
bindtime = 1
removetime=110

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem=14
value = S3041,0
channel = 6


[State 192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 192, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;--------------------------------------------------------------
;ironman
[Statedef 1193]
type = S
ctrl = 0
anim = 7000

[State 1193, VelAdd]
type = VelAdd
trigger1 = animelem = 20
y = -5

[State 1193, VelAdd]
type = VelAdd
trigger1 = animelem = 25
y = -15

[State 1007, Ground FX]
type = Explod
trigger1 = AnimElem = 3
anim = 8170
pos = 50,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = .3,.3
facing = 1
ownpal = 1
ignorehitpause = 1

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9999,5

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 9999,7


[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 30,1
channel=5

[State 1193, SprPriority]
type = SprPriority
trigger1 = time = 0
value = -999

[State 1193, end]
type = DestroySelf
trigger1 = animelem = 25

;-------------------------------------------------------------------
;rebirth Intro

[Statedef 193]
type = S
anim = 192
velset = 0,0

[State 193, Helper]
type = Helper
trigger1 = AnimElem = 1
name = "m2"
ID = 1198
stateno = 1198
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 190,2

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, sand]
type = Explod
trigger1 = AnimElem = 8
anim = 8170
pos = 0,0
sprpriority = 999
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1


[State 193, 3] ;Change to stand state when done
type = ChangeState
trigger1 = animTime = 0
value = 0
;-----------------------------------------------------------------
;m2
[Statedef 1198]
type = S
ctrl = 0
velset = 0,0
anim = 193

[State 0,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 190,3

[State 1194, SprPriority]
type = SprPriority
trigger1 = time = 0
value = -2

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 11193 
ID = 11193
pos = 0,0
postype = p1 
facing = 1
bindtime = -1
removetime = 121
scale = 1,1
sprpriority = -1


[State 1194, end]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
; Taunt
;---------------------------------------------------------------------------
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 194,PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 190,0



[State 195, End]
type = ChangeState
trigger1 = Time =33
value = 0
ctrl = 1

;--------------------------------------------------------------
;trueno
[Statedef 1302]
type = S
ctrl = 0
anim = 7009

[State 1223,0]
type = PalFX
trigger1 = palno = 2
time = 1
add = -10,-50,250
mul = 120,224,150
sinadd = 85,55,110,10
time = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 190,9

[State 1195, SprPriority]
type = SprPriority
trigger1 = time = 0
value = 4

[State 1195, end]
type = DestroySelf
trigger1 = time = 20

;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 4
value = 8400, 0

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,0

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 6,8
sparkno = s8002
sparkxy = -20,-80
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = -2,-3
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 210
poweradd = 40
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -20,-80
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.velocity = -3,-6
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
;---------------------------------------------------------------------------
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220
poweradd = 60
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 5
value = 8400, 2


[State 0, Explod]
type = Explod
triggerall= !NumExplod(11220)
trigger1 = animelem=3
anim = 11220
ID = 11220
pos =25,10
postype = p1
facing = 1
bindtime = -1
removetime = 11
scale = 1,1
sprpriority = -4
ownpal = 1
removeongethit = 1

[State 220, 1]
type = PlaySnd
trigger1=animelem=3
value = 30, 1
channel=4


[State 440, vel]
type=velset
trigger1=animelem=3
x=12

[State 440, sts]
type=statetypeset
trigger1=animelemtime(3)>=0
statetype=S
physics=S

[State 440, push]
type=playerpush
trigger1=animelemtime(3)>=0&&animelemtime(8)<0&&movehit
value=0
ignorehitpause=1

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 4,12
sparkxy = -20,-76
guard.sparkno = S8100
sparkno = s8022
hitsound = s8000,2
guardsound = S8500,0
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -7             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12

[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230
poweradd = 20
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,3

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 3

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 6,8
sparkno = s8002
sparkxy = -20,0
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S8500,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
airguard.velocity = -10,-.8
air.type = high
air.velocity = -4,-3
air.hittime = 15
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 230, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240
poweradd = 40
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,4

[State 240, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 4

[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,10
sparkno = s8022
sparkxy = -10,-75
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim=250
poweradd= 60
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,5

[State 250, 1]
type = PlaySnd
trigger1 = Time = 5
value = 8400, 5

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,12
sparkno = s8022
sparkxy = -10,-50
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 250, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,0

[State 400, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -18,-60
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
poweradd = 40
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,1

[State 410, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -25,-60
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = 60
SprPriority = -5

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 9
value = 8400, 2

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 2
anim = 7712
pos = 30,10
sprpriority = 5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
scale = 1,.7
facing = 1
ownpal = 1
ignorehitpause = 1

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype  = DiagUp
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 15
sparkno = s8222
sparkxy = -15,-90
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = 0 ,-12.2
guard.velocity = -10
air.type = low
air.velocity = 0,-16
yaccel = 0.66
ground.cornerpush.veloff = -6
p2stateno = 226
p2facing = 1
envshake.time = 7
envshake.ampl = 4

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Launcher - (hit state 1)
[Statedef 226]
type    = S
movetype= H
physics = N
velset = 0,0

[State 226, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 0
value = 5012

[State 226, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = A

[State 226, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 227

;---------------------------------------------------------------------------
; Launcher - (hit state 2)
[Statedef 227]
type    = A
movetype= H
physics = N
ctrl = 0

[State 227, Gravity]
type = VelAdd
trigger1 = Time > 0
y = 0.65

[State 227, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0
y = -16

[State 227, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = ifelse(AnimExist(5051),5051,5050)

[State 227, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 26 && AnimExist(5061)
value = 5061

[State 227, SelfState]
type = SelfState
trigger1 = Time = 35
value = 5040

;---------------------------------------------------------------------------
; Crouching Light Kick
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 430
poweradd = 20
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,3

[State 430, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 3

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
hitflag = MAF
guardflag = MA
priority = 2, Hit
pausetime = 6,8
sparkno = s8002
sparkxy = -20,0
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 430, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 440
poweradd = 40
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,4

[State 440, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 4

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 8,10
sparkno = s8022
sparkxy = 0,-05
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 450
poweradd = 60
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,5

[State 450, 1]
type = PlaySnd
trigger1 = Time = 4
value = 8400, 5

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = Heavy
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,12
sparkno = s8222
sparkxy = 0,-90
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = low;trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -10,0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 450, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,0

[State 600, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime =6,8
sparkno = s8002
sparkxy = -20,-100
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 1901
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1



;---------------------------------------------------------------------------
; Jumping Medium Punch
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 40
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,1

[State 610, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 1

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,10
sparkno = s8022
sparkxy = -20,-110
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 1901
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1


;---------------------------------------------------------------------------
; Jumping Strong Punch
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
poweradd=60
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 9
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,12
sparkno = s8222
sparkxy = -20,-45
guard.sparkno = S8100
hitsound = s190,10
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -7,17
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 620, xplod]
type = explod
triggerall = !NumExplod(1750)
trigger1 = time = 7
ID = 1750
anim =1750
postype = P1
pos = 0,0
ownpal = 1
removetime = 12
removeongethit =1
bindtime= -1
sprpriority = 6
facing = 1

[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 1901
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1


;---------------------------------------------------------------------------
; Jumping Light Kick
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
poweradd = 20
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,3

[State 630, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8400, 3

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 6,8
sparkno = s8002
sparkxy = 0,-75
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 1901
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1


;---------------------------------------------------------------------------
; Jumping Medium Kick
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
poweradd = 40
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,4

[State 640, 1]
type = PlaySnd
trigger1 = Time = 3
value = 8400, 4

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(38 + var(41)/(1+(Var(19)/5.0))), 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,10
sparkno = s8022
sparkxy = -20,-25
guard.sparkno = S8100
hitsound = s8000,1
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 1901
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Strong Kick
;---------------------------------------------------------------------------
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
poweradd=60
sprpriority = 2

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && random <= 500
value = S5,5

[State 650, 1]
type = PlaySnd
trigger1 = Time = 5
value = 8400, 5

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,12
sparkno = s8222
sparkxy = -10,-20
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 1901
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1


;---------------------------------------------------------------------------
;Throw Beam / Forward + Y/Z
;---------------------------------------------------------------------------
[Statedef 800]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 2, miss
sparkno = -1
hitsound = S1, 1
priority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall = 1
[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 810]
type = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60, 0
[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50, 0

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 40, 0


[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 100, 4
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 4,12
sparkxy = -20,-76
guard.sparkno = S8100
sparkno = s8022
hitsound = s8000,2
guardsound = S8500,0
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -7,-6             
air.velocity = -7,-6   
airguard.velocity = -1.9,-.8     
air.type = High           
air.hittime = 12

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------
[Statedef 820]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;----------------------------------------------------------------------
;In case attacker loses binding on player for any reason, this controller
;guarantees that the player will never get stuck in this thrown state.
[State 820, 6]
type = SelfState
trigger1 = time > 47
trigger1 = !gethitvar(isbound)
value = 5050

[State 820, 7]
type = SelfState
trigger1 = animtime = 0
value = 5050
ctrl = 0

;---------------------------------------------------------------------------
; Liedown Roll Forward 
;---------------------------------------------------------------------------
[Statedef 8300]
type    = C       ;It's a crouching type move
movetype= I       ;The character is 'idle' while doing the recovery roll
physics = N
poweradd= 0
velset = 5,0      ;Just change the vel x to -8 if you want to roll backwards
ctrl = 0
anim = 9300
sprpriority = -1

[State 8300, PlayerPush] ;So you can roll 'through' the opponent
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]   ;Stop once the recovery roll is over
type = VelSet
trigger1 = Time = 44
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999

[State 8300, NotHitBy]  ;Can't get hit while rolling
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, snd]
type = PlaySnd
trigger1 = time = 0
value = 30,1

[State 100, propulsor]
type = Explod
trigger1 = time = 0
anim = 7701
id = 771
postype = P1
pos = -4,-20
ownpal = 1
sprpriority = -6
facing = 1
removeongethit = 1
bindtime = -1
removetime = 30

[State 100, propulsor]
type = Explod
trigger1 = time = 0
anim = 7701
id = 771
postype = P1
pos = -40,-16
ownpal = 1
sprpriority = -6
facing = 1
removeongethit = 1
bindtime = -1
removetime = 30


[State 8300, ChangeState]
type = ChangeState
trigger1 = Time = 45
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Liedown Roll Backwards
;---------------------------------------------------------------------------
[Statedef 8305]
type    = C       ;It's a crouching type move
movetype= I       ;The character is 'idle' while doing the recovery roll
physics = N
poweradd= 0
velset = -5,0      ;Just change the vel x to -8 if you want to roll backwards
ctrl = 0
anim = 9300
sprpriority = -1

[State 8305, PlayerPush] ;So you can roll 'through' the opponent
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]   ;Stop once the recovery roll is over
type = VelSet
trigger1 = Time = 44
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999


[State 8305, NotHitBy]  ;Can't get hit while rolling
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, snd]
type = PlaySnd
trigger1 = time = 0
value = 30,1

[State 100, propulsor]
type = Explod
trigger1 = time = 0
anim = 7701
id = 771
postype = P1
pos = -4,-20
ownpal = 1
sprpriority = -6
facing = -1
removeongethit = 1
bindtime = -1
removetime = 30

[State 100, propulsor]
type = Explod
trigger1 = time = 0
anim = 7701
id = 771
postype = P1
pos = -40,-16
ownpal = 1
sprpriority = -6
facing = -1
removeongethit = 1
bindtime = -1
removetime = 30

[State 8305, ChangeState]
type = ChangeState
trigger1 = time =45
value = 11            ;Change to crouching state
ctrl = 1



;----------------------------------------------------------------------
;Super Armor 
;----------------------------------------------------------------------
[Statedef 8623]
type = U
movetype = H
physics = U

[State -2 , 9]
type = PlaySnd
trigger1 = time = 1
value = 4,3

[State 9001, PalFX]
type = PalFX
trigger1 = Alive
trigger1 = !Time
trigger2 = Time = 1
trigger3 = Time = 5
trigger4 = Time = 9
trigger5 = Time = 13
time = 2
add = 160,50,0
mul = 250,224,120
color = 28
ignorehitpause = 1

[State 9001, PosFreeze]
type = PosFreeze
trigger1 = Alive
trigger1 = 1
value = 1

[State 9001, CtrlSet]
type = CtrlSet
triggerall = Time < floor(gethitvar(hittime) * 0.8)
trigger1 = var(46) <= 106
trigger1 = var(46) != [1000,4999]
value = 1

[State 9001, ChangeAnim]
type = ChangeAnim
trigger1 = Time < floor(gethitvar(hittime) * 0.8)
value = Anim
elem  = AnimElemNo(3)

[State 9001, End]
type = ChangeState
trigger1 = Alive
trigger1 = Time >= floor(gethitvar(hittime) * 0.8)
;trigger1 = var(46) != [1000,4999]
value =  var(46)

[State 9001, VelSet]
type = VelSet
trigger1 = !Alive
x = gethitvar(xvel)
y = gethitvar(yvel)

[State 9001, End]
type = ChangeState
trigger1 = !Alive
value = 5050
;---------------------------------------------------------------------------
;------------------------------------------------------------------------------
; frozen by an iceball: P2 custom state, air/ground anim determiner
;  Frozen: anim 7990
;  Frozen in midair: anim 7991
[StateDef 1050]
type    = U
MoveType = H
physics = U
ctrl = 0
VelSet = 0,0

[State 1050, PalFXWiz] ;Generated by MEE PalFX Editor
type = PalFX
;triggerall = prevstateno != [1050,1060]
trigger1 = (time = 0) && (!AnimExist(7990))
time = 60
add = 0,64,128
mul = 512,512,512
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 1050, drain power]
type = PowerAdd
trigger1 = Time = 0
value = -75

[State 1050, falling (if frozen in air)]
type = ChangeState
trigger1 = pos y < 0
value = 1055

[State 1050, KOed by iceball]
type = ChangeState
trigger1 = life <= 0
value = 5050    ;1057

[State 1050, ground freeze, has anim]
type = ChangeAnim
triggerall = SelfAnimExist(7990)
trigger1 = (time = 0) && (pos y >= 0)       ; StateType != A
value = 7990

[State 1050, ground freeze, no anim]
type = ChangeAnim2
triggerall = !SelfAnimExist(7990)
trigger1 = (time = 0) && (pos y >= 0)
value = 1050

[State 1050, back to normal]
type = ChangeState
trigger1 = time = 60
;trigger2 = prevstateno != [1050,1060]
value = 1060
ctrl = 1

; Iceball: P2 custom falling state (if frozen in air)
[StateDef 1055]
type    = A
MoveType = H
physics = N
ctrl = 0
VelSet = 0,0

[State 1055, 0]
type = VelSet
trigger1 = time = 10
x = -3
y = 2

[State 1055, 1]
type = VelSet
trigger1 = time = 20
x = -3
y = 5

[State 1055, air freeze, has anim]
type = ChangeAnim
trigger1 = (time = 0) && (AnimExist(7991))
value = 7991

[State 1055, air freeze, no anim]
type = ChangeAnim2
trigger1 = (time = 0) && (!AnimExist(7991))
value = 1051

[State 1055, ice shatters when hit ground]
type = ChangeState
trigger1 = (pos y >= 10)
value = 1060


; Iceball: P2 custom falling state (if KO'ed by the ball)
[StateDef 1057]
type    = A
MoveType = H
physics = A
ctrl = 0
VelSet = -4,-3

[State 1057, air freeze, has anim]
type = ChangeAnim
trigger1 = (time = 0) && (AnimExist(7991))
value = 7991

[State 1057, air freeze, no anim]
type = ChangeAnim2
trigger1 = (time = 0) && (!AnimExist(7991))
value = 1051


; P2 custom state: coming "unfrozen"
[StateDef 1060]
type    = U
MoveType = H
physics = U
ctrl = 0
VelSet = 0,0
sprpriority = 0

[State 1060, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1060, flat on yer back]
type = SelfState
trigger1 = (time = 5) && (PrevStateNo = 1055)
value = 5100    ;0

[State 1060, back to standing]
type = SelfState
trigger1 = (time = 5) && (PrevStateNo != 1055)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hit by Fire
;---------------------------------------------------------------------------
[Statedef 7697]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = -4
y = -7

[State 7697, Burning_Anim]
type = ChangeAnim
trigger1 = AnimExist(7697)
trigger1 = Anim != 7697
value = 7697

[State 7697, Burn]
type = PalFX
trigger1 = Time = 1
time = 25
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
color = 0
invertall = 1

[State 7696, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 7696, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

; Hit by Fire 2
[Statedef 7597]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7697, 1]
type = VelSet
trigger1 = Time = 0
x = -2
y = -1

[State 7697, Burning_Anim]
type = ChangeAnim
trigger1 = AnimExist(7697)
trigger1 = Anim != 7697
value = 7697

[State 7697, Burn]
type = PalFX
trigger1 = Time = 1
time = 25
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
color = 0
invertall = 1

[State 7696, 5]
type = VelAdd
trigger1 = Time > 2
y = 0.25

[State 7696, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
