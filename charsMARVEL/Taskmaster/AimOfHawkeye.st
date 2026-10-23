;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Ground/L)
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1000
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

[State 1000, holdL]
type = ChangeState
trigger1 = command = "holdx"
trigger1 = time = 13
value = 1001

[State 1000, voice]
type = PlaySnd
trigger1 = animelem = 1
value = s1000, 0

[State 1000, SE]
type = PlaySnd
trigger1 = animelem = 7
value = s8400, 7

[State 1000, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 50, 15
givepower = 0
getpower = 40
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s7700
;sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 1000, projectile]
type = Projectile
trigger1 = animelem = 7
attr = S, SP
damage = 50,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 40,-70
velocity = 12,0
accel = 0,0
projID = 10000
projanim = 10000
projhitanim = 10000
projremanim = 10000
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
priority = 4
sparkno = s20021
;sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = floor(25*fvar(1))
ground.hittime = floor(25*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,-4
air.juggle = 4 
fall = 0
air.fall = 1
fall.recover = 0

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Ground/L:ChargeLV3)
[Statedef 1001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1001
ctrl = 0
sprpriority = 2

[State 1001, SE]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
value = s8400, 7

[state 1001]
type = VarRandom
trigger1 = 1
v = 6
range = -8,8
IgnoreHitPause = 1

[State 1000, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 45, 15
givepower = 0
getpower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s7700
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 1000, projectile]
type = Projectile
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
attr = S, SP
damage = 50,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 30,-70+var(6)
velocity = 12,0
accel = 0,0
projID = 10000
projanim = 10000
projhitanim = 10000
projremanim = 10000
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
priority = 4
sparkno = s20021
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime =  floor(15*fvar(1))
ground.hittime =  floor(15*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,0
air.juggle = 4 
air.slidetime = floor(15*fvar(1))
air.hittime  = floor(15*fvar(1))
fall = 0
air.fall = 1
fall.recover = 0

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Air/L:Charge LV1)
[Statedef 1005]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1005
ctrl = 0
sprpriority = 2

[State 1000, holdL]
type = ChangeState
trigger1 = command = "holdx"
trigger1 = time = 13
value = 1006

[State 1005, voice]
type = PlaySnd
trigger1 = animelem = 1
value = s1000, 0

[State 1005, SE]
type = PlaySnd
trigger1 = animelem = 7
value = s8400, 7
;value = s10000, 0

;---------------------[慣性エイム]
[state a]
type = varset
trigger1 = prevStateNo = 271
trigger2 = prevStateNo = 631
fvar(3) = 0.25

[state veladd]
type = veladd
trigger1 = 1
x = fvar(3)

[state velset]
type = velset
trigger1 = (fvar(3) > 0) && (animelem = 7)
x = 0

;---------------------[速度]
[state veladd]
type = veladd
trigger1 = time = 0
y = -1

[state veladd]
type = veladd
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 5
trigger4 = animelem = 6
y = 0.4

[state veladd]
type = veladd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
y = 0.85


[State 1005, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 60, 15
givepower = 0
getpower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s7700
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 1005, arrow]
type = Projectile
trigger1 = animelem = 7
attr = S, SP
damage = 45,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 40,-90+var(6)
velocity = 12,0
accel = 0,0
projID = 10000
projanim = 10000
projhitanim = 10000
projremanim = 10000
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
priority = 4
sparkno = s20021
;sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = floor(25*fvar(1))
ground.hittime = floor(25*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,-4
air.juggle = 4 
fall = 0
air.fall = 1
fall.recover = 0

[State vPosset]
type = PosSet
trigger1 = pos Y > 0 
y = 0

[State land]
type = ChangeState
trigger1 = (fvar(3) = 0) && ( pos Y >= 0 )
trigger2 = (fvar(3) > 0) && ( AnimElem >= 8 ) && ( pos Y >= 0 )
value = 52

[state VelAimEnd]
type = ChangeState
trigger1 = (fvar(3) > 0) && (animelem = 8)
value = 72

[State 1005, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 72


;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Air/L:Charge LV3)
[Statedef 1006]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1006
ctrl = 0
sprpriority = 2

[State 1001, SE]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
value = s8400, 7
;value = s10000, 0

;---------------------[慣性エイム]
[state veladd]
type = veladd
trigger1 = 1
x = fvar(3)

[state velset]
type = velset
trigger1 = (fvar(3) > 0) && (animelem = 10)
x = 0

;---------------------[速度]

[state veladd]
type = veladd
trigger1 = ( animelem >= 5 )
trigger2 = ( animelem <= 11 )
y = 0.5

[state veladd]
type = veladd
trigger1 = ( animelem <= 4 )
trigger2 = ( animelem >= 12 )
y = 1

[state 1000]
type = VarRandom
trigger1 = 1
v = 6
range = -8,8
IgnoreHitPause = 1

[State 1001, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 60, 15
givepower = 0
getpower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s7700
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 1001, projectile]
type = Projectile
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
attr = S, SP
damage = 45,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 30,-90+var(6)
velocity = 12,0
accel = 0,0
projID = 10000
projanim = 10000
projhitanim = 10000
projremanim = 10000
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
priority = 4
sparkno = s20021
;sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = floor(15*fvar(1))
ground.hittime = floor(15*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,0
air.juggle = 4 
air.slidetime = floor(15*fvar(1))
air.hittime  = floor(15*fvar(1))
fall = 0
air.fall = 1
fall.recover = 0
down.slidetime = floor(15*fvar(1))
down.hittime = floor(15*fvar(1))

[State vPosset]
type = PosSet
trigger1 = pos Y > 0 
y = 0

[State land]
type = ChangeState
trigger1 = (fvar(3) = 0) && ( pos Y >= 0 )
trigger2 = (fvar(3) > 0) && ( AnimElem >= 11 ) && ( pos Y >= 0 )
value = 52

[state VelAimEnd]
type = ChangeState
trigger1 = (fvar(3) > 0) && (animelem = 11)
value = 72

[State 1006, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 72


;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Ground/M)
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1010
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

[State 1010, holdY]
type = ChangeState
trigger1 = command = "holdy"
trigger1 = time = 13
value = 1011

[State 1010, voice]
type = PlaySnd
trigger1 = animelem = 1
value = s1000, 1

[State 1010, SE]
type = PlaySnd
trigger1 = animelem = 7
value = s8400, 7

[State 1010, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 50, 15
givepower = 0
getpower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s7700
;sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 1010, arrow]
type = Projectile
trigger1 = animelem = 7
attr = S, SP
damage = 45,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 40,-90
velocity = 14,-10
accel = 0,0
projID = 10004
projanim = 10004
projhitanim = 10004
projremanim = 10004
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
priority = 4
sparkno = s20021
sparkxy = 10,0;20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = floor(25*fvar(1))
ground.hittime = floor(25*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,-4
air.juggle = 4 
fall = 0
air.fall = 1
fall.recover = 0

[State 1010, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Ground/M:ChargeLV3)
[Statedef 1011]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1011
ctrl = 0
sprpriority = 2

[State 1011, SE]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
value = s8400, 7
;value = s10000, 0

[state 1011]
type = VarRandom
trigger1 = 1
v = 6
range = -4,4
IgnoreHitPause = 1

[State 1011, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 45, 15
givepower = 0
getpower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s7700
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 1011, arrow]
type = Projectile
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
attr = S, SP
damage = 45,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 40,-90+var(6)
velocity = 14,-10
accel = 0,0
projID = 10004
projanim = 10004
projhitanim = 10004
projremanim = 10004
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
priority = 4
sparkno = s20021
sparkxy = 10,0;20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = floor(15*fvar(1))
ground.hittime = floor(15*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,0
air.juggle = 4 
air.slidetime = floor(15*fvar(1))
air.hittime  = floor(15*fvar(1))
fall = 0
air.fall = 1
fall.recover = 0

[State 1011, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Air/M:Charge LV1)
[Statedef 1015]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1015
ctrl = 0
sprpriority = 2

[State 1015, holdL]
type = ChangeState
trigger1 = command = "holdy"
trigger1 = time = 9
value = 1016

[State 1015, voice]
type = PlaySnd
trigger1 = animelem = 1
value = s1000, 1

[State 1015, SE]
type = PlaySnd
trigger1 = animelem = 7
value = s8400, 7
;value = s10000, 0

;---------------------[慣性エイム]
[state a]
type = varset
trigger1 = prevStateNo = 271
trigger2 = prevStateNo = 631
fvar(3) = 0.25

[state veladd]
type = veladd
trigger1 = 1
x = fvar(3)

[state velset]
type = velset
trigger1 = (fvar(3) > 0) && (animelem = 7)
x = 0

;---------------------[速度]
[state veladd]
type = veladd
trigger1 = time = 0
y = -1

[state veladd]
type = veladd
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 5
trigger4 = animelem = 6
y = 0.4

[state veladd]
type = veladd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
y = 0.85

[State 1015, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 60, 15
givepower = 0
getpower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s20021
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = floor(25*fvar(1))
ground.hittime  = floor(25*fvar(1))
ground.velocity = -6
guard.hittime = 23
air.type = Low
air.hittime = floor(25*fvar(1))
air.velocity = -6,-5

[State 1015, arrow]
type = Projectile
trigger1 = animelem = 7
attr = S, SP
damage = 45,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
hitflag = MAFD
;-----------------------------------Projectile
offset = 40,-90+var(6)
velocity = 14,10;10,0
accel = 0,0
projID = 10003
projanim = 10003
projhitanim = 10003
projremanim = 10003
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
priority = 4
sparkno = s20021
;sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = floor(25*fvar(1))
ground.hittime = floor(25*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,0
air.juggle = 4 
fall = 0
air.fall = 1
fall.recover = 0

[State vPosset]
type = PosSet
trigger1 = pos Y > 0 
y = 0

[State land]
type = ChangeState
trigger1 = (fvar(3) = 0) && ( pos Y >= 0 )
trigger2 = (fvar(3) > 0) && ( AnimElem >= 8 ) && ( pos Y >= 0 )
value = 52

[state VelAimEnd]
type = ChangeState
trigger1 = (fvar(3) > 0) && (animelem = 8)
value = 72

[State 1005, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 72


;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Air/M Charge:LV3)
[Statedef 1016]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1016
ctrl = 0
sprpriority = 2

[State 1016, SE]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
value = s8400, 7
;value = s10000, 0

;---------------------[慣性エイム]
[state veladd]
type = veladd
trigger1 = 1
x = fvar(3)

[state velset]
type = velset
trigger1 = (fvar(3) > 0) && (animelem = 10)
x = 0


;---------------------[速度]

[state veladd]
type = veladd
trigger1 = ( animelem >= 5 )
trigger2 = ( animelem <= 11 )
y = 0.5

[state veladd]
type = veladd
trigger1 = ( animelem <= 4 )
trigger2 = ( animelem >= 12 )
y = 1


[state 1020]
type = VarRandom
trigger1 = 1
v = 6
range = -4,4
IgnoreHitPause = 1

[State 1021, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 45, 15
givepower = 0
getpower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s7700
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 1021, projectile]
type = Projectile
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
attr = S, SP
damage = 45,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------
offset = 40,-90+var(6)
velocity = 14,10
accel = 0,0
projID = 10003
projanim = 10003
projhitanim = 10003
projremanim = 10003
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
hitflag = MAFLD
priority = 4
sparkno = s20021
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = floor(15*fvar(1))
ground.hittime = floor(15*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,0
air.juggle = 4 
air.slidetime = floor(15*fvar(1))
air.hittime  = floor(15*fvar(1))
fall = 0
air.fall = 1
fall.recover = 0
down.slidetime = floor(15*fvar(1))
down.hittime = floor(15*fvar(1))

[State vPosset]
type = PosSet
trigger1 = pos Y > 0 
y = 0

[State land]
type = ChangeState
trigger1 = (fvar(3) = 0) && ( pos Y >= 0 )
trigger2 = (fvar(3) > 0) && ( AnimElem >= 11 ) && ( pos Y >= 0 )
value = 52

[state VelAimEnd]
type = ChangeState
trigger1 = (fvar(3) > 0) && (animelem = 11)
value = 72

[State 1016, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 72


;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Ground/H)
[Statedef 1020]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1020
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

[State 1020, holdZ]
type = ChangeState
trigger1 = command = "holdz"
trigger1 = time = 13
value = 1021

[State 1020, voice]
type = PlaySnd
trigger1 = animelem = 1
value = s1000, 2

[State 1020, SE]
type = PlaySnd
trigger1 = animelem = 7
value = s8400, 7


[State 1020]
type = Helper
trigger1 = animelem = 7
id = 1022
pos = 0,-90
postype = p1
stateno = 1022
helpertype = normal
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1


[State 1020, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Ground/H:ChargeLV3)
[Statedef 1021]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1021
ctrl = 0
sprpriority = 2

[State 1021, SE]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
value = s8400, 7
;value = s10000, 0

[state 1020]
type = VarRandom
trigger1 = 1
v = 6
range = 0,6
IgnoreHitPause = 1


[State 1530]
type = Helper
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
id = 1022
pos = 0,-90
postype = p1
stateno = 1022
helpertype = normal
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1


[State 1011, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------------
;矢
[Statedef 1022]
type     = A
movetype = A
physics  = N
anim     = 10002
poweradd = 0
juggle   = 4
sprpriority = 15

[State 1022, ヒット定義]
type = HitDef
trigger1 = time = 0
attr = S, SP 
animtype  = Hard
damage    = floor(45*fvar(1)),5
getpower  = 40,5
givepower = 4,0 
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 0,10
sparkno = s20021
guard.sparkno = s20050
sparkxy = -10,-20
hitsound = s8000,10
guardsound = s8500,0
ground.type = Low
ground.slidetime = floor(15*fvar(1))
ground.hittime  = floor(15*fvar(1))
ground.velocity = 0,0
guard.hittime = 25
air.velocity = 0,1
air.slidetime = floor(15*fvar(1))
air.hittime  = floor(15*fvar(1))
Persistent = 0
kill = 1
fall = 1
fall.recover = 1
air.fall = 1
fall.animtype = Hard
fall.recovertime = floor(40*fvar(1))

[State 1022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1022, Hitby]
type = Hitby
trigger1 = 1
value = SCA,AP

[State 1022, アーマー]
type = Hitoverride
trigger1 = 1
time = -1
attr = SCA, AP
slot = 1
stateno = 1027

[State 1022]
type = velset
trigger1 = time = 0
x = 2
y = -10

[State 1022, ステート変更]
type = ChangeState
trigger1 = movecontact
value = 1027
ctrl = 0

[State 1022, ステート変更]
type = ChangeState
trigger1 = time > 12
value = 1023
ctrl = 0

;------------------------------------
;落下
[Statedef 1023]
type     = A
movetype = A
physics  = N
anim     = 10006
poweradd = 0
velset = 0,0
juggle   = 4
sprpriority = 15

[State 1022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1023, posAdd]
type = posadd
trigger1 = AnimElem = 2
x = 120
y = 20

[State 1023, def]
type = HitDef
trigger1 = time = 0
attr = S, SP 
animtype  = Hard
damage    = floor(45*fvar(1)),5
getpower  = 40,5
givepower = 4,0 
priority  = 6
hitflag = MAFD
guardflag = MA
pausetime = 0,10
sparkno = s20021
guard.sparkno = s20050
sparkxy = -10,-20
hitsound = s8000,10
guardsound = s8500,0
ground.type = Low
ground.slidetime = floor(15*fvar(1))
ground.hittime  = floor(15*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,0
air.slidetime = floor(15*fvar(1))
air.hittime  = floor(15*fvar(1))
fall = 0
air.fall = 0
fall.animtype = Hard
fall.recover = 0
Persistent = 0
kill = 1

[State 1023, VelSet]
type = VelSet
trigger1 = Time > 2
x = 2
Y = 14



[State 1023, Hitby]
type = Hitby
trigger1 = 1
value = SCA,AP

[State 1023, アーマー]
type = Hitoverride
trigger1 = 1
time = -1
attr = SCA, AP
slot = 1
stateno = 7043

[State 3000, ステート変更]
type = ChangeState
trigger1 = movecontact
value = 1028
ctrl = 0

[State 3000, ステート変更]
type = ChangeState
trigger1 = time > 0
trigger1 = pos y >= 0 && vel y > 0
value = 1024

;------------------------------------
;地面に刺さる
[Statedef 1024]
type     = S
movetype = A
physics  = S
anim     = 10007
poweradd = 0
juggle   = 2
sprpriority = 1

[State 1022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1024,]
type = PosSet
trigger1 = time = 0
y = 0

[State 1024,]
type = VelSet
trigger1 = time = 0
x = 0
Y = 0

[State 1024]
type = Playsnd
trigger1 = time = 0
value = s8000,9
channel = -1

[State 3000, ステート変更]
type = Destroyself
trigger1 = time >= 20

;------------------------------------
;上昇中ヒット
[Statedef 1027]
type     = A
movetype = I
physics  = N
anim     = 10009
poweradd = 0
juggle   = 2
sprpriority = 1

[State 1022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 358001,]
type = VelSet
trigger1 = time = 0
x = 0
Y = 0

[State 3000, ステート変更]
type = Destroyself
trigger1 = time >= 50


;------------------------------------
;下降中ヒット
[Statedef 1028]
type     = A
movetype = I
physics  = N
anim     = 10008
poweradd = 0
juggle   = 2
sprpriority = 1

[State 1022, Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 358001,]
type = VelSet
trigger1 = time = 0
x = 0
Y = 0

[State 3000, ステート変更]
type = Destroyself
trigger1 = time >= 50


;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Air/H Charge:LV1)
[Statedef 1025]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1025
ctrl = 0
sprpriority = 2

[State 1025, holdz]
type = ChangeState
trigger1 = command = "holdz"
trigger1 = time = 13
value = 1026

[State 1025, voice]
type = PlaySnd
trigger1 = animelem = 1
value = s1000, 2

[State 1025, SE]
type = PlaySnd
trigger1 = animelem = 7
value = s8400, 7
;value = s10000, 0

;---------------------[慣性エイム]
[state a]
type = varset
trigger1 = prevStateNo = 271
trigger2 = prevStateNo = 631
fvar(3) = 0.25

[state veladd]
type = veladd
trigger1 = 1
x = fvar(3)

[state velset]
type = velset
trigger1 = (fvar(3) > 0) && (animelem = 7)
x = 0

;---------------------[速度]
[state veladd]
type = veladd
trigger1 = time = 0
y = -1

[state veladd]
type = veladd
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 5
trigger4 = animelem = 6
y = 0.4

[state veladd]
type = veladd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
y = 0.85

[state 1026]
type = VarRandom
trigger1 = 1
v = 6
range = -8,8
IgnoreHitPause = 1

[State 1026, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 60, 15
givepower = 0
getpower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s7700
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = floor(15*fvar(1))
ground.hittime  = floor(15*fvar(1))
ground.velocity = -6
guard.hittime = 23
air.type = Low
air.hittime = floor(15*fvar(1))
air.slidetime = floor(15*fvar(1))
air.velocity = -6,4
down.hittime = floor(15*fvar(1))
down.slidetime = floor(15*fvar(1))
down.velocity = -5,-5

[State 1026, arrow]
type = Projectile
trigger1 = animelem = 7
attr = A, SP
damage = 45,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 30,-75+var(6)
velocity = 0,14
accel = 0,0
projID = 10001
projanim = 10001
projhitanim = 10001
projremanim = 10001
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
hitflag = MAFLD
priority = 4
sparkno = s20021
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = floor(25*fvar(1))
ground.hittime = floor(25*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,-2
air.juggle = 4 
fall = 0
air.fall = 1
fall.recover = 0

[State vPosset]
type = PosSet
trigger1 = pos Y > 0 
y = 0

[State land]
type = ChangeState
trigger1 = (fvar(3) = 0) && ( pos Y >= 0 )
trigger2 = (fvar(3) > 0) && ( AnimElem >= 8 ) && ( pos Y >= 0 )
value = 52

[state VelAimEnd]
type = ChangeState
trigger1 = (fvar(3) > 0) && (animelem = 8)
value = 72

[State 1026, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 72


;---------------------------------------------------------------------------------------------
;Aim of Hawkeye (Air/H Charge LV3)
[Statedef 1026]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 00
anim = 1026
ctrl = 0
sprpriority = 2

[State 1026, SE]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
value = s8400, 7
;value = s10000, 0

;---------------------[慣性エイム]
[state veladd]
type = veladd
trigger1 = 1
x = fvar(3)

[state velset]
type = velset
trigger1 = (fvar(3) != 0) && (animelem = 10)
x = 0

;---------------------[速度]

[state veladd]
type = veladd
trigger1 = ( animelem >= 5 )
trigger2 = ( animelem <= 11 )
y = 0.5

[state veladd]
type = veladd
trigger1 = ( animelem <= 4 )
trigger2 = ( animelem >= 12 )
y = 1

[state 1026]
type = VarRandom
trigger1 = 1
v = 6
range = -8,8
IgnoreHitPause = 1

[State 1026, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 60, 15
givepower = 0
getpower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = s7700
sparkxy = -10, -60
guard.sparkno = s6767
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5

[State 1026, arrow]
type = Projectile
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
attr = A, SP
damage = 45,5
getpower  = 40,5
givepower = 4,0
animtype = hard
pausetime = 22,4
guard.pausetime = 22,3
;-----------------------------------Projectile
offset = 30,-75+var(6)
velocity = 0,14
accel = 0,0
projID = 10001
projanim = 10001
projhitanim = 10001
projremanim = 10001
projscale = 1,1
projshadow = 0,0,0
projhits = 1
projmisstime = 1
projpriority = 1
projremovetime = -1
;-----------------------------------
guardflag = MA
hitflag = MAFLD
priority = 4
sparkno = s20021
sparkxy = 20, ceil(0*const(size.yscale)) 
guard.sparkno = s20050
hitsound = s8000,10
guardsound = s8500,0
ground.type = High
ground.slidetime = floor(15*fvar(1))
ground.hittime = floor(15*fvar(1))
ground.velocity = -3,0
guard.hittime = 23
air.velocity = -3,0
air.juggle = 4 
air.slidetime = floor(15*fvar(1))
air.hittime  = floor(15*fvar(1))
fall = 0
air.fall = 1
fall.recover = 0
down.slidetime = floor(15*fvar(1))
down.hittime = floor(15*fvar(1))

[State vPosset]
type = PosSet
trigger1 = pos Y > 0 
y = 0

[State land]
type = ChangeState
trigger1 = (fvar(3) = 0) && ( pos Y >= 0 )
;trigger2 = (fvar(3) > 0) && ( pos Y >= 0 )
value = 52

[state VelAimEnd]
type = ChangeState
trigger1 = (fvar(3) > 0) && (animelem = 11)
value = 72

[State 1026, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 72



