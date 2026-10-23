;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 3000]
type = S
ctrl = 0
anim = 3001
velset = 0,0
movetype = I
physics = S
sprpriority = 100

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 9111,7

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 40
pos = -50, -55
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
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

[State 8010, 0]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "bala"
postype = p1
ontop = 1
pos = 90,-91
sprpriority = 4
ignorehitpause = 1
stateno = 90001
id = 90001

[State 8010, 0]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "bala"
postype = p1
ontop = 1
pos = 90,-88
sprpriority = 4
ignorehitpause = 1
stateno = 90001
id = 90001

[State 11100, fuego]
type = Explod
trigger1 = AnimElem = 4
anim = 1012
pos = 0,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 11100, fuego]
type = Explod
trigger1 = AnimElem = 4
anim = 1012
pos = -10,3
sprpriority = 5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 8010, 1]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "p_bala"
postype = p1
ontop = 1
pos = 20,-100
sprpriority = 4
ignorehitpause = 1
stateno = 13011
id = 13011

[State 8010, 1]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "p_bala"
postype = p1
ontop = 1
pos = 10,-98
sprpriority = 4
ignorehitpause = 1
stateno = 13011
id = 13011

[State 1000, 2]
type = Projectile
trigger1 = time = [30,100]
ProjID = 1001
projanim = 1001
projhitanim = 8200
projremanim = 8200
projcancelanim = 8200
velocity = 16,(4 - random/125)
offset = 0,-60
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 4,1
pausetime = 4,4
sparkno = s3012
hitsound = S8200,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,-0.5
air.velocity = -2,-1.1
fall = 1
air.fall = 1

[State 1000, 2]
type = Projectile
trigger1 = time = [30,100]
ProjID = 1001
projanim = 1001
projhitanim = 8200
projremanim = 8200
projcancelanim = 8200
velocity = 16,(4 - random/125)
offset = 33,-108
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 4,1
pausetime = 4,4
sparkno = s3012
hitsound = S8200,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,-0.5
air.velocity = -2,-1.1
fall = 1
air.fall = 1

[State 1000, 2]
type = Projectile
trigger1 = time = [30,100]
ProjID = 1001
projanim = 1001
projhitanim = 8200
projremanim = 8200
projcancelanim = 8200
velocity = 16,(4 - random/125)
offset = -25,-122
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

[State 2400]
type = Explod
trigger1 = animelem = 4
anim = 8170
pos = -20,0
ownpal = 1
scale = 0.8, 0.8
sprpriority = -2

[State 1000, 11]
type = Width
trigger1 = Time = [46, 130]
player = 30, 10

[State 1000, End]
type = ChangeState
trigger1 = time = 100
value = 0
ctrl = 1

;--------------------------------------------------------------
;bala
[Statedef 90001]
type    = S
movetype = A
physics = N
velset = 10
anim = 1001
sprpriority = 4
velset = 0, 0

[State 3850, a1]
type = Veladd
trigger1 = time = 1
x = 14

[State 3850, a1]
type = VelSet
trigger1 = time = 30
x = 0

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 9111,5

[State 1020,0]
type = PlaySnd
trigger1 = time =1
value = 9111,8

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,30]
flag = Noshadow

[State 1001, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage   = 20,10
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound = 8200,0
guardsound = S3,0
sparkno = S8200
guard.sparkno = S8100
sparkxy = 5,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4
fall = 0
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0

[State 1002,end]
type = DestroySelf
trigger1 = frontedgedist< -105 || backedgedist < -120
trigger2 = Movecontact

;--------------------------------------------------------------
;p.bala
[Statedef 13011]
type = S
anim = 1013
sprpriority = -1
velset = 0, 0

[State 3850, a1]
type = Veladd
trigger1 = time = 1
x = -4
y = -2

[State 3850, a1]
type = VelSet
trigger1 = time = 4
x = -2
y = 3

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 1023,0

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,25]
flag = Noshadow

[State 3020,4]
type = destroyself
trigger1 = (Time >= 10) || (Pos Y >= 0)
;---------------------------------------------------------------------------
;venom dance
[Statedef 3001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3005
ctrl = 0
sprpriority = 2

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 9111,7

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 40
;anim =-1;s3012
pos = -30, -60
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
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
value = 190,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit = 1
value = S3041,0+random%6

[State 3001, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 25

[State 3001, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0

[state 100, 4]
type = explod
trigger1 = animelem = 3
id = 6014
anim = 6014
postype = p1
pos = -25,-25
ownpal = 1
bindtime = 1
scale = 1,1
sprpriority = 5
persistent = 0
removeongethit = 1

[State 3001, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, HA
animtype  = Hard
damage = floor(26 + var(41)/(1+(Var(19)/5.0))), 2
hitflag = MA
priority = 8, Hit
guardflag = MA
pausetime = 12,12
sparkno = s8320+random%1
getpower = 0,0
givepower = 0,0
sparkxy = -10,-80+floor(P2Dist Y)
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
animtype = Medium
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
kill = 0
guard.kill = 0
fall.kill = 0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100
p1stateno = 3002

[State 3001, goto Attack State]
type = ChangeState
trigger1 = animelem = 4
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;venom dance 2
[Statedef 3002]
type    = S
movetype= A
physics = S
juggle  = 1
anim = 3002
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, TargetBind]
type = TargetBind
trigger1 = time < 90
time = 1
pos = 60,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 8
value = 8400, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 12
value = 8400, 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 19
trigger2 = animelem = 26 
value = 8400, 2

[State 3002, HitDef]
type = HitDef
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 10
trigger4 = animelem = 14
trigger5 = animelem = 20
trigger6 = animelem = 22
trigger7 = animelem = 27
attr = S, HA
animtype  = Hard
damage = floor(20 + var(41)/(1+(Var(19)/5.0))), 3
hitflag = MA
priority = 9, Hit
guardflag = MA
pausetime = 12,12
sparkno =  s8220+random%2
getpower = 0,0
givepower = 0,0
sparkxy = -45,-90
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
animtype = Medium
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
p2stateno = 10210
kill = 0
guard.kill = 0
fall.kill = 0
envshake.time = 16
envshake.ampl = 6
envshake.freq = 100

[State 3002, next]
type = changestate
trigger1 = animelem = 29
value = 3003
ctrl = 0

;----------------------------------------------
;venom dance 3
[StateDef 3003]
type = S
movetype = A
physics = S
anim = 3003
ctrl = 0
juggle= 10
velset = 0,0
poweradd = 60

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 191,8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 9
value = 8400, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 10
value = 8400, 3

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9 || AnimElem = 10
attr = S,SA
damage = floor(10 + var(41)/(1+(Var(19)/5.0))), 2
animtype = hard
guardflag = MA
hitflag = MAF
priority = 9, Hit
pausetime = 3,2
sparkno = S8200+random%2
sparkxy = -30,-100 + floor(random/20)
guard.sparkno = S8100
hitsound = s8000,2
guardsound = S8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 1
air.type = Low
air.hittime = 4
air.velocity = -3,-1
guard.velocity = -5
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5
getpower = 0
fall = 0

[State 1005, changestate]
type = changestate
trigger1 = time = 24
value = 3004
ctrl = 0

;-------------------------------------------
;venon dance 4
[Statedef 3004]
type    = S
movetype= A
physics = S
anim = 7801
ctrl = 0
velset = 0,0

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S191,13

[State 188, Fire]
type = Explod
trigger1 = animelem = 3
anim = 8421
pos = -30,-85
postype = p2
sprpriority = 5
bindtime = 1

[State 3030, hitdef2]
type = HitDef
trigger1 = animelem = 3
attr = S, HA
forcestand = 1
animtype  = back;DiagUp
damage = floor(50 + var(41)/(1+(Var(19)/5.0))), 4
getpower = 0,0
givepower = 0,0
priority = 2, Hit
guardflag = MA
pausetime = 40,40
sparkno = s8320+random%1
sparkxy = -35,-100
guard.sparkno = s8001
hitsound = S8000,7
guardsound = S8500,0
ground.type = Low
fall = 1
air.fall = 1
ground.slidetime = 40
ground.hittime  = 40
ground.velocity = -10,-10
fall.recover = 0
envshake.time = 50
envshake.freq = 70
envshake.ampl = -10
envshake.phase = -90

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
ignorehitpause = 1
value = S3040,1

[state 3030,end]
type = changestate
trigger1 = animelem = 4
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;P2 Custom Hyper Statedef
[Statedef 10210]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0, 0

[State 850, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5002

[State 10210, 3]
type = Selfstate
trigger1 = time = 88
value = 5070
ctrl = 1

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = roundstate = 3
trigger1 = time = 100
value = 5050
ctrl = 1

;--------------------------------------------------------------------------
;lanzas
[Statedef 3008]
type = S
ctrl = 0
anim = 3004
velset = 0,0
movetype = I
physics = S
sprpriority = -2

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 9111,7

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 40
pos = -25, -60
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
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
trigger1 =  AnimElem = 42
value = 191,3

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 3
name = "Special Dust"
anim = 8170
pos = 0,0
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 3300,3]
type = helper
trigger1 = animelem = 3
helpertype = normal
ID = 3302
pos = 0, 0
postype = p1
stateno = 3302
helpertype = normal
name = "Wizard"
ownpal = 1
facing = 1
keyctrl = 0

[State 3300,3]
type = ChangeState
trigger1 = time = 45
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 3302]
type = S
movetype = A
physics = N
anim = 1005
ctrl = 0
sprpriority = 100
velset = 0,0
hitcountpersist = 1


[State 24000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 24000]
type = PlaySnd
trigger1 = Time = 1 && isHelper(24400)
value = 191,5

[State 24000]
type = PlaySnd
trigger1 = Time = 1 && isHelper(24400)
value = 190,10

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 5
trigger4 = animelem = 6
trigger5 = animelem = 7
trigger6 = animelem = 8
trigger7 = animelem = 9
trigger8 = animelem = 10
attr = S, SP
damage = floor(25 + (root,var(41))/(1+(root,Var(19)/5.0))), 7
guardflag = MA
pausetime = 2,2
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = S8220+random%1
guard.sparkno = S8100
sparkxy = -30, -50; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0
air.type = High
air.velocity = -4, -2
air.hittime = 25
fall = 1

[State 24000]
type = DestroySelf
trigger1 = Time = 29

;==========================================================================
;Flying Ground Smash
;---------------------------------------------------------------------------
;gigante
[Statedef 3040]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 7717
poweradd= 150
ctrl = 0
sprpriority = 0

[State 1020,0]
type = PlaySnd
trigger1 = time = 0
value = 9111,7

[State 3004]
type = Width
trigger1 = Time = 0
value = 0,0

[State 3004]
type = Explod
trigger1 = AnimElem = 4
anim = 8170
scale = .5,.5
ontop = 1
ownpal = 1

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  animelem = 1
Time = 40
;anim =-1;s3012
pos = -20, -80
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
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

[State 1015 , 1]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
attr = S, SP
damage = 150
guardflag = MA
pausetime = 2,2
guardsound = S8500,0
sparkno = S8200
guard.sparkno = S8100				;Spark anim no (Def: set above)
sparkxy = -20,-95
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -5
air.type = High
air.velocity = -4, -2
air.hittime = 25
envshake.time = 20
envshake.ampl = -5
envshake.freq = 240
fall = 1

[State 1020,0]
type = PlaySnd
trigger1 = animelem = 5
value = 9111,9

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 8
value = 9111,6

[State 1010, Ground FX]
type = Explod
trigger1 = AnimElem = 9
name = "Special Dust"
anim = 7510
pos = 180,10
sprpriority = -5
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 3004]
type = ChangeState
trigger1 = time = 78
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Shining Gou Shock
[StateDef 3400]
type = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 6420
poweradd = 0
sprpriority = 3


;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 40
pos = -50, -55
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Null;Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
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

[State 3400,8]
type = VelSet
trigger1 = Time = 54
x = 45
y = 0

[State 3400,9]
type = PlaySnd
trigger1 = AnimElem = 8
value = 9111,9

[State 3400,10]
type = Hitdef
trigger1 =!Time
attr = S,HT
hitflag = M
priority = 7,Miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3401
p2stateno = 3405
hitsound = s8600,0
guard.dist = 320
fall = 1
fall.recover = 0
ID = 3400

[State 3400, ChangeAnim]
type = ChangeAnim
triggerall = Time < 89
trigger1 = AnimElemTime(18) >= 0
value = 6420
elem = 18

[State 3400,11]
type = ChangeState
trigger1 = Time>= 89
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;P1State
[Statedef 3401]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 7004
poweradd = 0
sprpriority = 3

[State 3401, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 0
flag = invisible

[State 3401,1]
type = PlaySnd
trigger1 =!Time
value = s0,2

[State 3401,2]
type = VarSet
trigger1 = Time >=31
v = 45
value = 0

[State 3401,3]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3401,4]
type = TargetBind
trigger1 =!Time
time = 1
id = -1
pos = 55,0

[State 3401,5]
type = BGPalFX
trigger1 =!Time
time = 125
add = -255,-255,-255

[State 3401,6]
type = assertspecial
trigger1 = Time >=30
flag = nobardisplay

[State 3401,7]
type = HitAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
trigger15 = AnimElem = 16
trigger16 = AnimElem = 17
trigger17 = AnimElem = 18
trigger18 = AnimElem = 19
trigger19 = AnimElem = 20
trigger20 = AnimElem = 21
trigger21 = AnimElem = 22
trigger22 = AnimElem = 23
trigger23 = AnimElem = 24
trigger24 = AnimElem = 25
value = 1

[State 3401,8]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
trigger15 = AnimElem = 16
trigger16 = AnimElem = 17
trigger17 = AnimElem = 18
trigger18 = AnimElem = 19
trigger19 = AnimElem = 20
trigger20 = AnimElem = 21
trigger21 = AnimElem = 22
trigger22 = AnimElem = 23
trigger23 = AnimElem = 24
trigger24 = AnimElem = 25
value = s8000,2

[State 3401,9]
type = EnvShake
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
trigger15 = AnimElem = 16
trigger16 = AnimElem = 17
trigger17 = AnimElem = 18
trigger18 = AnimElem = 19
trigger19 = AnimElem = 20
trigger20 = AnimElem = 21
trigger21 = AnimElem = 22
trigger22 = AnimElem = 23
trigger23 = AnimElem = 24
trigger24 = AnimElem = 25
time = 5
freq = 60
ampl = -2

[State 3401,10]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
trigger7 = AnimElem = 14
trigger8 = AnimElem = 16
trigger9 = AnimElem = 18
trigger10= AnimElem = 20
trigger11= AnimElem = 22
trigger12= AnimElem = 24
anim = 8200
ID = 8200
pos = 0,-70
postype = p2
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 55,55
removetime = -2
supermove = 999999999
pausemove = 999999999
scale = .5,.5
sprpriority = 5

[State 3401,11]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = AnimElem = 19
trigger10= AnimElem = 21
trigger11= AnimElem = 23
trigger12= AnimElem = 25
anim = 8200
ID = 8200
pos = 0,-50
postype = p2
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 55,55
removetime = -2
supermove = 999999999
pausemove = 999999999
scale = .5,.5
sprpriority = 5

[State 3401,12]
type = changestate
trigger1 = winko
value = 362

[State 3401,13]
type = ChangeState
trigger1 =!AnimTime
value = 3402
ctrl = 1
;---------------------------------------------------------------------------
;WIN by S.G.S.
[Statedef 362]
type=S
sprpriority = 0

[State 362,1]
type= ChangeAnim
trigger1 =!Time&&prevstateno=3402
value = 362

[State 362,2]
type = PlaySnd
trigger1 =!Time
value = s0,18

[State 362,3]
type = Explod
trigger1 =!Time
anim = 3408
ID = 3408
pos = 0,-33
postype = p1
bindtime = -1
sprpriority = 5
removetime = 107

[State 362,4]
type = Assertspecial
trigger1 = Time >= 0
flag = nobardisplay

[State 362,5]
type = Helper
triggerall = !numhelper(9999)
trigger1 = (enemynear, life = 0) && win
ID = 9999
stateno = 9999
postype = left
pos = 320,240
pausemovetime = 999999
supermovetime = 999999
ignorehitpause = 1

[State 362,6]
type = ChangeState
trigger1= Time = 107
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;p2state
[Statedef 3402]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3402
poweradd = 0
sprpriority = 2

[State 3402,1]
type = TargetLifeAdd
trigger1 =!Time
value = -580
ID = -1
kill = 1
absolute = 0

[State 3402,2]
type= Changestate
trigger1 = Animelemtime(1)>=0&&winko
value = 362

[State 3402,3]
type = EnvShake
trigger1 = enemynear,life >0
trigger1 = !Time
time = 15
freq = 60
ampl = -4

[State 3402,4]
type = EnvShake
trigger1 = enemynear,life >0
trigger1 = !Time
time = 15
freq = 60
ampl = -4

[State 3402,5]
type = PlaySnd
trigger1 =!Time
value = s8200,0

[State 3402,6]
type = selfstate
trigger1 =!AnimTime
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;p2state
[Statedef 3405]
type    = S
movetype= H
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = -1

[State 3405, AssertSpecial]
type = AssertSpecial
triggerall = NumEnemy
trigger1 = EnemyNear, StateNo = 3401
trigger1 = EnemyNear, AnimElemTime(2) >= 0
flag = invisible

[State 3405,1]
type = SelfState
trigger1 = (time =[10,30]) && (enemynear,stateno != 3401 ) && (anim = 3405)
value = 0
ctrl = 1

[State 3405,2]
type = ChangeAnim2
trigger1 =!Time
value = 5005

[State 3405,3]
type=changestate
trigger1 = time >=126
value=3406
;---------------------------------------------------------------------------
;p2state pt2
[Statedef 3406]
type    = S
movetype= H
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = -1

[State 3406,1]
type = PosSet
trigger1 = 1
y = 0

[State 3406,2]
type = ChangeAnim2
trigger1 = Time <= 120
value = 5110

[State 3406,3]
type=selfstate
triggerall = Time > 120
trigger1 =!alive
value = 5150

[State 3406,4]
type = selfstate
triggerall = Time > 120
trigger1 = alive
value = 5120
;-----------------------------------------------------------------------
[StateDef 852]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7008
poweradd = 0
sprpriority = -3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 0,0

[State 300, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
trigger15 = AnimElem = 16
trigger16 = AnimElem = 17
trigger17 = AnimElem = 18
trigger18 = AnimElem = 19
trigger19 = AnimElem = 20
trigger20 = AnimElem = 21
trigger21 = AnimElem = 22
trigger22 = AnimElem = 23
trigger23 = AnimElem = 24
trigger24 = AnimElem = 25
attr = SCA, HP
damage = floor(8 + var(41)/(1+(Var(19)/5.0))), 2
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority = 3, Hit
pausetime = 0,10
sparkno = S8200+random%2
guard.sparkno = S8100
sparkxy = -30,-90
hitsound   = S0,25
guardsound = S0,42
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10, -5
air.velocity = -4,-3
fall=1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = Time = 120
;-------------------------------------------------------------------------------
; END
;-------------------------------------------------------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

;[State 40001, Tile #1-7]
;type = Explod
;triggerall = !numexplod(15600)
;trigger1 = !time
;anim = 15600
;ID = 15600
;pos = 0,0
;postype = left  ;p2,front,back,left,right
;removetime = 10
;pausemovetime = -1
;supermovetime = -1
;scale = 1.1,1.1
;sprpriority = -20
;ownpal = 1
;ignorehitpause = 1
;bindtime = -1
;persistent = 0

[State 40001, Tile #1-7]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1.1,1.1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root, stateno !=[2000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;------- End of Hyper effects helpers

;-------------------------------------------------------------------------------
;MvC Ko
[Statedef 9999]
ctrl = 0
anim = 9741

[State 9999,PlaySnd]
type = PlaySnd
trigger1 =!Time
value = s9999,4

[State 9999,PlaySnd]
type = PlaySnd
trigger1 = Time = 30
value = s230,11

[State 9999, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 55
flag = NoBarDisplay
flag2 = NoMusic

[State 9999, Explod]
type = Explod
trigger1 =!Time
anim = 9999
postype = Left
pos = 0,0
bindtime = -1
sprpriority = 5
scale = 1,1
pausemovetime = 999999
supermovetime = 999999
removetime = 40

[State 9999,DestroySelf]
type = DestroySelf
trigger1 =!AnimTime
