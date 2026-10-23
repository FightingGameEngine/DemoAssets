
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: AI trigger
;   2: for levelup sounds
;   3: Road Rage: nonzero value indicates that I'm holding something
;   4: intros: random intro counter / Road Rage: debris throw direction
;   5: Rage hyper: timer
; Helpers:
;   0: superjump opponent position indicator
;3010: gamma slam/gamma wave rocks
;3220: thunderclap shockwave
;8005: hyper background
; Explods:
; 621: air hard punch spark
; 918: special move dust spark
;1001: Gamma Charge spark
;5301: dizzy stars
;10000: hyper portrait
;10005: hyper portrait background
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper Attacks
;
; Hulk Smash! (D,DF,F + PP) -- 3000-3010
;   Hulk slams his fists into the ground, causing the earth to ripple in a
;    huge wave towards the enemy.
;
; Thunderclap (D,DB,B + PP) -- 3200
;
; Hulk Crush (D,DF,F + KK) -- 3400
;   Hulk superjumps off screen, grabs a passing jet, and drops it on his opponent.
;    Massive damage, monstrous lag.
;
; Tank Smash (D,DB,B + KK) -- 3600
;
; Rage (D,DB,B + P+K) -- 3800-3810
;   Hulk throws back his head and roars, then starts flashing red. While flashing,
;     all of his attacks to double damage.
;
; Amalgam Hyper (D,DF,F + HP+HK) -- 4000-4001
;   "SKULK SMASH!!!!"... 'Nuff said. XD
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0

[State 3400, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 3
sound = S10,1
pos = 20,-75
anim=-1
darken = 1
poweradd = -1000

[State 3999 ,Super BG ]
type = Helper
trigger1 = Time = 45
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ignorehitpause=1
persistent = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time = 0
time = 50
add = -300,-300,-300

; DCvM hyper portrait/BG
[State 10224, superportrait]
type = Explod
trigger1 = Time = 0
anim = 11111
ID = 11111
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

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
trigger1= animelem = 4;animelem=2 && random<700 && var(1)!=2
value=S3000,0+1*(random%4);6,0
volume = 255
;channel=0





[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = 3,1
channel=-1




[state 3000, 1]
type = Playsnd
trigger1 = animelem = 1
value =  88,13
volume = 255

[state 3000, 2]
type = Playsnd
trigger1 = animelem = 1
value =  88,14
volume = 255

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 3011
ID = 3011
pos = 105,-65
postype = p1
bindtime = 999
removetime = -1
sprpriority = 6
ownpal = 1
removeongethit = 1
scale = .5,.5

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 3011
ID = 3012
pos = 105,-70
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
trigger1 = time = [30,100]
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
damage = 4,1
pausetime = 4,4
sparkno = s3012
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
trigger1 = animelem = 14
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
trigger1 = AnimElem = 2
anim = 3480
ID = 3480
pos = -5,-50
;velocity = -10,-20
postype = p1
bindtime = 1
removetime = 60
sprpriority = 6
ownpal = 1
vel = -9,-10
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
;---------------------------------------------------------------------------
; Hulk Smash!
[StateDef 4000]
type    = S
physics = S
ctrl = 0
anim = 3005
velset = 0,0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S10,15
volume = 200
channel = 0
persistent = 0

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 4
time = 40
sound = S10,1
pos = 20,-90
darken = 1
poweradd = -1000

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitbg]
type = Explod
trigger1 = AnimElem = 4
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, EnvShake]
type = EnvShake
trigger1 = AnimElem = 10
time = 55
freq = 60
ampl = -7
phase = 90

[State 3000, Cracked Earth]
type = Explod
trigger1 = Animelem = 10
anim = 11080
postype = p1
pos = 115, 7
ownpal = 1
ontop = 0
sprpriority = -2
supermovetime = 40

[State 3300, hyperBg]
type = Helper
trigger1 = AnimElem = 10
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 3000, persistHyperBG]
type = VarSet
trigger1 = AnimElem = 10
sysvar(3) = 1

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = 9,10
volume = 100
channel = -1

[State 3000, rock]
type = Helper
trigger1 = Time > 45 && Time < 100 && TimeMod = 5,4
name = "rock"
ID = 3010
pos = -22 + ((Time / 15) * 72), 20
postype = p1
StateNo = 3010

[State 3000, screenBound]
type = ScreenBound
trigger1 = Alive
value = 0

[State 3100, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 100
ctrl = 0

;---
; Gamma Wave: helper state for rocks
[StateDef 3010]
type    = C
MoveType= A
physics = N
ctrl = 0
anim = 1510
sprpriority = 2
velset = 0,-4.8


[State 3010, PlaySnd]
type = Null ;PlaySnd
trigger1 = time = 0
value = 9,10
channel = -1

[State 3010, gravity]
trigger1 = Time % 4 = 3
type = VelAdd
y = 0.45

[State 3010, nothitby]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3010, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C,SP
damage = 25,1
givepower = 1
guardflag = MA
hitflag = MAFD
pausetime = 0,5
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-70
animtype = Heavy
ground.type = Low
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -5,-5
fall = 1
guard.velocity = -8
air.velocity = -5,-3

[State 3010, done]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
; Hyper Tornado
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 3200
poweradd = 75
sprpriority = 2

[State 1010, 1]
type = PlaySnd
trigger1 = Time = 1
value = S3200,0+1*(random%4)
volume=255

[State 3999 ,Super BG ]
type = Helper
trigger1 = Time = 45
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time = 0
time = 50
add = -300,-300,-300

; DCvM hyper portrait/BG
[State 10224, superportrait]
type = Explod
trigger1 = Time = 0
anim = 11111
ID = 11111
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3400, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 3
sound = S10,1
pos = 20,-75
anim=-1
darken = 1
poweradd = -1000

[State 3200, 3]
type = AssertSpecial
trigger1 = Time = [1, 100]
flag = nobardisplay
ignorehitpause = 1

[State 3200, 4]
type = AssertSpecial
trigger1 = Time = [1, 41]
flag = NoFG
ignorehitpause = 1

[State 3200, 5] ;Super BG (start)
type = Explod
trigger1 = Time = 1;53
persistent = 0
anim = 8910
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -5
supermovetime = -1
bindtime = -1
ownpal = 1

[State 3200, 6]
type = PlaySnd
trigger1 = Time = 1
value = 30, 1

[State 3200, 7] ;Super Portrait
type = Explod
trigger1 = Time = 4
persistent = 0
anim = 8890
postype = left
pos = ifelse(facing = 1, 0, 319), 0 ;0, 0
facing = facing
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
supermovetime = -1
bindtime = -1
ownpal = 1

[State 3200, 8]
type = AfterImage
trigger1 = Time = 0
length = 15
FrameGap = 5;3
Trans = Add1
time = 60

[State 3200, 14]
type = HitBy
trigger1 = 1
value = SCA, HA,NP,SP,HP

[State 3200, 15]
type = VelSet
trigger1 = Time = [42, 53] ;[46, 53]
x = 10



[State 0, VelSet]
type = VelSet
trigger1 = time = 55
x = 0
y = 0



[State 3200, 16]
type = VarSet
trigger1 = 1
v = 17
value = 2

[State 3200, 17]
type = PlaySnd
trigger1 = Time = 3;0;1
value = 5, 5
channel = 0

[State 3200, 18]
type = PlaySnd
trigger1 = Time = 53;48;42
value = 2, 4
channel = 0

[State 3200, 19]
type = PlaySnd
trigger1 = Time = 50;9
value = 10, 2
ignorehitpause = 1

[State 890]
type = HitDef
Trigger1 = AnimElem = 2
attr = S, ST
getpower  = 50
givepower = 40
hitflag = M-
priority = 1, Miss
pausetime = 4,15
sparkno = -1
guard.sparkno = S7047
sparkxy = -35,-90
p2facing = 1
p1stateno =3202
hitsound = s3,1
guardsound = s3,0
fall = 1
kill = 0

[State 3200, 20]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201

;---------------------------------------------------------------------------
; Hyper Tornado - miss (STATE DESATIVED)
[Statedef 3201]
type    = S
physics = S
ctrl = 0
anim = 3201

[State 3201, 1] ;brake
type = VelMul
trigger1 = AnimElem = 1
x = .01

[State 3201, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3201, 4]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 3201, 5]
type = VarSet
trigger1 = 1
v = 17
value = 2

[State 3201, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 12;0
ctrl = 1



;---------------------------------------------------------------------------
; Hyper Tornado - attack
[Statedef 3202]
type    = S
movetype= A
physics = N
anim = 3204
poweradd = 60
sprpriority = 2


[State 3202, 8]
type = AfterImage
trigger1 = Time = 0
length = 15
FrameGap = 5;3
Trans = Add1
time = 160



[State 3202, 2] ;P2 Hit Ground Spark (front)
type = Explod
trigger1 = !time
ID = 3203
anim = 3203
postype = p1
pos = 0, 0
bindtime=-1
sprpriority = -1
ownpal = 1
ignorehitpause = 1 

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelem=23
id = 3203
ignorehitpause = 1 



[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 8, 12
guard.sparkno = S8200
sparkno = -1
sparkxy = -15, -70
hitsound   = S1000,20
guardsound = S4,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = 0
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-1
air.hittime = 50
p2stateno = 2531
palfx.time = 30
palfx.mul = 240,220,128
palfx.sinadd = 32,128,190,16
palfx.add = 190,180,84

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
trigger8 = AnimElem = 19
attr = S, HA
damage = 30, 3
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 8, 12
guard.sparkno = S8200
sparkno = -1
sparkxy = 10, -70
hitsound   = S1000,20
guardsound = S4,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = 0
airguard.velocity = -1.9,8
air.type = High
air.velocity = -2,-1
air.hittime = 50
p2stateno = 2531
palfx.time = 30
palfx.mul = 240,220,128
palfx.sinadd = 32,128,190,16
palfx.add = 190,180,84

[State 3202, 2]
type = HitDef
trigger1 = AnimElem = 22
attr = S, HA
damage = 40, 10
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 3, 8
guard.sparkno = S8200
sparkno = -1
hitsound   = S1000,20
guardsound = S4,0
guardsound = S16, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 50
ground.velocity = 0
airguard.velocity = -1.9,8
air.type = High
air.velocity = -1,-1
air.hittime = 50
p2stateno = 2531
palfx.time = 30
palfx.mul = 240,220,128
palfx.sinadd = 32,128,190,16
palfx.add = 190,180,84

[State 3202, 2] ;P2 Hit Ground Spark (front)
type = Explod
triggerall = MoveHit
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
trigger8 = AnimElem = 19
persistent = 0
ID = 8400
anim = 8400
postype = p2
pos = -4, -3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1

[State 3202, 3] ;P2 Hit Ground Spark (back)
type = Explod
triggerall = MoveHit
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
trigger8 = AnimElem = 19
persistent = 0
ID = 8401
anim = 8401
postype = p2
pos = -4, -3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 3
ownpal = 1

[State 3202, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 20003
ID = 20003
pos = 0, 0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3202, Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
trigger8 = AnimElem = 19
anim = 20003
ID = 20003
pos = 0, 0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = movehit
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
trigger8 = AnimElem = 19
trigger9 = AnimElem = 22
value = S1000,20
volume = 255
channel = -1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
trigger8 = AnimElem = 19
trigger9 = AnimElem = 22
anim = 11080
ID = 11080
pos = 38,5
postype = P1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -50
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 23 
value = 3203
ctrl = 0

; Dash backward (overrides backward run)
[Statedef 3203]
type    = A
physics = N
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = -20
y = const(velocity.run.back.y)

[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 5
value = 0
ctrl = 1
;anim =
;ignorehitpause = 
;persistent = 


;Victum gets stomped on!
[Statedef 2531]
type    = L                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                   ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)



[State 2531, 1]
type = PosSet
trigger1 = Time = 0
trigger2 = Time = 20
y = 0

[State 2531, 2]
type = ChangeAnim2
trigger1 = time = 0
value = 2540

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 60
add = 190,180,84
mul = 240,220,128
sinadd = 32,128,190,16
invertall = 0
color = 256

[State 2531, 5]
type = SelfState
trigger1 = time = 60
trigger1 = alive
value = 5120

[State 2531, 6]
type = SelfState
trigger1 = time = 61
value = 5150

; End of Thunderclap hyper
[StateDef 3210]
type    = A
movetype = I
physics = S
ctrl = 0
anim = 0
velset = 0,0

[State 3210, screenBound]
type = ScreenBound
trigger1 = Alive
value = 0

[State 3210, ChangeState]
type = ChangeState
trigger1 = NumHelper(3220) = 0
value = 100
ctrl = 1

; Thunderclap shockwave effect
[StateDef 3220]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3220

[State 3220, BindToParent]
type = BindToParent
trigger1 = parent,anim=[3200,3210]
time = 1
pos = 0,0

[State 3220, persistHyperBG]
type = VarSet
trigger1 = IsHelper
sysvar(3) = 1

[State 3220, screenBound]
type = ScreenBound
trigger1 = IsHelper
value = 1
movecamera = 1,0

[State 3220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = DiagUp
priority = 7,Hit
damage = 200,0
pausetime = 0,0
;hitsound = S2,2
;guardsound = S3,0
sparkno = -1 ;S9992
;sparkxy = 0,-120
ground.type = High
;p2stateno = 3250
;kill = 1
;;numhits = 1
;palfx.time = 0
;;palfx.mul = 0,0,0
;;palfx.add = 0,0,0
;envshake.time = 8,2
;;envshake.freq = 0
;;envshake.ampl = 0
;;envshake.phase = 0
ground.slidetime = 10
ground.hittime  = 1
ground.velocity = -18,-8
guard.velocity = -12
air.velocity = -22,-5
fall = 1

[State 3250, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3220, nolifebars]
type = AssertSpecial
trigger1 = IsHelper
flag = nobardisplay

[State 3220, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

; Thunderclap - P2 custom hit state
[StateDef 3250]
type    = A
movetype = H
physics = N
ctrl = 0
anim = 5050
velset = -18,-6

[State 5030, 1]
type = VelAdd ;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 3250, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 3250, veladd]
type = VelAdd
trigger1 = backedgedist <= 0
x = -5
y = -5

[State 3250, hit wall]
type = SelfState
trigger1 = backedgedist <= 0
value = 5050

[State 5030, 5]
type = ChangeAnim2
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)

[State 5050, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; Hulk Crush (with a Harrier, no less!)
[StateDef 3400]
type    = S
physics = N
ctrl = 0
anim = 3400
velset = -8,-3

[State 3400, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S10,0
volume = 20
channel = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time = 0
time = 50
add = -300,-300,-300

; DCvM hyper portrait/BG
[State 10224, superportrait]
type = Explod
trigger1 = Time = 0
anim = 11111
ID = 11111
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3110, back to stance]
type = ChangeState
trigger1 = backedgebodydist <= 0
value = 3410
ctrl = 0
;---------------------------------------------------------------------------
; Hulk Crush (with a Harrier, no less!)
[StateDef 3410]
type    = S
physics = S
ctrl = 0
anim = 3410
velset = 0,0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 30
y= 0


[State 918, Explod]
type = Explod
trigger1 = !Time
anim = 918
ID = 918
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
removeongethit = 0

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S3400,0+1*(random%4)
volume = 255
channel = 2



[State 3400, PlaySnd]
type = PlaySnd
trigger1 = Time = 13
value = 8,0



[State 3400, ScreenBound]
type = ScreenBound
trigger1 = animelemtime(2)<0
value = 0
movecamera = 0,0

[State 3400, hyperBg]
type = Helper
trigger1 = Time = 13
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 5
value = 0,1

[State 100, catch]
type = PlaySnd
triggerall=  random <= 430
trigger1 = Time =0
value = 40,2 + ((Random * 2) / 1000)
channel = 0

[State 621]
type = Helper
trigger1 = AnimElem = 7
stateno = 3450
persistent = 0
pos = 45,-80


[State 3400, changestate]
type = ChangeState
trigger1 = Animelem = 7
value = 51
ctrl = 1





;-------------
; Hulk Crush - harrier helper/projectile
[StateDef 3450]
type = A
MoveType = A
physics = N
ctrl = 0
velset = 4.5,-1.5

[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 3460
time = 1
forceair = 0
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1


[State 6621]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 3450
value = 3450

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2
ignorehitpause =1

[State 200, HitDef]
type = HitDef
trigger1 = time*0.25-ceil(time*0.25)=0
attr = S, NA
hitflag = MAFD
damage = 10,1
guardflag = MA
pausetime = 0,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 3450, ChangeState]
type = ChangeState
trigger1 = pos y >0
value = 3460


;-------------
; Hulk Crush- helper/projectile explosion
[StateDef 3460]
type = A
MoveType = A
physics = N
anim = 3460
velset=0,0

[State 740, energy]
type = Explod
trigger1 = Animelem = 1
anim = 3302
sprpriority = 5
bindtime = -1
scale=1.5,1.5
removetime = 20
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3500,0
channel = 7

[State 3450, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S,HP
hitflag = MAFD
guardflag = M
animtype = hard
priority = 7,Hit
damage = 150,25
pausetime = 0,12
sparkno = -1	
sparkxy = 0,0
hitsound = S3500,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,-11
air.velocity = -5,-12
fall=1
fall.recover=0
palfx.time = 30
palfx.mul = 240,220,128
palfx.sinadd = 32,128,190,16
palfx.add = 190,180,84

[State 3460, DestroySelf]
type = DestroySelf
trigger1 = animelem = 4



;---------------------------------------------------------------------------
; Hulk Crush (with a Harrier, no less!)
[StateDef 3500]
type    = S
physics = N
movetype=A
ctrl = 0
anim = 3500
velset = 0,0

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time = 0
time = 50
add = -300,-300,-300

; DCvM hyper portrait/BG
[State 10224, superportrait]
type = Explod
trigger1 = Time = 0
anim = 11111
ID = 11111
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem=3
statetype = A

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = s10,0
channel=2


[State 3400, PlaySnd]
type = PlaySnd
trigger1 = Time = 6
value = 8,0

[State 0, VelSet]
type = VelSet
trigger1 = animelem=3
y = -20

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 0 

[State 1012]
type = PlaySnd
trigger1 = time=0
value = 3500,1+1*(random%3)

[State 3110, back to stance]
type = ChangeState
trigger1 = animelem = 5
value = 3510
ctrl = 0

;---------------------------------------------------------------------------
; Hulk Crush (with a Harrier, no less!)
[StateDef 3510]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3510
velset = 10,0

[State 0, PosAdd]
type = posset
trigger1 = !time
y= 0

[State 191, 1]
type = Posadd
trigger1 = !time
x = -100-backedgedist

[State 0, VelSet]
type = VelSet
trigger1 = time<39
trigger1 = backedgedist>50
x = 0

[State 1003]
type = Explod
Anim = 7002
trigger1 = time=[40,60]
trigger1 = !numexplod(7002)
postype = P1
pos = 35,0
bindtime = 16
removeTime = 16
sprpriority = 5
scale=2,2
ownpal = 1
ID=7002


[State 918, Explod]
type = Explod
trigger1 = Time=40
anim = 918
ID = 918
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
removeongethit = 0

[State 3400, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3400, portraitbg]
type = Explod
trigger1 = AnimElem = 3
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1





[State 3400, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3400, hyperBg]
type = Helper
trigger1 = Time = 13
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 5
value = 0,1

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3060,0

[State 0, Helper]
type = Helper
trigger1 = time=20
helpertype = normal
ID = 3511
stateno = 3511
pos = 0,0
postype = p1
facing = 1


[State 0, HitDef]
type = HitDef
trigger1 = animelem = 3
trigger1 = time >= 40
pausetime=0,4
attr = S,NA 
hitflag = MAF 
guardflag = MA 
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
animtype = medium
air.animtype = medium
damage = 10,5
pausetime = 0 ,0
ground.type = High
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
fall=1
ground.velocity = -2,-5
air.velocity = -2,-5
fall.recover=0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1


[State 0, VelSet]
type = VelSet
trigger1 = time >= 40
x = 7
y = 0

[State 0, VelSet]
type = Veladd
trigger1 = time >= 40
x = 3
y = 0



[State 3400, changestate]
type = turn
trigger1 = time = 100

[State 3400, changestate]
type = ChangeState
trigger1 = time >= 100
value = 100
ctrl = 1
;---------------------------------------------
[StateDef 3511]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3511
velset = 0,0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 2
pos = 80,-130
ignorehitpause = 1


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1,3
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 3025, Hit]
type = hitdef
trigger1 = time<=50
priority = 4, Hit
attr = S, HP
damage = 7, 1
animtype = Hard
hitflag = MAF
guardflag=MA
pausetime = 0, 4
hitsound=s2,2
sparkno = -1
sparkxy = -10, 0
guardsound = s3, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.velocity = -5, -2
fall = 0
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 6
palfx.color = 32
palfx.sinadd = 10, 30, 60, 8
palfx.mul = 128, 256, 512
palfx.time = 32
yaccel = 0.5
numhits=0
ID = 3025
forcestand = 1

[State 3025, p2state]
type = targetstate
trigger1 = movehit && numtarget(3025)
trigger1 = target(3025), gethitvar(hitcount) >= 2
trigger1 = (target(3025), stateno = 5000) || (target(3025), stateno = 5010) || (target(3025), stateno = 5020)
value = 7696
ID = 3025
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time=60

;========================< SHOCKED >=============================
[Statedef 7696]
type = U
physics = N
movetype = H
ctrl = 0
velset = 0, 0

[State 7696, sts]
type = statetypeset
trigger1 = !time
trigger1 = pos y < 0
statetype = A
[State 7696, sts]
type = statetypeset
trigger1 = !time
trigger1 = pos y >= 0
statetype = S

[State 7696, Pos]
type = posset
trigger1 = pos y >= 0
y = 0

[State 7696, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim != 7696 && selfanimexist(7696)
value = 7696

[State 7696, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim != 9010 && !selfanimexist(7696) && selfanimexist(9010)
value = 9010

[State 7696, Anim]
type = changeanim
trigger1 = !time
trigger1 = !selfanimexist(7696) && !selfanimexist(9010)
value = ifelse(statetype != A, 5002, 5030)

[State 7696, End]
type = selfstate
trigger1 = alive && time>5
value = 5000

[State 7696, End]
type = selfstate
trigger1 = !alive && time>5
value = 5030

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Rage (i.e. the madder Hulk gets...)
[StateDef 3800]
type    = S
physics = S
ctrl = 0
anim = 3800
velset = 0,0

[State 3800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S6,1
volume = 200
channel = 0
persistent = 0

[State 3800, superpause]
type = SuperPause
trigger1 = AnimElem = 3
time = 40
sound = S10,1
pos = 20,-90
darken = 1
poweradd = -1000

[State 3800, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3800, portraitbg]
type = Explod
trigger1 = AnimElem = 3
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

; Rage palfx (Generated by Fighter Factory PalFX Editor)
[State -2, PalFXWiz]
type = PalFX
trigger1 = Time = 50
time = 20
add = 80,-50,-50
mul = 256,24,24
sinadd = 80,0,0,20
invertall = 0
color = 0

[State 3800, ChangeState]
type = ChangeState
trigger1 = Time = 60
value = 3810
ctrl = 0


; Rage (finished powering up)
[StateDef 3810]
type    = A
movetype = H
physics = N
ctrl = 0
anim = 3810

[State 3800, VarSet]
type = VarSet
trigger1 = AnimTime = -1
v = 5
value = 250

[State 3810, AttackMulSet]
type = AttackMulSet
trigger1 = AnimTime = -1
value = 2

[State 3810, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;----------------------------------------
;GAMMA POUND START
[Statedef 3600]
type    = S
movetype= A
physics = S
anim = 3600
velset = 0
ctrl = 0

[State 890]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,11

[State 3400, superpause]
type = SuperPause
trigger1 = AnimElem = 1
time = 3
sound = S10,1
pos = 20,-75
anim=-1
darken = 1
poweradd = -3000

[State 0, BGPalFX]
type = BGPalFX
trigger1 = Time = 0
time = 50
add = -300,-300,-300

; DCvM hyper portrait/BG
[State 10224, superportrait]
type = Explod
trigger1 = Time = 0
anim = 11113
ID = 11113
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 890]
type = HitDef
Trigger1 = AnimElem = 3
attr = S, ST
getpower  = 50
givepower = 40
hitflag = M-
priority = 1, Miss
pausetime = 0,0
snap = 146, -88;, 0, 1 ; Bind target for 1 frame
sparkno = s7017
guard.sparkno = S7047
sparkxy = -35,-90
p2facing = -1
p1stateno = 3601
p2stateno = 895
hitsound = s3,0
guardsound = s2,0
fall = 1
fall.damage = 40
kill = 0
fall.kill = 1 
          
[State 890]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------
;GAMMA POUND TECH HIT DECIDER
[Statedef 3601]
type    = S
movetype= A
physics = N
velset = 0
anim = 3602
ctrl = 0



[State 894]
type = TargetBind
trigger1 = 1
pos = 107, -100



[State 894]
type = targetstate
Trigger1 = Time = 6
value = 3604



[State 894]
type = ChangeState
Trigger1 = Time = 6
value = 3602
ctrl = 0
;------------------------------------------
;GAMMA POUND P2 STATE
[Statedef 895]
type    = A
movetype= H
physics = N
ctrl = 0
poweradd = 80
sprpriority = 2

[State 895]
type = ChangeAnim2
trigger1 = time = 0
value = 818

[State 895]
type = ScreenBound
trigger1 = Alive
value = 0

[State 895]
type = ChangeState
Trigger1 = Time = 8
value = 3604
ctrl = 0

;------------------------------------------

;GAMMA POUND P1 STATE
[Statedef 3602]
type    = S
movetype= A
physics = N
velset = 0
anim = 3601
poweradd = 50
ctrl = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG


[State 3000, portraitbg]
type = Explod
trigger1 = !time
anim =115
ID = 115
pos = 0,0
postype = back
bindtime = 999
removetime = -1
supermove = 40
pausemovetime = 40
sprpriority = -6
ownpal = 1

[State 891]
type = ScreenBound
trigger1 = Alive
value = 0

[State 891]
type = PlaySnd
trigger1 = Time = 5
value = 9,0

[State 891]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
value = 1,0

[State 891]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3,6

[State 891]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1,1

[State 891]
type = EnvShake
trigger1 = AnimElem = 4
time = 100
ampl = -5
freq = 60

[State 0, PalFX]
type = PalFX
trigger1 = time = [50,150]
time = 1
add=2*(time-50),-2*(time-50),-2*(time-50)

[State 891]
type = Explod
Anim = 20003
trigger1 = time = [50,150]
trigger1 = time*0.25-ceil(time*0.25)=0
postype = P1
pos = 70,-120
bindtime = 1
removeTime = 7
sprpriority = -7
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = [50,150]
trigger1 = time*0.25-ceil(time*0.25)=0
value = S1000,20
channel =5



[State 891]
type = Explod
Anim = 3603
trigger1 = AnimElem = 5
postype = P1
pos = 0,-60
bindtime = 1
scale=1.3,1.3
sprpriority = 10
ownpal = 1

[State 0, AllPalFX]
type = AllPalFX
trigger1 = AnimElem = 6
time = 7
add = 300,300,300

[State 820]
type = SprPriority 
trigger1 = AnimElem = 1
value = 0

[State 820]
type = TargetBind
trigger1 = AnimElem = 2
pos = 80, -115
time = 9

[State 891]
type = SprPriority 
trigger1 = AnimElem = 2
value = 4

[State 891]
type = TargetBind
trigger1 = AnimElem = 3
pos = 60, -150
time = 3

[State 891]
type = TargetBind
trigger1 = AnimElem = 4
pos =60, -145
time = 3

[State 891]
type = TargetState
trigger1 = AnimElem = 5
value = 3605

[State 891]
type = TargetDrop
trigger1 = animelem = 7

[State 740, energy]
type = Explod
trigger1 = Animelem = 5
anim = 3302
pos = 100,-100
sprpriority = -1
bindtime = 0
removetime = 20
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S3500,0
volume = 255
channel = 5

[State 891]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -450
kill=1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Animtime = 0
id = 115

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem=6
x = -100-backedgedist


[State 891]
type = ChangeState
triggerall = Animtime = 0
trigger1 = BackEdgeDist < 0
value = 100

[State 891]
type = ChangeState
trigger1 = Animtime = 0
trigger1 = BackEdgeDist >= 0
value = 0
ctrl = 1
;-------------------------------
;GAMMA POUND P2 STATE
[Statedef 3604]
type    = A
movetype= H
physics = N
ctrl = 0
poweradd = 80
sprpriority = 3

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 2
time = 200
add = 190,180,84
mul = 240,220,128
sinadd = 32,128,190,16
invertall = 0
color = 256
;ignorehitpause =
;persistent =

[State 892]
type = ChangeAnim2
trigger1 = time = 0
value = 3604


[State 892]
type = ScreenBound
trigger1 = Alive
value = 0

;---------------------------------
;GAMMA POUND P2 Thrown into ground
[Statedef 3605]
type = A
movetype = H
physics = N
sprpriority = -1

[State 893]
type = ChangeAnim2
trigger1 = time = 0
value = 893

[State 893]
type = posadd
trigger1 = time = 10
y = -50

[State 893]
type = ScreenBound
trigger1 = time <= 4
value = 1

[State 893]
type = ScreenBound
trigger1 = time >= 5
value = 0

[State 893]
type = VelSet
trigger1 = time = [0,20]
x = 5
y = -40

[State 893]
type = VelSet
trigger1 = time >= 21 
x = -2
y = 1

[State 893]
type = Gravity
trigger1 = 1

[State 893]
type = turn
trigger1 = time = 21

[State 893]
type = SelfState
trigger1 = time = 22
value = 5050

[State 893]
type=selfstate
triggerall=vel y>0&&alive&&canrecover
trigger1=command="recovery"
value=ifelse((pos y>=-20),5200,5210)

[State 893]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100



;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
; WINKO screen
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[Statedef 12000]
type = S
movetype = I
physics = N
anim = 856
sprpriority = -20

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 10
add = 198,66,0;0,160,0
mul = 24,132,24
sinadd = 32,116,32,10
invertall = 0
color = 256

[state 12000, a1]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay
flag2 = Noshadow

[state 12000, a1]
type = assertspecial
triggerall = numexplod(8787)
trigger1 = 1
flag = NoBG
flag2 = NoFG

;[State 12000, a9] ;bgscreen
;type = Explod
;trigger1 = !time
;anim = 12005
;id = 12005
;pos = 0,0
;postype = back
;facing = 1
;bindtime = -1
;supermovetime = 9999
;pausemovetime = 9999
;sprpriority = -16
;scale = 1,1
;removeongethit = 1
;IgnoreHitPause = 1
;ownpal=1

;[State 12000, a4]
;type = Explod
;trigger1 = !time
;anim = 12010
;id = 12010
;pos = 0,0
;postype = back
;facing = 1
;bindtime = -1
;supermovetime =999
;pausemovetime =999
;sprpriority = -15;-15
;removetime = -2
;scale = 1,1
;removeongethit = 1
;IgnoreHitPause = 1

[State 8787, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 12000
id = 8787
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -16
scale = 1,1
removeongethit = 1
IgnoreHitPause = 1

[State 12000, a6]
type = destroyself
trigger1 = time >= 300

