;---------------------------------------------------------------------------
; Flight Mode / Statedef's : 2000 - 2999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; FLIGHT
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

[State 2000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 30
length = 35
palcolor = 136
palinvertall = 1
palbright = 30,130,230
palcontrast = 120,190,220
palpostbright = 50,150,200
paladd = 10,10,25
palmul = .65,.65,1.75
timegap = 1
framegap = 4

[State 2000, 1]
type = VelSet
trigger1 = time <10
x = 0
y = -6

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
ctrl = 0
anim = 2000
poweradd = 0
sprpriority = 2

[State 2000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 30
length = 35
palcolor = 136
palinvertall = 1
palbright = 30,130,230
palcontrast = 120,190,220
palpostbright = 50,150,200
paladd = 10,10,25
palmul = .65,.65,1.75
timegap = 1
framegap = 4


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
trigger1 = Anim != 2000
value = 2000

[State 2001, 3]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2006
value = 2006

[State 2001, 4]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y > 0
trigger1 = Anim != 2005
value = 2000

[State 2001, 5]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y <= 0
trigger1 = Anim != 2000
value = 2000

[State 2001, 6]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y > 0
trigger1 = Anim != 2005
value = 2005

[State 2001, 6]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y < 0
trigger1 = Anim != 2006
value = 2006

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
trigger1 = time = 790
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

;-------------------------------------------------------------------------------
;Astral Form Moves
;-------------------------------------------------------------------------------
;Healing

;[State 2001, LifeAdd]
;type = LifeAdd
;trigger1 = command = "s"
;value = 10

;[State 2001, SuperPause]
;type = SuperPause
;trigger1 = command = "s"
;time = 6
;sound = S1000,8
;pos = 12,-108
;move
;darken = 0
;p2defmul = 100
;unhittable = 1

[State 2001, 6]
type = ChangeAnim
trigger1 = anim = 2010 ;= command = "x"
trigger2 = anim = 2011 ;= command = "y"
trigger3 = anim = 2012 ;= command = "z"
trigger4 = anim = 2013 ;= command = "a"
trigger5 = anim = 2014 ;= command = "b"
trigger6 = anim = 2015 ;= command = "c"
triggerall = Anim != 2002
value = 2002

;-------------------------------------------------------------------------------
;Attacks


[State 2001, Helper]
type = Helper
trigger1 = command = "Watoomb"
helpertype = normal
name = "LP"
ID = 2000
stateno = 2010
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0

[State 2001, Helper]
type = Helper
trigger1 = command = "Oshur"
helpertype = normal
name = "MP"
ID = 2000
stateno = 2011
pos = -25,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0

[State 2001, Helper]
type = Helper
trigger1 = command = "Cyndriarr"
helpertype = normal
name = "HP"
ID = 2000
stateno = 2012
pos = -50,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0

[State 2001, Helper]
type = Helper
trigger1 = command = "Cinnibus"
helpertype = normal
name = "LK"
ID = 2000
stateno = 2013
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0

[State 2001, Helper]
type = Helper
trigger1 = command = "Ikthalon"
helpertype = normal
name = "MK"
ID = 2000
stateno = 2014
pos = -25,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0

[State 2001, Helper]
type = Helper
trigger1 = command = "Morpheus"
helpertype = normal
name = "HK"
ID = 2000
stateno = 2015
pos = -50,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0

;-------------------------------------------------------------------------------
;attack details

[Statedef 2010]
type = A
movetype = A
physics = N
anim = 2010
velset = 0,0
sprpriority = 99

[State 2010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2010, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 30
length = 35
palcolor = 166
palinvertall = 0
palbright = 50,120,255
palcontrast = 50,120,255
palpostbright = 50,190,255
paladd = 10,10,125
palmul = .65,.65,1.75
sinadd = 10,20,120
timegap = 1
framegap = 4

[State 2010, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S1000,8
volume = 255
channel = 5

[State 2010, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 10,2
guardflag = MA
pausetime = 0,0
sparkno = s7700
hitsound = s1000,1
guardsound = 6,0
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-2
guard.velocity = -2
air.velocity = -4,2
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 2010, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 2011]
type = A
movetype = A
physics = N
anim = 2011
velset = 0,0
sprpriority = 99

[State 2010, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 30
length = 35
palcolor = 136
palinvertall = 1
palbright = 30,130,230
palcontrast = 120,190,220
palpostbright = 50,150,200
paladd = 10,10,25
palmul = .65,.65,1.75
timegap = 1
framegap = 4

[State 2011, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2011, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S1000,8
volume = 255
channel = 5

[State 2011, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 10,2
guardflag = MA
pausetime = 0,0
sparkno = s7700
hitsound = s1000,1
guardsound = 6,0
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-2
guard.velocity = -2
air.velocity = -4,2
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 2011, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0


[Statedef 2012]
type = A
movetype = A
physics = N
anim = 2012
velset = 0,0
sprpriority = 99

[State 2012, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2012, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 30
length = 35
palcolor = 136
palinvertall = 1
palbright = 30,130,230
palcontrast = 120,190,220
palpostbright = 50,150,200
paladd = 10,10,25
palmul = .65,.65,1.75
timegap = 1
framegap = 4

[State 2012, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S1000,8
volume = 255
channel = 5

[State 2012, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 10,2
guardflag = MA
pausetime = 0,0
sparkno = s7700
hitsound = s1000,1
guardsound = 6,0
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-2
guard.velocity = -2
air.velocity = -4,2
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 2012, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 2013]
type = A
movetype = A
physics = N
anim = 2013
velset = 0,0
sprpriority = 99

[State 2013, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2013, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 30
length = 35
palcolor = 136
palinvertall = 1
palbright = 30,130,230
palcontrast = 120,190,220
palpostbright = 50,150,200
paladd = 10,10,25
palmul = .65,.65,1.75
timegap = 1
framegap = 4

[State 2013, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S1000,8
volume = 255
channel = 5

[State 2013, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 10,2
guardflag = MA
pausetime = 0,0
sparkno = s7700
hitsound = s1000,1
guardsound = 6,0
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-2
guard.velocity = -2
air.velocity = -4,2
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 2013, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 2014]
type = A
movetype = A
physics = N
anim = 2014
velset = 0,0
sprpriority = 99

[State 2014, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2014, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 30
length = 35
palcolor = 136
palinvertall = 1
palbright = 30,130,230
palcontrast = 120,190,220
palpostbright = 50,150,200
paladd = 10,10,25
palmul = .65,.65,1.75
timegap = 1
framegap = 4

[State 2014, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S1000,8
volume = 255
channel = 5

[State 2014, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 10,2
guardflag = MA
pausetime = 0,0
sparkno = s7700
hitsound = s1000,1
guardsound = 6,0
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-2
guard.velocity = -2
air.velocity = -4,2
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 2014, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0

[Statedef 2015]
type = A
movetype = A
physics = N
anim = 2015
velset = 0,0
sprpriority = 99

[State 2015, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2015, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 30
length = 35
palcolor = 136
palinvertall = 1
palbright = 30,130,230
palcontrast = 120,190,220
palpostbright = 50,150,200
paladd = 10,10,25
palmul = .65,.65,1.75
timegap = 1
framegap = 4

[State 2015, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S1000,8
volume = 255
channel = 5

[State 2015, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
damage = 10,2
guardflag = MA
pausetime = 0,0
sparkno = s7700
hitsound = s1000,1
guardsound = 6,0
sparkxy = -30, 0; (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,-2
guard.velocity = -2
air.velocity = -4,2
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 2015, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0



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


