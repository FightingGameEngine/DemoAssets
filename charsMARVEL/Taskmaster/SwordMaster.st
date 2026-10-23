;---------------------------------------------------------------------------------------------
;Sword MasterL
[Statedef 1300]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1300
ctrl = 0
sprpriority = 2

[State explod]
type = Explod
trigger1 = animelem = 1
anim = 20100
id = 20100
sprpriority = 15
postype = p1
pos = -30,0;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
ontop = 1
shadow = 0,0,0
removeongethit = 1

[State 1300, voice]
type = PlaySnd
trigger1 = animelem = 2
value = s1300, 0

[State 1300, SE]
type = PlaySnd
trigger1 = animelem = 9
value = s8400, 5

[State 1300, SE]
type = PlaySnd
trigger1 = animelem = 10
value = s8100, 0

;---------------------[îhê∂]
[State 1300, addZ]
type = ChangeState
trigger1 = ( (moveguarded) && (command = "z") )
value = 1301

;---------------------[ãÛíÜîªíË]
[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
StateType = A
Physics = N

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem >= 10
StateType = S
Physics = N

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 4
x = 1
y = -1

[State velset]
type = VelSet
trigger1 = AnimElem = 9
trigger2 = pos Y > 0
x = 1
y = 2

[State vPosset]
type = PosSet
trigger1 = AnimElem >= 9
trigger2 = pos Y > 0 
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 13
x = 0
y = 0

[State 1300, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 50, 15
givepower = 10
getpower = 113
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20021
sparkxy = -10, -60
guard.sparkno = s20050
hitsound = s8000,12
guardsound = s8500,0
guard.hittime = 23
guard.velocity = -1
ground.type = Low
ground.slidetime = 27
ground.hittime  = 27
ground.velocity = -6
guard.hittime  = 23
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 1
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Sword MasterM
[Statedef 1310]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1310
ctrl = 0
sprpriority = 2

[State explod]
type = Explod
trigger1 = animelem = 1
anim = 20100
id = 20100
sprpriority = 15
postype = p1
pos = -30,0;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
ontop = 1
shadow = 0,0,0
removeongethit = 1

[State 1300, voice]
type = PlaySnd
trigger1 = animelem = 9
value = s1300, 0

[State 1300, SE]
type = PlaySnd
trigger1 = animelem = 13
value = s8400, 5

[State 1300, SE]
type = PlaySnd
trigger1 = animelem = 14
value = s8100, 0

;---------------------[îhê∂]
[State 1300, addZ]
type = ChangeState
trigger1 = ( (moveguarded) && (command = "z") )
value = 1305

;---------------------[ãÛíÜîªíË]
[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
trigger5 = AnimElem = 12
trigger6 = AnimElem = 13
StateType = A
Physics = N

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem >= 14
StateType = S
Physics = N

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 8
x = 3
y = -2

[State velset]
type = VelSet
trigger1 = AnimElem = 12
trigger2 = pos Y > 0
x = 2
y = 2

[State vPosset]
type = PosSet
trigger1 = AnimElem >= 12
trigger2 = pos Y > 0 
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 17
x = 0
y = 0

[State 1310, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 50, 15
givepower = 10
getpower = 113
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20021
sparkxy = -10, -60
guard.sparkno = s20050
guard.hittime = 23
guard.velocity = -1
hitsound = s8000,12
guardsound = s8500,0
ground.type = Low
ground.slidetime = 27
ground.hittime  = 27
ground.velocity = -6
guard.hittime  = 23
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 1
air.fall = 1
all.recover = 0

[State 1310, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Sword MasterH
[Statedef 1320]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1320
ctrl = 0
sprpriority = 2

[State explod]
type = Explod
trigger1 = animelem = 1
anim = 20100
id = 20100
sprpriority = 15
postype = p1
pos = -30,0;0,0
bindtime = -1
supermove = 0
under = 0
;trans = addalpha
;alpha = 255,255
;ownpal = 1
ignorehitpause = 1
ontop = 1
shadow = 0,0,0
removeongethit = 1

[State 1300, voice]
type = PlaySnd
trigger1 = animelem = 14
value = s1300, 0

[State 1300, SE]
type = PlaySnd
trigger1 = animelem = 18
value = s8400, 5

[State 1300, SE]
type = PlaySnd
trigger1 = animelem = 19
value = s8100, 0

;---------------------[îhê∂]
[State 1300, addZ]
type = ChangeState
trigger1 = ( (moveguarded) && (command = "z") )
value = 1308

;---------------------[ãÛíÜîªíË]
[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
trigger5 = AnimElem = 17
trigger6 = AnimElem = 18
StateType = A
Physics = N

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem >= 14
StateType = S
Physics = N

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 13
x = 5
y = -3

[State velset]
type = VelSet
trigger1 = AnimElem = 17
trigger2 = pos Y > 0
x = 3
y = 2

[State vPosset]
type = PosSet
trigger1 = AnimElem >= 17
trigger2 = pos Y > 0 
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 22
x = 0
y = 0

[State 1320, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 50, 15
givepower = 10
getpower = 113
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20021
sparkxy = -10, -60
guard.sparkno = s20050
guard.hittime = 23
guard.velocity = -1
hitsound = s8000,12
guardsound = s8500,0
ground.type = High
ground.slidetime = 27
ground.hittime  = 27
ground.velocity = -6
guard.hittime  = 23
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 1
air.fall = 1
all.recover = 0

[State 1320, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Head Butt (From SwordL)
[Statedef 1301]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1301
ctrl = 0
sprpriority = 2

[State 1301, SE]
type = PlaySnd
trigger1 = animelem = 4
value = s8400, 2

;---------------------[îhê∂]
[State 1301, flagreset]
type = MoveHitReset
trigger1 = AnimElem = 1

[State 1301, addZ]
type = ChangeState
trigger1 = ( (movehit) && (command = "AimH") && (prevstateno = 1300) )
trigger2 = ( (movehit) && (command = "AimH") && (prevstateno = 1320) )
value = 1302

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 1
y = 0

[State unblockable]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1301, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 30, 15
givepower = 60
getpower = 24
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20021
sparkxy = -10, -60
guard.sparkno = s20050
hitsound = s8000,8
guardsound = s8500,0 ;6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
fall = 0
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
; Lights out
[Statedef 1302]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1400
ctrl = 0
sprpriority = 2

[State 1302, voice]
type = PlaySnd
trigger1 = animelem = 1
value = s1300, 1

[State 1302, SE]
type = PlaySnd
trigger1 = animelem = 1
value = s8400, 5
;value = s10000, 0

[State 1302, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 0,0
givepower = 60
getpower = 113
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20011
sparkxy = -10, -60
guard.sparkno = s20050
hitsound = s8000,12
guardsound = s8500,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 1302, flagreset]
type = MoveHitReset
trigger1 = AnimElem = 1

[State 1302, hit]
type = ChangeState
trigger1 = movehit
value = 1303
ctrl = 0

[State 1302, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------------------------------------
; Lights Out Throw
[Statedef 1303]
type = S
movetype= A
physics = N
anim = 1303
poweradd = 100

[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State 1303, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -113

[State 1303, Throw]
type = TargetState
trigger1 = AnimElem = 1
value = 1304

[State 1303, GunPrepareSnd]
type = PlaySnd
trigger1 = animelem = 4
value = S3100,5

[State 1303, GunFireSnd]
type = PlaySnd
trigger1 = animelem = 6
value = S3100,6

[State GunHitMark2]
type = Explod
trigger1 = animelem = 6
anim = 20020
id = 20020
sprpriority = 15
postype = p2
pos = 50,-70
bindtime = -1
supermove = 0
under = 0
ignorehitpause = 1
ontop = 1
shadow = 0,0,0

[State 1303, DownSnd]
type = PlaySnd
trigger1 = animelem = 14
trigger2 = animelem = 17
value = S8200,0

[State 1303, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 100, 0

[State 1303, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 100, -90

[State 1303, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
pos = 100, -115

[State 1303, Bind 4]
type = TargetBind
trigger1 = AnimElem = 6
pos = 125, -130

[State 1303, Bind 5]
type = TargetBind
trigger1 = AnimElem = 7
pos = 150, -145

[State 1303, Bind 6]
type = TargetBind
trigger1 = AnimElem = 8
pos = 175, -160

[State 1303, Bind 7]
type = TargetBind
trigger1 = AnimElem = 9
pos = 200, -130

[State 1303, Bind 8]
type = TargetBind
trigger1 = AnimElem = 10
pos = 225, -100

[State 1303, Bind 9]
type = TargetBind
trigger1 = AnimElem = 11
pos = 250, -70

[State 1303, Bind 10]
type = TargetBind
trigger1 = AnimElem = 12
pos = 275, -40

[State 1303, Bind 11]
type = TargetBind
trigger1 = AnimElem = 13
pos = 300, 0

[State 1303, Bind 12]
type = TargetBind
trigger1 = AnimElem = 14
pos = 300, -10

[State 1303, Bind 13]
type = TargetBind
trigger1 = AnimElem = 15
pos = 300, -15

[State 1303, Bind 14]
type = TargetBind
trigger1 = AnimElem = 16
pos = 300, -10

[State 1303, Bind 15]
type = TargetBind
trigger1 = AnimElem = 17
pos = 300, 0


[State 1303, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Lights Out Throw enemy 
[Statedef 1304]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 60

[State 1304]
type = ChangeAnim2
trigger1 = Time = 0
value = 1304

[State 1304, No scroll]
type = ScreenBound
trigger1 = 1
value = 1;0

[State 1402, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem >= 13
StateType = L
Physics = N

[State 1304] ;Hit ground
type = SelfState
trigger1 = time = 90
value = ifelse(Alive,5120,5150)
ctrl=0


;---------------------------------------------------------------------------------------------
;Head Butt (From SwordM)
[Statedef 1305]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1301
ctrl = 0
sprpriority = 2

[State 1305, SE]
type = PlaySnd
trigger1 = animelem = 4
value = s8400, 2

;---------------------[îhê∂]
[State 1305, flagreset]
type = MoveHitReset
trigger1 = AnimElem = 1

[State 1305, addY]
type = ChangeState
trigger1 =  (movehit) &&  (command = "y") 
value = 1306

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
x = 1
y = 0

[State unblockable]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1305, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 30, 7
givepower = 2
getpower = 24
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20020
sparkxy = -10, -60
guard.sparkno = s20050
hitsound = s8000,8
guardsound = s8500,0 ;6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.type = Low
air.hittime = 25
air.velocity = -6,-5
fall = 0
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Below The Belt
[Statedef 1306]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1305
ctrl = 0
sprpriority = 2

[State 1306, SE]
type = PlaySnd
trigger1 = animelem = 5
value = s8400, 1

[State 1306, Voice]
type = PlaySnd
trigger1 = animelem = 5
value = s200, 8

;---------------------[îhê∂]
[State 1306, addZ]
type = ChangeState
trigger1 =  (movehit) &&  (command = "z")
value = 1307

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
x = 1
y = 0

[State 1305, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 28, 7
givepower = 2
getpower = 24
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20020
sparkxy = -10, -60
guard.sparkno = s20050
hitsound = s8000,8
guardsound = s8500,0 ;6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
guard.hittime  = 23
air.type = Low
air.hittime = 25
air.velocity = -6,-5
fall = 0
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Low Kick
[Statedef 1307]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1306
ctrl = 0
sprpriority = 2

[State 1307, SE]
type = PlaySnd
trigger1 = animelem = 4
value = s8400, 1

[State 1305, Voice]
type = PlaySnd
trigger1 = animelem = 4
value = s200, 

;---------------------[îhê∂]
[State 1307, addY]
type = ChangeState
trigger1 = ( (movehit) && (command = "AimH") && (prevstateno = 1306) )
value = 1302

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 1
y = 0

[State 1307, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 30, 7
givepower = 2
getpower = 24
animtype = Light
guardflag = LA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20020
sparkxy = -10, -20
guard.sparkno = s20050
hitsound = s8000,8
guardsound = s8500,0 ;6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
guard.hittime  = 23
air.type = Low
air.hittime = 25
air.velocity = -6,-5
fall = 0
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Head Butt (From SwordH)
[Statedef 1308]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1301
ctrl = 0
sprpriority = 2

[State 1308, SE]
type = PlaySnd
trigger1 = animelem = 4
value = s8400, 2

;---------------------[îhê∂]
[State 1308, flagreset]
type = MoveHitReset
trigger1 = AnimElem = 1

[State 1308, addY]
type = ChangeState
trigger1 =  (movehit) &&  (command = "y") 
value = 1309

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
x = 1
y = 0

[State unblockable]
type = AssertSpecial
trigger1 = 1
flag = unguardable

[State 1308, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 30, 7
givepower = 2
getpower = 24
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20020
sparkxy = -10, -60
guard.sparkno = s20050
hitsound = s8000,8
guardsound = s8500,0 ;6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.type = Low
air.hittime = 25
air.velocity = -6,-5
fall = 0
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Below The Belt (For SwordH)
[Statedef 1309]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1305
ctrl = 0
sprpriority = 2

[State 1309, SE]
type = PlaySnd
trigger1 = animelem = 5
value = s8400, 1

[State 1309, Voice]
type = PlaySnd
trigger1 = animelem = 5
value = s200, 8

;---------------------[îhê∂]
[State 1309, addZ]
type = ChangeState
trigger1 =  (movehit) &&  (command = "z")
value = 1311

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
x = 2
y = 0

[State 1309, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 28, 7
givepower = 2
getpower = 24
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20020
sparkxy = -10, -60
guard.sparkno = s20050
hitsound = s8000,8
guardsound = s8500,0 ;6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
guard.hittime  = 23
air.type = Low
air.hittime = 25
air.velocity = -6,-5
fall = 0
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Low Kick (From SwordH)
[Statedef 1311]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1306
ctrl = 0
sprpriority = 2

[State 1311, SE]
type = PlaySnd
trigger1 = animelem = 4
value = s8400, 1

[State 1311, Voice]
type = PlaySnd
trigger1 = animelem = 4
value = s200, 0

;---------------------[îhê∂]
[State 1311, addY]
type = ChangeState
trigger1 =  (movehit) &&  (command = "z")
;trigger1 = ( (movehit) && (command = "AimH") && (prevstateno = 1309) )
value = 1312

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 3
y = 0

[State 1311, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 30, 7
givepower = 2
getpower = 24
animtype = Light
guardflag = LA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20020
sparkxy = -10, -20
guard.sparkno = s20050
hitsound = s8000,8
guardsound = s8500,0 ;6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
guard.hittime  = 23
air.type = Low
air.hittime = 25
air.velocity = -6,-5
fall = 0
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Shield Bash
[Statedef 1312]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1307
ctrl = 0
sprpriority = 2

[State 1312, SE]
type = PlaySnd
trigger1 = animelem = 4
value = s8400, 2

[State 1312, Voice]
type = PlaySnd
trigger1 = animelem = 4
value = s200, 4

;---------------------[îhê∂]
[State 1312, addY]
type = ChangeState
trigger1 =  (movehit) &&  (command = "y")
;trigger1 = ( (movehit) && (command = "AimH") && (prevstateno = 1309) )
value = 1313

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 3
y = 0

[State 1312, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 25, 7
givepower = 2
getpower = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20020
sparkxy = -10, -30
guard.sparkno = s20050
hitsound = s8000,8
guardsound = s8500,0 ;6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
guard.hittime  = 23
air.type = Low
air.hittime = 25
air.velocity = -6,-5
fall = 0
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Knee kick
[Statedef 1313]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1308
ctrl = 0
sprpriority = 2

[State 1313, SE]
type = PlaySnd
trigger1 = animelem = 4
value = s8400, 1

[State 1313, Voice]
type = PlaySnd
trigger1 = animelem = 4
value = s200, 5

;---------------------[îhê∂]
[State 1313, addY]
type = ChangeState
trigger1 = ( (movehit) && (command = "AimH") && (prevstateno = 1312) )
value = 1302

;---------------------[à⁄ìÆ]
[State velset]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 0

[State velset]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
x = 3
y = 0

[State 1313, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 31, 7
givepower = 2
getpower = 25
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20020
sparkxy = -10, -20
guard.sparkno = s20050
hitsound = s8000,8
guardsound = s8500,0 ;6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
guard.hittime  = 23
air.type = Low
air.hittime = 25
air.velocity = -6,-5
fall = 0
air.fall = 1
all.recover = 0

[State 1300, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
