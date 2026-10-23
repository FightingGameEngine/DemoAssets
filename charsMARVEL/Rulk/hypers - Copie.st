
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
; Hulk Smash!
[StateDef 3000]
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
; Thunderclap
[StateDef 3200]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 0,0

[State 918, Explod]
type = Explod
trigger1 = Time = 0
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

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S10,20
volume = 100
channel = 0

[State 3210, screenBound]
type = ScreenBound
trigger1 = NumHelper(3220) > 0
trigger2 = 1
value = 0

[State 3200, superpause]
type = SuperPause
trigger1 = AnimElem = 4
time = 60
sound = S10,1
pos = 10,-105
darken = 1
poweradd = -1000

[State 3200, superportrait]
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

[State 3200, portraitbg]
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

[State 3200, hyperBg]
type = Helper
trigger1 = AnimElem = 5
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1

[State 3200, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 18
;freq = 60
;ampl = -4
;phase = 90

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S10,21
volume = 250
channel = -1
pan = 1

[State 3200, HitDef]
type = HitDef
trigger1 = AnimElem = 7
attr = S,HA
affectteam = B
animtype = back
priority = 7,Hit
damage = 0,0
sparkno = -1
pausetime = 0,0
ground.slidetime = 16
ground.hittime = 12
ground.velocity = -10
;snap = 0,0
sprpriority = 1

[State 3200, Helper]
type = Helper
trigger1 = AnimElemTime(7) = 1
helpertype = normal
name = "thunderclap shockwave"
ID = 3220
stateno = 3220
pos = 0,0
postype = p1
facing = 1
supermove

[State 3200, Pause]
type = Pause
trigger1 = TimeMod = 3,1
time = 2
movetime = 1
;endcmdbuftime = (winmugen only)
pausebg = 1

[State 3200, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 3210
ctrl = 0

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
physics = S
ctrl = 0
anim = 3400
velset = 0,0

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
type = Null ;PlaySnd
trigger1 = Time = 1
value = S10,20
volume = 100
channel = 0

[State 3400, superpause]
type = SuperPause
trigger1 = AnimElem = 3
time = 60
sound = S10,1
pos = 0,-45
darken = 1
poweradd = -1000

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

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = Time = 13
value = 8,0

[State 3400, VelSet]
type = VelSet
trigger1 = Time = 13
y = const(velocity.jump.y) * 2

[State 3400, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 13
statetype = A
movetype = A
physics = A

[State 3400, ScreenBound]
type = ScreenBound
trigger1 = Time > 12
value = 0
;movecamera = 0,0

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

[State 3400, EnvShake]
type = Null ;EnvShake
trigger1 = AnimElem = 7
time = 18
;freq = 60
;ampl = -4
;phase = 90

[State 3400, PlaySnd]
type = Null ;PlaySnd
trigger1 = AnimElem = 7
value = S10,21
volume = 250
channel = -1
pan = 1

[State 3400, back down again]
type = ChangeState
trigger1 = Pos Y >= 350
trigger2 = Time = 30
value = 3410
ctrl = 0


;-------------
; Hulk Crush - coming down from the sky
[StateDef 3410]
type = A
MoveType = A
physics = A
ctrl = 0
anim = 3410
velset = 0,-3

[State 3410, VelAdd]
type = VelAdd
trigger1 = !Time
x = 4

[State 3410, Helper]
type = Helper
trigger1 = !Time
name = "harrier"
ID = 3450
stateno = 3450
ownpal = 1
supermove


;-------------
; Hulk Crush - harrier helper/projectile
[StateDef 3450]
type = A
MoveType = A
physics = N
ctrl = 0
anim = 3450

[State 3450, BindToParent]
type = BindToParent
trigger1 = AnimElemTime(3) < 0
time = 1

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 5
y = 7

[State 3450, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,HP
hitflag = MAFD
guardflag = M
animtype = hard
priority = 7,Hit
damage = 250,25
pausetime = 0,12
sparkno = -1	;S9992
;guard.sparkno = 0
sparkxy = 0,0
;hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,11
air.velocity = -5,-12
sprpriority = 3
;p1stateno = 3460

[State 3450, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3460


;-------------
; Hulk Crush- helper/projectile explosion
[StateDef 3460]
type = A
MoveType = A
physics = N
anim = 3460

[State 3460, DestroySelf]
type = DestroySelf
trigger1 = !Time


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



;---------------------------------------------------------------------------
; Amalgam Hyper
; (incomplete -- only the intro portraits are done at this point)
[StateDef 4000]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 1000
velset = 0,0
poweradd = -3000

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1

[State 4000, Char Portrait]
type = Null ;Explod
trigger1 = Time = 0
anim = 4010
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = -2
supermovetime = 40
removeongethit = 1

[State 4000, Partner Portrait]
type = Null ;Explod
trigger1 = Time = 0
anim = 4011
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = -2
supermovetime = 40
removeongethit = 1


; spawn Grundy helper
[State 4000, Grundy]
type = Helper
trigger1 = AnimElem = 2
helpertype = player
name = "Grundy"
id = 40
pos = 160, Pos Y
postype = front
facing = 1
keyctrl = 0
ownpal = 1
stateno = 4001

; start charging
[State 4000, velset]
type = VelSet
trigger1 = AnimElem = 2
x = 16

[State 1000, spark]
type = Explod
trigger1 = AnimElem = 2
ID = 10
anim = 1001
bindtime = -1
facing = 1
removetime = -1
sprpriority = 2
removeongethit = 1

[State 4000, HitDef]
type = HitDef
trigger1 = Time % 4 = 0
attr = S, HA
damage = 15
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 4000, sparkBegone]
type = RemoveExplod
trigger1 = Time = 50
ID = 10

[State 4000, ChangeState]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1


; Grundy charge
[StateDef 4001]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 4001
velset = -16,0

;[State 4001, woosh]
;type = PlaySnd
;trigger1 = Time = 2
;value = 0,2

;[State 4001, grunt]
;type = PlaySnd
;trigger1 = Time = 0
;value = 1,2

[State 4001, screenbound]  ; don't move the camera to follow the Grundy helper
type = ScreenBound
trigger1 = Alive
movecamera = 0,0

[State 1000, spark]
type = Explod
trigger1 = Time = 0
ID = 40
anim = 1001
bindtime = -1
pos = 40,0
facing = -1
removetime = -1
sprpriority = 2
removeongethit = 1

[State 4001, HitDef]
type = HitDef
trigger1 = Time % 4 = 2
attr = S, HA
damage = 15
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 1000, sparkBegone]
type = RemoveExplod
trigger1 = Time = 50
ID = 40

[State 4001, destroy]
type = DestroySelf
trigger1 = Time = 50


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
; WINKO screen
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[Statedef 12000]
type = S
movetype = I
physics = N
anim = 8787
sprpriority = -20

;Generated by Fighter Factory PalFX Editor
[State 0, PalFXWiz]
type = PalFX
trigger1 = 1
time = 10
add = 0,160,0
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
triggerall = numexplod(12005)
trigger1 = 1
flag = NoBG
flag2 = NoFG

[State 12000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 12005
id = 12005
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
;ownpal=1

[State 12000, a4]
type = Explod
trigger1 = !time
anim = 12010
id = 12010
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime =999
pausemovetime =999
sprpriority = -15;-15
removetime = -2
scale = 1,1
removeongethit = 1
IgnoreHitPause = 1

[State 12000, a6]
type = destroyself
trigger1 = time >= 300

