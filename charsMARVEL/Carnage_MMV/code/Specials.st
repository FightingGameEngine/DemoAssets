;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;Ground blades L
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1000
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 8
value = S1000,0
volume = 0
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
trigger1 = time  = 8
anim = 8333
pos = 30,0
postype = p1  ;p2,front,back,left,right
facing = -1
removetime = -2
scale = .4,.4
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 10
helpertype = normal ;player
name = "claws"
stateno = 1001
pos = 75,0
postype = p1    ;p2,front,back,left,right
;size.ground.back =
;size.ground.front =
;size.air.back =
;size.air.front =
;size.height =
;size.proj.doscale =
;size.head.pos = ,
;size.mid.pos = ,
;size.shadowoffset =
;ignorehitpause =
;persistent =



[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------------------------

[Statedef 1001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1001
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time  = 0
anim = 8333
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = -1
removetime = -2
scale = .4,.4
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,0
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =



[State 0, HitDef]
type = HitDef
trigger1 =  !movecontact
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = medium
damage    = 50,5
sparkno = S8222
guard.sparkno = s8001
sparkxy = 10,-15
hitsound = S1100,5
guardsound = S8000,6
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -5,-4
;guard.velocity = -3,-3
air.velocity = -3,-3
airguard.velocity = -2,-2
air.type = high
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
numhits = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
;persistent =
;------------------------------------------------------------

;Ground blades M
[Statedef 1002]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1002
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 8
value = S1000,0
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 0, Helper]
type = Helper
trigger1 = time = 18
helpertype = normal ;player
name = "claws"
stateno = 1003
pos = 125,0
postype = p1    ;p2,front,back,left,right
;size.ground.back =
;size.ground.front =
;size.air.back =
;size.air.front =
;size.height =
;size.proj.doscale =
;size.head.pos = ,
;size.mid.pos = ,
;size.shadowoffset =
;ignorehitpause =
;persistent =



[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------------------------

[Statedef 1003]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1001
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time  = 0
anim = 8333
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = -1
removetime = -2
scale = .4,.4
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,0
volume = 0
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
trigger1 = time  = 8
anim = 8333
pos = 30,0
postype = p1  ;p2,front,back,left,right
facing = -1
removetime = -2
scale = .4,.4
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, HitDef]
type = HitDef
trigger1 =  !movecontact
attr = S,SP       ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = medium
damage    = 50,5
sparkno = S8222
guard.sparkno = s8001
sparkxy = 10,-15
hitsound = S1100,5
guardsound = S8000,6
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -5,-4
;guard.velocity = -3,-3
air.velocity = -3,-3
airguard.velocity = -2,-2
air.type = high
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
numhits = 1




[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
;persistent =
;-----------------------------------------------------------------

;Ground blades H
[Statedef 1004]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1002
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 8
value = S1000,0
volume = 0
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
trigger1 = time  = 8
anim = 8333
pos = 30,0
postype = p1  ;p2,front,back,left,right
facing = -1
removetime = -2
scale = .4,.4
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = time = 26
helpertype = normal ;player
name = "claws"
stateno = 1005
pos = 185,0
postype = p1    ;p2,front,back,left,right
;size.ground.back =
;size.ground.front =
;size.air.back =
;size.air.front =
;size.height =
;size.proj.doscale =
;size.head.pos = ,
;size.mid.pos = ,
;size.shadowoffset =
;ignorehitpause =
;persistent =



[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;----------------------------------------------------------

[Statedef 1005]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1001
ctrl = 0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time  = 0
anim = 8333
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = -1
removetime = -2
scale = .4,.4
sprpriority = 3
ontop = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S1000,0
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =

[State 0, HitDef]
type = HitDef
trigger1 =  !movecontact
attr = S,SP       ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = medium
damage    = 50,5
sparkno = S8222
guard.sparkno = s8001
sparkxy = 10,-15
hitsound = S1100,5
guardsound = S8000,6
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -5,-4
;guard.velocity = -3,-3
air.velocity = -3,-3
airguard.velocity = -2,-2
air.type = high
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
numhits = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
;persistent =;-------------------------------------------------------------------

;Scythe L
[Statedef 1100]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0,0
poweradd = 50
anim = 1100
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1100,4
volume = 100

[State 0, HitDef]
type = HitDef
trigger1 =  animelem =2|| animelem =3
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
air.animtype = hard
damage    = 80,5
getpower = 50,5
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
ground.velocity = -7
airguard.velocity = -7
air.type = Low
air.velocity = -7,-1
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
;p2facing =
;p1stateno =
;p2stateno =
;p2getp1state = 1
;forcestand = 0
fall = 1
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
numhits = 1
;getpower = 0,0
;givepower = 0,0
palfx.time = 0


[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------

;Scythe M
[Statedef 1101]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0,0
poweradd = 50
anim = 1100
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1100,4
volume = 100



[State 0, HitDef]
type = HitDef
trigger1 =  animelem =2|| animelem =3
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
air.animtype = hard
damage    = 80,5
getpower = 50,5
sparkno = s8222
guard.sparkno = -1
sparkxy = 10,-65
hitsound = S1100,3
guardsound = S8000,6
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guardsound = 6,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -6
airguard.velocity = -6
air.type = Low
air.velocity = -6,-1
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
;p2facing =
;p1stateno =
;p2stateno =
;p2getp1state = 1
;forcestand = 0
fall = 1
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
numhits = 1
;getpower = 0,0
;givepower = 0,0
palfx.time = 0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1100
trigger1 =  animtime = 0
value = 1101
;elem = 1
ignorehitpause = 1
;persistent =

[State 0, HitDef]
type = HitDef
triggerall = anim = 1101
trigger1 =  animelem =2|| animelem =3
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = diagup
damage    = 50,5
getpower = 25,5
sparkno = S8222
guard.sparkno = -1
sparkxy = 10,-80
hitsound = S1100,3
guardsound = S8000,6
pausetime = 2,17
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guardsound = 6,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -5,-1
airguard.velocity = -5
air.type = Low
air.velocity = -5,-2
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0




[State 1000, End]
type = ChangeState
triggerall = anim = 1101
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------

;Scythe Triple
[Statedef 1102]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0,0
poweradd = 50
anim = 1100
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S1100,4
volume = 100

[State 0, HitDef]
type = HitDef
trigger1 =  animelem =2
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = medium
damage    = 70,5
getpower = 25,5
sparkno = s8222
guard.sparkno = -1
sparkxy = 10,-65
hitsound = S1100,3
guardsound = S8000,6
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guardsound = 6,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -5
airguard.velocity = -5
air.type = Low
air.velocity = -5,-1
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
;p2facing =
;p1stateno =
;p2stateno =
;p2getp1state = 1
;forcestand = 0
fall = 1
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
numhits = 1
;getpower = 0,0
;givepower = 0,0
palfx.time = 0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1100
trigger1 =  animtime = 0
value = 1101
;elem = 1
ignorehitpause = 1
;persistent =

[State 0, HitDef]
type = HitDef
triggerall = anim = 1101
trigger1 =  animelem =2|| animelem =3
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = medium
damage    = 40,5
getpower = 25,5
sparkno = S8222
guard.sparkno = -1
sparkxy = 10,-80
hitsound = S1100,3
guardsound = S8000,6
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guardsound = 6,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -5,-1
airguard.velocity = -5
air.type = Low
air.velocity = -5,-2
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
;p2facing =
;p1stateno =
;p2stateno =
;p2getp1state = 1
;forcestand = 0
fall = 1
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
numhits = 1
;getpower = 0,0
;givepower = 0,0
palfx.time = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1101
trigger1 =  animtime = 0
value = 1102
;elem = 1
ignorehitpause = 1
;persistent =


[State 0, HitDef]
type = HitDef
triggerall = anim = 1102
trigger1 =  animelem =3|| animelem =4
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = diagup
air.animtype = medium
damage    = 50,5
getpower = 25,5
sparkno = S8222
guard.sparkno = -1
sparkxy = 10,-10
hitsound = S1100,3
guardsound = S8000,6
pausetime = 2,15
ground.type = High      ;Low,Trip,None
ground.hittime = 0
guardsound = 6,0
guard.sparkno = -1
ground.type = high
ground.slidetime = 4
ground.velocity = -8
airguard.velocity = -8
air.type = Low
air.velocity = -8,1
air.juggle = 5
fall.animtype = Hard
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
;p2facing =
;p1stateno =
;p2stateno =
;p2getp1state = 1
;forcestand = 0
fall = 1
;fall.xvelocity = 0
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
numhits = 1
;getpower = 0,0
;givepower = 0,0
palfx.time = 0



[State 1000, End]
type = ChangeState
triggerall = anim = 1102
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------

;needle throw L
[Statedef 1200]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
poweradd = 90
anim = 1200
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 14
value = 8400, 2

[State 0, Helper]
type = Helper
trigger1 = Time = 14
helpertype = normal ;player
name = "needle1"
stateno = 1201
pos = 10,-20
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 16
helpertype = normal ;player
name = "needle2"
stateno = 1202
pos = 10,-20
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 18
helpertype = normal ;player
name = "needle3"
stateno = 1203
pos = 10,-20
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1
;--------------------------------------

;needle 1
[Statedef 1201]
type = A
movetype = A
physics = N
anim=1201
ctrl=0
sprpriority=1

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

[State vel]
type = velset
trigger1 = time = 0
x = 1
y = 6

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 0

[State hit]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,SP
hitflag = MAFDP
guardflag = HA
animtype = hard
damage = 20,5
pausetime = 0,8
sparkno = S8002
guard.sparkno = s8001
guard.sparkno = 42
hitsound = s1100,5
guardsound = S8000,6
ground.type = low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4
air.velocity = -3,-4
p2facing = 1

[State vel]
type = changestate
trigger1 = pos y > 0
value = 1208

[State 1055, end]
type = destroyself
trigger1=frontedgedist<-120||backedgedist<-120
;----------------------------------------------

;needle 2
[Statedef 1202]
type = A
movetype = A
physics = N
anim=1202
ctrl=0
sprpriority=1

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

[State vel]
type = velset
trigger1 = time = 0
x = 3
y = 6

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 0

[State hit]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,SP
hitflag = MAFDP
guardflag = HA
animtype = hard
damage = 20,5
pausetime = 0,8
sparkno = S8002
guard.sparkno = s8001
guard.sparkno = 42
hitsound = s1100,5
guardsound = S8000,6
ground.type = low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4
air.velocity = -3,-4
p2facing = 1

[State vel]
type = changestate
trigger1 = pos y > 0
value = 1209

[State 1055, end]
type = destroyself
trigger1=frontedgedist<-120||backedgedist<-120
;----------------------------------------------

;needle 3
[Statedef 1203]
type = A
movetype = A
physics = N
anim=1203
ctrl=0
sprpriority=1

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

[State vel]
type = velset
trigger1 = time = 0
x = 6
y = 6

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 0

[State hit]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,SP
hitflag = MAFDP
guardflag = HA
animtype = hard
damage = 20,5
pausetime = 0,8
sparkno = S8002
guard.sparkno = s8001
guard.sparkno = 42
hitsound = s1100,5
guardsound = S8000,6
ground.type = low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4
air.velocity = -3,-4
p2facing = 1

[State vel]
type = changestate
trigger1 = pos y > 0
value = 1210

[State 1055, end]
type = destroyself
trigger1=frontedgedist<-120||backedgedist<-120
;----------------------------------------------

;needle 4
[Statedef 1204]
type = A
movetype = A
physics = N
anim=1204
ctrl=0
sprpriority=1

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

[State vel]
type = velset
trigger1 = time = 0
x = 7
y = 4

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 0

[State hit]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,SP
hitflag = MAFDP
guardflag = HA
animtype = hard
damage = 20,5
pausetime = 0,8
sparkno = S8002
guard.sparkno = s8001
guard.sparkno = 42
hitsound = s1100,5
guardsound = S8000,6
ground.type = low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4
air.velocity = -3,-4
p2facing = 1

[State vel]
type = changestate
trigger1 = pos y > 0
value = 1211

[State 1055, end]
type = destroyself
trigger1=frontedgedist<-120||backedgedist<-120
;----------------------------------------------

;needle 5
[Statedef 1205]
type = A
movetype = A
physics = N
anim=1205
ctrl=0
sprpriority=1

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

[State vel]
type = velset
trigger1 = time = 0
x = 7
y = 2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 0

[State hit]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,SP
hitflag = MAFDP
guardflag = HA
animtype = hard
damage = 20,5
pausetime = 0,8
sparkno = S8002
guard.sparkno = s8001
guard.sparkno = 42
hitsound = s1100,5
guardsound = S8000,6
ground.type = low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4
air.velocity = -3,-4
p2facing = 1

[State vel]
type = changestate
trigger1 = pos y > 0
value = 1212

[State 1055, end]
type = destroyself
trigger1=frontedgedist<-120||backedgedist<-120
;----------------------------------------------

;needle 6
[Statedef 1206]
type = A
movetype = A
physics = N
anim=1206
ctrl=0
sprpriority=1

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

[State vel]
type = velset
trigger1 = time = 0
x = 7
y = 0

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 0

[State hit]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,SP
hitflag = MAFDP
guardflag = HA
animtype = hard
damage = 20,5
pausetime = 0,8
sparkno = S8002
guard.sparkno = s8001
guard.sparkno = 42
hitsound = s1100,5
guardsound = S8000,6
ground.type = low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4
air.velocity = -3,-4
p2facing = 1



[State 1055, end]
type = destroyself
trigger1=frontedgedist<-120||backedgedist<-120
;----------------------------------------------

;needle 7
[Statedef 1207]
type = A
movetype = A
physics = N
anim=1207
ctrl=0
sprpriority=1

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

[State vel]
type = velset
trigger1 = time = 0
x = 7
y = -2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 0

[State hit]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,SP
hitflag = MAFDP
guardflag = HA
animtype = hard
damage = 20,5
pausetime = 0,8
sparkno = S8002
guard.sparkno = s8001
guard.sparkno = 42
hitsound = s1100,5
guardsound = S8000,6
ground.type = low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4
air.velocity = -3,-4
p2facing = 1



[State 1055, end]
type = destroyself
trigger1=frontedgedist<-120||backedgedist<-120
;----------------------------------------------

;needle 1 death
[Statedef 1208]
type = A
movetype = I
physics = N
anim = 1208
ctrl = 0
sprpriority = 1

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 1055, end]
type = destroyself
trigger1 = animtime = 0
;-----------------------------------------------------

;needle 2 death
[Statedef 1209]
type = A
movetype = I
physics = N
anim = 1209
ctrl = 0
sprpriority = 1

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 1055, end]
type = destroyself
trigger1 = animtime = 0
;-----------------------------------------------------

;needle 3 death
[Statedef 1210]
type = A
movetype = I
physics = N
anim = 1210
ctrl = 0
sprpriority = 1

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 1055, end]
type = destroyself
trigger1 = animtime = 0
;-----------------------------------------------------

;needle 4 death
[Statedef 1211]
type = A
movetype = I
physics = N
anim = 1211
ctrl = 0
sprpriority = 1

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 1055, end]
type = destroyself
trigger1 = animtime = 0
;-----------------------------------------------------

;needle 5 death
[Statedef 1212]
type = A
movetype = I
physics = N
anim = 1212
ctrl = 0
sprpriority = 1

[State 420, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0
;ignorehitpause =
;persistent =

[State 1055, end]
type = destroyself
trigger1 = animtime = 0
;--------------------------------------------------

;needle throw M
[Statedef 1215]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
poweradd = 90
anim = 1200
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 14
value = 8400, 2

[State 0, Helper]
type = Helper
trigger1 = Time = 14
helpertype = normal ;player
name = "needle4"
stateno = 1204
pos = 10,-20
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 16
helpertype = normal ;player
name = "needle5"
stateno = 1205
pos = 10,-20
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 18
helpertype = normal ;player
name = "needle6"
stateno = 1206
pos = 10,-20
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1
;--------------------------------------

;needle throw H
[Statedef 1220]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
poweradd = 90
anim = 1200
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 14
value = 8400, 2

[State 0, Helper]
type = Helper
trigger1 = Time = 14
helpertype = normal ;player
name = "needle5"
stateno = 1205
pos = 10,-20
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 16
helpertype = normal ;player
name = "needle6"
stateno = 1206
pos = 10,-20
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 0, Helper]
type = Helper
trigger1 = Time = 18
helpertype = normal ;player
name = "needle7"
stateno = 1207
pos = 10,-20
postype = p1    ;p2,front,back,left,right
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1
;-------------------------------------

;you axed for this L
[Statedef 1300]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
poweradd = 85
anim = 1300
sprpriority = 2
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = 1100,2
volume = 50



[State 800, 1]
type = HitDef
;trigger1 = !moveguarded
Trigger1 = Time = 0
attr = S, SA
guardflag = MA
priority = 3, Hit
pausetime = 0,10
hitflag = MAF      ;Affect only ground people who are not being hit
getpower = 100, 20
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1
p1stateno = 1301
p2stateno = 1310       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sparkxy = 0,-79
guard.sparkno = s8001
guardsound = S8000,6
hitsound = S8000,8

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------

;Succeed
[Statedef 1301]
type    = S
movetype= A
physics = N
anim = 1301
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 7

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1302
pos = 0,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 200
vel = 0,0
accel = 0,0
random = 0,0
removetime = 23
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0


[State 810, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8600, 0


[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 240, 0
time = 7

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 2
pos = 180,00
time = 7


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos =  120,00
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 4
pos =  60,00
time = 7

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = - 100
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 5
value = 100
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1100, 3

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 8002
pos = 0,-70
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
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------

;you axed for this M
[Statedef 1302]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
poweradd = 85
anim = 1303
sprpriority = 2
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = 1100,2
volume = 50



[State 800, 1]
type = HitDef
;trigger1 = !moveguarded
Trigger1 = Time = 0
attr = S, SA
guardflag = MA
priority = 3, Hit
pausetime = 0,10
hitflag = MAF      ;Affect only ground people who are not being hit
getpower = 100, 20
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1         ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1
p1stateno = 1303
p2stateno = 1310       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sparkxy = 0,-79
guard.sparkno = s8001
guardsound = S8000,6
hitsound = S8000,8

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------

;Succeed
[Statedef 1303]
type    = S
movetype= A
physics = N
anim = 1304
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 7

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1302
pos = 0,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 200
vel = 0,0
accel = 0,0
random = 0,0
removetime = 23
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0


[State 810, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8600, 0


[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 180, -70
time = 7

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 2
pos = 140,-50
time = 7


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos =  100,-20
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 4
pos =  60,00
time = 7

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = - 100
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 5
value = 100
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1100, 3

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 8002
pos = 0,-70
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
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------

;you axed for this H
[Statedef 1304]
type    = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
poweradd = 85
anim = 1305
sprpriority = 2
velset = 0,0

[State 0,PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = 1100,2
volume = 50



[State 800, 1]
type = HitDef
;trigger1 = !moveguarded
Trigger1 = Time = 0
attr = S, SA
guardflag = MA
priority = 3, Hit
pausetime = 0,10
hitflag = MAF      ;Affect only ground people who are not being hit
getpower = 100, 20
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1
p1stateno = 1305
p2stateno = 1310       ;If hit, p2 changes to state 820 in KFM's cns
guard.dist = 0        ;This prevents p2 from going into a guard state if close
sparkxy = 0,-79
guard.sparkno = s8001
guardsound = S8000,6
hitsound = S8000,8

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------

;Succeed
[Statedef 1305]
type    = S
movetype= A
physics = N
anim = 1306
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800, 7

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 1302
pos = 0,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 200
vel = 0,0
accel = 0,0
random = 0,0
removetime = 23
pausemovetime = 0
scale = 1,1
sprpriority = 2
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans =
;persistent =
;supermove = 0
;pausemove = 0


[State 810, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8600, 0


[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 165, -105
time = 7

[State 810, Width 2-11]
type = TargetBind
trigger1 = AnimElem = 2
pos = 130,-70
time = 7


[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos =  100,-40
time = 7

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 4
pos =  40,-10
time = 7

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = - 100
absolute = 0
;ignorehitpause =
;persistent =

[State 0, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 5
value = 100
;ignorehitpause =
;persistent =

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1100, 3

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 8002
pos = 0,-70
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
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------

;P2 damage
[Statedef 1310]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority=0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1310

[State 821, 1] ;Gravity
type = Velset
Trigger1 = time > 23
y = -1
x = -4

[State 820, 2]
type = SelfState
Trigger1 = time = 24
;trigger1 = !gethitvar(isbound)
value = 5050


