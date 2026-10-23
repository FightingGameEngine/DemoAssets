;---------------------------------------------------------------------------
; Flight Mode / Statedef's : 2000 - 2999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; FLOAT
;---------------------------------------------------------------------------
[StateDef 2000]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 2000
sprpriority = 2

[State 2000, 1]
type = VelSet
trigger1 = time <10
x = 0
y = -6

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S20,1
volume = 255
channel = 2

[State 2000, End]
type = ChangeState
trigger1 = time = 10
value = 2001
ctrl = 0

[StateDef 2001]
type = A
movetype= I
physics = N
juggle  = 1
velset = 0,0
anim = 2001
ctrl = 0
poweradd = 0
sprpriority = 2

[State 2001, 1]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2000
value = 2000

[State 2001, 2]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = vel Y > 0
trigger1 = Anim != 2001
value = 2001

[State 2001, 3]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2002
value = 2002

[State 2001, 4]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y > 0
trigger1 = Anim != 2003
value = 2003

[State 2001, 5]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2004
value = 2004

[State 2001, 6]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y > 0
trigger1 = Anim != 2005
value = 2005

[State 2001, 6]
type = ChangeAnim
trigger1 = command = "x"
trigger1 = Anim != 2010
value = 2010

[State 2001, 7]
type = Turn
trigger1 = p2dist X < 0
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"

[State 2001, 8]
type = VelSet
trigger1 =  command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 2001, 9]
type = VelSet
trigger1 =  command != "holdfwd"
trigger1 =  command != "holdback"
x = 0

[State 2001, 10]
type = VelSet
trigger1 =  command = "holdback"
x = -const(velocity.walk.fwd.x)

[State 2001, 11]
type = VelSet
trigger1 =  command = "holddown"
trigger1 = pos y < 0
y = const(velocity.walk.fwd.x)

[State 2001, 12]
type = VelSet
trigger1 = command != "holddown"
trigger1 = command != "holdup"
trigger2 = pos y >=0
y = 0

[State 2001, 13]
type = VelSet
trigger1 = !(screenpos y < -80)
trigger1 =  command = "holdup"
y = -const(velocity.walk.fwd.x)

[State 2001, 14]
type = VelSet
trigger1 = !(screenpos y >= -80)
trigger1 =  command = "holdup"
y = 0

[State 2001,15]
type = Changestate
trigger1 = time = 300
trigger2 = Win = 1
trigger3 = Lose = 1
value = 50
ctrl = 1

[State 2001, End]
type = ChangeState
trigger1 = !alive
trigger2 = P2Life = 0
value =  50

;END
;---------------------------------------------------------------------------
; Run Forward
;---------------------------------------------------------------------------
[Statedef 2005]
type    = A
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 2005, 1] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 2005, 2]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0

[State 2005, 4]
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

[State 2005, 5]
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

[State 2005, 6]
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

[State 2005, End]
type = ChangeState
trigger1 = animtime = 0
value = 2001

;---------------------------------------------------------------------------
; Dash Back
;---------------------------------------------------------------------------
[Statedef 2006]
type    = A
physics = N
ctrl = 0
anim = 105
sprpriority = 1

[State 2006, 1]
type = VelSet
trigger1 = Time = 2
x = const(velocity.run.back.x)

[State 2006, 2]
type = Explod
trigger1 = time > 4 && (time%4) = 1
ID = 8500
anim = 2222
postype = P1
pos = 10,-51
bindtime = 1
vel = -2.2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 2006, 3]
type = Explod
trigger1 = time > 4 && (time % 4) = 0
ID = 8501
anim = 2222
postype = p1
pos = 10,-49
bindtime = 1
vel = -2
ownpal = 1
random = 18,48
removetime = -2
sprpriority = 2

[State 2006, End]
type = ChangeState
trigger1 = Time > 15
value = 2001

;---------------------------------------------------------------------------
; Flying Light Punch
;---------------------------------------------------------------------------
[Statedef 2010]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 600
poweradd = 20
sprpriority = 2
velset = 0,0;-0.75,0

[State 2010, Hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 20,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 7,10
sparkno = s8002
sparkxy = -10, -63
guard.sparkno = s8001
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -6
air.fall = 0
air.velocity = -3.2, -10.5

[State 1510]
type = Velset
trigger1 = movehit
trigger1 = FrontEdgeDist < 50
trigger2 = moveguarded
x = -30;-50

[State 1510]
type = Veladd
trigger1 = movecontact
trigger1 = vel x < 0
x = 5

[State 1510]
type = Velset
trigger1 = movecontact
trigger1 = vel x >=0
x = 0

[State 2010, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001

;---------------------------------------------------------------------------
; Flying Medium Punch
;---------------------------------------------------------------------------
[Statedef 2011]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 610
poweradd = 30
sprpriority = 2
velset = -1.35,0

[State 2011, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA
damage = 45,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -10,-68
guard.sparkno = s8001
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = -3.2, -7.5

[State 2011, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001

;---------------------------------------------------------------------------
; Flying Strong Punch
;---------------------------------------------------------------------------
[Statedef 2012]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 620
poweradd = 40
sprpriority = 2
velset = 0,0

[State 2012, HitDef]
type = HitDef
triggerall = hitcount < 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = A,NA
damage = 60,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 9,10
sparkno = s8002
sparkxy = -10, -53
guard.sparkno = s8001
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -20
air.velocity = -12,0
air.hittime = 25
air.fall = 1
fall =1

[State 2012, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001

;---------------------------------------------------------------------------
; Flying Light Kick
;---------------------------------------------------------------------------
[Statedef 2013]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 630
poweradd = 20
sprpriority = 2
velset = -0.75,0

[State 2013, HitDef]
type = HitDef
triggerall = hitcount < 1
trigger2 = AnimElem = 3
trigger1 = AnimElem = 2
attr = A,NA
damage = 25,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 7,10
sparkno = s8002
sparkxy = -10, -63
guard.sparkno = s8001
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = -3.2, -10.5
air.hittime = 25

[State 2013, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001

;---------------------------------------------------------------------------
; Flying Medium Kick
;---------------------------------------------------------------------------
[Statedef 2014]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 640
poweradd = 30
sprpriority = 2
velset = -1.35,0

[State 2014, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA
damage = 35,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,10
sparkno = s8002
sparkxy = -10,-68
guard.sparkno = s8001
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = -3.2, -7.5
air.hittime = 25

[State 2014, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001

;---------------------------------------------------------------------------
; Flying Strong Kick
;---------------------------------------------------------------------------
[Statedef 2015]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 650
poweradd = 40
sprpriority = 2
velset = 0,0

[State 2015, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 60,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 9,10
sparkno = s8002
sparkxy = -10, -53
guard.sparkno = s8001
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = 0,10
air.velocity = 0,10
air.fall = 1
air.hittime = 25
fall = 1

[State 2015, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001

; END
