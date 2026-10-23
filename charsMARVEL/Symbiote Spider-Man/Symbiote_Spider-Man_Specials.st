;---------------------------------------------------------------------------
;---{Special Attacks}---
;-----------------------------------------------------------------------------
;Standing Light Web-Shot (Author Seth Zankuten)
[statedef 1000]
type = S
movetype = I
physics = S
anim = 1000
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 40,-40
postype = p1
facing = 1
stateno = 1005
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1005]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 5,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1005
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1005
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1005
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1005
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1005
x = 4
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1005
attr = S,SA
hitflag = MAFP
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 40,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1009

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1007
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1006]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1006
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1007]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1007
velset = 0,0,0
sprpriority = 5

[State 0, ]
type = Gravity
trigger1 = target,statetype = A

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = 0,0,foot

[State 0, ]
type = ChangeState
trigger1 = statetype = S
trigger1 = time = 20
trigger2 = p2stateno != 1009
trigger3 = statetype = A
trigger3 = pos y >= -5
value = 1008

[Statedef 1008]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1008
sprpriority = 5

[State 0, ]
type = PosSet
trigger1 = stateno = 1008
y = 0

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

[Statedef 1009]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0,0
anim = 5000
sprpriority = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1009

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = time >= 0
trigger1 = statetype = S
y = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 20
trigger1 = Life <= 0
trigger2 = HitCount = 1
value = 5000
ctrl = 0

[State 0, ]
type = selfstate
triggerall = Life > 0
trigger1 = Time >= 20
trigger1 = Pos Y = 0
trigger2 = statetype = A
trigger2 = pos y >= -5
anim = 5200
value = 5200
ctrl = 1

[State 0, ]
type = selfstate
trigger1 = Time >= 20
trigger1 = Life > 0
trigger1 = Pos Y <= 0
value = 51
ctrl = 1

;Standing Web Shot Medium  (Author Seth Zankuten)
[statedef 1010]
type = S
movetype = I
physics = S
anim = 1000
poweradd = 50
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 40,-40
postype = p1
facing = 1
stateno = 1015
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1015]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 7,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1015
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1015
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1015
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1015
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1015
x = 5.5
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1015
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 50,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1019

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1017
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1017]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1007
velset = 0,0
sprpriority = 5

[State 0, ]
type = Gravity
trigger1 = target,statetype = A
trigger1 = pos y <= 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = 0,0,foot

[State 0, ]
type = ChangeState
trigger1 = time = 40
trigger2 = p2stateno != 1019
trigger3 = statetype = A
trigger3 = pos y >= -5
value = 1008

[Statedef 1019]
type = A
movetype = H
physics = A
ctrl = 0
velset = 0,0
anim = 5000
sprpriority = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1009

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = time >= 0
trigger1 = statetype = S
y = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 40
trigger1 = Life <= 0
trigger2 = HitCount = 1
value = 5000
ctrl = 0

[State 0, ]
type = selfstate
triggerall = Life > 0
trigger1 = Time >= 40
trigger1 = Pos Y = 0
trigger2 = statetype = A
trigger2 = pos y >= -5
anim = 5200
value = 5200
ctrl = 1

[State 0, ]
type = selfstate
trigger1 = Time >= 40
trigger1 = Life > 0
trigger1 = Pos Y < 0
value = 51
ctrl = 1

;Standing Web-Shot Fierce  (Author Seth Zankuten)
[statedef 1020]
type = S
movetype = I
physics = S
anim = 1000
poweradd = 75
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 40,-40
postype = p1
facing = 1
stateno = 1025
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1025]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 8,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1025
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1025
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1025
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1025
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1025
x = 7.5
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1025
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 75,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1029

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1027
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1027]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1007
velset = 0,0
sprpriority = 5

[State 0, ]
type = Gravity
trigger1 = target,statetype = A
trigger1 = pos y <= 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = 0,0,foot

[State 0, ]
type = ChangeState
trigger1 = time = 60
trigger2 = p2stateno != 1029
trigger3 = statetype = A
trigger3 = pos y >= -5
value = 1008

[Statedef 1029]
type = A
movetype = H
physics = A
ctrl = 0
velset = 0,0
anim = 5000
sprpriority = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1009

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = time >= 0
trigger1 = statetype = S
y = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 60
trigger1 = Life <= 0
trigger2 = HitCount = 1
value = 5000
ctrl = 0

[State 0, ]
type = selfstate
triggerall = Life > 0
trigger1 = Time >= 60
trigger1 = Pos Y = 0
trigger2 = statetype = A
trigger2 = pos y >= -5
anim = 5200
value = 5200
ctrl = 1

[State 0, ]
type = selfstate
trigger1 = Time >= 60
trigger1 = Life > 0
trigger1 = Pos Y < 0
value = 51
ctrl = 1

;-----------------------------------
;Air Light Web Shot  (Author Seth Zankuten)
[statedef 1100]
type = A
movetype = I
physics = A
anim = 1100
poweradd = 25
velset = -1,-3
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1105
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 1105]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 4,4
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1105
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1105
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1105
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1105
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1105
x = 2
y = 2

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1105
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 40,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1009

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1007
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1106]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1106
velset = 0,0
sprpriority = 5

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S6,1

[State 0, ]
type = PosSet
trigger1 = time >= 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;Air Medium Web Shot (Author Seth Zankuten)
[statedef 1110]
type = A
movetype = I
physics = A
anim = 1100
poweradd = 50
velset = -1,-4
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1115
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 1115]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 5,5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1115
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1115
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1115
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1115
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1115
x = 3.5
y = 3.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1115
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 50,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1019

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1017
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

;Air Heavy Web Shot (Author Seth Zankuten)
[statedef 1120]
type = A
movetype = I
physics = A
anim = 1100
poweradd = 75
velset = -1,-5
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1125
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 1125]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 7,7
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1125
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1125
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1125
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1125
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1125
x = 5.5
y = 5.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1125
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 50,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1029

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1027
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

;-----------------------------------
;Wall Cling Off the Edge of Side Wall - Left (Author Seth Zankuten)
[statedef 1200]
type = A
movetype = I
physics = A
anim = 1200
velset = 0,0
ctrl = 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 1200
trigger1 = BackEdgeBodyDist < 2
trigger1 = palno != 11

[State 0, ]
type = VelSet
trigger1 = palno = 11
y = .2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1200
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1200
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = ChangeState
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
value = 1205

[State 0, ]
type = ChangeState
triggerall = palno <= 6
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 10
value = 1201

[State 0, ]
type = ChangeState
triggerall = palno >= 7
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = animtime = 0
value = 1201

[Statedef 1201]
type    = A
movetype= I
physics = A
anim = 1201
velset = 3,-8
ctrl = 1

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52

;-------------------------------------------------------------------------------
;Web-Shot (wall)
[Statedef 1205]
type    = A
movetype= A
physics = N
poweradd= 25
anim = 1205
velset = 0,0,0
ctrl = 0

[State 0,0]
type = PosFreeze
triggerall = Stateno = 1205
trigger1 = BackEdgeBodyDist < 2
trigger1 = palno != 11

[State 0, ]
type = VelSet
trigger1 = palno = 11
y = .2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1205
value = 0

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1205
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S6,1

[State 0, ]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "web-ball"
ID = 1005
pos = 30,-10
postype = p1
facing = 1
stateno = 1206
ownpal = 1

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1209

[Statedef 1206]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1206
velset = 4,4
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1206
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1206
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1206
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1206
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1206
x = 2
y = 2

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1206
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 40,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p1stateno = 1007
p2stateno = 1009

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1209]
type    = A
movetype= I
physics = A
anim = 1209
velset = 0,0,0
ctrl = 0

[State 0,]
type = PosFreeze
triggerall = Stateno = 1209
trigger1 = BackEdgeBodyDist < 2
trigger1 = palno != 11

[State 0, ]
type = VelSet
trigger1 = palno = 11
y = .2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1209
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1209
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = ChangeState
triggerall = palno <= 6
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 10
value = 1201

[State 0, ]
type = ChangeState
triggerall = palno >= 7
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = animtime = 0
value = 1201

;---------------------------------------------------------------------------

;-------------------------------------------------------------------------------

;Wall Cling Off the Edge of Side Wall - Right (Author Seth Zankuten)
[Statedef 1210]
type = A
movetype = I
physics = N
anim = 1200
velset = 0,0
ctrl = 0

[State 0, ]
type = Turn
trigger1 = time = 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 1210
trigger1 = BackEdgeBodyDist < 2
trigger1 = palno != 11

[State 0, ]
type = VelSet
trigger1 = palno = 11
y = .2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1210
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1210
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = ChangeState
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
value = 1205

[State 0, ]
type = ChangeState
triggerall = time >= 1
triggerall = palno <= 6
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 10
value = 1201

[State 0, ]
type = ChangeState
triggerall = time >= 1
triggerall = palno >= 7
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = animtime = 0
value = 1201

;------------------------------------------------------------------------------
; Wall Climb Background
[StateDef 1221]
anim = 1221
ctrl = 0
type = A
movetype = I
physics = A
velset = 1,-5
sprpriority = -2

;[State 1221, Big Spider Web]
;type = Explod
;trigger1 = animelem = 4
;sprpriority = -2
;anim = 1228
;ID = "1228"

;[State 0, ScreenBound]
;type = ScreenBound
;trigger1 = StateNo = 1221 && Anim = 1228 && ID = "1228"
;value = 1
;movecamera = 0,0

[State 1221, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1222

; Wall Climb Background (Stick To Wall)
[StateDef 1222]
anim = 1222
ctrl = 0
type = A
movetype = I
physics = N
velset = 0,0
sprpriority = -2
poweradd = 25

[State 1222, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, NA, SA, HA, NP, SP, HP
slot = 0
stateno = 5000
time = 1
forceair = 1

[State 1222, ChangeState]
type = ChangeState
trigger1 = (command = "holdback" || command = "holdfwd" || command = "holddown" || command = "holdup")
value = 1226

[StateDef 1226]
anim = 1226
ctrl = 0
type = A
movetype = I
physics = A
sprpriority = -2

[State 1226, VelSet]
type = VelSet
trigger1 = command = "holdback"
x = -6

[State 1226, VelSet]
type = VelSet
trigger1 = command = "holdfwd"
x = 6

[State 1226, Stop Moving]
type = VelSet
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
x = 0

[State 1226, VelSet]
type = VelSet
trigger1 = command = "holdup"
trigger1 = Pos Y > -350
y = -7

[State 1226, VelSet]
type = VelSet
trigger1 = command = "holddown"
y = 7

[State 1226, Stop Moving]
type = VelSet
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = Pos Y >= 0
trigger3 = Pos Y < -350
y = 0

[State 1226, PosSet]
type = PosSet
trigger1 = Pos Y < -350
y = -350

[State 1226, 1] ;Turn if not facing opponent
type = Turn
trigger1 = p2dist X < -5

[State 1226, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 1226
trigger1 = Vel X = 0
trigger1 = Vel Y = 0
value = 1222 + AnimElemNo(0)

[State 1226, ChangeAnim]
type = ChangeAnim
triggerall = (Anim = 1222 || Anim = 1223 || Anim = 1224 || Anim = 1225)
trigger1 != (Vel X = 0 || Vel Y = 0)
trigger1 = (command = "holdback" || command = "holdfwd" || command = "holddown" || command = "holdup")
value = 1226

[State 1226, ChangeState]
type = ChangeState
trigger1 = (command = "x")
value = 600

[State 1226, ChangeState]
type = ChangeState
trigger1 = (command = "y")
value = 610

[State 1226, ChangeState]
type = ChangeState
trigger1 = (command = "z")
value = 620

[State 1226, ChangeState]
type = ChangeState
trigger1 = (command = "a")
value = 630

[State 1226, ChangeState]
type = ChangeState
trigger1 = (command = "b")
value = 640

[State 1226, ChangeState]
type = ChangeState
trigger1 = (command = "c")
value = 650

;Knock Player1 Off Wall If Player1 Is Still Wall Climbing
[State 1226, ChangeState]
type = ChangeState
trigger1 = DrawGame
trigger2 = RoundState = 3
value = 1227

;Falling Off The Background Wall
[StateDef 1227]
anim = 1227
ctrl = 0
type = A
movetype = A
physics = U

[State 1226, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
movetype = A
physics = A

[State 1227, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S,SA
hitflag = MAFD
guardflag = MA
animtype = back
priority = 6,Hit
damage = 80,10
pausetime = 10,10
;sparkno = 0
;guard.sparkno = 0
;sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
ground.type = High
ground.slide = 4
ground.hit = 6
air.hittime = 20
ground.velocity = -4,0
air.velocity = -1,4
fall = 1
fall.yvelocity = -4.5
fall.recover = 0
down.bounce = 1
kill = 1
guard.kill = 0
fall.kill = 1
numhits = 1
palfx.time = 1
palfx.add = 255,255,255

;------------------------------------------------------------------------------

;Web-Swing (light) (Author Seth Zankuten)
[statedef 1300]
type = A
movetype = A
physics = A
anim = 1300
poweradd = 25
velset = 1,-1
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [12,48]
edge = 0,10
player = 60,10

[State 0, ]
type = PosFreeze
trigger1 = time <= 54
value = 1

[State 0, ]
type = PlayerPush
trigger1 = time <= 54
value = 0

;Woah!
[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S28,6

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 10
trigger3 = animelem = 11
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
trigger2 = animelem = 20
trigger3 = animelem = 21
trigger4 = animelem = 24
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 13
trigger2 = animelem = 26
x = 8

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
trigger2 = animelem = 17
trigger3 = animelem = 18
trigger4 = animelem = 19
trigger5 = animelem = 22
trigger6 = animelem = 23
trigger7 = animelem = 25
x = 12

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
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag =MA 
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 90,30
pausetime = 10,10
guard.pausetime = 8,7
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-30
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 15
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -6,-5
guard.velocity = -4
air.velocity = -1,-3
airguard.velocity = -3
down.velocity = 0,0
down.hittime = 20
down.bounce = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = Explod
trigger1 = animelem = 28
anim = 1301

[State 0, ]
type = VelSet
trigger1 = animelem = 28
x = 3
y = -3

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = animtime = 0
value = 1305

[statedef 1305]
type = A
movetype = A
physics = A
anim = 46
velset = 2,-5
ctrl = 0

[State 1305, 1] ;Turn if not facing opponent
type = Turn
trigger1 = p2dist X < -5

[State 0, ]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 52

;Web-Swing (medium) (Author Seth Zankuten)
[statedef 1310]
type = A
movetype = A
physics = A
anim = 1310
poweradd = 50
velset = 2,-2
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [22,58]
edge = 0,10
player = 60,10

[State 0, ]
type = PosFreeze
trigger1 = time <= 60
value = 1

[State 0, ]
type = PlayerPush
trigger1 = time <= 60
value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = S7,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 11
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 14
trigger4 = animelem = 29
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 11
trigger2 = animelem = 12
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 15
trigger2 = animelem = 16
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 18
x = 24

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 20
trigger2 = animelem = 22
trigger3 = animelem = 24
trigger4 = animelem = 25
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 21
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 23
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 26
x = 35

[State 0, ]
type = PosAdd
trigger1 = animelem = 27
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 28
x = 8

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
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag =MA 
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 100,30
pausetime = 13,13
guard.pausetime = 8,7
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-30
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 15
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -8,-5
guard.velocity = -4
air.velocity = -1,-4
airguard.velocity = -3
down.velocity = 0,0
down.hittime = 25
down.bounce = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = Explod
trigger1 = animelem = 31
anim = 1311

[State 0, ]
type = VelSet
trigger1 = animelem = 31
x = 3
y = -7

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = animtime = 0
value = 1315

[statedef 1315]
type = A
movetype = A
physics = A
anim = 46
velset = 3,-5
ctrl = 0

[State 1315, 1] ;Turn if not facing opponent
type = Turn
trigger1 = p2dist X < -5

[State 0, ]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 52

;Web-Swing (fierce) (Author Seth Zankuten)
[statedef 1320]
type = A
movetype = A
physics = A
anim = 1320
poweradd = 75
velset = 3,-3
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [18,60]
edge = 0,10
player = 60,10

[State 0, ]
type = PosFreeze
trigger1 = time <= 62
value = 1

[State 0, ]
type = PlayerPush
trigger1 = time <= 62
value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = S7,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 9
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
trigger2 = animelem = 13
trigger3 = animelem = 28
trigger4 = animelem = 30
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
trigger2 = animelem = 11
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
trigger3 = animelem = 20
trigger4 = animelem = 21
trigger5 = animelem = 23
trigger6 = animelem = 26
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
x = 11

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
trigger2 = animelem = 18
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
trigger2 = animelem = 22
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 24
x = 18

[State 0, ]
type = PosAdd
trigger1 = animelem = 25
trigger2 = animelem = 27
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 29
x = 8

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
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag =MA 
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 110,30
pausetime = 14,14
guard.pausetime = 8,7
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-35
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 15
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -9,-5
guard.velocity = -4
air.velocity = -1,-5
airguard.velocity = -3
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = Explod
trigger1 = animelem = 32
anim = 1321

[State 0, ]
type = VelSet
trigger1 = animelem = 32
x = 3
y = -9

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = animtime = 0
value = 1325

[statedef 1325]
type = A
movetype = A
physics = A
anim = 46
velset = 4,-5
ctrl = 0

[State 1325, 1] ;Turn if not facing opponent
type = Turn
trigger1 = p2dist X < -5

[State 0, ]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 52

;------------------------------------------------------------------------------
;Air Symbiote Cyclone Begin
[Statedef 296]
type = A
movetype = A
physics = A
ctrl = 0
poweradd = 60
anim = 42
juggle = 2
face2 = 1

[State 296, 1]
type = changestate
trigger1 = animtime = 0
value = 297

;-------------------------------------------------------------------------------
;Air Symbiote Cyclone
[Statedef 297]
type = A
movetype = A
physics = A
anim = 294
face2 = 1
ctrl = 0

[State 297, 1]
type = velset
trigger1 = time = 0
trigger1 = P2BodyDist x < 100
x = 4
y = -1

[State 297, 2]
type = velset
trigger1 = time = 0
trigger1 = P2BodyDist x > 100
x = 9
y = -1

[State 297, 2]
type = hitdef
trigger1 = (AnimElem = 1| AnimElem = 2| AnimElem = 3)
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 18
pausetime = 12,12
sparkno = S6002
guard.sparkno = S6012
sparkxy = 0,-60
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -3, 0
air.Velocity = -2, -1
fall = 1
air.fall = 1
air.recover = 0
air.juggle = 4

[State 297, 3]
type = velset
trigger1 = time = 20
x = 0
y = 0

[State 297, 3]
type = PlaySnd
trigger1 = animelem = 1
trigger1 = movecontact
value = S26,3

[State 297, 4]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = movecontact
value = S25,3

[State 297, 5]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = movecontact
value = S26,3

[State 297, 6]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
value = S0,5

[State 297, End]
type = changestate
trigger1 = time = 30
value = 50
ctrl = 1

;-------------------------------------------------------------------------------

;Air Symbiote Serpents (Author aa250)
[StateDef 1233]
type = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 260
face2 = 1
poweradd = 20
sprpriority = 3

;creates afterimage trail
[State 1233, 1]
type = AfterImage
Trigger1 = time = 1
trigger1 = stateno = 1233
trigger2 = time = 1
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 40

[State 1233, Shake Screen]
type = EnvShake
trigger1 = stateno = 1230 && movecontact
time = 4     ;Time to shake screen
ampl = 4     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly


[State 1233, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S25,0

[State 1233, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S25,1

[State 1233, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S25,1

[State 1233, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14
value = S25,2

[State 260, 1]
type = HitDef
trigger1 = (animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13)
attr = A, SA
damage = 25, 22
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S8222
guard.sparkno = S8001
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

[State 1232, 3]
type = velset
trigger1 = time = 30
x = 0
y = 0

[State 260, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------

;Spider Sting (Light) (Author Seth Zankuten)
[statedef 1400]
type = S
movetype = A
physics = S
anim = ifelse(p2bodydist x < 90,1400,300)
poweradd = 25
juggle = 5
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = stateno = 1400 && anim = 1400 && animelem = 2
value = S0,3

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = 2
y = -5.5

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
movetype = A
physics = A

[State 0, ]
type = VelAdd
trigger1 = time = [16,25]
x = -0.15

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 0,muteki ]
type = nothitby
trigger1 = time = 0
time = 9
value = SCA

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
trigger1 = stateno = 1400 && anim = 1400 && animelem = 2
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = stateno = 1400 && anim = 1400 && movehit = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 90,10
pausetime = 7,8
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = stateno = 1400 && anim = 1400 && movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 90,10
pausetime = 7,8
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-120
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
fall = 1
air.fall = 1

[State 0,’Ç‰Á ]
type = ChangeState
triggerall = hitcount = 1 && time >= 12 && vel y = [-3,3]
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
value = 1425

;Spider Sting (Symbiote) - Author aa250

[State 0, ]
type = PlaySnd
trigger1 = (stateno = 1400 && anim = 300) && animelem = 2
value = S0,3

[State 0, ]
type = HitDef
trigger1 = (stateno = 1400 && anim = 300) && (animelem = 2 || animelem = 3)
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,15
pausetime = 8,9
guard.pausetime = 5,4
priority = 4, Hit
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1

[State 0, ]
type = PlaySnd
trigger1 = (stateno = 1400 && anim = 300) && AnimElem = 2
value = S26,1

[State 0, ]
type = PlaySnd
trigger1 = (stateno = 1400 && anim = 300) && AnimElem = 3
value = S23,0

[State 0, ]
type = HitDef
trigger1 = (stateno = 1400 && anim = 300) && (animelem = 6 || animelem = 7)
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 20,15
pausetime = 5,6
guard.pausetime = 6,5
priority = 4, Hit
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 25
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -5,1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
fall = 1

[State 0, ]
type = PlaySnd
trigger1 =  (stateno = 1400 && anim = 300) && AnimElem = 6
value = S26,3

[State 0, ]
type = HitDef
trigger1 =  (stateno = 1400 && anim = 300) && animelem = 8
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 15,5
pausetime = 5,6
guard.pausetime = 6,5
priority = 4, Hit
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 25
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -5,1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
fall = 1

[State 0, StateTypeSet]
type = Changestate
trigger1 = animtime=0
value = 50

;-------------------------------------------------------------------------------

;Spider-Sting (Medium) (Author Seth Zankuten)
[statedef 1410]
type = S
movetype = A
physics = S
anim = ifelse(p2bodydist x < 90,1400,300)
poweradd = 50
juggle = 5
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = stateno = 1410 && anim = 1400 && animelem = 2
value = S0,3

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = 3
y = -7.5

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
movetype = A
physics = A

[State 0, ]
type = VelAdd
trigger1 = time = [16,26]
x = -0.25

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 0, ]
type = nothitby
trigger1 = time = 0
time = 10
value = SCA

[State 0, ]
type = EnvColor
trigger1 = stateno = 1410 && anim = 1400
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = stateno = 1410 && anim = 1400 &&  movehit = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 110,10
pausetime = 8,9
guard.pausetime = 5,4
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = stateno = 1410 && anim = 1400 && movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 110,10
pausetime = 8,9
guard.pausetime = 5,4
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-120
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
fall = 1
air.fall = 1

[State 0, ]
type = ChangeState
triggerall = hitcount = 1 && time >= 12 && vel y = [-4,4]
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
value = 1426

;Spider Sting (Symbiote) - Author aa250

[State 0, ]
type = PlaySnd
trigger1 = (stateno = 1410 && anim = 300) && animelem = 2
value = S0,3

[State 0, ]
type = HitDef
trigger1 = (stateno = 1410 && anim = 300) && (animelem = 2 || animelem = 3)
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,15
pausetime = 8,9
guard.pausetime = 5,4
priority = 4, Hit
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1

[State 0, ]
type = PlaySnd
trigger1 = (stateno = 1410 && anim = 300) && AnimElem = 2
value = S26,1

[State 0, ]
type = PlaySnd
trigger1 = (stateno = 1410 && anim = 300) && AnimElem = 3
value = S23,0

[State 0, ]
type = HitDef
trigger1 = (stateno = 1410 && anim = 300) && (animelem = 6 || animelem = 7)
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 20,15
pausetime = 5,6
guard.pausetime = 6,5
priority = 4, Hit
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 25
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -5,1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
fall = 1

[State 0, ]
type = PlaySnd
trigger1 =  (stateno = 1410 && anim = 300) && AnimElem = 6
value = S26,3

[State 0, ]
type = HitDef
trigger1 =  (stateno = 1410 && anim = 300) && animelem = 8
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 15,5
pausetime = 5,6
guard.pausetime = 6,5
priority = 4, Hit
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 25
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -5,1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
fall = 1

[State 0, StateTypeSet]
type = Changestate
trigger1 = animtime=0
value = 50

;-------------------------------------------------------------------------------

;Spider-Sting (Heavy) (Author Seth Zankuten)
[statedef 1420]
type = S
movetype = A
physics = S
anim = ifelse(p2bodydist x < 90,1400,300)
poweradd = 75
juggle = 5
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = stateno = 1420 && anim = 1400 && animelem = 2
value = S0,3

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = 4
y = -10.5

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
movetype = A
physics = A

[State 0, ]
type = VelAdd
trigger1 = time = [16,26]
x = -0.35

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 0, ]
type = nothitby
trigger1 = time = 0
time = 11
value = SCA

[State 0, ]
type = EnvColor
trigger1 = stateno = 1420 && anim = 1400
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = stateno = 1420 && anim = 1400 && movehit = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 110,10
pausetime = 8,9
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-8
guard.velocity = -3
air.velocity = -0.25,-7
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = stateno = 1420 && anim = 1400 && movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 110,10
pausetime = 8,9
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-120
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-8
guard.velocity = -3
air.velocity = -0.25,-7
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
fall = 1
air.fall = 1

[State 0, ]
type = ChangeState
triggerall = hitcount = 1 && time >= 12 && vel y = [-6,4]
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
value = 1427

;Spider Sting (Symbiote) - Author aa250

[State 0, ]
type = PlaySnd
trigger1 = (stateno = 1420 && anim = 300) && animelem = 2
value = S0,3

[State 0, ]
type = HitDef
trigger1 = (stateno = 1420 && anim = 300) && (animelem = 2 || animelem = 3)
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,15
pausetime = 8,9
guard.pausetime = 5,4
priority = 4, Hit
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1

[State 0, ]
type = PlaySnd
trigger1 = (stateno = 1420 && anim = 300) && AnimElem = 2
value = S26,1

[State 0, ]
type = PlaySnd
trigger1 = (stateno = 1420 && anim = 300) && AnimElem = 3
value = S23,0

[State 0, ]
type = HitDef
trigger1 = (stateno = 1420 && anim = 300) && (animelem = 6 || animelem = 7)
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 20,15
pausetime = 5,6
guard.pausetime = 6,5
priority = 4, Hit
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 25
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -5,1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
fall = 1

[State 0, ]
type = PlaySnd
trigger1 =  (stateno = 1420 && anim = 300) && AnimElem = 6
value = S26,3

[State 0, ]
type = HitDef
trigger1 =  (stateno = 1420 && anim = 300) && animelem = 8
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 15,5
pausetime = 5,6
guard.pausetime = 6,5
priority = 4, Hit
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 25
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -5,1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
fall = 1

[State 0, StateTypeSet]
type = Changestate
trigger1 = animtime=0
value = 50

;--------------------------------------------------------------------
;Spider Sting Finish

[statedef 1425]
type = A
movetype = A
physics = A
anim = 1405
velset = 0,-1
ctrl = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 12
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

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
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 10,11
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-95
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
persistent = 0
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 4
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 10,11
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = -15,-90
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
air.fall = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;--------------------------------------------------------

[statedef 1426]
type = A
movetype = A
physics = A
anim = 1405
velset = 0,-1
ctrl = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 12
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,0
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 13,11
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-95
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,14
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower  = 40
givepower = 20
persistent = 0
air.fall = 1
fall.recover=0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 4
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 13,11
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = -15,-90
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower  = 40
givepower = 20
air.fall = 1
fall.recover=0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;--------------------------------------------------------

[statedef 1427]
type = A
movetype = A
physics = A
anim = 1405
velset = 0,-1
ctrl = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 12
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,0
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 13,11
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-95
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,14
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower  = 40
givepower = 20
persistent = 0
air.fall = 1
fall.recover=0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 4
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 13,11
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = -15,-90
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower  = 40
givepower = 20
air.fall = 1
fall.recover=0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;---------------------------
;Standing Light Web Throw (Author Seth Zankuten)
[statedef 1500]
type = S
movetype = A
physics = S
anim = 1500
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
hitsound = S6,1
guard.sparkno = S1507
p1stateno = 1501
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
guard.sparkno = S1507
hitsound = S6,1
p1stateno = 1502
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 6
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
guard.sparkno = S1507
hitsound = S6,1
guard.dist = 200
p1stateno = 1503
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 7
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
guard.sparkno = S1507
hitsound = S6,1
guard.dist = 230
p1stateno = 1504
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 8
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
guard.sparkno = S1507
hitsound = S6,1
guard.dist = 250
p1stateno = 1505
p2stateno = 1508

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 9
trigger1 = moveguarded = 0
helpertype = normal
name = "web-line"
ID = 1005
pos = 230,-52
postype = p1
facing = 1
stateno = 1506
ownpal = 1

[State 0, ]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1500
elem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1501]
type = S
movetype = A
physics = S
anim = 1501
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1501
time = 1
pos = 115,-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1502

[statedef 1502]
type = S
movetype = A
physics = S
anim = 1502
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1502
time = 1
pos = 175,-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1503

[statedef 1503]
type = S
movetype = A
physics = S
anim = 1503
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1503
time = 1
pos = 215,-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1504

[statedef 1504]
type = S
movetype = A
physics = S
anim = 1504
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1504
time = 1
pos = 230,-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1505

[statedef 1505]
type = S
movetype = A
physics = S
anim = 1505
velset = 0,0
sprpriority = -1
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 12
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 13
value = 1,2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 1
trigger2 = animelem = 11
value = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 7
value = -1

[State 0, ]
type = SprPriority
trigger1 = animelem = 9
value = 1

[State 0, ]
type = SprPriority
trigger1 = animelem = 13
value = -1

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = 240,-55

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = 220,-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 4
pos = 195,-75

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 4
pos = 180,-85

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 4
pos = 105,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 4
pos = 25,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 4
pos = -105,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 4
pos = -155,-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 9
time = 4
pos = -110,-110

[State 0, ]
type = TargetBind
trigger1 = animelem = 10
time = 4
pos = -5,-120

[State 0, ]
type = TargetBind
trigger1 = animelem = 11
time = 4
pos = 35,-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 12
time = 4
pos = 140,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 13
time = 4
pos = 150,-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 14
time = 4
pos = 20,-45

[State 0, ]
type = TargetBind
trigger1 = animelem = 15
time = 4
pos = -140,-45

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 16
value = -90

[State 0, ]
type = TargetState
trigger1 = animelem = 16
value = 1509

[State 0, ]
type = TargetDrop
trigger1 = animelem = 16

[State 0, ]
type = Turn
trigger1 = animelem = 17

[State 0, ]
type = ScreenBound
trigger1 = time >= 64
value = 0

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -20
trigger1 = animtime = 0
value = 101
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1506]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1506
velset = 7,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1506
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1506
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1506
slot = 1
time = 1
stateno = 1507
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1506
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1506
x = 6
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1506
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = high
air.type = low
priority = 5,Hit
damage = 10,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 1
guard.sparkno = 40
sparkxy = 10,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -200

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 30
value = 1507

[Statedef 1507]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1507
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 10

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1508]
type = A
movetype = H
physics = A
ctrl = 0
anim = 5000
velset = 0,0
sprpriority = 0

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1508
value = 0
movecamera = 1,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1508

[Statedef 1509]
type = A
movetype = H
physics = A
ctrl = 0
anim = 5030
velset = -10,-1.25
sprpriority = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5030

[State 0, ]
type = SelfState
trigger1 = time >= 1
value = 5050

;Standing Medium Web-Throw  (Author Seth Zankuten)
[statedef 1510]
type = S
movetype = A
physics = S
anim = 1510
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-85
sparkno = 1
hitsound = S6,1
guard.sparkno = S1517
p1stateno = 1511
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-110
sparkno = 1
guard.sparkno = S1517
hitsound = S6,1
p1stateno = 1512
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 6
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-140
sparkno = 1
guard.sparkno = S1517
hitsound = S6,1
guard.dist = 200
p1stateno = 1513
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 7
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-165
sparkno = 1
guard.sparkno = S1517
hitsound = S6,1
guard.dist = 230
p1stateno = 1514
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 8
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-190
sparkno = 1
guard.sparkno = S1517
hitsound = S6,1
guard.dist = 250
p1stateno = 1515
p2stateno = 1508

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 9
trigger1 = moveguarded = 0
helpertype = normal
name = "web-line"
ID = 1005
pos = 190,-190
postype = p1
facing = 1
stateno = 1516
ownpal = 1

[State 0, ]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1510
elem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1511]
type = S
movetype = A
physics = S
anim = 1511
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1511
time = 1
pos = 95,-110

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1512

[statedef 1512]
type = S
movetype = A
physics = S
anim = 1512
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1512
time = 1
pos = 130,-140

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1513

[statedef 1513]
type = S
movetype = A
physics = S
anim = 1513
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1513
time = 1
pos = 150,-160

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1514

[statedef 1514]
type = S
movetype = A
physics = S
anim = 1514
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1514
time = 1
pos = 175,-175

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1515

[statedef 1515]
type = S
movetype = A
physics = S
anim = 1515
velset = 0,0
sprpriority = -1
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 12
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 13
value = 1,2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 1
trigger2 = animelem = 11
value = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 7
value = -1

[State 0, ]
type = SprPriority
trigger1 = animelem = 9
value = 1

[State 0, ]
type = SprPriority
trigger1 = animelem = 13
value = -1

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = 175,-170

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = 160,-160

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 4
pos = 150,-135

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 4
pos = 145,-120

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 4
pos = 105,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 4
pos = 25,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 4
pos = -105,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 4
pos = -155,-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 9
time = 4
pos = -110,-110

[State 0, ]
type = TargetBind
trigger1 = animelem = 10
time = 4
pos = -5,-120

[State 0, ]
type = TargetBind
trigger1 = animelem = 11
time = 4
pos = 35,-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 12
time = 4
pos = 140,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 13
time = 4
pos = 150,-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 14
time = 4
pos = 20,-45

[State 0, ]
type = TargetBind
trigger1 = animelem = 15
time = 4
pos = -140,-45

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 16
value = -100

[State 0, ]
type = TargetState
trigger1 = animelem = 16
value = 1509

[State 0, ]
type = TargetDrop
trigger1 = animelem = 16

[State 0, ]
type = Turn
trigger1 = animelem = 17

[State 0, ]
type = ScreenBound
trigger1 = time >= 64
value = 0

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -20
trigger1 = animtime = 0
value = 101
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1516]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1516
velset = 5,-5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1516
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1516
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1516
slot = 1
time = 1
stateno = 1517
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1516
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1516
x = 3.5
y = -3.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1516
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = high
air.type = low
priority = 5,Hit
damage = 10,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 1
guard.sparkno = 40
sparkxy = 10,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -200

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 30
value = 1517

[Statedef 1517]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1517
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 10

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;Standing Heavy Web Throw (Author Seth Zankuten)
[statedef 1520]
type = S
movetype = A
physics = S
anim = 1520
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-85
sparkno = 1
hitsound = S6,1
guard.sparkno = S1527
p1stateno = 1521
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-110
sparkno = 1
guard.sparkno = S1527
hitsound = S6,1
p1stateno = 1522
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 6
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-140
sparkno = 1
guard.sparkno = S1527
hitsound = S6,1
guard.dist = 200
p1stateno = 1523
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 7
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-165
sparkno = 1
guard.sparkno = S1527
hitsound = S6,1
guard.dist = 230
p1stateno = 1524
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 8
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-190
sparkno = 1
guard.sparkno = S1527
hitsound = S6,1
guard.dist = 250
p1stateno = 1515
p2stateno = 1508

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 9
trigger1 = moveguarded = 0
helpertype = normal
name = "web-line"
ID = 1005
pos = 20,-265
postype = p1
facing = 1
stateno = 1526
ownpal = 1

[State 0, ]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1520
elem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1521]
type = S
movetype = A
physics = S
anim = 1521
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1521
time = 1
pos = 20,-110

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1522

[statedef 1522]
type = S
movetype = A
physics = S
anim = 1522
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1522
time = 1
pos = 20,-145

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1523

[statedef 1523]
type = S
movetype = A
physics = S
anim = 1523
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1523
time = 1
pos = 20,-195

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1524

[statedef 1524]
type = S
movetype = A
physics = S
anim = 1524
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1524
time = 1
pos = 20,-255

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1515

[Statedef 1526]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1526
velset = 5,-5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1526
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1526
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1526
slot = 1
time = 1
stateno = 1517
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1526
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1526
x = 0
y = -6

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1526
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = high
air.type = low
priority = 5,Hit
damage = 10,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 1
guard.sparkno = 40
sparkxy = 10,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -200

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 30
value = 1527

[Statedef 1527]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1527
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 10

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;----------------------------------------------------------------------------

;Hammer 1 (Author Seth Zankuten)
[StateDef 4050]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 4050
poweradd = 20
sprpriority = 2

[State 4050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S26,0

[State 4050, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S26,1

[State 4050, 1]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
damage = 75,10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
sparkxy = -10, -76
hitsound = S26,2
guardsound = S26,2
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 35,5
givepower = 5,5
fall = 1

[State 4050, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------------
;Hammer 2 (Author Seth Zankuten)
[StateDef 4052]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 4050
poweradd = 20
sprpriority = 2

[State 4052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S26,0

[State 4052, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S26,1

[State 4052, 1]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
damage = 100, 10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
sparkxy = -10, -76
hitsound = S26,2
guardsound = S26,2
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 35,5
givepower = 5,5
fall = 1

[State 4052, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------------
;Hammer 3 (Author Seth Zankuten)
[StateDef 4051]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 4051
poweradd = 20
sprpriority = 2

[State 4051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S26,0

[State 4051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S26,1

[State 4051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S26,0

[State 4051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = S26,1

[State 4051, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 15
value = S26,0

[State 4051, 1]
type = HitDef
trigger1 = AnimElem = 18
attr = S, NA
damage = 125,10
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 40, 40
sparkno = 2
sparkxy = -10, -76
hitsound = S26,2
guardsound = S26,2
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 35,5
givepower = 5,5
fall = 1

[State 4051, 1]
type = HitDef
trigger1 = AnimElem = 18
attr = S, NA
damage = 125
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
sparkxy = -10, -76
hitsound = S26,2
guardsound = S26,2
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 35,5
givepower = 5,5
fall = 1

[State 4051, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
