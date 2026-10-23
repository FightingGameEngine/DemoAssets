;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Beam light
;---------------------------------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1000
ctrl = 0
sprpriority = -1
poweradd = 80

[State 220, 1]
type = Playsnd
trigger1 = animelem = 3
value = 10,3

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 1001
sprpriority = 10
stateno = 1001
pos = 80, -80
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 1001]
type = S
movetype = A
physics = N
anim = 1001
ctrl = 0
velset = 0,0
sprpriority = 2


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 82,0

[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 1 || animelem = 3 || animelem = 5 || animelem = 7
trigger2 = animelem = 9 || animelem = 11 || animelem = 13  || animelem = 15
trigger3 = animelem = 17 || animelem = 19 || animelem = 21  || animelem = 23
trigger4 = animelem = 25 || animelem = 27 || animelem = 29 || animelem = 31
trigger5 = animelem = 33 || animelem = 35 || animelem = 37  || animelem = 39
trigger6 = animelem = 41 || animelem = 43 || animelem = 45 || animelem = 47
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 4,2
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s83,0
guardsound = S81,0
sparkno = S8222
sparkxy = 0,20
animtype  = Hard
ground.type = high
ground.slidetime = 4
ground.velocity = -2
airguard.velocity = -50
air.type = Low
air.velocity = -50,1
air.juggle = 5
fall.animtype = Hard
fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1000
trigger2 = root, stateno !=1120
trigger2 = root, stateno !=3103

;---------------------------------------------------------------------------
[Statedef 1020]
type    = A
movetype= A
physics = A
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1020
ctrl = 0
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 3
value = 10,3

[State 23000]
type = VELSET
trigger1 = ANIMELEM = 3
Y = 0

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
ID = 1021
sprpriority = 10
stateno = 1021
pos = 80, -80
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 70
ctrl = 1

;-------------------------------------------------------------------------------
; Beam Light Helper
[StateDef 1021]
type = S
movetype = A
physics = N
anim = 1001
ctrl = 0
velset = 0,0
sprpriority = 2


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 1 || animelem = 3 || animelem = 5 || animelem = 7
trigger2 = animelem = 9 || animelem = 11 || animelem = 13  || animelem = 15
trigger3 = animelem = 17 || animelem = 19 || animelem = 21  || animelem = 23
trigger4 = animelem = 25 || animelem = 27 || animelem = 29 || animelem = 31
trigger5 = animelem = 33 || animelem = 35 || animelem = 37  || animelem = 39
trigger6 = animelem = 41 || animelem = 43 || animelem = 45 || animelem = 47
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 4,2
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s83,0
guardsound = S81,0
sparkno = S8222
sparkxy = 0,20
animtype  = Hard
ground.type = high
ground.slidetime = 4
ground.velocity = -2
airguard.velocity = -50
air.type = Low
air.velocity = -50,1
air.juggle = 5
fall.animtype = Hard
fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1020
;--------------------------------------
;Beam Medium
;--------------------------------------
[Statedef 1110]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1110
ctrl = 0
sprpriority = 2
poweradd = 80

[State 220, 1]
type = Playsnd
trigger1 = animelem = 3
value = 10,3

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Medium Beam"
ID = 1111
stateno = 1111
pos = 0,0
ownpal = 1

[State 1110, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Beam Medium Helper
[StateDef 1111]
type = S
movetype = A
physics = N
anim = 1102
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 82,0


[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4
trigger2 = animelem = 5 || animelem = 6 || animelem = 7
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 12,5
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s83,0
guardsound = S81,0
sparkno = S8222
sparkxy = 25,-159
guard.sparkno = s8001
animtype  = Hard
ground.type = high
ground.slidetime = 4
ground.velocity = -50
airguard.velocity = -50
air.type = Low
air.velocity = -50,1
air.juggle = 5
fall.animtype = Hard
fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1110

;--------------------------------------
;Beam Strong
;--------------------------------------
[Statedef 1120]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1120
ctrl = 0
sprpriority = -1
poweradd = 80

[State 220, 1]
type = Playsnd
trigger1 = animelem = 3
value = 10,3

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Light Beam"
sprpriority = 10
ID = 1001
stateno = 1001
pos = 50, -50
ownpal = 1

[State 1120, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Beam Strong Helper
[StateDef 1121]
type = S
movetype = A
physics = N
anim = 1103
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 95,-86

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 82,0


[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 1 || animelem = 3 || animelem = 5 || animelem = 7
trigger2 = animelem = 9 || animelem = 11 || animelem = 13  || animelem = 15
trigger3 = animelem = 17 || animelem = 19 || animelem = 21  || animelem = 23
trigger4 = animelem = 25 || animelem = 27 || animelem = 29 || animelem = 31
trigger5 = animelem = 33 || animelem = 35 || animelem = 37  || animelem = 39
trigger6 = animelem = 41 || animelem = 43 || animelem = 45 || animelem = 47
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 3,2
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s83,0
guardsound = S81,0
sparkno = S8222
sparkxy = 0,30
guard.sparkno = s8001
animtype  = Hard
ground.type = high
ground.slidetime = 4
ground.velocity = -50
airguard.velocity = -50
air.type = Low
air.velocity = -50,1
air.juggle = 5
fall.animtype = Hard
fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1120

;-----------------------------------------------------------------

[StateDef 1130]
type = S
movetype = A
physics = S
anim = 251
ctrl = 0
velset = 0,0
poweradd = 80

; voice
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1,3
channel = 0

[State 270, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1152
ID = 1152
postype = p1
pos = -20,-20
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2

; woosh
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S0,2

; sfx
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S10,10


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 87
volume = 100


[State 1200, spear]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 252
projanim = 252
projhitanim = 253
projremanim = 254
projcancelanim = 252
velocity = 8
offset = 0,-80
projscale = .8,.8
attr = A,SP
hitflag = MAFD
guardflag = MAF
animtype = DiagUp
sparkno = S8222
sparkxy = 90,0
guard.sparkno = s8001
priority = 3,Miss
damage = 90,8
pausetime = 10,12
guard.sparkno = 0
hitsound = S88,0
guardsound = S81,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10
air.velocity = -5
envshake.ampl= -3
envshake.freq= 100
envshake.phase= 90
envshake.time= 12
fall = 1

[State 1200, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------
;Beam Strong
;--------------------------------------
[Statedef 1140]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1140
ctrl = 0
sprpriority = 2
poweradd = 80

[State 220, 1]
type = Playsnd
trigger1 = time = 20
value = 1000,2

[State 270, Explod]
type = Explod
trigger1 = time = 18
anim = 1143
ID = 1143
postype = p1
pos = 5,-10
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2

[State 3110, Helper]
type = Helper
trigger1 = time = 20
name = "mini misile"
ID = 1141
stateno = 1141
pos = 0, 0
ownpal = 1

[State 1120, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Beam Strong Helper
[StateDef 1141]
type = S
movetype = A
physics = N
anim = 1141
ctrl = 0
velset = 10,0
sprpriority = 2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 270, Explod]
type = Explod
trigger1 = movehit
anim = 1142
ID = 1142
postype = p2
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2







[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 1
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 90,5
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s84,0
guardsound = S81,0
sparkno = S8222
sparkxy = 0,-60
guard.sparkno = s8001
animtype  = Heavy
ground.type = Trip
ground.hittime = 25
ground.slidetime = 30
ground.velocity = -15,-1
airguard.velocity = -3
air.type = Low
air.velocity = -50,1
air.juggle = 5
fall.animtype = Hard
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
Trigger2 = movehit
;--------------------------------------
;Beam Strong
;--------------------------------------
[Statedef 1150]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1150
ctrl = 0
sprpriority = 2
poweradd = 80

[State 220, 1]
type = Playsnd
trigger1 = animelem = 4
value = 10,3

[State 270, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1152
ID = 1152
postype = p1
pos = 0,0
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2

[State 3110, Helper]
type = Helper
trigger1 = animelem = 4
name = "beam"
ID = 1151
stateno = 1151
pos = -10, 0
ownpal = 1

[State 1120, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Beam Strong Helper
[StateDef 1151]
type = S
movetype = A
physics = N
anim = 1151
ctrl = 0
velset = 0,0
sprpriority = 2

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 23000]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = 86
volume = 100



[State 3010, hitdef]
type = HitDef
trigger1 = animelem = 4
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 80,5
pausetime = 0,10
getpower  = 10
givepower = 25
hitsound = s83,0
guardsound = S81,0
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
animtype  = Heavy
ground.type = high
ground.hittime = 25
ground.slidetime = 30
ground.velocity = -5,-1
airguard.velocity = -3
air.type = Low
air.velocity = -50,1
air.juggle = 5
fall.animtype = Hard
envshake.ampl= -3
envshake.freq= 100
envshake.phase= 90
envshake.time= 25
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 23000]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, stateno !=1150

;---------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 1200
ctrl = 0
sprpriority = -1

[State 220, 1]
type = velset
trigger1 = animelem = 1
x = 9
   
[State 1000, End]
type = ChangeState
trigger1 = (p2bodydist x <= 30)
value = 1201
ctrl = 1


[State 1120, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 1201]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1201
poweradd = 20
sprpriority = 2
poweradd = 100

[State 220, 1]
type = Playsnd
triggerall = movehit
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 9
value = 8000, 1

[State 200, 1]
type = PlaySnd
trigger1 = time = 6
value = 8400, 0






[State 200, HitDef]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 7
attr = S,NA
damage = 9,10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 2,2
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s90,0
guardsound = 81,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4
air.type = Low
air.hittime = 15
air.velocity = -5
envshake.time = 51
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 90


[State 200, HitDef]
type = HitDef
trigger1 = animelem = 9
attr = S,NA
damage = 1,1
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3
pausetime = 3,15
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,0
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -5

[State 3110, Helper]
type = Helper
trigger1 = animelem = 11
name = "beam"
ID = 842
stateno = 842
pos = 0, -15
ownpal = 1

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------

[StateDef 1210]
type = S
movetype = A
physics = S
anim = 1210
ctrl = 0
velset = 0,0
poweradd = 90

; voice
[State 220, 1]
type = Playsnd
trigger1 = animelem = 4
value = 1000,2


[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 95,0


[State 270, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1213
ID = 1213
postype = p1
pos = 0,-15
ontop = 1
facing = 1
bind = 1
bindtime = -1
ignorehitpause = 0
sprpriority = 2

; woosh
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S0,2

; sfx
[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S10,10





[State 1200, spear]
type = Projectile
triggerall = (p2statetype = S) || (p2statetype = C)
trigger1 = AnimElem = 4
ProjID = 1211
projanim = 1211
projhitanim = 1147
projremanim = 254
projcancelanim = 252
velocity = 8
offset = 0,-15
projscale = 1,1
attr = A,SP
hitflag = MAFD          ;HLM
guardflag = MA
animtype = hard
guard.sparkno = s8001
priority = 3,Miss
damage = 45,8
pausetime = 10,50
sparkno = S8222
sparkxy = 80,-79
guard.sparkno = 0
hitsound = S84,0
guardsound = S81,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1
air.hittime  = 20
air.velocity = -5
p2stateno = 7201


[State 1200, spear]
type = Projectile
triggerall = (p2statetype = L) || (p2statetype = A)
trigger1 = AnimElem = 4
ProjID = 1211
projanim = 1211
projhitanim = 1147
projremanim = 254
projcancelanim = 252
velocity = 8
offset = 0,-15
projscale = 1,1
attr = A,SP
hitflag = MAFD          ;HLM
guardflag = MA
animtype = hard
sparkno = S8222
sparkxy = -15,-79
guard.sparkno = s8001
priority = 3,Miss
damage = 90,8
pausetime = 10,12
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -1
air.hittime  = 20
air.velocity = -5
p2stateno = 7202

[State 1200, changestate]
type = ChangeState
triggerall = (p2stateno = 7201) ||(p2stateno = 7202) ||(p2stateno = 5300)
trigger1 = ANIMTIME = 0
value = 1211


[State 1200, changestate]
type = ChangeState
triggerall = (p2stateno != 7201) ||(p2stateno != 7202) || (p2stateno != 5300)
trigger1 = ANIMTIME = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
; CNS difficulty: easy
[StateDef 1211]
type = S
movetype= A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 1220
poweradd = 20
sprpriority = 2

[State 440, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 2
value = S1,18
volume = 0
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 0, PosAdd]
type = Velset
trigger1 = AnimElem = 2
x = 0
y = -20

[State 0, PosAdd]
type = Velset
trigger1 = AnimElem = 3
x = 0
y = -20

[State 440, 5]
type = ChangeState
trigger1 = animtime = 0
VALUE = 1212 ;- WHEN THE BOTTON IS RELEASED IT CHANGES TO THE CHARGE



[StateDef 1212]
type = A
movetype= A
physics = A
juggle = 1
velset = 0,0
ctrl = 0
anim = 1221
poweradd = 80
sprpriority = 2


[State 220, 1]
type = Playsnd
trigger1 = animelem = 1
value = 13,9






[State 220, HitDef]
type = HitDef
trigger1 = animelem =1
attr = S,NA
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
affectteam = E          ;B,E,F
animtype = hard
air.animtype = hard
damage = 80,20
pausetime = 10,10
sparkno = 10
guard.sparkno = 10
sparkxy = -37,-40
hitsound = S1,0
guardsound = S2,0
ground.type = trip   ;Low,Trip,None
air.type = trip
ground.slidetime = 0
ground.hittime  = 18
ground.velocity = 0,5
air.velocity = 0,-3.2
air.hittime = 15
air.velocity = -5
envshake.time = 51
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 90
fall = 1
fall.recovertime = 20
air.fall = 1


[State 13304, sparks]
type = explod
trigger1 = MOVEHIT
anim = 1223
ID = 1223
sprpriority = -1
postype = p2
pos = 0,0
removetime = -2
ownpal = 1
facing = -1
ignorehitpause = 1
persistent = 0
pausemovetime = 100
supermovetime = 100

[State 1050, 0]
type = PosAdd
trigger1 = Time = 0
x = P2Dist X --10

[State 0, PosAdd]
type = Velset
trigger1 = AnimElem = 1
x = 0
y = 10

[State 52, 2]
type = PosSet
trigger1 = movehit
y = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = movehit
value = 8200,0

[State 441, 5]
type = ChangeState
trigger1 = pos y >= 0 && movehit
VALUE = 1213

[StateDef 1213]
type = S
movetype= A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 1222
poweradd = 0
sprpriority = 2


[State 441, 5]
type = ChangeState
trigger1 = animtime = 0
VALUE = 11
CTRL = 1
;-------------------------------------------------------------------------------
; P2 State Dizzy
[Statedef 7201]; force P2 to change
ctrl = 0
time = 0;25


[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y <= 0
statetype = S
movetype = I
physics = S

[State 7201, StateTypeSet]
type = StateTypeSet
trigger1 = pos y != 0
statetype = A       ;S,A,C,L
movetype = h        ;I,A,H
physics = A         ;A,C,S,N

[State 7201, Change To Dizzy]
type = ChangeAnim
triggerall = p2statetype = S
trigger1 = SelfAnimExist(5300) && time=0
value = 5300

[State 7201,Change To Normal]
type = selfState
triggerall = p2statetype = S
trigger1 = anim = 5300 && time = 100
value = 0
ctrl=1

;-------------------------------------------------------------------------------
; P2 State Dizzy
[Statedef 7202]; force P2 to change
ctrl = 0
time = 0;25


[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y <= 0
statetype = S
movetype = I
physics = S

[State 7201, Change To Dizzy]
type = ChangeAnim
triggerall = p2statetype = S
trigger1 = SelfAnimExist(5300) && time=0
value = 5300



[State 0, ]
type = PosSet
trigger1 = movetype = I
y = 0

[State 7201,Change To Normal]
type = selfState
triggerall = p2statetype = S
trigger1 = anim = 5300 && time = 100
value = 0
ctrl=1
;---------------------------------------------------------------------------
[Statedef 1230]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 1230
ctrl = 0
sprpriority = -1
poweradd = 100

[State 220, 1]
type = Playsnd
trigger1 = animelem = 4
value = 1000,2

[State 3110, Helper]
type = Helper
triggerall = !numhelper(1231)
trigger1 = AnimElem = 4
helpertype = normal
name = "misil"
ID = 1231
sprpriority = 10
stateno = 1231
pos = 42, -50
postype = p1
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 1231]
type    = A
movetype= I
physics = N
juggle  = 1
velset = 5,5
poweradd = 50
anim = 1231
ctrl = 0
sprpriority = -1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 1
value = 12,12

[State 3110, Helper]
type = Helper
triggerall = !numhelper(1232)
trigger1 = pos Y = 0
name = "earth"
ID = 1232
sprpriority = 10
stateno = 1232
pos = 20, 10
ownpal = 1

[State 1000, End]
type = destroyself
trigger1 = pos Y = 0

;-----------------------------------
; Shockwave Spawner
[Statedef 1232]
type = A
movetype = A
physics = N
anim = 1232
poweradd = 80

[State 1050, 2]
type = VelSet
trigger1 = time = 0
x = 3



[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 89,0



[State 1050, 3]
type = hitdef
trigger1 = (time % 14) = 0
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 12, 2
pausetime = 0, 9
guard.pausetime = 0, 10
sparkno = S8222
sparkxy = -15,-10
guard.sparkno = 40
hitsound = S90,0
guardsound = S81,0
ground.type = Low
ground.slidetime = 15
ground.hittime = 16
guard.slidetime = 13
guard.hittime = 14
ground.velocity = -6, 0
air.velocity = -6, -1
guard.velocity = -8
hitonce = 1
getpower = 5
givepower = 35

[State 1050, 4]
type = PlaySnd
trigger1 = (time % 14) = 0
value = 121,16
volume = 10
channel = 1

[State 1050, 5]
type = DestroySelf
trigger1 = time >= 100

;------------------------------------------------------------------------
;Katon:Endan
[StateDef 1300]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1300
poweradd = 0
sprpriority = 2
poweradd = 80

[State 220, 1]
type = Playsnd
trigger1 = animelem = 9
value = 1000,6

[State 0, Helper]
type = Helper
trigger1 = animelem = 9
helpertype = normal ;player
name = "Flame2"
ID = 1301
stateno = 1301
pos = -10,-10
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 200, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;Flame
[StateDef 1301]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1301
poweradd = 0
sprpriority = 3

[State 200, 1]
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
trigger17 = animelem = 17
attr = S, SP
damage = 6,3
animtype = Hard
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
sparkxy = -8, -0
animtype = Heavy
ground.type = High
hitsound = s94,0
guardsound = S81,0
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,0
guard.velocity = -2
air.velocity = -3,-3
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = ifelse(p2movetype = A,1,0)
sprpriority=4
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
envshake.ampl= -3
envshake.freq= 100
envshake.phase= 90
envshake.time= 25

[State 200, end]
type = destroyself
trigger1 = animtime = 0
;---------------------------------------------------------------------------
[Statedef 1400]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 1400

[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1, 1





[State 800, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NT
hitflag = M-
priority = 2, Miss
snap = 64, 0, 1
sparkno = -1
p2facing = 1
p1stateno = 1410
p2stateno = 1420

[State 105]
type = Explod
triggerall = !NumExplod(1401)
trigger1 = animelem = 5
persistent = 0
anim = 1401
id = 1401
postype = p1
sprpriority = 10
pos = 0, 0
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 47
ownpal = 1

[State 800, 3]
type = changestate
trigger1 = animtime = 0
value = 1412
ctrl = 1
;-------------------------------------------------
;Slam
[Statedef 1410]
type    = S
movetype= A
physics = N
anim = 1410
poweradd = 60
sprpriority = 2
poweradd = 100




[State 1000, sndx]
type = PlaySnd
trigger1 = time = 0
value = 1000,4


[State 220, 1]
type = Playsnd
trigger1 = animelem = 1
value = 80,0


[State 105]
type = Explod
triggerall = !NumExplod(1411)
trigger1 = time = 0
persistent = 0
anim = 1411
id = 1411
postype = p1
sprpriority = 10
pos = 0, 0
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 81
ownpal = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 146, 0
time = 8


[State 810, Bind 1]
type = TargetBind
trigger1 = time = 8
pos = 146, -109
time = 8


[State 810, Bind 1]
type = TargetBind
trigger1 = time = 16
pos = 97, -176
time = 4


[State 810, Bind 1]
type = TargetBind
trigger1 = time = 20
pos = 113, -170
time = 4


[State 810, Bind 1]
type = TargetBind
trigger1 = time = 24
pos = 30, -191
time = 4



[State 810, Bind 1]
type = TargetBind
trigger1 = time = 28
pos = 22, -184
time = 4


[State 810, Bind 1]
type = TargetBind
trigger1 = time = 32
pos = 89, -174
time = 8


[State 0, 1]
type = TargetLifeAdd
triggerall = time=[0,32]
trigger1 =  (time % 4) = 0
value = -14


[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgebodydist <= -50
value = 1413


[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgebodydist > -50
value = 0
ctrl = 1


;-------------------------------------------------
; If Off-screen
[Statedef 1413]
type = S
movetype = I
physics = N
anim = 0
ctrl = 0
velset = 0,0

[State 9995,2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 9995, 2]
type = PosAdd
trigger1 = BackEdgeDist < -100
x = -100 - BackEdgeDist

[State 742, Dash Onscreen!]
type = ChangeAnim
trigger1 = Time = 50
value = 100

[state 100, 2]
type = sprpriority
trigger1 = 1
value = 1

[State 100, 4]
type = Velset
trigger1 = Time = 50
x = 8

[State 100, 5]
type = ChangeState
trigger1 = BackEdgeDist > 60
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1412]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 1412

[State 105]
type = Explod
triggerall = !NumExplod(1402)
trigger1 = animelem = 1
persistent = 0
anim = 1402
id = 1402
postype = p1
sprpriority = 47
pos = 0, 0
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 28
ownpal = 1

[State 800, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Grabbed
[Statedef 1420]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 6003, 1]
type = PosFreeze
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
value = 4
persistent = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7696

[State 820, 1]
type = ChangeAnim2
Triggerall = !selfanimexist(7696)
Trigger1 = Time = 0
value = 5000

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time = 40
x = -22
y = -6

[State 1485, 1]
type = ChangeAnim2
trigger1 = time = 40
value = 3142

[State 1485, 1]
type = ChangeAnim
trigger1 = time = 57
value = ifelse(SelfAnimExist(5035),5035,5050)

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 40
y = .49

[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;-------------------------------------------------

[Statedef 4210]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 4210   ;ação do burst explodindo
poweradd = 80
sprpriority = 2
facep2 = 1

[State 220, 1]
type = Playsnd
trigger1 = animelem = 12
value = 12,11

[State 4210, NotHitby]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4210, Veladd]
type = VelAdd
trigger1 = AnimElemTime(2) = 0
y = -12

[State 4210, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(16) <= 0
value = 1

[State 4210, Velset]
type = VelSet
trigger1 = AnimElemTime(14) = 0
y = 0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s52,2

[State 4210, StatetypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) = 0
statetype = A
physics = A

[State 4210, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Burst"
ID = 42100
pos = 0,-80
ownpal = 1
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),3,0))
supermovetime = 0
stateno = 14210 ;(efeito do burst flash)

[State 4210, Helper]
type = Helper
trigger1 = AnimElem = 12
helpertype = normal
name = "Burst"
ID = 42101
pos = 0,-80
ownpal = 1
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),3,0))
supermovetime = 0
stateno = 14211 ;(efeito do burst flash)ç
size.xscale =1.3
size.yscale =1.3

[State 4210, Helper]
type = Helper
trigger1 = AnimElem = 13
helpertype = normal
name = "Burst"
ID = 42101
pos = 0,-80
ownpal = 1
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),3,0))
supermovetime = 0
stateno = 14211 ;(efeito do burst flash)
size.xscale =1.8
size.yscale =1.8

[State 4210, VarSet]
type = Null;VarSet
trigger1 = time = 0
var(6) = 250

[State 4210, VarAdd]
type = Null;VarAdd
trigger1 = time = [1,10]
var(6) = -25

[State 4210, VarAdd]
type = Null;VarAdd
trigger1 = time = [31,40]
var(6) = 25

[State 4210, Null]
type = Null;BGPalFX
trigger1 = 1
time = 1
mul = var(6),var(6),var(6)

[State 4210, chargestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

;---------------------------------------------------------------------------
; Efeito busrt helper

[Statedef 4220]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,0
anim = 4210
poweradd = 80
sprpriority = 2
facep2 = 1

[State 4220, NoHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4220, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) = 0
y = -4

[State 4220, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(14) <= 0
value = 1

[State 4220, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) = 0
y = 0

[State 4220, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(14) = 0
statetype = A
physics = A

[State 4220, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s52,2

[State 4220, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
helpertype = normal
name = "Burst"
ID = 42200
pos = 0,-70
ownpal = 1
pausemovetime = ifelse(NumHelper(12711),9999,ifelse(NumHelper(19500),3,0))
supermovetime = 0
stateno = 14210

[State 4220, chargestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 51
ctrl = 1

;--------------------------------------------------------------------------

[Statedef 14210]
type = S
movetype = A
physics = N
anim = 14000
ctrl = 0
sprpriority = 3

[State 14210, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 14210, Null]
type = Null;PalFX
trigger1 = 1
time = -1
mul = 255,255,0
ignorehitpause = 1

[State 14210, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 80,0
getpower = 0,0
givepower = 0,0
pausetime = 0,8
guard.pausetime = 0,8
sparkno = S8222
sparkxy = 0,0
guard.sparkno = s8001
sparkxy = 0,0
hitsound = S51,0
guardsound = S51,1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 25
air.hittime = 20
guard.ctrltime = 25
airguard.ctrltime = 25
ground.velocity = -8,-6
guard.velocity = -7
air.velocity = -8,-6
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 14210, ParentVarAdd]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
persistent = 0
ignorehitpause = 1

[State 14210, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;--------------------------------------------------------------------------

[Statedef 14211]
type = S
movetype = A
physics = N
anim = 14001
ctrl = 0
sprpriority = 3

[State 14210, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 14210, Null]
type = Null;PalFX
trigger1 = 1
time = -1
mul = 255,255,0
ignorehitpause = 1

[State 14210, Hitdef]
type = Hitdef
trigger1 = AnimElemTime(1) = 0
attr = A,SP
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
fall.animtype = back
ground.type = high
air.type = high
damage = 40,0
getpower = 0,0
givepower = 0,0
pausetime = 0,8
guard.pausetime = 0,8
sparkno = S8222
sparkxy = 0,0
guard.sparkno = s8001
sparkxy = 0,0
hitsound = S51,0
guardsound = S51,1
ground.hittime = 20
ground.slidetime = 20
guard.hittime = 25
air.hittime = 20
guard.ctrltime = 25
airguard.ctrltime = 25
ground.velocity = -8,-6
guard.velocity = -7
air.velocity = -8,-6
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
forcestand = 0
fall = 1
air.fall = 1
kill = 1
guard.kill = 0

[State 14210, ParentVarAdd]
type = ParentVarAdd
trigger1 = movehit
fvar(1) = 1
persistent = 0
ignorehitpause = 1

[State 14210, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Magnetic Shield

[Statedef 3020]
type    = U
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3020
ctrl = 0
sprpriority = 2
facep2 = 1

[State 3021]
type = Playsnd
trigger1 = animelem = 1
value = 12,0

[State 3021]
type = Helper
trigger1 = animelem = 1
stateno = 3030
id = 3030
ownpal = 1







[State 3021]
type = PalFx
trigger1 = Time = [1,20]
time = 8
add = 64,32,64
sinadd = 64,32,64,30

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 37
value = 600

[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 38
value = 0


[State 3021]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4120,0

[State 3021]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[State 3020]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;Magnetic Armor
[Statedef 3030]
type = S
movetype = I
physics = N
anim = 3030
ctrl = 0
sprpriority = 5
velset = 0,0


[State 3030]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 3030, sndx]
type = PlaySnd
trigger1 = time = 0
value = 91,0



[State 3030]
type = Turn
trigger1 = root,facing != facing

[State 3030]
type = HitOverride
trigger1 = 1
stateno = 3031
attr = SCA,AA,AP,AT
slot = 0
time = -1


[State 3030, sndx]
type = PlaySnd
trigger1 = time = 0
value = 91,0



[State 24120, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y
ignorehitpause = 1

[State 24120, ChangeState]
type = ChangeState
trigger1 = parent,var(37)<1
value = 3040

[State 24120, ChangeState]
type = ChangeState
trigger1 = parent,var(38)>= 8
value = 3032

;---------------------------------------------------------------------------
; Forcefield Activation
[Statedef 3031]
type = S
movetype = H
physics = S
anim = 3030
sprpriority = 2
velset = 0,0
ctrl = 0

[State 0, VarAdd]
type = ParentVarAdd
trigger1 = !time
v = 49    ;fv =
value = floor(GetHitVar(hittime))






[State 0, VarAdd]
type = ParentVarAdd
trigger1 = !time
v = 38    ;fv =
value = 1
;ignorehitpause =
;persistent =
[State 0, VarAdd]
type = ParentVarAdd
trigger1 = !time
trigger1 = enemy,HitDefAttr = SCA,HA,SP
v = 38    ;fv =
value = floor(GetHitVar(damage) /35)


[State 3031, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3031, Turn]
type = Turn
trigger1 = facing != parent, facing

[State 3031, HitOverride]
type = HitOverride
trigger1 = 1
time = 1
attr = SCA, AA, AT, AP
stateno = 3031

[State 3031, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y
ignorehitpause = 1

[State 3031, ChangeState]
type = ChangeState
trigger1 = animTime = 0
value = 3030

[State 3031, ChangeState]
type = ChangeState
trigger1 = parent,var(38)>= 8
value = 3032

;---------------------------------------------------------------------------
; Shatter
[Statedef 3032]
type = S
movetype = A
physics = N
anim = 3041
ctrl = 0

[State 3032, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3032, AttackMulSet]
type = AttackMulSet
trigger1 = 1
value = root, fvar(0)

[State 3032, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
;-----------------------------------------------------------------------------
; Super Armor
[Statedef 9000]
type = U
movetype = I
physics = U
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =


[State 9000, PosFreeze]
type = PosFreeze
trigger1 = Alive
trigger1 = 1
value = 90

[State 9000, CtrlSet]
type = CtrlSet
;triggerall = Time < floor(gethitvar(hittime) * 0.8)
triggerall = Time < floor(var(49) * 0.8)
trigger1 = var(46) <= 106
value = 1

[State 9000, ChangeAnim]
type = ChangeAnim
;trigger1 = Time < floor(gethitvar(hittime) * 0.8)
trigger1 = Time < floor(var(49) * 0.8)
value = Anim
elem  = AnimElemNo(0)

[State 9000, End]
type = ChangeState
trigger1 = Alive
;trigger1 = Time >= floor(gethitvar(hittime) * 0.8)
trigger1 = Time > floor(var(49) * 0.8)
value = var(46)

[State 9000, VelSet]
type = VelSet
trigger1 = !Alive
x = gethitvar(xvel)
y = gethitvar(yvel)

[State 9000, End]
type = ChangeState
trigger1 = !Alive
value = 5050
;------------------------------------------------------------------------------------------------------------
;Magnetic Armor End
[Statedef 3040]
type = S
movetype = I
physics = N
anim = 3040
ctrl = 0
sprpriority = 5
velset = 0,0

[State 24122, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 24122, Turn]
type = Turn
trigger1 = facing != parent, facing

[State 24122, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y
ignorehitpause = 1

[State 24122, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime



; End
