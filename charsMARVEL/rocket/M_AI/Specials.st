;---------------------------------------------------------------------------
;Mine1
[Statedef 1012]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1012


[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "MINE1"
ID = 6191012
stateno = 6191012
pos = Ceil(43*Const(size.xscale)),Ceil(0*Const(size.yscale))
postype = p1
facing = 1
ownpal = 1
shadow = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1,ifelse(random < 500, 15,16)
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S0,24
volume = 255
channel = -1

[State 1012, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Mine2 => Slide,near
[Statedef 1013]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1013


[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "MINE1"
ID = 6191013
stateno = 6191013
pos = Ceil(43*Const(size.xscale)),Ceil(0*Const(size.yscale))
postype = p1
facing = 1
ownpal = 1
shadow = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1,ifelse(random < 500, 15,16)
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S0,24
volume = 255
channel = -1

[State 1012, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Mine3 => Slide,far
[Statedef 1014]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 65
ctrl = 0
velset = 0,0
anim = 1014


[State 0, Helper]
type = Helper
trigger1 = animelem = 5
helpertype = normal
name = "MINE1"
ID = 6191014
stateno = 6191014
pos = Ceil(43*Const(size.xscale)),Ceil(0*Const(size.yscale))
postype = p1
facing = 1
ownpal = 1
shadow = 0
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S1,ifelse(random < 500, 15,16)
volume = 255
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S0,24
volume = 255
channel = -1

[State 1012, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Mine helper 1
[Statedef 6191012]
type = S
movetype= A
physics = N
ctrl = 0
anim = 6191012
poweradd= 0
juggle = 2
sprpriority = 7


[State 2000, 1]
type = HitDef
triggerall = enemy,stateno != 5110
triggerall = enemy,stateno != [6195004,6195007]
trigger1 = time > 0
attr = S, SP
guard.dist = 70
damage = 0,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2,Miss
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
sparkxy = 10,-50
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 12

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = time > 0
x =  0
y =  0

[State 0, PosSet]
type = PosSet
trigger1 = time > 0
y = -3
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
trigger2 = time >= 300
value = 6201012
ctrl = 0

;---------------------------------------------------------------------------
;Mine helper 2
[Statedef 6191013]
type = S
movetype= A
physics = N
ctrl = 0
anim = 6191013
poweradd= 0
juggle = 2
sprpriority = 7



[State 0, VelSet]
type = VelSet
triggerall = root,anim = 1013
trigger1 = root,animelem = 7
x =  4
y =  0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 27
x =  0
y =  0



[State 2000, 1]
type = HitDef
triggerall = enemy,stateno != 5110
triggerall = enemy,stateno != [6195004,6195007]
trigger1 = time > 0
attr = S, SP
guard.dist = 70
damage = 0,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2,Miss
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
sparkxy = 10,-50
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 12

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, VelSet]
type = null;VelSet
triggerall = root,anim != [1013,1014]
trigger1 = time > 0
x =  0
y =  0

[State 0, PosSet]
type = PosSet
trigger1 = time > 0
y = -3
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
trigger2 = time >= 300
value = 6201012
ctrl = 0

;---------------------------------------------------------------------------
;Mine helper 3
[Statedef 6191014]
type = S
movetype= A
physics = N
ctrl = 0
anim = 6191014
poweradd= 0
juggle = 2
sprpriority = 7



[State 0, VelSet]
type = VelSet
triggerall = root,anim = 1014
trigger1 = root,animelem = 7
x =  9
y =  0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 27
x =  0
y =  0



[State 2000, 1]
type = HitDef
triggerall = enemy,stateno != 5110
triggerall = enemy,stateno != [6195004,6195007]
trigger1 = time > 0
attr = S, SP
guard.dist = 70
damage = 0,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2,Miss
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
sparkxy = 10,-50
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = 0,0
air.type = High
air.velocity = 0,0
air.hittime = 12

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, VelSet]
type = null;VelSet
triggerall = root,anim != [1013,1014]
trigger1 = time > 0
x =  0
y =  0

[State 0, PosSet]
type = PosSet
trigger1 = time > 0
y = -3
;ignorehitpause =
;persistent =

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
trigger2 = time >= 300
value = 6201012
ctrl = 0





;---------------------------------------------------------------------------
[Statedef 6201012]
type = S
movetype= A
physics = N
ctrl = 0
anim = 6201012
poweradd= 0
sprpriority = 7
juggle = 2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time > 20
value = 1
scale = .3,.5
ignorehitpause = 1

[State 0, Trans]
type = Trans
trigger1 = time > 20
trans = add
;alpha = 256,256
;ignorehitpause =
;persistent =


[State 0, 1]
type = HitDef
triggerall = enemy,stateno != 5110
triggerall = enemy,stateno != [6195004,6195007]
trigger1 = time = 0
attr = S, SP
damage = 40,0;90,45
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -2,-9
guard.velocity = -3
airguard.velocity = -3
air.type = High
air.velocity = -2,-9
air.hittime = 120
envshake.time = 8
envshake.freq = 100
down.velocity = -2,-10.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 5
palfx.add = 70,0,0
palfx.mul = 256,256,256
palfx.sinadd = 0,0,0,1
palfx.invertall = 0
palfx.color = 256
p2stateno = 6195004

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S0,24
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S0,25
volume = 255
channel = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;-------------------------------------------------------------------------------

;------------------HIT2
; Hit by Fast Kung Fu Palm - shaking from the hit
; (a custom gethit state)
; See State 1020 for details
[Statedef 6195004]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-20)

[State 0, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 5035

[State 0, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 6195005

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 6195005]
type    = A
movetype= H
physics = N

[State 0, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 0, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 0, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 0, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 6195006

[State 0, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 6195007]
type    = A
movetype= H
physics = N

[State 0, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 0, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 0, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 0, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 0, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 0, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 0, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 0, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;--------------------------------------------------------------------------------------------
;------------------
; Hit by Fast Kung Fu Palm - shaking from the hit
; (a custom gethit state)
; See State 1020 for details
[Statedef 6195000]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-20)

[State 0, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 5035

[State 0, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 6195001

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 6195001]
type    = A
movetype= H
physics = N

[State 0, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 0, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 0, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 0, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 6195002

[State 0, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 6195002]
type    = A
movetype= H
physics = N

[State 6195002, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 0, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 0, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 0, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 80
postype = back
sprpriority = 3

[State 0, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 5050

[State 0, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 0, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 6195003

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 6195003]
type    = A
movetype= H
physics = N

[State 0, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 0, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 0, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 0, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 0, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 0, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 0, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 0, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------HIT2
; Hit by Fast Kung Fu Palm - shaking from the hit
; (a custom gethit state)
; See State 1020 for details
[Statedef 6195004]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-20)

[State 0, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 5035

[State 0, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 6195005

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 6195005]
type    = A
movetype= H
physics = N

[State 0, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 0, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 0, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 0, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 6195006

[State 0, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 6195006]
type    = A
movetype= H
physics = N

[State 6195002, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 0, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 0, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 0, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 80
postype = back
sprpriority = 3

[State 0, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 5050

[State 0, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 0, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 6195007

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 6195007]
type    = A
movetype= H
physics = N

[State 0, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 0, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 0, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 0, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 0, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 0, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 0, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 0, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100



;---------------------------------------------------------------------------
; Charge_Ground
[Statedef 1364]
type    = S
Movetype = A
physics = N
anim = 1364
sprpriority = 1
ctrl = 0


[State 100, Harder than Normal Attack]
type = Nothitby
triggerall = time > 6
triggerall = enemynear,stateno = [200,650]
trigger1 = P2bodydist X = [-10,10]
value = ,NA
;trigger1 = numenemy = 1
;trigger2 = numenemy > 2
;trigger2 = enemynear,numproj = 0


[State 100, Harder than Super Attack 75%]
type = Nothitby
triggerall = time > 6
triggerall = enemynear,stateno = [1000,1999]
triggerall = random = [0,699]
trigger1 = P2bodydist X = [-10,10]
value = ,NA,SA
;trigger1 = numenemy = 1
;trigger2 = numenemy > 2
;trigger2 = enemynear,numproj = 0



[State 100, 3]
type = velset
trigger1 = animelem = 2
x = 11
y = 0


[State 220]
type = HitDef
trigger1 = animelem >= 2
attr = S, SA
animtype  = Hard
priority = 7,hit
damage    = 60,5
guardflag = MA
hitflag = MAF
pausetime = 7,7
sparkno = s10002
guard.sparkno = 40
sparkxy = -10,-60
hitsound   = s2,5
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0



[State 100, 3]
type = PlaySnd
trigger1 = time = 0
value = 10,8
channel = -1

[State 100, 3]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0

[State 100, 4]
type = PlaySnd
trigger1 = time = 19
value = 8100,0

[State 100, 5]
type = PlaySnd
trigger1 = AnimElem = 1;7
value = 2, 4

[State 100, 6]
type = Explod
trigger1 = time < 15
trigger1 = (time % 4) = 1
ID = 41
anim = 2222
postype = p1
pos = -20, -40
bindtime = 1
removetime = -2
vel = -1, 0
ownpal = 1
random = 20, 60
sprpriority = 2

[State 100, 7]
type = Explod
trigger1 = time < 15
trigger1 = (time % 4) = 0
ID = 42
anim = 2222
postype = p1
pos = -20, -40
bindtime = 1
removetime = -2
vel = -.8, 0
ownpal = 1
random = 20, 60
sprpriority = 2

[State 100, 8]
type = null;VelAdd
triggerall = Vel X > 0
trigger1 = time > 15
x = -.3

[State 100, 9]
type = Explod
trigger1 = time = [16,35]
trigger1 = (time % 4) = 0
ID = 43
anim = 6000
postype = p1
pos = 10, 0
bindtime = 1
removetime = -2
vel = -.2, 0
ownpal = 1
sprpriority = 2


[State 100, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Charge_Air 1
[Statedef 1365]
type    = A
Movetype = A
physics = A
anim = 1364
sprpriority = 1
ctrl = 0

[State 100, 3]
type = Changeanim
trigger1 = prevstateno = [600,650]
value = 1367

[State 100, 3]
type = velset
trigger1 = animelem = 1
x = 0
y = -1

[State 100, 3]
type = velset
trigger1 = animelem = 2
x = 11
y = -1


[State 220]
type = HitDef
trigger1 = anim != 1367
trigger1 = animelem >= 2
attr = A, SA
animtype  = Hard
priority = 7,hit
damage    = 60,5
guardflag = MA
hitflag = MAF
pausetime = 7,7
sparkno = s10002
guard.sparkno = 40
sparkxy = -10,-60
hitsound   = s2,5
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0

[State 220]
type = HitDef
trigger1 = anim = 1367
trigger1 = !movecontact
trigger1 = animelem >= 2
attr = A, SA
animtype  = Hard
priority = 7,hit
damage    = 60,5
guardflag = MA
hitflag = MAF
pausetime = 0,7
sparkno = s10002
guard.sparkno = 40
sparkxy = -10,-60
hitsound   = s2,5
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0



[State 100, 3]
type = PlaySnd
trigger1 = time = 0
value = 10,8
channel = -1

[State 100, 3]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0

[State 100, 4]
type = PlaySnd
trigger1 = time = 19
value = 8100,0

[State 100, 5]
type = PlaySnd
trigger1 = time = 0;AnimElem = 1;7
value = 2, 4

[State 100, 6]
type = Explod
trigger1 = time < 15
trigger1 = (time % 4) = 1
ID = 41
anim = 2222
postype = p1
pos = -20, -40
bindtime = 1
removetime = -2
vel = -1, 0
ownpal = 1
random = 20, 60
sprpriority = 2

[State 100, 7]
type = Explod
trigger1 = time < 15
trigger1 = (time % 4) = 0
ID = 42
anim = 2222
postype = p1
pos = -20, -40
bindtime = 1
removetime = -2
vel = -.8, 0
ownpal = 1
random = 20, 60
sprpriority = 2

[State 100, 8]
type = null;VelAdd
triggerall = Vel X > 0
trigger1 = time > 15
x = -.3

[State 100, 9]
type = Explod
trigger1 = time = [16,35]
trigger1 = (time % 4) = 0
ID = 43
anim = 6000
postype = p1
pos = 10, 0
bindtime = 1
removetime = -2
vel = -.2, 0
ownpal = 1
sprpriority = 2


[State 100, 10]
type = ChangeState
trigger1 = time = 14;AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Charge_Air 2
[Statedef 1366]
type    = A
Movetype = A
physics = A
anim = 1366
sprpriority = 1
ctrl = 0
velset = 0,1

[State 100, 3]
type = Changeanim
trigger1 = prevstateno = [600,650]
value = 1367

[State 100, 3]
type = velset
trigger1 = animelem = 2
x = 11
y = 5


[State 220]
type = HitDef
trigger1 = anim != 1367
trigger1 = animelem >= 2
attr = A, SA
animtype  = Hard
priority = 7,hit
damage    = 60,5
guardflag = MA
hitflag = MAF
pausetime = 7,7
sparkno = s10002
guard.sparkno = 40
sparkxy = -10,-60
hitsound   = s2,5
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0

[State 220]
type = HitDef
trigger1 = anim = 1367
trigger1 = !movecontact
trigger1 = animelem >= 2
attr = A, SA
animtype  = Hard
priority = 7,hit
damage    = 60,5
guardflag = MA
hitflag = MAF
pausetime = 7,7
sparkno = s10002
guard.sparkno = 40
sparkxy = -10,-60
hitsound   = s2,5
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0



[State 100, 3]
type = PlaySnd
trigger1 = time = 0
value = 10,8
channel = -1

[State 100, 3]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0

[State 100, 4]
type = PlaySnd
trigger1 = time = 19
value = 8100,0

[State 100, 5]
type = PlaySnd
trigger1 = time = 0;AnimElem = 1;7
value = 2, 4

[State 100, 6]
type = Explod
trigger1 = time < 15
trigger1 = (time % 4) = 1
ID = 41
anim = 2222
postype = p1
pos = -20, -40
bindtime = 1
removetime = -2
vel = -1, 0
ownpal = 1
random = 20, 60
sprpriority = 2

[State 100, 7]
type = Explod
trigger1 = time < 15
trigger1 = (time % 4) = 0
ID = 42
anim = 2222
postype = p1
pos = -20, -40
bindtime = 1
removetime = -2
vel = -.8, 0
ownpal = 1
random = 20, 60
sprpriority = 2

[State 100, 8]
type = null;VelAdd
triggerall = Vel X > 0
trigger1 = time > 15
x = -.3

[State 100, 9]
type = Explod
trigger1 = time = [16,35]
trigger1 = (time % 4) = 0
ID = 43
anim = 6000
postype = p1
pos = 10, 0
bindtime = 1
removetime = -2
vel = -.2, 0
ownpal = 1
sprpriority = 2


[State 100, 10]
type = ChangeState
trigger1 = time = 20;AnimTime = 0
value = 948
ctrl = 1

[State 100, 10]
type = ChangeState
trigger1 = pos Y >= 0
value = 0
ctrl = 1

