;---------------------------------------------------------------------------
;---{Super Attacks}---
;-----------------------------------------------------------------------------


[Statedef 666]
type    = A
movetype= A
physics = N
juggle = 0;  = 1
velset = 0,0
anim = 666
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 0, ]
type = SuperPause
trigger1 = time = 2
time = 40
sound = S20,0
pos = 5,-70
darken = 1



[State 0, ]
type = Helper
trigger1 = time = 2
name = "Orb"
ID = 8000
pos = 5,-70
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = AfterImage
trigger1 = time = 2
trigger1 = palno != 10
time = 10
length = 32
framegap = 8
trans = add1
ignorehitpause = 0

[State 666, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 740
stateno = 3199

[State 666, NotHitBy]
type = NotHitBy
trigger1 = AnimTime = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 750

[State 666, VarSet]
type = VarSet
trigger1 = animelem = 3
v = 15
value = 736

[State 666, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 1
id = 667

[State 666, sense bar]
type = Explod
trigger1 = animelem = 2
anim = 667
id = 667
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State 666, sense bar]
type = Explod
trigger1 = animelem = 2
anim = 667
id = 667
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1


[State 666, Explod]
type = Explod
triggerall = NumExplod(8888) = 0
trigger1 = AnimTime = 0
anim = 8888
ID = 8888
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1 ; -1 will be bound until the explod is removed or another controller affects the bindtime.
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2  ; -1 displayed indefinitely / -2 removed when AnimTime = 0
supermovetime = 2147483647
pausemovetime = 2147483647
scale = 0,0
sprpriority = -3
ontop = 0
shadow = 0,0,0   ; -1,0,0 the shadow color of the MUGEN stage
ownpal = 1
removeongethit = 1
ignorehitpause = 1
trans = default   ; default - does nothing / none - disables transparency / add - draws with full additive transparency / addalpha - draws with additive transparency (alpha must be specified) / add1 - draws with additive transparency, with alpha at 256,128 / sub - draws with full subtractive transparency
alpha = 256,0
persistent = 0



[State 666, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Giggle and Hoot
;---------------------------------------------------------------------------
;
;type = S
;ctrl = 1
;anim = 660
;velset = 0,0
;movetype = I
;physics = S
;sprpriority = 2

;;;;;;;;;;;IMPROVISO
;[State 3199, NotHitBy]
[Statedef 3199]
type = S                         ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                     ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = ifelse(p2bodydist x < 80,22550,221);220,221)
poweradd = 40                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 220, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 7
value = 5,10
volume = 20

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 220, 1]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 65,22
pausetime = 5,6
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 25
ground.velocity = -10,-10
guard.velocity = -3
air.velocity = -10,-10
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
fall = 1

[State 220, 2]
type = HitDef
trigger1 = anim = 221
trigger1 = AnimElem = 2
attr = S, NA
damage = 5, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S5,1
guardsound = S5,8
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 220, 3]
type = HitDef
trigger1 = anim = 221
trigger1 = AnimElem = 3
attr = S, NA
damage = 35, 12
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 220, 4]
type = HitDef
trigger1 = anim = 221
trigger1 = AnimElem = 4
attr = S, NA
damage = 5,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4,-4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 220, VelSet]
type = VelSet
trigger1 = Anim = 221
x = 4
y = 0

[State 220, Standing Heavy Punch 2 End]
type = ChangeState
trigger1 = Anim = 221 && animtime = 0
trigger2 = Anim = 221 && animelem = 4
trigger2 = movecontact
value = 50
ctrl = 1

[State Slowdown]
type = Helper
trigger1 = movehit=1
helpertype = normal
name = "Slow down"
ID = 130015
stateno = 130015
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause=1
persistent=0

[State 220, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 130015, Slowdown]
physics=N
velset=0,0
anim=8888
ctrl = 0
 
[State MATRIX]
type = Pause
trigger1 = Time%3=0
time = 2 ;2 makes it slower
pausebg = 1
 
[State Down]
type = DestroySelf
trigger1 = Time >= 30 ;Change this to make it last longer



;///[State 3199, NotHitBy]
;type = NotHitBy
;trigger1 = 1
;value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;time = 1
;persistent = 1
;
;[State 199, ChangeState]
;type = ChangeState
;trigger1 = pos y < 0
;value = 50
;ctrl = 1
;
;[State 199, 1]
;type = CtrlSet
;trigger1 = Time = 40
;value = 1
;
;[State 199, 2]
;type = PlaySnd
;trigger1 = AnimElem = 2
;value = 195, 3
;
;[State 199, End]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;ctrl = 1


[Statedef 776]
type = A
movetype = A
physics = A
velset = 0,0
ctrl = 0
anim = 776
juggle = 4
sprpriority = 2
poweradd = -1000

[State 0, ]
type = SuperPause
trigger1 = time = 2
time = 40
sound = S20,0
pos = 5,-70
darken = 1



[State 0, ]
type = Helper
trigger1 = time = 2
name = "Orb"
ID = 8000
pos = 5,-70
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = AfterImage
trigger1 = time = 2
trigger1 = palno != 10
time = 10
length = 32
framegap = 8
trans = add1
ignorehitpause = 0



[State 1000, 7];caindo devagar
type=velset
trigger1=time>5 && statetype=A
y=.2 * (pos y<-10)


[State 0, Helper]
type = Helper
trigger1 = time = 5
helpertype = normal;player
name = "swirl"
ID = 777
pos = 0,0
postype = p1
ownpal = 0
stateno = 777
persistent = 0
size.xscale = .9
size.yscale = .9
supermovetime = 9999999999999
pausemovetime = 9999999999999

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;Swirl
[Statedef 777]
type = A
movetype = A
physics = N
velset = 0,0
anim = 777
ctrl = 0
juggle = 4
sprpriority = 3

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 10
pos = 0,30


[State 1005, combo counter]
type = ParentVarAdd
trigger1 = MoveHit
v = 11
value = 1
persistent = 0

[State 1005, first attack]
type = ParentVarAdd
trigger1 = MoveHit
trigger1 = parent,var(13)=0
v = 13
value = 1
ignorehitpause = 1
persistent = 0

[State 777, 2]
type = HitDef
trigger1 = time < 75
trigger1 = timemod = 7,0
attr = A, HP;
animtype  = back
damage    = 40,7
;guardflag = MA
;pausetime = 0,3
;sparkno = s8222
;sparkxy = -55,-75
;guard.sparkno = s8001
;hitsound = s5,2
;guardsound = 6,0
;ground.type = low
;ground.slidetime = 12
;ground.hittime  = 30
;ground.velocity = -2, 0
;air.velocity = -2, 0
;yaccel = 0.6
;sprpriority = 3
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 3
sparkno = 1
guard.sparkno = 40
sparkxy = -5,-55
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -3, 0
air.Velocity = -2, -1
fall = 1
air.fall = 1
air.recover = 0
air.juggle = 4

;[State 0, AngleDraw]
;type = AngleDraw
;trigger1 = time < 75
;scale = 1,1
;ignorehitpause = 1
;persistent = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >= 75
scale = 1+(-.005*time),1+(-.005*time)
ignorehitpause = 1
persistent = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 124
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = root,stateno != 776
ignorehitpause = 1


[Statedef 4002]
type = A
movetype = A
physics = S
velset = 0,0
anim = 6661

poweradd = -1000
ctrl = 0

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = anim = 6661 && animtime = 0
;value = S7,19

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 24
range = 1200,2200

[State 0, ]
type = SuperPause
trigger1 = time = 2
time = 40
sound = S20,0
pos = 5,-70
darken = 1


[State 0, ]
type = Helper
trigger1 = time = 2
name = "Orb"
ID = 8000
pos = 5,-70
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = AfterImage
trigger1 = time = 2
trigger1 = palno != 10
time = 10
length = 32
framegap = 8
trans = add1
ignorehitpause = 0
;[State 0, Helper]
;type = Helper
;trigger1 = anim = 195 && animelem = 10
;helpertype = normal ;player
;name = "Hyper BG FX"
;ID = 7001
;stateno = 7002
;pos = 0,0
;postype = back
;facing = 1
;keyctrl = 0
;ownpal = 1

;[State 3000, Pause]
;type = SuperPause
;trigger1 = anim = 6661 && animelem = 10
;anim = 100
;time = 20
;sound = S11,2
;pos = 0,-50
;darken = 1


;[State 0, ScreenBound]
;type = ScreenBound
;trigger1 = anim = 6661; numexplod(307) = 0
;trigger2 = anim = 6661
;value = 0
;movecamera = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 3
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 1
value = -200

;Snakes offscreen var
[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 2
value = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 6661
trigger1 = anim = 6661 && animtime = 0
value = 6661

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 6664
ID = 2502
pos = -70,10
postype = p1  ;p2,front,back,left,right
removetime = -1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 6664
ID = 2502
pos = 100,10
postype = p1  ;p2,front,back,left,right
removetime = -1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 6664
ID = 2502
pos = 200,10
postype = p1  ;p2,front,back,left,right
removetime = -1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 6664
ID = 2502
pos = 300,10
postype = p1  ;p2,front,back,left,right
removetime = -1
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 6664
ID = 2502
pos = 400,10
postype = p1  ;p2,front,back,left,right
removetime = -1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 0, Helper]
type = Helper
triggerall = anim = 6661
trigger1 = (gametime%7) = 0
helpertype = normal;player
name = "Tentacles"
ID = 2504
stateno = 4003
pos = (10 + (var(1))),0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0

[State 290, Shake Screen]
type = EnvShake
trigger1 = stateno = 290 && movecontact
time = 4     ;Time to shake screen
ampl = 4     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 290, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S25,0

[State 0, VarSet]
type = VarSet
trigger1 = var(3) = 2
v = 3
value = 3

[State 0, VarAdd]
type = VarAdd
trigger1 = (gametime%7) = 0
v = 1
value = 55

[State 0, Explod]
type = Explod
trigger1 = anim = 6666 && animtime = 0
anim = 6663
ID = 2503
pos = -70,10
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
;trigger1 = anim = 6661 && numhelper(2504) = 0 && var(1) = 1
trigger1 = anim = 6666 && animtime = 0
id = 2502

[State 0, VarSet]
type = VarSet
trigger1 = numexplod(2503) > 0
v = 1
value = 2

[State 0, VarSet]
type = VarSet
trigger1 = anim = 6666 && animtime = 0
v = 0
value = 0

;[State 0, ChangeState]
;type = ChangeState
;trigger1 = anim = 0 && animtime = 0 && backedgebodydist <= -15
;value = 4004

[State 0, Explod]
type = ModifyExplod
trigger1 = anim = 6666 && animtime = 0 && backedgebodydist <= 0
ID = 2503
bindtime = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = anim = 6666 && animtime = 0 && backedgebodydist > -15
value = 0
ctrl = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 6666
trigger1 = numexplod(2503) = 0 && time >= 80
trigger2 = var(2) >= 6
value = 6666
;--------
;Ground Tentacles
[Statedef 4003]
type = A
movetype = A
physics = N
velset = 0,0
anim = 6662
ctrl = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;[State 200, 1]
type = HitDef
trigger1 = animelem = 8
getpower = 0,0
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 43,20                 ;Damage that move inflicts, guard damage
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
;hitflag = MAFD                    ;Flags of conditions that move can hit
;priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
;pausetime = 2, 0               ;Time attacker pauses, time opponent shakes
;sparkno = s9990                       ;Spark anim no (Def: set above)
;sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;;Y-offset for the spark rel. to p1
;hitsound = 5, 2                  ;Sound to play on hit
;guardsound = 6, 0                ;Sound to play on guard
;ground.type = low             ;Type: High, Low, Trip (def: Normal)
;ground.slidetime = 5             ;Time that the opponent slides back
;ground.hittime  = 60             ;Time opponent is in hit state
;ground.velocity = -8,-2            ;Velocity at which opponent is pushed
;airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))               ;Type: High, Low, Trip (def: same as ground.type)
;air.velocity = -8,-2          ;X-velocity at which opponent is pushed,
;;Y-velocity at which opponent is pushed
;air.hittime = 60                 ;Time before opponent regains control in air
;givepower = 10, 5
;ground.cornerpush = 0
;ground.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;down.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;fall = 1
;fall.recover = 0
hitflag = MAFD
priority = 3, Hit
pausetime = 5, 5
sparkno = 1
guard.sparkno = 40
sparkxy = -5,-55
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -3, 0
air.Velocity = -2, -1
fall = 1
air.fall = 1
air.recover = 0
air.juggle = 4

fall.recovertime = 120

[State 200, 1]
type = HitDef
trigger1 = animelem = 8
getpower = 0,0
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 53,30                 ;Damage that move inflicts, guard damage
animtype = Heavy                ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAFD                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 2, 0               ;Time attacker pauses, time opponent shakes
sparkno = s9990                       ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 2                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = low             ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 60             ;Time opponent is in hit state
ground.velocity = -8,-2            ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))               ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -8,-2          ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 60                 ;Time before opponent regains control in air
givepower = 10, 5
ground.cornerpush = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
fall.recovertime = 120


;[State 0, EnvShake]
;type = EnvShake
;trigger1 = anim = 6662
;time = 1
;freq = 180
;ampl = -4
;phase = 90
;ignorehitpause =
;persistent =


[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = movehit != 0 && var(3) = 0
v = 14
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = movehit != 0 && var(3) = 0
v = 3
value = 1

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = frontedgebodydist < 0 && movecontact = 0 && animtime = 0
v = 2
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = (parent, stateno != 4002)
;trigger3 = frontedgebodydist < -20
;---------


; Maximum Spider (Author Seth Zankuten)
[Statedef 2000]
type    = A
movetype= I
physics = N
velset = backedgedist/-5 * (.35),-10
anim = 2000
ctrl = 0
sprpriority = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0

[State 0, ]
type = VelAdd
trigger1 = 1
y = .26

[State 0, ]
type = VelSet
trigger1 = vel x = 0
trigger1 = backedgedist < 10
x = .35

[State 0, ]
type = changestate
trigger1 = pos y < -100
trigger1 = backedgebodydist <= 10
trigger2 = vel y > 1
value = 2001

[State 0, ]
type = Playerpush
trigger1 = 1
value = 0

[State 0, ]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 50

[statedef 2001]
type = A
movetype = I
physics = N
anim = 2001
velset = 0,0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 2001
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 2001
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -10

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S3,5

[State 0, ]
type = SuperPause
trigger1 = time = 2
time = 40
sound = S20,0
pos = 5,-70
darken = 1
poweradd = -1000

[State 0, ]
type = Helper
trigger1 = time = 2
name = "Orb"
ID = 8000
pos = 5,-70
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = AfterImage
trigger1 = time = 2
trigger1 = palno != 10
time = 10
length = 32
framegap = 8
trans = add1
ignorehitpause = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 80
trigger1 = p2bodydist y > 20
value = 2005

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 80
trigger1 = p2bodydist y < -20
value = 2010

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,20]
value = 2015

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 80
trigger1 = p2bodydist y < -20
value = 2020

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 80
trigger1 = p2bodydist y > 20
value = 2025

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[statedef 2002]
type = A
movetype = I
physics = N
anim = 2001
velset = 0,0
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, ]
type = Turn
trigger1 = time = 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 2002
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 2002
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -10

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2002
trigger1 = palno != 10
time = 5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist y > 20
value = 2005

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist y < -20
value = 2010

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,20]
value = 2015

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 20
trigger1 = p2bodydist y < -20
value = 2020

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 20
trigger1 = p2bodydist y > 20
value = 2025

[State 0, ]
type = ChangeState
trigger1 = p2statetype = L
value = 50

[statedef 2003]
type = S
movetype = I
physics = S
anim = 2003
velset = 0,0
hitcountpersist = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, ]
type = Width
trigger1 = 1
edge = -20,-30
player = -20,-30

[State 0, ]
type = Turn
trigger1 = time = 0
trigger1 = p2dist x < 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2003
trigger1 = palno != 10
time = 10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist y < -20
value = 2010

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,20]
value = 2015

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 20
trigger1 = p2bodydist y < -20
value = 2020

[State 0, ]
type = ChangeState
trigger1 = p2statetype = L
value = 12

[statedef 2004]
type = A
movetype = I
physics = N
anim = 2004
velset = 0,0
hitcountpersist = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, ]
type = Width
trigger1 = 1
edge = -20,-30
player = -20,-30

[State 0, ]
type = Turn
trigger1 = time = 0
trigger1 = p2dist x < 0

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 2004
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2004
trigger1 = palno != 10
time = 10

[State 0, ]
type = VelSet
trigger1 = screenpos y >= 50
y = 0

[State 0, ]
type = VelSet
trigger1 = screenpos y > 50
y = -10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 150
trigger1 = p2bodydist y > 0
trigger2 = screenpos y < 50 && random > 333
trigger2 = random = 0 && random > 333
value = 2005

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,0]
trigger2 = screenpos y < 50 && random = [333,666]
trigger2 = animtime = 0 && random = [333,666]
value = 2015

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 150
trigger1 = p2bodydist y > 0
trigger2 = screenpos y < 50 && random < 666
trigger2 = animtime = 0 && random < 666
value = 2025

[State 0, ]
type = ChangeState
trigger1 = p2statetype = L
value = 50

[statedef 2005]
type = A
movetype = A
physics = N
anim = 2005
velset = 0,0          ;13,7
hitcountpersist = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 16
y = ifelse(p2bodydist x > 150,7,13)

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .5
y = .5

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2005
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2005
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2005
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-40
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 50
ground.hittime = 50
air.hittime = 100
ground.velocity = -6,-14  ;-10
guard.velocity = -4
air.velocity = -2.25,-12  ;-9
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
trigger3 = hitcount = 0
trigger3 = movehit = 0
trigger3 = pos y >= 0
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = pos y >= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
triggerall = screenpos y >= 225
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
trigger1 = prevstateno != 2001
trigger1 = p2statetype = L
value = 50

[statedef 2010]
type = A
movetype = A
physics = N
anim = 2010
velset = 0,0             ;13,-7
hitcountpersist = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 16
y = ifelse(p2bodydist x > 150,-7,-13)

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .5
y = -0.5

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2010
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2010
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2010
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = high
fall.animtype = up
ground.type = High
air.type = High
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-105
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 120
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -2.25,-7    ;-4
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = screenpos y <= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2004

[State 0, ]
type = ChangeState
triggerall = hitcount = 0
trigger1 = movehit = 0
trigger1 = screenpos y <= 50
trigger2 = p2stateno = 5100
value = 50

[statedef 2015]
type = A
movetype = A
physics = N
anim = 2015
velset = 10,0
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .5

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2015
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2015
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2015
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = up
ground.type = High
air.type = High
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-75
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 120
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -4,-7.5
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = hitcount = 0
trigger1 = movehit = 0
trigger1 = frontedgedist <= 5
trigger2 = p2stateno = 5100
value = 50

[statedef 2020]
type = A
movetype = A
physics = N
anim = 2020
velset = 0,0            ;7,-13
hitcountpersist = 1
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = ifelse(p2bodydist x > 150,7,16)
y = -13

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = p2bodydist x <= 0 && p2bodydist y <= -100
x = 0

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .5
y = -0.5

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2020
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2020
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2020
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = up
ground.type = High
air.type = High
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-120
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 120
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -1.25,-7
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = screenpos y <= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2004

[State 0, ]
type = ChangeState
triggerall = hitcount = 0
trigger1 = movehit = 0
trigger1 = screenpos y >= 50
trigger2 = p2stateno = 5100
value = 50

[statedef 2025]
type = A
movetype = A
physics = N
anim = 2025
velset = 7,13
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = p2bodydist x <= 0 && p2bodydist y >= 100
x = 0

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .5
y = -0.5

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2025
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2025
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2025
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = up
ground.type = High
air.type = High
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-10
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 120
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -1.25,-3
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
trigger3 = hitcount = 0
trigger3 = movehit = 0
trigger3 = pos y >= 0
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = pos y >= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
triggerall = screenpos y >= 225
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
trigger1 = prevstateno != 2001
trigger1 = p2statetype = L
value = 50

[statedef 2030]
type = A
movetype = A
physics = N
velset = -3,-8
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = hitcount = 0
value = 43

[State 0, ]
type = ChangeState
trigger1 = time = 1
value = 50

[statedef 2050]
type = A
movetype = H
physics = A
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2051

[State 0, ]
type = ChangeState
triggerall = pos y >= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2052

;-----------------------------------------------------------------------------
;Crawler Assault (Mugen Author Seth Zankuten)
[statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,SA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0
ignorehitpause = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = SuperPause
trigger1 = animelem = 2
time = 40
sound = S20,0
pos = -25,-43
darken = 1
poweradd = -1000

[State 0, ]
type = AfterImage
trigger1 = animelem = 2
trigger1 = palno != 10
time = 2
length = 32
framegap = 8
trans = add1
removeongethit = 1

[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = time >= 2
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Helper
trigger1 = animelem = 2
name = "Orb"
ID = 8000
pos = -25,-43
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
movetype = A

[State 0, ]
type = VelSet
trigger1 = time = 7
x = 7

[State 0, ]
type = VelSet
trigger1 = time >= 7
x = 4.5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S28,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 3
value = 0,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 4
value = 0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 1
value = ifelse(palno=6,1,2),1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 2
value = ifelse(palno=6,1,2),2
channel = 1
lowpriority = 1

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 1

[State 0, ]
type = MoveHitReset
trigger1 = movecontact = 1
persistent = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 11
trigger3 = animelem = 19
trigger4 = animelem = 24
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
priority = 6,Hit
damage = 31,10
pausetime = 2,15
guard.pausetime = 2,2
sparkno = -1
guard.sparkno = 41
sparkxy = -5,-75
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
down.slidetime = 30
down.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,-2
airguard.velocity = -1
down.velocity = -2,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
recover = 0
down.recover = 0
bounce.recover = 0
getpower = 0,0

[State 0, ]
type = HitDef
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 26
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = high
air.type = low
priority = 6,Hit
damage = 31,10
pausetime = 2,15
guard.pausetime = 2,2
sparkno = -1
guard.sparkno = 41
sparkxy = -15,-60
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
down.slidetime = 30
down.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,-2
airguard.velocity = -1
down.velocity = -2,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
recover = 0
down.recover = 0
bounce.recover = 0
getpower = 0,0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 3005

[statedef 3005]
type = S
movetype = A
physics = S
anim = 3005
velset = 5,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
trigger1 = palno != 10
time = 2
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = ifelse(palno=6,1,2),2
channel = 1
lowpriority = 1

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
time = 4
under = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
x = 3

[State 0, ]
type = PosAdd
trigger1 = movehit = 1
trigger1 = backedgedist <= -60
x = -100
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
fall.animtype = back
priority = 6,Hit
damage = 31,10
pausetime = ifelse(frontedgedist <= 20,12,35),12
guard.pausetime = 4,3
sparkno = -1
guard.sparkno = 41
sparkxy = -15,-60
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
ground.velocity = -8,-8
guard.velocity = -5
air.velocity = -8,-8
airguard.velocity = -5
yaccel = 0.5
ground.cornerpush.veloff = -50
air.cornerpush.veloff = -50
getpower = 0,0
forcestand = 1
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
liedown.time = 30
fall.envshake.time = 18
fall.envshake.ampl = -10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 4000]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 4000
poweradd = -1000
ctrl = 0



[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = -2
y = -9

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
physics = A

[State 0, ]
type = ChangeState
trigger1 = time = 21
value = 4001

[Statedef 4001]
type    = A
movetype= A
physics = A
anim = 4001
sprpriority = 4
ctrl = 0
poweradd = -1000

[State 0, ]
type = PosFreeze
trigger1 = time > 13
value = 1

;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = anim = 6661 && animtime = 0
;value = S7,19

[State 0, VarRandom]
type = VarRandom
trigger1 = time = 0
v = 24
range = 1200,2200

[State 0, ]
type = SuperPause
trigger1 = time = 2
time = 40
sound = S20,0
pos = 5,-70
darken = 1


[State 0, ]
type = Helper
trigger1 = time = 2
name = "Orb"
ID = 8000
pos = 5,-70
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = Explod
trigger1 = time = 2
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

[State 0, ]
type = AfterImage
trigger1 = time = 2
trigger1 = palno != 10
time = 10
length = 32
framegap = 8
trans = add1
ignorehitpause = 0
;[State 0, ]
;type = SuperPause
;trigger1 = animelem = 3
;time = 40
;sound = S20,0
;pos = 0,-90
;darken = 1
;poweradd = -1000

;[State 0, ]
;type = Helper
;trigger1 = animelem = 3
;name = "Orb"
;ID = 8000
;pos = 0,-90
;postype = p1
;stateno = 8000
;supermovetime = 40
;pausemovetime = 1
;size.xscale = .35
;size.yscale = .35
;ownpal = 1

;[State 0, ]
;type = Explod
;trigger1 = animelem = 3
;anim = 10000
;ID = 10000
;pos = 0,0
;postype = back
;bindtime = 999
;removetime = 40
;supermove = 40
;pausemovetime = 40
;sprpriority = -1
;ownpal = 1

;[State 0, ]
;type = Explod
;trigger1 = animelem = 3
;anim = 10005
;ID = 10005
;pos = 0,0
;postype = back
;bindtime = 999
;removetime = 40
;supermove = 40
;pausemovetime = 40
;sprpriority = -2
;ownpal = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S6,0

[State 0, ]
type = Projectile
trigger1 = animelem = 5
ProjID = 4005
projanim = 4005
projhitanim = 4006
projcancelanim = 4006
projremovetime = 16
projshadow = -1,-1,-1
projhits = 1
attr = A,HT
hitflag = MAF
guardflag = MA
pausetime = 5,5
guard.pausetime = 5,5
sparkno = 2
sparkxy = 130,0
guard.sparkno = 40
hitsound = S6,1
guardsound = S5,8
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = projhit = 1
value = 4010

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 4010]
type    = A
movetype= A
physics = N
anim = 4010
velset = 1,-2
sprpriority = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,5

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = 130,5

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 2
pos = 55,10

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 2
pos = 25,30

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 2
pos = -15,30

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 2
pos = -20,30

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 2
pos = -100,-5

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 2
pos = -115,-40

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 2
pos = -120,-75

[State 0, ]
type = TargetBind
trigger1 = animelem = 9
time = 2
pos = -120,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 10
time = 2
pos = -80,-165

[State 0, ]
type = TargetBind
trigger1 = animelem = 11
time = 2
pos = -50,-190

[State 0, ]
type = TargetBind
trigger1 = animelem = 12
time = 2
pos = -10,-195

[State 0, ]
type = TargetBind
trigger1 = animelem = 13
time = 2
pos = -5,-195

[State 0, ]
type = TargetBind
trigger1 = animelem = 14
time = 2
pos = 100,-175

[State 0, ]
type = TargetBind
trigger1 = animelem = 15
time = 2
pos = 120,-145

[State 0, ]
type = TargetBind
trigger1 = animelem = 16
time = 2
pos = 130,-105

[State 0, ]
type = TargetBind
trigger1 = animelem = 17
time = 2
pos = 130,-100

[State 0, ]
type = TargetBind
trigger1 = animelem = 18
time = 2
pos = 105,25

[State 0, ]
type = TargetBind
trigger1 = animelem = 19
time = 2
pos = 65,45

[State 0, ]
type = TargetBind
trigger1 = animelem = 20
time = 2
pos = 35,50

[State 0, ]
type = TargetBind
trigger1 = animelem = 21
time = 2
pos = 30,50

[State 0, ]
type = TargetState
trigger1 = animelem = 1
trigger2 = animelem = 18
value = 4020

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 4021

[State 0, ]
type = TargetState
trigger1 = animelem = 6
value = 4022

[State 0, ]
type = TargetState
trigger1 = animelem = 8
value = 4023

[State 0, ]
type = TargetState
trigger1 = animelem = 10
value = 4024

[State 0, ]
type = TargetState
trigger1 = animelem = 12
value = 4025

[State 0, ]
type = TargetState
trigger1 = animelem = 14
value = 4026

[State 0, ]
type = TargetState
trigger1 = animelem = 16
value = 4027

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 4015

[Statedef 4015]
type    = A
movetype= A
physics = A
anim = 4015
velset = 1,-1
sprpriority = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = S1,2

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = 25,50

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = 0,45

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 4
pos = -50,20

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 4
pos = -115,-30

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 2
pos = -30,-160

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 2
pos = 40,-185

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 2
pos = 140,-145

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 2
pos = 130,5

[State 0, ]
type = TargetState
trigger1 = animelem = 1
trigger2 = animelem = 8
value = 4020

[State 0, ]
type = TargetState
trigger1 = animelem = 2
value = 4021

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 4022

[State 0, ]
type = TargetState
trigger1 = animelem = 4
value = 4023

[State 0, ]
type = TargetState
trigger1 = animelem = 5
value = 4024

[State 0, ]
type = TargetState
trigger1 = animelem = 6
value = 4025

[State 0, ]
type = TargetState
trigger1 = animelem = 7
value = 4026

[State 0, ]
type = TargetState
trigger1 = animelem = 8,2
value = 4028

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 8
value = -300

[State 0, ]
type = TargetDrop
trigger1 = animelem = 8,2

[State 0, HitAdd]
type = HitAdd
trigger1 = (animelem = 8,2 && stateno = 4010)
value = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 4020]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 4020, Shake Screen]
type = EnvShake
trigger1 = stateno = 4020 && movecontact
time = 4     ;Time to shake screen
ampl = 4     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 0, ]
type = AfterImageTime
triggerall = time = 0
trigger1 = prevstateno = 4020
trigger2 = prevstateno = 4026
trigger3 = prevstateno = 4027
time = 9999

[State 0, ]
type = AfterImage
triggerall = prevstateno != 4020
triggerall = prevstateno != 4026
triggerall = prevstateno != 4027
trigger1 = time = 0
time = 9999
length = 21
framegap = 5
trans = add1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4020

[Statedef 4021]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4021

[Statedef 4022]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4022

[Statedef 4023]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4023

[Statedef 4024]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4024

[Statedef 4025]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4025

[Statedef 4026]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4026

[Statedef 4027]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4027

[Statedef 4028]
type    = A
movetype= H
physics = A
velset = -5,15
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5050

[State 0, ]
type = SelfState
trigger1 = time >= 1
value = 5050

;-------------------------------
; EX-Super
[Statedef 7000]
type = S
movetype = A
physics = N
anim = 7000
velset = 0,0
ctrl = 0

[State 0, ]
type = SuperPause
trigger1 = animelem = 6
time = 40
sound = S20,0
pos = -5,-47
darken = 1
poweradd = -1000

[State 0, ]
type = AfterImage
trigger1 = animelem = 6
trigger1 = palno != 10
time = 4
length = 10
framegap = 1
palcontrast = 150,150,150
paladd = 0,0,0
palmul = .9,.9,.9
trans = add1
removeongethit = 1

[State 0, ]
type = Helper
trigger1 = animelem = 6
name = "Orb"
ID = 8000
pos = -5,-47
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 6
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

[State 0, ]
type = Explod
trigger1 = animelem = 6
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

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = S4,1

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = palno = 7
value = 7005
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = palno = 8
value = 7100
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = palno = 9
value = 7200
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = palno = 10
value = 7300
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

;Shock-Wave
[Statedef 7100]
type = S
movetype = A
physics = N
anim = 7100
velset = 0,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = helper(7105),movehit = 1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
trigger1 = helper(7105),movehit = 1
value = 0

[State 0, ]
type = Helper
trigger1 = animelem = 3
name = "shockwave"
ID = 7105
pos = 35,-45
stateno = 7105
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -50
trigger1 = animtime = 0
value = 100
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = backedgedist > -50
trigger1 = time = 50
value = 0
ctrl = 1

[Statedef 7105]
type = S
movetype = A
physics = N
anim = 7105
velset = 0,0
sprpriority = 2
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7105
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = Nothitby
trigger1 = stateno = 7105
value = SCA,NA,SA,HA,NT,ST,HT,NP,SP,HP

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .15
size.yscale = .75
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 50,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 2
name = "shockwave"
ID = 7110
pos = 100,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 3
name = "shockwave"
ID = 7110
pos = 150,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 4
name = "shockwave"
ID = 7110
pos = 200,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 5
name = "shockwave"
ID = 7110
pos = 250,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 6
name = "shockwave"
ID = 7110
pos = 300,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Null
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 50,15
pausetime = 2,1
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,0
hitsound = -1,0
guardsound = S5,8
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -5,-0.5
guard.velocity = -2
air.velocity = -5,-0.5
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 2
fall = 1
numhits = 2
getpower = 0,0
givepower = 0,0
envcolor.time = 2
envcolor.value = 255,255,255
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = animelem = 9
value = 7106

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 7106]
type = S
movetype = A
physics = N
anim = 7106
velset = 0,0
sprpriority = 6
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7106
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = Nothitby
trigger1 = stateno = 7105
value = SCA,NA,SA,HA,NT,ST,HT,NP,SP,HP

[State 0, ]
type = AfterImage
trigger1 = time = 0
trigger1 = palno != 10
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .15
size.yscale = .75
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 2
name = "shockwave"
ID = 7110
pos = 350,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 3
name = "shockwave"
ID = 7110
pos = 400,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 4
name = "shockwave"
ID = 7110
pos = 450,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 5
name = "shockwave"
ID = 7110
pos = 500,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 6
name = "shockwave"
ID = 7110
pos = 550,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Null
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = 1
attr = S,HP
hitflag = MAF
guardflag = MA
animtype = diagup
air.animtype = diagup
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 50,15
pausetime = 2,0
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,0
hitsound = -1,0
guardsound = S5,8
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -50,-0.5
guard.velocity = -2
air.velocity = -50,-0.5
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 2
fall = 1
numhits = 2
getpower = 0,0
givepower = 0,0
envcolor.time = 2
envcolor.value = 255,255,255
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 7110]
type = S
movetype = A
physics = N
anim = 7110
velset = 0,0
sprpriority = -1
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7110
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,6
channel = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;Raging-Lightning
[Statedef 7200]
type = S
movetype = A
physics = N
anim = 7200
velset = 0,0
sprpriority = 4
ctrl = 0

[State 0, ]
type = VarSet
triggerall = Win
trigger1 = helper(7205),movehit = 1
v =  1
value = 1

[State 0, ]
type = VarRandom
trigger1 = time >= 0
v = 10
range = 15,55

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 16

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,5
channel = 2

[State 0, ]
type = Helper
trigger1 = time = 5
name = "Lightning"
ID = 7205
pos = 40,0
stateno = 7205
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 16
name = "Lightning"
ID = 7205
pos = var(10),0
stateno = 7210
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 26
name = "Lightning"
ID = 7205
pos = var(10),0
stateno = 7210
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 36
name = "Lightning"
ID = 7205
pos = var(10),0
stateno = 7210
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 46
name = "Lightning"
ID = 7205
pos = var(10),0
stateno = 7215
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 7205]
type = S
movetype = A
physics = N
anim = 7205
velset = 0,0
sprpriority = 5
juggle = 1
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7205
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = stateno = 7205
y = 0
ignorehitpause = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 5
framegap = 1
palcolor = 38
trans = add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,5
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = .25
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 720
ID = 710
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 725
ID = 715
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = envcolor
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 100,15
pausetime = 6,3
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-50+p2bodydist y
hitsound = S5,4
guardsound = S5,4
ground.slidetime = 15
ground.hittime = 15
ground.velocity = 2,-10
guard.velocity = -2
air.velocity = 2,-10
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 5
fall = 1
numhits = 4
snap = 0
getpower = 0,0
givepower = 0,0
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 7210]
type = S
movetype = A
physics = N
anim = 7210
velset = 0,0
sprpriority = 5
juggle = 1
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7210
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = stateno = 7210
y = 0
ignorehitpause = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 5
framegap = 1
palcolor = 38
trans = add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,5
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .75
size.yscale = .15
ownpal = 1

[State 0, ]
type = envcolor
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 50,15
pausetime = 6,3
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-50+p2bodydist y
hitsound = S5,4
guardsound = S5,4
ground.slidetime = 15
ground.hittime = 15
ground.velocity = 0.5,-10
guard.velocity = -2
air.velocity = 0,-10
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 1
fall = 1
numhits = 2
getpower = 0,0
givepower = 0,0
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 7215]
type = S
movetype = A
physics = N
anim = 7210
velset = 0,0
sprpriority = 5
juggle = 10
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7215
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = stateno = 7215
y = 0
ignorehitpause = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 5
framegap = 1
palcolor = 38
trans = add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,5
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .75
size.yscale = .15
ownpal = 1

[State 0, ]
type = envcolor
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,HP
hitflag = MAFD
guardflag = MA
animtype = diagup
air.animtype = diagup
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 50,15
pausetime = 6,3
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-50+p2bodydist y
hitsound = S5,4
guardsound = S5,4
yaccel = .6
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -2.5,-10
guard.velocity = -2
air.velocity = -2.5,-10
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 1
fall = 1
numhits = 2
getpower = 0,0
givepower = 0,0
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;--[Super Animations]------------------
[Statedef 8000]
type = S
movetype = I
anim = 8000
sprpriority = 8

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 8000
flag = noshadow

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 7
framegap = 3
palcolor = 38
trans = Add

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0
