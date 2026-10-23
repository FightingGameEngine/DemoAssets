;---------------------------------------------------------------------------
; Hyper 1
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0
poweradd = 0

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = 25,-65
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 0,0
channel=-1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 171,3


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 3,1
channel=-1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 7
anim = 3011
ID = 3011
pos = 61,-67
postype = p1
bindtime = 999
removetime = -1
sprpriority = 6
ownpal = 1
removeongethit = 1
scale = 1,1.3

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 7
anim = 3011
ID = 3012
pos = 65,-65
postype = p1
bindtime = 999
removetime = -1
sprpriority = 5
ownpal = 1
removeongethit = 1
scale = 1,1.3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3000,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 3000,1
channel = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 3000,2
channel = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = 172,5

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
ProjID = 3010
projanim = 3010
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
velocity = 16,(0.5 - random/725)
offset = 50,-67
attr = S,HP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 6,1
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,-0.1
air.velocity = -2,-0.8
fall = 1
air.fall = 1
getpower = 0

[State 3110, back to stance]
type = ChangeState
trigger1 = time >= 300
value = 3001

[StateDef 3001]
type    = S
physics = S
ctrl = 0
anim = 3001
velset = 0,0
poweradd = 0

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
trigger1 = animelem = 1
value = 0,1
channel=-1


[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;HYPER TW0 (combo)
;-------------------------------------------------------------------------------

[StateDef 3100]
type    = S
physics = S
ctrl = 0
anim = 3100
velset = 0,0
poweradd = 0


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = 5,-65
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


[State 3110, back to stance]
type = ChangeState
trigger1 = time >= 28
value = 3101


[StateDef 3101]
anim = 3101
ctrl = 0
type = S
movetype = A
physics = N
velset = 0,0
poweradd = 0

[State 3101, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 8,0

[State 3101, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 15
y = 0

[State 3101, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 5
y = 0

[State 3101, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0
y = 0

[State 3101, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 60,10
guardflag = MA
pausetime = 8,8
hitsound = 5,1
guardsound = 6,0
priority = 4,hit
sparkno = 3
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,4
getpower = 0

[State 3101, ChangeState]
type = ChangeState
trigger1 = movehit
value = 3102
ctrl = 0

[State 3101, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 3102]
anim = 3102
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 0

[State 3102, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
stateno = 3103

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = animelem= 3
trigger2 = animelem= 6
trigger3 = animelem= 9
trigger4 = animelem= 11
trigger5 = animelem= 15
trigger6 = animelem= 19
trigger7 = animelem= 22
trigger8 = animelem= 24
trigger9 = animelem= 28
trigger10 = animelem= 31
trigger11 = animelem= 33
trigger12 = animelem= 36
trigger13 = animelem= 40
trigger14 = animelem= 43
trigger15 = animelem= 46
trigger16 = animelem= 48
trigger17 = animelem= 52
trigger18 = animelem= 55
trigger19 = animelem= 58
trigger20 = animelem= 61
trigger21 = animelem= 63
trigger22 = animelem= 66
trigger23 = animelem= 71
trigger24 = animelem= 74
trigger25 = animelem= 78
value = 0,1
channel=-1

[State 3102, VelSet]
type = VelSet
trigger1 = animelem= 4
trigger2 = animelem= 7
trigger3 = animelem= 10
trigger4 = animelem= 12
trigger5 = animelem= 16
trigger6 = animelem= 20
trigger7 = animelem= 23
trigger8 = animelem= 25
trigger9 = animelem= 29
trigger10 = animelem= 32
trigger11 = animelem= 34
trigger12 = animelem= 37
trigger13 = animelem= 41
trigger14 = animelem= 44
trigger15 = animelem= 47
trigger16 = animelem= 49
trigger17 = animelem= 53
trigger18 = animelem= 56
trigger19 = animelem= 59
trigger20 = animelem= 62
trigger21 = animelem= 64
trigger22 = animelem= 67
trigger23 = animelem= 71
trigger24 = animelem= 73
x = 2

[State 3102, VelSet]
type = VelSet
trigger1 = animelem= 78
x = 0

[State 3102, HitDef]
type = HitDef
trigger1 = animelem= 2
trigger2 = animelem= 4
trigger3 = animelem= 6
trigger4 = animelem= 8
trigger5 = animelem= 11
trigger6 = animelem= 14
trigger7 = animelem= 17
trigger8 = animelem= 20
trigger9 = animelem= 23
trigger10 = animelem= 27
trigger11 = animelem= 30
trigger12 = animelem= 33
trigger13 = animelem= 36
trigger14 = animelem= 39
trigger15 = animelem= 44
trigger16 = animelem= 48
trigger17 = animelem= 51
trigger18 = animelem= 54
trigger19 = animelem= 57
trigger20 = animelem= 60
trigger21 = animelem= 63
trigger22 = animelem= 65
trigger23 = animelem= 68
trigger24 = animelem= 72
trigger25 = animelem= 75
attr = S, HA
damage = 10,2
guardflag = MA
pausetime = 10,10
hitsound = 5,1
guardsound = 6,0
priority = 4,hit
sparkno = 3
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -1 -10*(animelem=77)
guard.velocity = -2
air.velocity = -4,4
fall= 0
getpower = 0

[State 3102, HitDef]
type = HitDef
trigger1= animelem= 79
attr = S, HA
damage = 20,2
guardflag = MA
pausetime = 10,10
hitsound = 5,1
guardsound = 6,0
priority = 4,hit
sparkno = 1
sparkxy = -20,-60-floor(random/100)
animtype = Heavy
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -21,-10
guard.velocity = -2
air.velocity = -4,14
fall= (animelem=79)
getpower = 0

[State 3102, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

[StateDef 3103]
anim = 3103
ctrl = 0
type = S
movetype = H
physics = S
velset = -3,-1
poweradd = 0

[State 3103, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -20
kill = 0

[State 3103, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 5100
ctrl = 1

;-------------------------------------------------------------------------------
;New Sniper Hyper
;-------------------------------------------------------------------------------

[StateDef 3200]
type    = S
physics = N
ctrl = 0
anim = 3200
velset = 0,0
poweradd = 0

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT

[State 3200, VelSet]
type = VelSet
trigger1 = animelem = 7
x = -8
y = 0

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 40
pos = 28,-95
sound = 1500,0
poweradd = -1000
movetime = 40

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1


[State 3200, Run Sound]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 3200, back to stance]
type = ChangeState
trigger1 = backedgebodydist = 0
trigger1 = vel x = -8
trigger2 = time >=80
value = 3201
ctrl = 0

;-------------------------------------------------------------------------------
[StateDef 3201]
type = S
movetype = A
physics = N
anim = 3201;invisible
ctrl = 0
velset = 0,0
sprpriority = 99
poweradd = 0

[State 3201, Sniper Comic Frame]
type = Helper
triggerall = !numhelper(3202)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 3202
stateno = 3202
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3201, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[state 3201, Assert Special]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay
flag2 = Invisible
ignorehitpause = 1

[State 3201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

[State 3201, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 30

[State 3201, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S172,1

[State 3201, Scope]
type = Helper
triggerall = numhelper(3250)=0
trigger1 = animelem = 6
stateno = 3250
helpertype = normal
pos = 80,-60
postype = p1
ID=3250
ownpal = 1
name = "Scope"
sprpriority = -3

[State 3201, ChangeState]
type = ChangeState
triggerall = time > 20
triggerall = numhelper(3250)<=1
trigger1 = win
trigger2 = lose
trigger3 = command = "a"
trigger4 = command = "b"
trigger5 = command = "c"
trigger6 = command = "x"
trigger7 = command = "y"
trigger8 = command = "z"
value = 3204
ctrl = 0

[State 3201, ChangeState]
type = ChangeState
trigger1 = time = 220
value = 3205
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3202];Frame Helper
type    = S
movetype= I
physics = S
juggle  = 4
anim = 9999
ctrl = 0
sprpriority = 99
poweradd = 0

[State 3202, Comic Frame 1];Meanwhile
type = Explod
triggerall = teamside = 1
triggerall = numexplod(3203) = 0
triggerall = parent,stateno = 3201
trigger1 = numexplod(3202) = 0
anim = 3201
ID = 3202
pos = 0,0
postype = left
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
ontop = 1
sprpriority = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3202, Comic Frame 1];Meanwhile
type = Explod
triggerall = teamside = 2
triggerall = numexplod(3203) = 0
triggerall = parent,stateno = 3201
trigger1 = numexplod(3202) = 0
anim = 3202
ID = 3202
pos = 0,0
postype = right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
ontop = 1
sprpriority = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
facing = -1

[State 3202, Comic Frame 2];Boom
type = Explod
triggerall = teamside = 1
triggerall = parent,stateno = 3204
trigger1 = numexplod(3203) = 0
anim = 3203
ID = 3203
pos = 0,0
postype = left
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
ontop = 1
sprpriority = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3202, Comic Frame 2];Boom
type = Explod
triggerall = teamside = 2
triggerall = parent,stateno = 3204
trigger1 = numexplod(3203) = 0
anim = 3204
ID = 3203
pos = 0,0
postype = right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
ontop = 1
sprpriority = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
facing = -1

[State 3202, Comic Frame 3];Time Out
type = Explod
triggerall = teamside = 1
triggerall = parent,stateno = 3205
trigger1 = numexplod(3203) = 0
anim = 3206

ID = 3203
pos = 0,0
postype = left
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
ontop = 1
sprpriority = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3202, Comic Frame 3];Time Out
type = Explod
triggerall = teamside = 2
triggerall = parent,stateno = 3205
trigger1 = numexplod(3203) = 0
anim = 3206
ID = 3203
pos = 0,0
postype = right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
ontop = 1
sprpriority = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
facing = -1

[State 3202, RemoveExplod];Meanwhile
type = RemoveExplod
trigger1 = numexplod(3203)>=1
id = 3202

[State 3202, RemoveExplod];Boom or Time Out
type = RemoveExplod
trigger1 = parent,stateno!=[3200,3299]
id = 3203

[State 3202, DestroySelf]
type = DestroySelf
trigger1 = root,stateno < 3000

;-------------------------------------------------------------------------------
[Statedef 3204];shoot
type    = S
movetype= I
physics = S
juggle  = 4
anim = 3204;invisible
ctrl = 0
poweradd = 0

[state 3204, Assert Special]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 3204, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

[State 3204, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 2999
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 3205];out of time
type    = S
movetype= I
physics = S
juggle  = 4
anim = 3206;invisible
ctrl = 0
poweradd = 0

[state 3205, Assert Special]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 3205, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1
ignorehitpause = 1

[State 3205, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 2999
ctrl = 0

;-------------------------------------------------------------------------------
[Statedef 2999];Run Back On
type    = S
movetype= I
physics = S
juggle  = 4
anim = 3205
ctrl = 0
sprpriority = 99
poweradd = 0

;This is a 2000 stateno so that the hyper effects will end

[State 2999, PlaySnd];land sound
type = PlaySnd
trigger1 =  time = 0
value = S8,1

[State 2999, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 3250]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 3210
ctrl = 0
sprpriority = 200
poweradd = 0

[State 3250, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3250, Turn]
type = Turn
trigger1 = facing != parent,facing

[State 3250, VelSet]
type = VelSet
trigger1 = parent,command !="holdup"
trigger1 = parent,command !="holddown"
y = 0

[State 3250, VelSet]
type = VelSet
trigger1 = parent,command ="holdup"
trigger1 = parent,command !="holddown"
y = -5

[State 3250, VelSet]
type = VelSet
trigger1 = parent,command !="holdup"
trigger1 = parent,command ="holddown"
y = 5

[State 3250, VelSet]
type = VelSet
trigger1 = parent,command !="holdfwd"
trigger1 = parent,command !="holdback"
x = 0

[State 3250, VelSet]
type = VelSet
trigger1 = parent,command ="holdfwd"
trigger1 = parent,command !="holdback"
x = 5

[State 3250, VelSet]
type = VelSet
trigger1 = parent,command !="holdfwd"
trigger1 = parent,command ="holdback"
x = -5

[State 3250, ChangeState]
type = ChangeState
trigger1 = parent,win
trigger2 = parent,lose
trigger3 = parent,stateno = 3204
value = 3251
ctrl = 0

[State 3250, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno = 3205

;-------------------------------------------------------------------------------
[Statedef 3251]
type    = A
movetype= A
physics = N
juggle  = 4
anim = 3211
ctrl = 0
sprpriority = 200

[State 3251, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3251, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HP
damage = 250,200
hitflag = MAFD
guardflag = -1;MA
pausetime = 10,10
hitsound = -1,-1;S172,2
guardsound = 6,0
sparkno = 3
sparkxy = 0,0
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,-3
fall = 1
air.fall = 1
getpower = 0

[State 3251, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S172,2

[State 3251, Explod]
type = Explod
trigger1 = time = 0
anim = 1002
ID = 1002
pos = 0,0
postype = p1
removetime = -2
sprpriority = 220
ownpal = 1
removeongethit = 1

[State 3251, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-------------------------------------------------------------------------------
; Shield Agent's Attack
;-------------------------------------------------------------------------------

[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3300
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3300, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3300, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 3
Time = 60
pos = -35,-85
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

;------------End of Hyper Effects

[State 3300, 1]
type = Helper
ID = 3305
helpertype = normal
name = "Shield Truck"
pos = -150,0
postype = p1
stateno = 3305
trigger1 = time = 0

[State 3300, 6]
type = Changestate
trigger1 = time = 50
triggerall = P2stateno = 3302 || P2stateno = 3320
value = 3305

[State 3300, 6]
type = playsnd
trigger1 = time = 0
triggerall = P2stateno != 3302 || P2stateno != 3320
value = 3300,0

[State 3300, 6]
type = playsnd
trigger1 = time = 60
triggerall = P2stateno != 3302 || P2stateno != 3320
value = 3300,1

[State 3300, 6]
type = playsnd
trigger1 = time = 260
triggerall = P2stateno != 3302 || P2stateno != 3320
value = 3300,2

[State 3300, 6]
type = Changestate
trigger1 = time = 400
triggerall = P2stateno != 3302 || P2stateno != 3320
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Truck Arrival
[Statedef 3305]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 3,0
anim = 3305
ctrl = 0
sprpriority = 0
poweradd = 0

[State 3305, 1]
type = Helper
ID = 3301
helpertype = normal
name = "AgentCoulson"
pos = 150,0
postype = p1
stateno = 3301
trigger1 = time = 0

;Helicarrier
[State 3305, Explod]
type = Explod
trigger1 = Animelem = 1
anim = 3302
ID =  3302
pos = 250,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
;scale = .75,.75
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3305, 1]
type = Helper
ID = 3306
helpertype = normal
name = "Agent1"
pos = 170,-100
postype = p1
stateno = 3306
trigger1 = time = 30
trigger2 = time = 150
trigger3 = time = 210
trigger4 = time = 280
trigger5 = time = 310
trigger6 = time = 345

[State 3305, 1]
type = Helper
ID = 3307
helpertype = normal
name = "Agent2"
pos = 150,-100
postype = p1
stateno = 3307
trigger1 = time = 50
trigger2 = time = 120
trigger3 = time = 170
trigger4 = time = 250
trigger5 = time = 320

[State 3305, 1]
type = Helper
ID = 3308
helpertype = normal
name = "Agent3"
pos = 100,-100
postype = p1
stateno = 3308
trigger1 = time = 80
trigger2 = time = 175
trigger3 = time = 215
trigger4 = time = 246
trigger5 = time = 299
trigger6 = time = 333

[State 3305, 1]
type = Helper
ID = 3309
helpertype = normal
name = "Agent4"
pos = 90,-100
postype = p1
stateno = 3309
trigger1 = time = 45
trigger2 = time = 70
trigger3 = time = 110
trigger4 = time = 180
trigger5 = time = 255
trigger6 = time = 340

[State 3305, 1]
type = Helper
ID = 3310
helpertype = normal
name = "Agent5"
pos = 180,-100
postype = p1
stateno = 3310
trigger1 = time = 65
trigger2 = time = 153
trigger3 = time = 178
trigger4 = time = 233
trigger5 = time = 313
trigger6 = time = 343

[State 3305, 1]
type = Helper
ID = 3311
helpertype = normal
name = "Agent6"
pos = 140,-100
postype = p1
stateno = 3311
trigger1 = time = 54
trigger2 = time = 70
trigger3 = time = 124
trigger4 = time = 204
trigger5 = time = 254
trigger6 = time = 324

[State 3305, 1]
type = Helper
ID = 3312
helpertype = normal
name = "Agent7"
pos = 120,-100
postype = p1
stateno = 3312
trigger1 = time = 82
trigger2 = time = 119
trigger3 = time = 172
trigger4 = time = 222
trigger5 = time = 292
trigger6 = time = 332

[State 3305, 1]
type = Helper
ID = 3313
helpertype = normal
name = "Agent8"
pos = 160,-100
postype = p1
stateno = 3313
trigger1 = time = 47
trigger2 = time = 77
trigger3 = time = 117
trigger4 = time = 177
trigger5 = time = 257
trigger6 = time = 347

[State 3305, 0]
type = posset
triggerall = facing = 1
trigger1 = time = 399
value = -120,0

[State 3305, 0]
type = posset
triggerall = facing = -1
trigger1 = time = 399
value = 120,0

[State 3305, End ]
type = DestroySelf
Trigger1 = time = 400
ignorehitpause = 0

;---------------------------------------------------------------------------
; Agent Coulson
[Statedef 3301]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3301
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3305, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = S3300,3
volume = 255
channel = 5

[State 3305, PlaySnd]
type = PlaySnd
trigger1 = time = 225
value = S3300,4
volume = 255
channel = 5

[State 3305, PlaySnd]
type = PlaySnd
trigger1 = time = 400
value = S3300,5
volume = 255
channel = 5

[State 3301, 0]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = 3360
time = -1
Trigger1 = 1

[State 3301, 1]
type = velset
trigger1 = animelem = 2
x = 5

[State 3301, 1]
type = velset
trigger1 = animelem = 4
x = 0

[State 3301, 1]
type = velset
trigger1 = animelem = 11
x = 35

[State 3301, 3]
type = HitDef
trigger1 = animelem >= 1
triggerall = P2statetype != A
attr = S, HA
animtype  = medium
damage    = 30,5
priority  = 5
getpower = 0,0
givepower = 0,0
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = S8222
sparkxy = 0,-70
hitsound = 5,1
guardsound = 6,0
guardsound = s3,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = 0,0
air.velocity = 0,0
guard.velocity = 0
airguard.velocity =0,0
P2stateno = 3302
kill = 0
getpower = 0

[State 3301, 2]
type = HitDef
trigger1 = animelem >= 1
triggerall = P2statetype = A
attr = S, HA
animtype  = medium
damage    = 0
priority  = 5
getpower = 0,0
givepower = 0,0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S8222
sparkxy = 0,-70
guard.sparkno = S8001
hitsound = 5,1
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = 0,0
air.velocity = 0,0
guard.velocity = 0
airguard.velocity =0,0
P2stateno = 3320
kill = 0
getpower = 0

[State 3301, End ]
type = DestroySelf
Trigger1 = time = 400
ignorehitpause = 0

;-------------------------------------------------------------------------------
;Agent Coulson Get hit

[Statedef 3302]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 0

[State 3302, 1]
type = posadd
trigger1 = time = 1
trigger2 = time = 5
trigger3 = time = 9
trigger4 = time = 13
trigger5 = time = 17
x = 5

[State 3302, 2]
type = posadd
trigger1 = time = 21
x = -9

[State 3302, 3]
type = posadd
trigger1 = time = 25
x = -3

[State 3302, 4]
type = posadd
trigger1 = time = 29
x = -1

[State 3302, 5]
type = ChangeAnim
trigger1 = time = 36
value = 5040;5110

[State 3302, 6]
type = ChangeState
trigger1 = time = 50
value = 5110


;-----------------------------------------------------------------------
;Get hit Air
[Statedef 3320]
type    = A
movetype= H
physics = S
velset = -3,5
poweradd = 0

[State 3320, 6]
type = velset
trigger1 = pos Y < -1
x = -3
y = 5

[State 3320, 6]
type = velset
trigger1 = pos y >= -1
x = 0
y = 0

[State 3320, 5]
type = ChangeAnim
trigger1 = pos y >= -1
value = 5110

[State 3320, 6]
type = ChangeState
trigger1 = time = 50
value = 5110

;---------------------------------------------------------------------------

[Statedef 3360]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3320
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3360, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S3300,5
volume = 255
freqmul = 5.0
channel = 5

[State 3360, 6]
type = palfx
Trigger1 = time = 1
time = 50
add = 255,0,0
sinadd = 40,40,0,0
color = 0

[State 3360, 6]
type = velset
trigger1 = time = [0,100]
x = 10

[State 3360, End]
type = DestroySelf
Trigger1 = time = 100
ignorehitpause = 0

;---------------------------------------------------------------------------

 ;Shield Helpers

;---------------------------------------------------------------------------
; Agent  helper1

[Statedef 3306]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3306
ctrl = 0
sprpriority = 0
poweradd = 0

[State 3306, 6]
type = velset
trigger1 = animelem = 1
y= 5

[State 3306, 6]
type = velset
trigger1 = animelem = 2
y= 0

[State 3306, 6]
type = velset
trigger1 = time = [30,100]
x = 7

[State 3306, 0]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = 3361
time = -1
Trigger1 = 1

[State 3306, 2]
type = HitDef
trigger1 = animelem >= 1
trigger1 = P2life != 0
attr = S, HA
animtype  = medium
damage    = 7,2
priority  = 5
hitflag = MAFD
guardflag = MA
getpower = 0,0
givepower = 0,0
pausetime = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-70
hitsound = S2,0
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -5,-3
air.velocity = -7,-4
guard.velocity = 0
airguard.velocity =0,0
down.velocity = -5, -3
fall = 1
getpower = 0

[State 3306, End]
type = DestroySelf
Trigger1 = time = 130
ignorehitpause = 0

[Statedef 3361]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3321
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3361, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S11,1
volume = 255
freqmul = 5.0
channel = 5

[State 3361, 6]
type = palfx
Trigger1 = time = 1
time = 50
add = 255,0,0
sinadd = 40,40,0,0
color = 0

[State 3361, 6]
type = velset
trigger1 = time = [0,100]
x = 5

[State 3361, End]
type = DestroySelf
Trigger1 = time = 130
ignorehitpause = 0



;---------------------------------------------------------------------------
; Agent  helper2

[Statedef 3307]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3307
ctrl = 0
sprpriority = -2
poweradd = 0

[State 3307, 6]
type = velset
trigger1 = animelem = 1
y = 5

[State 3307, 6]
type = velset
trigger1 = animelem = 2
y = 0

[State 3307, 6]
type = velset
trigger1 = time = [30,100]
x = 7

[State 3307, 0]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = 3362
time = -1
Trigger1 = 1

[State 3307, 2]
type = HitDef
trigger1 = animelem >= 1
trigger1 = P2life != 0
attr = S, HA
animtype  = medium
damage    = 7,2
priority  = 5
hitflag = MAFD
guardflag = MA
getpower = 0,0
givepower = 0,0
pausetime = 0,0
sparkno = S8222
sparkxy = 0,-70
guard.sparkno = S8001
hitsound = S2,0
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -5,-3
air.velocity = -7,-4
guard.velocity = 0
airguard.velocity =0,0
down.velocity = -5, -3
fall = 1
getpower = 0

[State 3307, End]
type = DestroySelf
Trigger1 = time = 130
ignorehitpause = 0


[Statedef 3362]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3322
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3362, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S11,1
volume = 255
freqmul = 5.0
channel = 5

[State 3362, 6]
type = palfx
Trigger1 = time = 1
time = 50
add = 255,0,0
sinadd = 40,40,0,0
color = 0

[State 3362, 6]
type = velset
trigger1 = time = [0,100]
x = 5

[State 3362, End]
type = DestroySelf
Trigger1 = time = 130
ignorehitpause = 0



;---------------------------------------------------------------------------
; Agent  helper3

[Statedef 3308]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3308
ctrl = 0
sprpriority = 1
poweradd = 0

[State 3308, 6]
type = velset
trigger1 = animelem = 1
y = 5

[State 3308, 6]
type = velset
trigger1 = animelem = 2
y = 0

[State  3708, 6]
type = velset
trigger1 = time = [30,100]
x = 7

[State  3308, 0]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = 3363
time = -1
Trigger1 = 1

[State  3308, 2]
type = HitDef
trigger1 = animelem >= 1
trigger1 = P2life != 0
attr = S, HA
animtype  = medium
damage    = 7,2
priority  = 5
getpower = 0,0
givepower = 0,0
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = S8222
sparkxy = 0,-70
guard.sparkno = S8001
hitsound = S2,0
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -5,-3
air.velocity = -3,-4
guard.velocity = 0
airguard.velocity =0,0
down.velocity = -5, -3
fall = 1
getpower = 0

[State  3308, End]
type = DestroySelf
Trigger1 = time = 130
ignorehitpause = 0


[Statedef 3363]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3323
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3363, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S11,1
volume = 255
freqmul = 5.0
channel = 5

[State 3363, 6]
type = palfx
Trigger1 = time = 1
time = 50
add = 255,0,0
sinadd = 40,40,0,0
color = 0

[State 3363, 6]
type = velset
trigger1 = time = [0,100]
x = 5

[State 3363, End]
type = DestroySelf
Trigger1 = time = 130
ignorehitpause = 0


;---------------------------------------------------------------------------
; Agent  helper4

[Statedef 3309]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3309
ctrl = 0
sprpriority = -4
poweradd = 0

[State 3309, 6]
type = velset
trigger1 = animelem = 1
y = 5

[State 3309, 6]
type = velset
trigger1 = animelem = 2
y = 0

[State 3309, 0]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = 3364
time = -1
Trigger1 = 1

[State 3309, 6]
type = velset
trigger1 = time = [30,100]
x = 7

[State 3309, 2]
type = HitDef
trigger1 = animelem >= 1
trigger1 = P2life != 0
attr = S, HA
animtype  = medium
damage    = 7,2
priority  = 5
getpower = 0,0
givepower = 0,0
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = S8222
sparkxy = 0,-70
guard.sparkno = S8001
hitsound = S2,0
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -5,-3
air.velocity = -3,-4
guard.velocity = 0
airguard.velocity =0,0
down.velocity = -5, -3
fall = 1
getpower = 0

[State 3309, End]
type = DestroySelf
Trigger1 = time = 130
ignorehitpause = 0


[Statedef 3364]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3324
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3364, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S11,1
volume = 255
freqmul = 5.0
channel = 5

[State 3364, 6]
type = palfx
Trigger1 = time = 1
time = 50
add = 255,0,0
sinadd = 40,40,0,0
color = 0

[State 3364, 6]
type = velset
trigger1 = time = [0,100]
x = 5

[State 3364, End]
type = DestroySelf
Trigger1 = time = 130
ignorehitpause = 0


;---------------------------------------------------------------------------
; Agent helper5

[Statedef 3310]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3310
ctrl = 0
sprpriority = 3
poweradd = 0

[State 3310, 0]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = 3365
time = -1
Trigger1 = 1

[State 3310, 6]
type = velset
trigger1 = animelem = 1
y= 5

[State 3310, 6]
type = velset
trigger1 = animelem = 2
y= 0

[State 3310, 6]
type = velset
trigger1 = time = [30,100]
x = 7

[State 3310, 2]
type = HitDef
trigger1 = animelem >= 1
trigger1 = P2life != 0
attr = S, HA
animtype  = medium
damage    = 7,2
priority  = 5
getpower = 0,0
givepower = 0,0
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = S8222
sparkxy = 0,-70
guard.sparkno = S8001
hitsound = S2,0
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -5,-3
air.velocity = -3,-4
guard.velocity = 0
airguard.velocity =0,0
down.velocity = -5, -3
fall = 1
getpower = 0

[State 3310, End]
type = DestroySelf
Trigger1 = time = 100 ;removed when the flame over
ignorehitpause = 0


[Statedef 3365]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3325
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3365, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S3300,6
volume = 255
freqmul = 5.0
channel = 5

[State 3365, 6]
type = palfx
Trigger1 = time = 1
time = 50
add = 255,0,0
sinadd = 40,40,0,0
color = 0

[State 3365, 6]
type = velset
trigger1 = time = [0,100]
x = 5

[State 3365, End]
type = DestroySelf
Trigger1 = time = 100
ignorehitpause = 0


;---------------------------------------------------------------------------
; Agent  helper 6

[Statedef 3311]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3311
ctrl = 0
sprpriority = 0
poweradd = 0

[State 3311, 6]
type = velset
trigger1 = animelem = 1
y= 5

[State 3311, 6]
type = velset
trigger1 = animelem = 2
y= 0

[State 3311, 6]
type = velset
trigger1 = time = [30,100]
x = 7

[State 3311, 0]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = 3366
time = -1
Trigger1 = 1

[State 3311, 2]
type = HitDef
trigger1 = animelem >= 1
trigger1 = P2life != 0
attr = S, HA
animtype  = medium
damage    = 7,2
priority  = 5
hitflag = MAFD
guardflag = MA
getpower = 0,0
givepower = 0,0
pausetime = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-70
hitsound = S2,0
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -5,-3
air.velocity = -7,-4
guard.velocity = 0
airguard.velocity =0,0
down.velocity = -5, -3
fall = 1
getpower = 0

[State 3311, End]
type = DestroySelf
Trigger1 = time = 100
ignorehitpause = 0


[Statedef 3366]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3326
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3366, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S3300,6
volume = 255
freqmul = 5.0
channel = 5

[State 3366, 6]
type = palfx
Trigger1 = time = 1
time = 50
add = 255,0,0
sinadd = 40,40,0,0
color = 0

[State 3366, 6]
type = velset
trigger1 = time = [0,100]
x = 5

[State 3366, End]
type = DestroySelf
Trigger1 = time = 100
ignorehitpause = 0


;---------------------------------------------------------------------------
; Agent  helper 7

[Statedef 3312]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3312
ctrl = 0
sprpriority = 0
poweradd = 0

[State 3312, 6]
type = velset
trigger1 = animelem = 1
y= 5

[State 3312, 6]
type = velset
trigger1 = animelem = 2
y= 0

[State 3312, 6]
type = velset
trigger1 = time = [30,100]
x = 7

[State 3312, 0]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = 3367
time = -1
Trigger1 = 1

[State 3312, 2]
type = HitDef
trigger1 = animelem >= 1
trigger1 = P2life != 0
attr = S, HA
animtype  = medium
damage    = 7,2
priority  = 5
hitflag = MAFD
guardflag = MA
getpower = 0,0
givepower = 0,0
pausetime = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-70
hitsound = S2,0
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -5,-3
air.velocity = -7,-4
guard.velocity = 0
airguard.velocity =0,0
down.velocity = -5, -3
fall = 1
getpower = 0

[State 3312, End]
type = DestroySelf
Trigger1 = time = 100
ignorehitpause = 0


[Statedef 3367]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3327
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3367, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S3300,6
volume = 255
freqmul = 5.0
channel = 5

[State 3367, 6]
type = palfx
Trigger1 = time = 1
time = 50
add = 255,0,0
sinadd = 40,40,0,0
color = 0

[State 3367, 6]
type = velset
trigger1 = time = [0,100]
x = 5

[State 3367, End]
type = DestroySelf
Trigger1 = time = 100
ignorehitpause = 0

;---------------------------------------------------------------------------
; Agent  helper 8

[Statedef 3313]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3313
ctrl = 0
sprpriority = 0
poweradd = 0

[State 3313, 6]
type = velset
trigger1 = animelem = 1
y= 5

[State 3313, 6]
type = velset
trigger1 = animelem = 2
y= 0

[State 3313, 6]
type = velset
trigger1 = time = [30,100]
x = 7

[State 3313, 0]
type = HitOverride
attr = SCA, AA, AT, AP
stateno = 3368
time = -1
Trigger1 = 1

[State 3313, 2]
type = HitDef
trigger1 = animelem >= 1
trigger1 = P2life != 0
attr = S, HA
animtype  = medium
damage    = 7,2
priority  = 5
hitflag = MAFD
guardflag = MA
getpower = 0,0
givepower = 0,0
pausetime = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-70
hitsound = S2,0
guardsound = 6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -5,-3
air.velocity = -7,-4
guard.velocity = 0
airguard.velocity =0,0
down.velocity = -5, -3
fall = 1
getpower = 0

[State 3313, End]
type = DestroySelf
Trigger1 = time = 100
ignorehitpause = 0


[Statedef 3368]
type    = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
anim = 3328
ctrl = 0
sprpriority = 2
poweradd = 0

[State 3368, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S3300,6
volume = 255
freqmul = 5.0
channel = 5

[State 3368, 6]
type = palfx
Trigger1 = time = 1
time = 50
add = 255,0,0
sinadd = 40,40,0,0
color = 0

[State 3368, 6]
type = velset
trigger1 = time = [0,100]
x = 10

[State 3368, End]
type = DestroySelf
Trigger1 = time = 100
ignorehitpause = 0


;-------------------------------------------------------------------------------
