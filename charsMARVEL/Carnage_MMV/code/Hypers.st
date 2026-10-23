;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
;Maximum Carnage
[Statedef 3000]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3000






[State 2001, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 5

[State 0, VelAdd]
type = Velset
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
trigger7 = animelem = 8
trigger8 = animelem = 9
x = 6
y = -3
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = Velset
trigger1 = animelem = 10
trigger2 = animelem = 11
x = 5
y = -3

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

[State 3000];super fundo helper
type = helper
stateno = 8600
trigger1 = time=0
pos = 0,0
postype = left
ID=8500
ownpal = 1
name = "super-fx"
sprpriority = -3
supermovetime = 80

[State 2001, VelSet]
type = VelSet
trigger1 = time > 6
y = 0

[State 2001, VelSet]
type = Velset
trigger1 = animelem = 12
x = 1
y = 0

[State 2001, VelSet]
type = Veladd
trigger1 = animelem = 14
x = 10
y = 0

[State 2001, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 200,20

[State 2001, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 9
trigger6 = animelem = 11
value = 1100,4



[State 2001, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 800,2
volume = 250

[State 2001, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 800,2
volume = 250

[State 2001, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 800,2
volume = 250


;[State 1005, Explod]
;type = Explod
;trigger1 = animelem = 1
;trigger2 = animelem = 7
;trigger3 = animelem = 13
;trigger4 = animelem = 19
;trigger5 = animelem = 25
;trigger6 = animelem = 31
;trigger7 = animelem = 37
;trigger8 = animelem = 43
;trigger9 = animelem = 49
;trigger10 = animelem = 55
;anim = 2005
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;bindtime = 99
;removetime = -2
;scale = 1,1
;sprpriority = 3
;ontop = 0
;ownpal = 0
;removeongethit = 1


[State 1005, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 4
value = 500,10



[State 1005, Explod]
type = Explod
trigger1 = animelem = 14
anim = 8600
pos = 20,-35
postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 99
removetime = 10
scale = 1,1
sprpriority = 3
ontop = 0
ownpal = 0
removeongethit = 1

[State 1005, Explod]
type = Explod
trigger1 = animelem = 4
anim = 8601
postype = p1  ;p2,front,back,left,right
pos = 0,-70
facing = 1
bindtime = 99
removetime = 5
scale = .7,.7
sprpriority = 3
ontop = 1
ownpal = 0
removeongethit = 1

[State 1005, Explod]
type = Explod
trigger1 = animelem = 9
anim = 8601
postype = p1  ;p2,front,back,left,right
pos = 50,-45
facing = 1
bindtime = 99
removetime = 5
scale = .7,.7
sprpriority = 3
ontop = 1
ownpal = 0
removeongethit = 1

[State 1005, Explod]
type = Explod
trigger1 = animelem = 14
anim = 8601
postype = p1  ;p2,front,back,left,right
pos = 30, -30
facing = 1
bindtime = 99
removetime = 10
scale = 1,1
sprpriority = 3
ontop = 1
ownpal = 0
removeongethit = 1


[State 1005, Explod]
type = Explod
trigger1 = animelem = 11
anim = 8601
postype = p1  ;p2,front,back,left,right
pos = 70,-45
facing = 1
bindtime = 99
removetime = 5
scale = .7,.7
sprpriority = 3
ontop = 1
ownpal = 0
removeongethit = 1



[State 2001, 1]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 9
trigger6 = animelem = 11
attr = S, HA			;Attribute: Standing, Normal Attack
damage = 55, 3			;Damage that move inflicts, guard damage
getpower = 0
animtype = heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 6, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2, 7			;Time attacker pauses, time opponent shakes
guard.pause = 13
sparkno = s8022
guard.sparkno = s8001
sparkxy = -30, -50
hitsound = s8000,4
guardsound = S8000,6			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = -8		;Velocity at which opponent is pushed
;airguard.velocity = -3,-3	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = high			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -8,-0.5		;X-velocity at which opponent is pushed,
air.hittime = 20			;Time before opponent regains control in air
envshake.time = 5
envshake.ampl = 5
kill = 0


[State 2001, 1]
type = HitDef
trigger1 = animelem = 14
attr = S, HA			;Attribute: Standing, Normal Attack
damage = 145, 10		;Damage that move inflicts, guard damage
getpower = 0
animtype = heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 6, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2, 7			;Time attacker pauses, time opponent shakes
guard.pause = 13
sparkno = s8222
guard.sparkno = s8001
sparkxy = -80, -70
hitsound = s8000,4
guardsound = S8000,6			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = -12,0		;Velocity at which opponent is pushed
;airguard.velocity = -3,-3	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -12,-0		;X-velocity at which opponent is pushed,
air.hittime = 20			;Time before opponent regains control in air
ground.cornerpush.veloff = 5
guard.cornerpush.veloff = 5
air.cornerpush.veloff = 5
air.guard.cornerpush.veloff = 5
envshake.time = 5
envshake.ampl = 5
fall = 1


[State 3001, next]
type = changestate
trigger1 = animtime = 0
value = 50
ctrl = 0

;blade frenzy 1
[Statedef 3100]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3101

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 1000,-70000
poweradd = -1000
move = 1
movetime = 33

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000];super fundo helper
type = helper
stateno = 8600
trigger1 = time=0
pos = 0,0
postype = left
ID=8500
ownpal = 1
name = "super-fx"
sprpriority = -3
supermovetime = 80




[State 3001, next]
type = changestate
trigger1 = animtime = 0
value = 3101
ctrl = 1

;-------------------------------------------------------------------------

;blade frenzy 2
[Statedef 3101]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3100

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 10
trigger6 = animelem = 12
trigger7 = animelem = 14
trigger8 = animelem = 16

value = S3000,0
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3102
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 32
vel = 0,0
accel = 0,0
random = 0,0
removetime = 32
pausemovetime = 40
scale = 1,1
sprpriority = 5
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0


[State 0, VelAdd]
type = Velset
trigger1 = time > 1
x = 6


[State 2001, 1]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
trigger9 = animelem = 9
trigger10 = animelem = 10
trigger11 = animelem = 11
trigger12 = animelem = 12
trigger13 = animelem = 13
trigger14 = animelem = 14
trigger15 = animelem = 15
trigger16 = animelem = 16
attr = S, HA			;Attribute: Standing, Normal Attack
damage = 50, 10		;Damage that move inflicts, guard damage
getpower = 0
animtype = heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 6, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2, 10			;Time attacker pauses, time opponent shakes
guard.pause = 13
sparkno = s8222
guard.sparkno = s8001
sparkxy = -80, -70
hitsound = s8000,5
guardsound = S8000,6			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = -7,0		;Velocity at which opponent is pushed
;airguard.velocity = -3,-3	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = Low			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -8,-0		;X-velocity at which opponent is pushed,
air.hittime = 12			;Time before opponent regains control in air
ground.cornerpush.veloff = 5
guard.cornerpush.veloff = 5
air.cornerpush.veloff = 5
air.guard.cornerpush.veloff = 5
envshake.time = 5
envshake.ampl = 5
fall = 1

[State 3001, next]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1
;------------------------------------

;tendril destroyer
[Statedef 3200]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3200
sprpriority = 1

[State 50, AfterImage]
type = AfterImage
trigger1 = timemod =20,0
time = 27
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = .5,.5,.5
length = 6
trans = add1
TimeGap  = 2
FrameGap = 3

[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -2000

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000];super fundo helper
type = helper
stateno = 8600
trigger1 = time=0
pos = 0,0
postype = left
ID=8500
ownpal = 1
name = "super-fx"
sprpriority = -3
supermovetime = 80

[State 0, Helper]
type = Helper
trigger1 = time=10
helpertype = normal ;player
name = "tendrils"
stateno = 3201
pos = 0,0
postype = p1    ;p2,front,back,left,right
ontop = 1



[State 3001, next]
type = changestate
trigger1 = time = 153
value = 0
ctrl = 1
;----------------------------------------------------------------------------------

;tendrils
[Statedef 3201]
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3201
sprpriority = 0

[State 1005, combo counter]
type = ParentVarAdd
trigger1 = MoveHit
v = 11
value = 6
persistent = 0

[State 1005, first attack]
type = ParentVarAdd
trigger1 = MoveHit
trigger1 = parent,var(13)=0
v = 13
value = 1
ignorehitpause = 1
persistent = 0

[State 2001, 1]
type = HitDef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
trigger9 = animelem = 9
trigger10 = animelem = 10
trigger11 = animelem = 11
trigger12 = animelem = 12
trigger13 = animelem = 13
trigger14 = animelem = 14
trigger15 = animelem = 15
trigger16 = animelem = 16
attr = S, HA
damage = 13, 3		;Damage that move inflicts, guard damage
getpower = 0
animtype = heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 6, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2, 10		;Time attacker pauses, time opponent shakes
guard.pause = 5
sparkno = s8222
guard.sparkno = s8001
sparkxy = 0, -70
hitsound = s7000,3
guardsound = S8000,6			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = ifelse(random<499,-1,1),ifelse(random<499,-5,-8)		;Velocity at which opponent is pushed
;airguard.velocity = -3,-3	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = ifelse(random<499,-1,1),ifelse(random<499,-5,-8)		;X-velocity at which opponent is pushed,
air.hittime = 12			;Time before opponent regains control in air
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.guard.cornerpush.veloff = 5
envshake.time = 5
envshake.ampl = 5
fall = 1




[State 2001, 1]
type = HitDef
trigger1 = animelem = 17
trigger2 = animelem = 18
trigger3 = animelem = 19
trigger4 = animelem = 20
trigger5 = animelem = 21
trigger6 = animelem = 22
trigger7 = animelem = 23
trigger8 = animelem = 24
trigger9 = animelem = 25
trigger10 = animelem = 26
trigger11 = animelem = 27
trigger12 = animelem = 28
trigger13 = animelem = 29
trigger14 = animelem = 30
attr = S, HA			;Attribute: Standing, Normal Attack
damage = 13, 3		;Damage that move inflicts, guard damage
getpower = 0
animtype = heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 6, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2, 0			;Time attacker pauses, time opponent shakes
guard.pause = 5
sparkno = s8222
guard.sparkno = s8001
sparkxy = 0, -70
hitsound = s7000,3
guardsound = S8000,6			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = ifelse(random<499,-5,5),ifelse(random<499,-1,-2)		;Velocity at which opponent is pushed
;airguard.velocity = -3,-3	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = trip			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = ifelse(random<499,-5,5),ifelse(random<499,-1,-2)		;X-velocity at which opponent is pushed,
air.hittime = 12			;Time before opponent regains control in air
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.guard.cornerpush.veloff = 5
envshake.time = 5
envshake.ampl = 5
fall = 1


[State 2001, 1]
type = HitDef
trigger1 = animelem = 31
trigger2 = animelem = 32
trigger3 = animelem = 33
trigger4 = animelem = 34
attr = S, HA			;Attribute: Standing, Normal Attack
damage = 13, 3		;Damage that move inflicts, guard damage
getpower = 0
animtype = heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 6, Hit			;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 2, 0			;Time attacker pauses, time opponent shakes
guard.pause = 5
sparkno = s8222
guard.sparkno = s8001
sparkxy = 0, -70
hitsound = s7000,3
guardsound = S8000,6			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0		;Time that the opponent slides back
ground.hittime  = 20		;Time opponent is in hit state
ground.velocity = ifelse(random<499,-5,5),ifelse(random<499,-1,-2)		;Velocity at which opponent is pushed
;airguard.velocity = -3,-3	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = trip			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = ifelse(random<499,-5,5),ifelse(random<499,-1,-2)		;X-velocity at which opponent is pushed,
air.hittime = 12			;Time before opponent regains control in air
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.guard.cornerpush.veloff = 5
envshake.time = 5
envshake.ampl = 5
fall = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
trigger4 = animelem = 20
trigger5 = animelem = 25
value = 1
;ignorehitpause =
;persistent =


[State 3030, 1]
type = PlaySnd
trigger1 = time > 14
trigger1 = timemod = 20,0
value = 7000, ifelse(random<499,0,2)
volume = 100

[State 3030, 1]
type = PlaySnd
trigger1 = movehit = 1
value = 7000, 4
volume = 250

[State 1055, end]
type = destroyself
trigger1=animtime = 0

[State 1055, end]
type = destroyself
trigger1=root, stateno !=3200
;------------------------------

;cyber carnage
[Statedef 3300]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3300

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

[State 3000];super fundo helper
type = helper
stateno = 8600
trigger1 = time=0
pos = 0,0
postype = left
ID=8500
ownpal = 1
name = "super-fx"
sprpriority = -3
supermovetime = 80

[State 3030, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 1
volume = 250


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3300
trigger1 =  animtime = 0
value = 3305
;elem = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3305
trigger1 =  animelem = 1
value = S3400,1
volume = 244
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face KFM
p1stateno = 3305      ;On success, KFM changes to state 810
p2stateno = 3310       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3320
ctrl = 1

;grab---------------------------------------------------------
[Statedef 3305]
type    = S
movetype= A
physics = N
anim = 3310
poweradd = 60



[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8600, 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,0
volume = 255



[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = - 95
absolute = 0
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 300, -50
time = 7

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 2
pos = 240,-50
time = 7


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos =  170,-50
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 4
pos =  130,-50
time = 7



[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3315
ctrl = 1
; END

;p2 state------------------------------------------------
[Statedef 3310]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820



[State 820, 2]
type = SelfState
Trigger1 = time = 75
;trigger1 = !gethitvar(isbound)
value = 5070

;blade and axe-----------------------------------------------------
[Statedef 3315]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3315

[State 0, HitDef]
type = HitDef
trigger1 =  animelem =3|| animelem =4
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = medium
damage    = 30,5
sparkno = s8222
guard.sparkno = s8001
sparkxy = 10,-55
hitsound = S1100,3
guardsound = S8000,6
pausetime = 2,25
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guardsound = 6,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -1
airguard.velocity = -1
air.type = Low
air.velocity = -1,1
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
numhits = 1
;getpower = 0,0
;givepower = 0,0
palfx.time = 0


[State 0, HitDef]
type = HitDef
trigger1 =  animelem =14
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = medium
damage    = 80,5
sparkno = s8222
guard.sparkno = s8001
sparkxy = 10,-55
hitsound = S1100,3
guardsound = S8000,6
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guardsound = 6,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -4,-7
airguard.velocity = -4
air.type = Low
air.velocity = -4,-7
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
numhits = 1
;getpower = 0,0
;givepower = 0,0
palfx.time = 0
fall = 1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3320
ctrl = 1

;fire beam
[Statedef 3320]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3320
 sprpriority = 1

[State 0, Helper]
type = Helper
trigger1 = animelem =7
helpertype = normal ;player
name = "beam"
stateno = 3325
pos = 80,-100
postype = p1    ;p2,front,back,left,right
ontop = 1
;ignorehitpause =
;persistent =

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3330
ctrl = 1

;beam---------------------------------
[Statedef 3325]
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3325
sprpriority = 2

[State 1005, combo counter]
type = ParentVarAdd
trigger1 = MoveHit
v = 11
value = 6
persistent = 0

[State 1005, first attack]
type = ParentVarAdd
trigger1 = MoveHit
trigger1 = parent,var(13)=0
v = 13
value = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3400,0
volume = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, PalFXWiz]
type = PalFX
trigger1 = time = 0
time = 100
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 0
color = 0
;ignorehitpause = 0
;persistent = 1

[State 0, HitDef]
type = HitDef
trigger1 =  timemod= 3,0
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
sprpriority = 2
air.animtype = medium
damage    = 30,5
sparkno = s8222
guard.sparkno = s8001
sparkxy = 20,-55
;hitsound = S1100,3
;guardsound = S8000,6
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guardsound = 6,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -4,-6
airguard.velocity = -4
air.type = Low
air.velocity = -4,-6
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 0
fall.damage = 10
down.bounce = 1
numhits = 1
;getpower = 0,0
;givepower = 0,0
palfx.time = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
;ignorehitpause =
;persistent =
;----------------------------------------------

;fire missles
[Statedef 3330]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3330
sprpriority = 1

[State 0, Helper]
type = Helper
trigger1 = animelem =3
helpertype = normal ;player
name = "rockets"
stateno = 3335
pos = 30,-120
postype = p1    ;p2,front,back,left,right
ontop = 1
;ignorehitpause =
;persistent =

[State 0, Helper]
type = Helper
trigger1 = animelem =3
helpertype = normal ;player
name = "rockets"
stateno = 3335
pos = 80,-110
postype = p1    ;p2,front,back,left,right
ontop = 1
;ignorehitpause =
;persistent =



[State 0, Helper]
type = Helper
trigger1 = animelem =3
helpertype = normal ;player
name = "rockets"
stateno = 3335
pos = 65,-80
postype = p1    ;p2,front,back,left,right
ontop = 1
;ignorehitpause =
;persistent =



[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3340
;---------------------------------------------------

;missles
[Statedef 3335]
type    = S
movetype= A
physics = N
poweradd= 0
ctrl = 0
velset = 6,0
anim = 3335
sprpriority = 2

[State 0, ]
type = PlaySnd
trigger1 = time = 4
value = S800,9
volume = 255

[State 1005, combo counter]
type = ParentVarAdd
trigger1 = MoveHit
v = 11
value = 6
persistent = 0

[State 1005, first attack]
type = ParentVarAdd
trigger1 = MoveHit
trigger1 = parent,var(13)=0
v = 13
value = 1
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3400,2
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 0, VelAdd]
type = VelAdd
trigger1 =  p2bodydist y >0
x = 0
y = .05
;ignorehitpause =
;persistent =

[State 0, VelAdd]
type = VelAdd
trigger1 =  p2bodydist y <0
x = 0
y = -.05
;ignorehitpause =
;persistent =


[State 0, HitDef]
type = HitDef
trigger1 =  !movecontact
attr = S,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = medium
damage    = 50,5
sparkno = s8222
guard.sparkno = s8001
sparkxy = 10,-55
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guardsound = 6,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -4
airguard.velocity = -4
air.type = Low
air.velocity = -4,1
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1

[State 0, Explod]
type = Explod
trigger1 = movecontact = 1
anim = 3336
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 2
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = pos y >0
value = S3400,3
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = pos y >0
value = S3400,3
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, Explod]
type = Explod
trigger1 = pos y >0
anim = 3336
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
sprpriority = 2
ontop = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = S3400,3
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = S3400,3
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0

[State 1055, end]
type = destroyself
trigger1=frontedgedist<-120||backedgedist<-120||pos y >0
;------------------------------

;change back
[Statedef 3340]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 3340
;elem = 1
;ignorehitpause =
;persistent =


[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

