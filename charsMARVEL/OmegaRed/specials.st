; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 1000, beam]
type = Helper
trigger1 = AnimElem = 1
helpertype = normal
name = "beam"
ID = 1010
pos = -12,-85
postype = p1
stateno = 1010
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0 & NumHelper(1010) = 0
value = 1020

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------
; Special 1 -- beam helper state
[StateDef 1010]
type = A
movetype = A
physics = C
anim = 1010
ctrl = 0

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X - (12 * parent, facing)
y = parent, Pos Y - 85

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S9,1

[State 1010, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
damage = 40,5
guardflag = MA
pausetime = 6,12
hitsound = S9,1
guardsound = S3,0
sparkno = 2
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 64,0,0

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent, Anim != 1000


;---------
; Special 1 - end
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1020

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4












;Special1_X
[Statedef 1200]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1202
ctrl = 0
sprpriority = 2



[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1203
ctrl = 0


[Statedef 1203]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1203, ]
type = VelAdd
triggerall = Vel X <= 2 && time >= 5
trigger1 = command = "holdfwd"; && command != "holdup"
x = 1.3

[State 1203, 3]
type = ChangeAnim
trigger1 = vel x > 0 && anim != 1201
value = 1201

[State 1203, 5]
type = ChangeAnim
trigger1 =  vel x = 0  && anim != 1200 ;&& command != "holdup"
value = 1200

[State 1203, 6]
type = MoveHitReset
trigger1 = movehit = 1
ignorehitpause = 0
persistent = 1

[State 182]
type = PlaySnd
trigger1 = Time%7 = 0
value = 182,0

[State 1203, 7]
type = HitDef
trigger1 = timemod = 6,4 ;hitcount <= 15
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
ground.type = High
air.type = Low
fall.animtype = Diagup
damage = 4,1
pausetime = 0,0
guard.pausetime = 4,2
sparkno = 1
sparkxy = -25, (-70-random/30)
hitsound = S2,2
guardsound = S3,0
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
ground.velocity = 0
guard.velocity = 0
air.velocity = 0
airguard.velocity = 0
ground.cornerpush.veloff = 2
air.cornerpush.veloff = 2
down.cornerpush.veloff = 2
guard.cornerpush.veloff = 5
airguard.cornerpush.veloff = 5
forcestand = 1

[State 1203, ]
type = ChangeState
trigger1 = command = "holddown" || (command = "holdback" && time > 20)  || command = "holdup"
value = 0
ctrl = 1

[State 1203, ]
type = ChangeState
trigger1 = time >= 150
value = 1204
ctrl = 0


[Statedef 1204]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1203
ctrl = 0
sprpriority = 2



[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Omega Strike Horizontal
[Statedef 2000]
type = S
movetype = A
physics = N
anim = 2000
ctrl = 0
sprpriority = 1
poweradd= 100
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 0,2



[State 2040, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),0

[State 2000]
type = VarSet
trigger1 = Time = 1
var(1) = 0

[State 2000]
type = VarSet
trigger1 = Time = [2,40]
;trigger1 = command = "holddown"
trigger1 = command = "a" || command = "b" || command = "c"
var(1) = 2

;[State 2000]
;type = VarSet
;trigger1 = Time = [2,40]
;trigger1 = command = "holdback"
;trigger1 = command = "a" || command = "b" || command = "c"
;var(1) = 4

[State 2000]
type = Explod
trigger1 = AnimElem = 1
anim = 7023
scale = .5,.5
ontop = 1

[State 2000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0

[State 2000]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2000,1


[State 2000]
type = Helper
trigger1 = AnimElem = 1
stateno = 2006

[State 2000]
type = Helper
trigger1 = AnimElem = 5
stateno = 2005
id = 2005

[State 2000]
type = VelSet
trigger1 = AnimElem = 5
x = 5.5

[State 2000]
type = VelSet
trigger1 = AnimElem = 9, = 1
x = 0

[State 2000]
type = HitDef
attr = S, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage    = 90
animtype = Hard
priority  = 5, Hit
guardflag = MA
pausetime = 0,0
sparkxy = -10,-80
hitsound   = 2,2
guardsound = 3,0
sparkno =2
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -13,-7
air.velocity = -13,-5
fall = 1
air.fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifelse(MoveHit,60,30),ifelse(MoveHit,60,0)

[State 2000,5]
type = ChangeAnim
trigger1 = Time < 36
trigger1 = AnimElem = 7
value = 2000
elem = 5

[State 2000,5]
type = ChangeState
trigger1 = AnimTime = 0
value = 2008
ctrl = 0

[State 2000,5]
type = ChangeState
trigger1 = var(59) && Time = 40
trigger1 = P2BodyDist X < 70
value = 2001
ctrl = 0

[State 2000,5]
type = ChangeState
triggerall = !MoveContact
triggerall = Time = [21,40]
trigger1 = var(1) = 2
value = 2008
ctrl = 0

[State 2000,5]
type = ChangeState
triggerall = Time = [21,40]
trigger1 = var(1) = 4
value = 2001
ctrl = 0

;------------------------------------------------------------------------------------------------------------
;Omega Strike Horizontal Retract
[Statedef 2001]
type = S
movetype = I
physics = N
anim = 2001
ctrl = 0
sprpriority = 2
velset = -5.5,0

[State 2001]
type = ChangeAnim
trigger1 = NumHelper(2005)
trigger1 = AnimElem = 3
value = 2001

[State 2001]
type = ChangeAnim
trigger1 = NumHelper(2005)
trigger1 = Helper(2005),AnimTime = 0
value = 2001
elem = 3

[State 2001]
type = VelSet
trigger1 = AnimElem = 3, = 1
x = 0

[State 2001]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;Omega Strike Horizontal Coil
[Statedef 2005]
type = S
movetype = I
physics = N
anim = 2009
ctrl = 0
sprpriority = 3

[State 2005]
type = ChangeAnim
trigger1 = Parent,Anim = 2001
value = 2010
elem = 20-AnimElemNo(0)
persistent = 0

[State 2005]
type = ParentVarSet
trigger1 = ParentDist X < 0
var(1) = 2
persistent = 0

[State 2005]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,stateno != [2000,2001]
;------------------------------------------------------------------------------------------------------------
;Omega Strike Horizontal Arm
[Statedef 2006]
type = S
movetype = I
physics = N
anim = 2006
ctrl = 0
sprpriority = 5

[State 2006]
type = ChangeAnim
trigger1 = Parent,AnimElemNo(0) != AnimElemNo(0)
value = 2006
elem = Parent,AnimElemNo(0)
ignorehitpause = 1

[State 2006]
type = ChangeState
trigger1 = Parent,stateno = 2001
value = 2007

[State 2006]
type = DestroySelf
trigger1 = Parent,stateno != [2000,2001]

[State 2006]
type = BindToParent
trigger1 = 1
facing = 1
ignorehitpause = 1
;------------------------------------------------------------------------------------------------------------
;Omega Strike Horizontal Arm Retract
[Statedef 2007]
type = S
movetype = I
physics = N
anim = 2007
ctrl = 0
sprpriority = 5

[State 2007]
type = ChangeAnim
trigger1 = Parent,AnimElemNo(0) != AnimElemNo(0)
value = 2007
elem = Parent,AnimElemNo(0)
ignorehitpause = 1

[State 2007]
type = DestroySelf
trigger1 = Parent,AnimElem = 3
trigger2 = Parent,stateno != 2001

[State 2007]
type = BindToParent
trigger1 = 1
facing = 1
ignorehitpause = 1
;------------------------------------------------------------------------------------------------------------
;Omega Strike Horizontal End
[Statedef 2008]
type = S
movetype = I
physics = N
anim = 2008
ctrl = 0
sprpriority = 2
velset = 3,0

[State 2008]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;Omega Strike Diag Up
[Statedef 2020]
type = A
movetype = A
physics = N
anim = 2020
ctrl = 0
sprpriority = 1
poweradd= 100
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 0,2

[State 2040, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),floor(pos y)

[State 2020]
type = VarSet
trigger1 = Time = 1
var(1) = 0

[State 2020]
type = VarSet
trigger1 = Time = [2,40]
;trigger1 = command = "holddown"
trigger1 = command = "a" || command = "b" || command = "c"
var(1) = 2

;[State 2020]
;type = VarSet
;trigger1 = Time = [2,40]
;trigger1 = command = "holdback"
;trigger1 = command = "a" || command = "b" || command = "c"
;var(1) = 4

[State 2020]
type = Explod
trigger1 = AnimElem = 1
anim = 7023
scale = .5,.5
ontop = 1

[State 2020]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0

[State 2020]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2000,1

[State 2020]
type = Helper
trigger1 = AnimElem = 1
stateno = 2026

[State 2020]
type = Helper
trigger1 = AnimElem = 5
stateno = 2025
id = 2025

[State 2020]
type = VelSet
trigger1 = AnimElem = 5
x = 4.9
y = -3.5

[State 2020]
type = VelSet
trigger1 = AnimElem = 9, = 1
x = 0

[State 2020]
type = HitDef
attr = S, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage    = 90
animtype = Hard
priority  = 5, Hit
guardflag = MA
pausetime = 0,0;7,7
sparkxy = -10,-100
hitsound   = 2,2
guardsound = 3,0
sparkno = 2
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -12,-7
air.velocity = -12,-5
fall = 1
air.fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifelse(MoveHit,60,30),ifelse(MoveHit,60,0)

[State 2020,5]
type = StateTypeSet
trigger1 = Pos Y < 0 || Vel Y < 0
statetype = A
persistent = 0

[State 2020,5]
type = ChangeAnim
trigger1 = Time < 40
trigger1 = AnimElem = 7
value = 2020
elem = 5

[State 2020,5]
type = ChangeState
trigger1 = AnimTime = 0
value = 2028
ctrl = 0

[State 2020,5]
type = ChangeState
triggerall = !MoveContact
triggerall = Time = [21,40]
trigger1 = var(1) = 2
value = 2028
ctrl = 0

[State 2020,5]
type = ChangeState
trigger1 = (frontedgebodydist < 50)
value = 2028
ctrl = 0

[State 2020,5]
type = ChangeState
trigger1 = var(59) && Time = 40
trigger1 = P2BodyDist X < 70
value = 2001
ctrl = 0

[State 2020,5]
type = ChangeState
triggerall = Time = [21,404]
trigger1 = var(1) = 4
value = 2021
ctrl = 0

;------------------------------------------------------------------------------------------------------------
;Omega Strike Diag Up Retract
[Statedef 2021]
type = S
movetype = I
physics = N
anim = 2021
ctrl = 0
sprpriority = 1
velset = -4.9,3.5

[State 2021]
type = ChangeAnim
trigger1 = NumHelper(2025)
trigger1 = AnimElem = 3
value = 2021

[State 2021]
type = ChangeAnim
trigger1 = NumHelper(2025)
trigger1 = Helper(2025),AnimTime = 0
value = 2021
elem = 3

[State 2021]
type = VelSet
trigger1 = AnimElem = 3, = 1
x = 0
y = 0

[State 2021]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------------------------------------
;Omega Strike Diag Up Coil
[Statedef 2025]
type = S
movetype = I
physics = N
anim = 2029
ctrl = 0
sprpriority = 2

[State 2025]
type = ChangeAnim
trigger1 = Parent,Anim = 2021
value = 2030
elem = 23-AnimElemNo(0)
persistent = 0

[State 2025]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,stateno != [2020,2021]
;------------------------------------------------------------------------------------------------------------
;Omega Strike Diag Up Arm
[Statedef 2026]
type = S
movetype = I
physics = N
anim = 2026
ctrl = 0
sprpriority = 3

[State 2026]
type = ChangeAnim
trigger1 = Parent,AnimElemNo(0) != AnimElemNo(0)
value = 2026
elem = Parent,AnimElemNo(0)
ignorehitpause = 1

[State 2026]
type = ChangeState
trigger1 = Parent,stateno = 2021
value = 2027

[State 2026]
type = DestroySelf
trigger1 = Parent,stateno != [2020,2021]

[State 2026]
type = BindToParent
trigger1 = 1
facing = 1
ignorehitpause = 1
;------------------------------------------------------------------------------------------------------------
;Omega Strike Diag Up Arm Retract
[Statedef 2027]
type = S
movetype = I
physics = N
anim = 2027
ctrl = 0
sprpriority = 3

[State 2027]
type = ChangeAnim
trigger1 = Parent,AnimElemNo(0) != AnimElemNo(0)
value = 2027
elem = Parent,AnimElemNo(0)
ignorehitpause = 1

[State 2027]
type = DestroySelf
trigger1 = Parent,AnimElem = 3
trigger2 = Parent,stateno != 2021

[State 2027]
type = BindToParent
trigger1 = 1
facing = 1
ignorehitpause = 1
;------------------------------------------------------------------------------------------------------------
;Omega Strike Diag Up End
[Statedef 2028]
type = A
movetype = I
physics = N
anim = 2028
ctrl = 0
sprpriority = 2
velset = 0,0.1

[State 2028]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 2028]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;------------------------------------------------------------------------------------------------------------
;Omega Strike Up
[Statedef 2040]
type = A
movetype = A
physics = N
anim = 2040
ctrl = 0
sprpriority = 1
poweradd= 100
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 0,2

[State 2040, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)

[State 2040]
type = VarSet
trigger1 = Time = 1
var(1) = 0

[State 2040]
type = VarSet
trigger1 = Time = [2,30]
;trigger1 = command = "holddown"
trigger1 = command = "a" || command = "b" || command = "c"
var(1) = 2

;[State 2040]
;type = VarSet
;trigger1 = Time = [2,50]
;trigger1 = command = "holdback"
;trigger1 = command = "a" || command = "b" || command = "c"
;var(1) = 2

[State 2040]
type = Explod
trigger1 = AnimElem = 1
anim = 7023
scale = .5,.5
ontop = 1



[State 2040]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0

[State 2040]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2000,1

[State 2040]
type = Helper
trigger1 = AnimElem = 1
stateno = 2046

[State 2040]
type = Helper
trigger1 = AnimElem = 5
stateno = 2045
id = 2045

[State 2040]
type = VelSet
trigger1 = AnimElem = 5
y = -5

[State 2040]
type = VelSet
trigger1 = AnimElem = 9, = 1
x = 0

[State 2040]
type = HitDef
attr = S, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage    = 90
animtype = Hard
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-80
hitsound   = 2,2
guardsound = 3,0
sparkno = 2
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -2,-15
air.velocity = -2,-15
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = ifelse(MoveHit,60,30),ifelse(MoveHit,60,0)

[State 2040,5]
type = StateTypeSet
trigger1 = Pos Y < 0 || Vel Y < 0
statetype = A
persistent = 0

[State 2040,5]
type = ChangeAnim
trigger1 = Time < 32
trigger1 = AnimElem = 7
value = 2040
elem = 5

[State 2040,5]
type = ChangeState
trigger1 = AnimTime = 0
value = 2048
ctrl = 0

[State 2040,5]
type = ChangeState
triggerall = !MoveContact
triggerall = Time = [21,30]
trigger1 = var(1) = 2
value = 2048
ctrl = 0

[State 2040,5]
type = ChangeState
trigger1 = var(59) && Time = 40
trigger1 = P2BodyDist X < 70
value = 2001
ctrl = 0

[State 2040,5]
type = ChangeState
;triggerall = !MoveContact
triggerall = Time = [21,30]
trigger1 = var(1) = 4
value = 2041
ctrl = 0

;------------------------------------------------------------------------------------------------------------
;Omega Strike Up Retract
[Statedef 2041]
type = S
movetype = I
physics = N
anim = 2041
ctrl = 0
sprpriority = 1
velset = 0,5

[State 2041]
type = ChangeAnim
trigger1 = NumHelper(2045)
trigger1 = AnimElem = 3
value = 2041

[State 2041]
type = ChangeAnim
trigger1 = NumHelper(2045)
trigger1 = Helper(2045),AnimTime = 0
value = 2041
elem = 3

[State 2041]
type = VelSet
trigger1 = AnimElem = 3, = 1
y = 0

[State 2041]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;Omega Strike Up Coil
[Statedef 2045]
type = S
movetype = I
physics = N
anim = 2049
ctrl = 0
sprpriority = 2

[State 2045]
type = ChangeAnim
trigger1 = Parent,Anim = 2041
value = 2050
elem = 15-AnimElemNo(0)
persistent = 0

[State 2045]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,stateno != [2040,2041]
;------------------------------------------------------------------------------------------------------------
;Omega Strike Up Arm
[Statedef 2046]
type = S
movetype = I
physics = N
anim = 2046
ctrl = 0
sprpriority = 3

[State 2046]
type = ChangeAnim
trigger1 = Parent,AnimElemNo(0) != AnimElemNo(0)
value = 2046
elem = Parent,AnimElemNo(0)
ignorehitpause = 1

[State 2046]
type = ChangeState
trigger1 = Parent,stateno = 2041
value = 2047

[State 2046]
type = DestroySelf
trigger1 = Parent,stateno != [2040,2041]

[State 2046]
type = BindToParent
trigger1 = 1
facing = 1
ignorehitpause = 1
;------------------------------------------------------------------------------------------------------------
;Omega Strike Up Arm Retract
[Statedef 2047]
type = S
movetype = I
physics = N
anim = 2047
ctrl = 0
sprpriority = 3

[State 2047]
type = ChangeAnim
trigger1 = Parent,AnimElemNo(0) != AnimElemNo(0)
value = 2047
elem = Parent,AnimElemNo(0)
ignorehitpause = 1

[State 2047]
type = DestroySelf
trigger1 = Parent,AnimElem = 3
trigger2 = Parent,stateno != 2041

[State 2047]
type = BindToParent
trigger1 = 1
facing = 1
ignorehitpause = 1
;------------------------------------------------------------------------------------------------------------
;Omega Strike Up End
[Statedef 2048]
type = A
movetype = I
physics = N
anim = 2048
ctrl = 0
sprpriority = 2
velset = 0,0.1

[State 2048]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 2048]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;--------------------------
;thanks kong for this 14.491 lines only to one special

;Carbonadium Coil Horizontal
[Statedef 1240]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 40
ctrl = 0
velset = 0,0
anim = 1240
sprpriority = 4


[State 1240, 1]
type = PlaySnd
trigger1 = Time = 24
value = 1240,0

[State 1240]
type = Helper
trigger1 = Time = 25
stateno = 21240
id = 21240

[State 1240, 1]
type = VarSet
trigger1 = Time = 0
var(1) = 0


[State 1240, 1]
type = VarSet
triggerall = Time = [7,35]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 2


[State 1240, 1]
type = VarSet
triggerall = Time = [36,63]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 4


[State 1240]
type = ChangeAnim
trigger1 = var(1) = 2
trigger1 = Time > 31
value = 1240
elem = 9
persistent = 0

[State 1240]
type = ChangeAnim
trigger1 = var(1) = 4
value = 1240
elem = 8
persistent = 0



[State 1240]
type = ChangeState
trigger1 = NumHelper(21240)
trigger1 = Helper(21240),MoveHit
value = 1241


[State 1240]
type = ChangeAnim
trigger1 = Time < 59
trigger1 = AnimElem = 7
value = 1240
elem = 5

[State 1240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Grab

[Statedef 1241]
type    = S
movetype= A
physics = N
anim = 1241
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1241]
type = Width
trigger1 = Time = 0
edge = 150,0


[State 1241]
type = VarAdd
trigger1 = Time = 0
var(42) = 1

[State 1241]
type = VarSet
trigger1 = Time = 0
var(2) = 0


;[State 1241]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%6


;[State 1241]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = power < 1000
;var(2) = 2

;[State 1241]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = life < var(34)
;var(2) = 1



[State 1241]
type = VarSet
trigger1 = Time = 1
trigger1 = var(54) = 10
var(2) = 3+random%6


[State 1241]
type = VarSet
trigger1 = Time = 1
var(5) = 0

[State 1241]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1241]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1241]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1241]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1241]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1241]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1241]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1241]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1241]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1241]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1241]
type = ChangeState
trigger1 = var(2)
value = 1241+var(2)



[State 1241]
type = ChangeAnim
trigger1 = Time < 43
trigger1 = AnimElem = 4
value = 1241
elem = 2

[State 1241, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Grab To Death Factor

[Statedef 1242]
type    = S
movetype= A
physics = N
anim = 1242
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1242]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1242]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%6


[State 21241]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = 5;-Root,var(30)

[State 1242]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1242]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1242]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1242]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1242]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1242]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1242]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1242]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1242]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1242]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1242]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1241+var(2)


[State 1242]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1242
elem = 1

[State 1242, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Grab To Energy Drain

[Statedef 1243]
type    = S
movetype= A
physics = N
anim = 1243
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1243]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1243]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%6



[State 1243]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1243]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1243]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1243]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1243]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1243]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1243]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1243]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1243]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1243]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




;ignorehitpause =
;persistent =



[State 1243]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1241+var(2)


[State 1243]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1243
elem = 1

[State 1243, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Horizontal Stance

[Statedef 1244]
type    = S
movetype= A
physics = N
anim = 1244
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1244]
type = Turn
trigger1 = AnimElem = 4


[State 1244]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1244, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Ground Slam Back Stance

[Statedef 1245]
type    = S
movetype= A
physics = N
anim = 1245
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1245]
type = Turn
trigger1 = AnimElem = 4


[State 1245]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0


[State 1245]
type = VarSet
trigger1 = Time = 1
var(3) = 0


;[State 1245]
;type = VarSet
;trigger1 = Time = 25
;trigger1 = var(59)
;var(3) = 3+random%6



[State 1245]
type = VarSet
triggerall = Time = [4,50]
trigger1 = command = "x" || command = "y" || command = "z"
var(3) = 1


[State 1245]
type = VarSet
triggerall = Time = [4,50]
trigger1 = command = "a" || command = "b" || command = "c"
var(3) = 2


[State 1245]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 5


[State 1245]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 7


[State 1245]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 4


[State 1245]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 8



[State 1245]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 6


[State 1245]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 4



[State 1245]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 3



[State 1245]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 3


[State 1245]
type = ChangeState
trigger1 = var(5) = 1
trigger1 = var(3) = [3,9]
value = 1251+var(3)
ctrl = 0


[State 1245, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Back Up Stance

[Statedef 1246]
type    = S
movetype= A
physics = N
anim = 1246
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1246]
type = Turn
trigger1 = AnimElem = 4


[State 1246]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1246, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Upward Stance

[Statedef 1247]
type    = S
movetype= A
physics = N
anim = 1247
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1247]
type = Turn
trigger1 = AnimElem = 4


[State 1247]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1247, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Up Forward Stance

[Statedef 1248]
type    = S
movetype= A
physics = N
anim = 1248
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1248]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,0

[State 1248, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Ground Slam Forward Stance

[Statedef 1249]
type    = S
movetype= A
physics = N
anim = 1249
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1249]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,0


[State 1249]
type = VarSet
trigger1 = Time = 1
var(3) = 0


;[State 1249]
;type = VarSet
;trigger1 = Time = 25
;trigger1 = var(59)
;var(3) = 3+random%6


[State 1249]
type = VarSet
triggerall = Time = [4,50]
trigger1 = command = "x" || command = "y" || command = "z"
var(3) = 1


[State 1249]
type = VarSet
triggerall = Time = [4,50]
trigger1 = command = "a" || command = "b" || command = "c"
var(3) = 2


[State 1249]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 5


[State 1249]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 7


[State 1249]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 4


[State 1249]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 8



[State 1249]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 6


[State 1249]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 4



[State 1249]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 3



[State 1249]
type = VarSet
triggerall = Time = [4,50]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(3) = 3


[State 1249]
type = ChangeState
trigger1 = var(5) = 1
trigger1 = var(3) = [3,9]
value = 1251+var(3)
ctrl = 0



[State 1249, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Horizontal Stance

[Statedef 1254]
type    = S
movetype= A
physics = N
anim = 1244
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1254]
type = Turn
trigger1 = AnimElem = 4


[State 1254]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1254, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Ground Slam Back Stance

[Statedef 1255]
type    = S
movetype= A
physics = N
anim = 1245
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1255]
type = Turn
trigger1 = AnimElem = 4


[State 1255]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0


[State 1255, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Back Up Stance

[Statedef 1256]
type    = S
movetype= A
physics = N
anim = 1246
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1256]
type = Turn
trigger1 = AnimElem = 4


[State 1256]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1256, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Upward Stance

[Statedef 1257]
type    = S
movetype= A
physics = N
anim = 1247
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1257]
type = Turn
trigger1 = AnimElem = 4


[State 1257]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1257, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Up Forward Stance

[Statedef 1258]
type    = S
movetype= A
physics = N
anim = 1248
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1258]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,0

[State 1258, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Ground Slam Forward Stance

[Statedef 1259]
type    = S
movetype= A
physics = N
anim = 1249
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1259]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,0

[State 1259, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Carbonadium Coil Diag Up
[Statedef 1300]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 40
ctrl = 0
velset = 0,0
anim = 1300
sprpriority = 4


[State 1300, 1]
type = PlaySnd
trigger1 = Time = 24
value = 1240,0

[State 1300]
type = Explod
trigger1 = Time = 1
anim = 7023
scale = .5,.5
ontop = 1

[State 1300]
type = Helper
trigger1 = Time = 25
stateno = 21300
id = 21300

[State 1300, 1]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 1300, 1]
type = VarSet
triggerall = Time = [7,35]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 2


[State 1300, 1]
type = VarSet
triggerall = Time = [36,63]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 4


[State 1300]
type = ChangeAnim
trigger1 = var(1) = 2
trigger1 = Time > 31
value = 1300
elem = 9
persistent = 0

[State 1300]
type = ChangeAnim
trigger1 = var(1) = 4
value = 1300
elem = 8
persistent = 0

[State 1300]
type = ChangeState
trigger1 = NumHelper(21300)
trigger1 = Helper(21300),MoveHit
value = 1301


[State 1300]
type = ChangeAnim
trigger1 = Time < 59
trigger1 = AnimElem = 7
value = 1300
elem = 5

[State 1300]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Grab

[Statedef 1301]
type    = S
movetype= A
physics = N
anim = 1301
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1301]
type = Width
trigger1 = Time = 0
edge = 150,0



[State 1301]
type = VarAdd
trigger1 = Time = 0
var(42) = 1

[State 1301]
type = VarSet
trigger1 = Time = 0
var(2) = 0


;[State 1301]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%6


;[State 1301]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = power < 1000
;var(2) = 2

;[State 1301]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = life < var(34)
;var(2) = 1


[State 1301]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1301]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1301]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1301]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1301]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1301]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1301]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1301]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1301]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1301]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1301]
type = ChangeState
trigger1 = var(2)
value = 1301+var(2)


[State 1301]
type = ChangeAnim
trigger1 = Time < 43
trigger1 = AnimElem = 4
value = 1301
elem = 2

[State 1301, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Grab To Death Factor

[Statedef 1302]
type    = S
movetype= A
physics = N
anim = 1302
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1302]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1302]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%6


[State 1302]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1302]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1302]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1302]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1302]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1302]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1302]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1302]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1302]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1302]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3

[State 21241]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = 5;-Root,var(30)


[State 1302]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1301+var(2)



[State 1302]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1302
elem = 1

[State 1302, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Grab To Energy Drain

[Statedef 1303]
type    = S
movetype= A
physics = N
anim = 1303
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1303]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1303]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%6


[State 1303]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1303]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1303]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1303]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1303]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1303]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1303]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1303]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1303]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1303]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3





[State 1303]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1301+var(2)


[State 1303]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1303
elem = 1

[State 1303, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Throw Horizontal Stance

[Statedef 1304]
type    = S
movetype= A
physics = N
anim = 1304
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1304]
type = Turn
trigger1 = AnimElem = 4


[State 1304]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1304, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Ground Slam Back Stance

[Statedef 1305]
type    = S
movetype= A
physics = N
anim = 1305
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1305]
type = Turn
trigger1 = AnimElem = 4


[State 1305]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1305, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Throw Back Up Stance

[Statedef 1306]
type    = S
movetype= A
physics = N
anim = 1306
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1306]
type = Turn
trigger1 = AnimElem = 4


[State 1306]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1306, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Carbonadium Coil Diag Throw Upward Stance

[Statedef 1307]
type    = S
movetype= A
physics = N
anim = 1307
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1307]
type = Turn
trigger1 = AnimElem = 4


[State 1307]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1307, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Throw Up Forward Stance

[Statedef 1308]
type    = S
movetype= A
physics = N
anim = 1308
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1308]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,0

[State 1308, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Ground Slam Forward Stance

[Statedef 1309]
type    = S
movetype= A
physics = N
anim = 1309
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1309]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,0

[State 1309, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;Carbonadium Coil Up
[Statedef 1350]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 40
ctrl = 0
velset = 0,0
anim = 1350
sprpriority = 4


[State 1350, 1]
type = PlaySnd
trigger1 = Time = 24
value = 1240,0

[State 1350]
type = Explod
trigger1 = Time = 1
anim = 7023
scale = .5,.5
ontop = 1

[State 1350]
type = Helper
trigger1 = Time = 25
stateno = 21350
id = 21350

[State 1350, 1]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 1350, 1]
type = VarSet
triggerall = Time = [7,35]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 2


[State 1350, 1]
type = VarSet
triggerall = Time = [36,63]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 4


[State 1350]
type = ChangeAnim
trigger1 = var(1) = 2
trigger1 = Time > 31
value = 1350
elem = 9
persistent = 0

[State 1350]
type = ChangeAnim
trigger1 = var(1) = 4
value = 1350
elem = 8
persistent = 0

[State 1350]
type = ChangeState
trigger1 = NumHelper(21350)
trigger1 = Helper(21350),MoveHit
value = 1351


[State 1350]
type = ChangeAnim
trigger1 = Time < 59
trigger1 = AnimElem = 7
value = 1350
elem = 5

[State 1350]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Up Grab

[Statedef 1351]
type    = S
movetype= A
physics = N
anim = 1351
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1351]
type = Width
trigger1 = Time = 0
edge = 150,0



[State 1351]
type = VarAdd
trigger1 = Time = 0
var(42) = 1

[State 1351]
type = VarSet
trigger1 = Time = 0
var(2) = 0


;[State 1351]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%6


;[State 1351]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = power < 1000
;var(2) = 2

;[State 1351]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = life < var(34)
;var(2) = 1


[State 1351]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1351]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1351]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1351]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1351]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1351]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1351]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1351]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1351]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1351]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1351]
type = ChangeState
trigger1 = var(2)
value = 1351+var(2)




[State 1351]
type = ChangeAnim
trigger1 = Time < 43
trigger1 = AnimElem = 4
value = 1351
elem = 2

[State 1351, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Up Grab To Death Factor

[Statedef 1352]
type    = S
movetype= A
physics = N
anim = 1352
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1352]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1352]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%6


[State 1352]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1352]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1352]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1352]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1352]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1352]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3

[State 21241]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = 5;-Root,var(30)

[State 1352]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1352]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1352]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1352]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1352]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1351+var(2)



[State 1352]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1352
elem = 1

[State 1352, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Up Grab To Energy Drain

[Statedef 1353]
type    = S
movetype= A
physics = N
anim = 1353
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1353]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1353]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%6


[State 1353]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1353]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1353]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1353]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1353]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1353]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1353]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1353]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1353]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1353]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3





[State 1353]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1351+var(2)



[State 1353]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1353
elem = 1

[State 1353, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Up Throw Horizontal Stance

[Statedef 1354]
type    = S
movetype= A
physics = N
anim = 1354
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1354]
type = Turn
trigger1 = AnimElem = 4


[State 1354]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1354, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Up Ground Slam Back Stance

[Statedef 1355]
type    = S
movetype= A
physics = N
anim = 1355
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1355]
type = Turn
trigger1 = AnimElem = 4


[State 135]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1355, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Carbonadium Coil Up Throw Back Up Stance

[Statedef 1356]
type    = S
movetype= A
physics = N
anim = 1356
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1356]
type = Turn
trigger1 = AnimElem = 4


[State 1356]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1356, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Carbonadium Coil Diag Throw Upward Stance

[Statedef 1357]
type    = S
movetype= A
physics = N
anim = 1357
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1357]
type = Turn
trigger1 = AnimElem = 4


[State 1357]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1357, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Up Throw Up Forward Stance

[Statedef 1358]
type    = S
movetype= A
physics = N
anim = 1358
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1358]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,0

[State 1358, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Up Ground Slam Forward Stance

[Statedef 1359]
type    = S
movetype= A
physics = N
anim = 1359
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1359]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,0

[State 1359, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Carbonadium Coil Air End

[Statedef 1390]
type    = A
movetype= A
physics = N
anim = 1390
;poweradd = 40
juggle  = 0
velset = 0,0.1
ctrl = 0
sprpriority = 0


[State 1390]
type = varset
trigger1 = Time = 0
var(54) = 0

[State 1390]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 1390, State End]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Carbonadium Coil Air Horizontal Stance
[Statedef 1400]
type    = A
movetype= A
physics = N
juggle  = 3
poweradd= 40
ctrl = 0
velset = 0,0
anim = 1400
sprpriority = 4


[State 1400, 1]
type = PlaySnd
trigger1 = Time = 16
value = 1240,0

[State 1400]
type = Helper
trigger1 = Time = 17
stateno = 21400
id = 21400

[State 1400, 1]
type = VarSet
trigger1 = Time = 0
var(1) = 0


[State 1400]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1400]
type = VarAdd
trigger1 = AnimElem = 7, = 5
var(0) = 1

[State 1400, 1]
type = VarSet
triggerall = Time = [4,25]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 2


[State 1400, 1]
type = VarSet
triggerall = Time = [26,55]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 4


[State 1400]
type = ChangeAnim
trigger1 = var(1) = 2
trigger1 = Time > 22
value = 1400
elem = 6
persistent = 0

[State 1400]
type = ChangeAnim
trigger1 = var(1) = 4
value = 1400
elem = 6
persistent = 0

[State 1400]
type = ChangeState
trigger1 = NumHelper(21400)
trigger1 = Helper(21400),MoveHit
value = 1401


[State 1400]
type = ChangeAnim
trigger1 = var(1) = 0
trigger1 = Time < 53
trigger1 = AnimElem = 6
value = 1400
elem = 4

[State 1400]
type = ChangeAnim
trigger1 = AnimElem = 7, = 5
value = 1400
elem = 6


[State 1400]
type = VelAdd
trigger1 = Time > 27
y = 0.05

[State 1400]
type = ChangeState
trigger1 = var(0) = 2
trigger2 = var(0) = 1
trigger2 = var(1) = 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Grab

[Statedef 1401]
type    = A
movetype= A
physics = N
anim = 1401
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1401]
type = Width
trigger1 = Time = 0
edge = 150,0

[State 1401]
type = VarAdd
trigger1 = Time = 0
var(42) = 1

[State 1401]
type = VarSet
trigger1 = Time = 0
var(2) = 0


;[State 1401]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%7


;[State 1401]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = power < 1000
;var(2) = 2

;[State 1401]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = life < var(34)
;var(2) = 1



[State 1401]
type = VarSet
trigger1 = Time = 1
trigger1 = var(54)
var(2) = var(54)

[State 1401]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1401]
type = VarAdd
trigger1 = AnimElem = 5, = 5
var(0) = 1

[State 1401]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1401]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1401]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1401]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1401]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1401]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1401]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1401]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1401]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1401]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1401]
type = ChangeState
trigger1 = var(2)
value = 1401+var(2)



[State 1401]
type = ChangeAnim
trigger1 = Time < 43
trigger1 = AnimElem = 4
value = 1401
elem = 2

[State 1401]
type = ChangeAnim
trigger1 = AnimElem = 5, = 5
value = 1401
elem = 4

[State 1401]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Grab To Death Factor

[Statedef 1402]
type    = A
movetype= A
physics = N
anim = 1402
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4

[State 21241]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = 5;-Root,var(30)

[State 1402]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1402]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%7



[State 1402]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1402]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1402]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1402]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1402]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1402]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1402]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1402]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1402]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1402]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1402]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1402]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1402]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1401+var(2)


[State 1402]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1402
elem = 1

[State 1402]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1402
elem = 3

[State 1402]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Grab To Enegy Drain

[Statedef 1403]
type    = A
movetype= A
physics = N
anim = 1403
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1403]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1403]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%7


[State 1403]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1403]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1403]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1403]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1403]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1403]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1403]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1403]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1403]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1403]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1403]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1403]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1403]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1401+var(2)


[State 1403]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1403
elem = 1

[State 1403]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1403
elem = 3

[State 1403]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Throw Horizontal Stance

[Statedef 1404]
type    = A
movetype= A
physics = N
anim = 1404
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1404]
type = Turn
trigger1 = AnimElem = 4


[State 1404]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1404, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Ground Slam Back Stance

[Statedef 1405]
type    = A
movetype= A
physics = N
anim = 1405
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1405]
type = Turn
trigger1 = AnimElem = 4


[State 1405]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1405, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0
;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Throw Back Up Stance

[Statedef 1406]
type    = A
movetype= A
physics = N
anim = 1406
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1406]
type = Turn
trigger1 = AnimElem = 4


[State 1406]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1406, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Throw Upward Stance

[Statedef 1407]
type    = A
movetype= A
physics = N
anim = 1407
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1407]
type = Turn
trigger1 = AnimElem = 4


[State 1407]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1407, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0

;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Throw Up Forward Stance

[Statedef 1408]
type    = A
movetype= A
physics = N
anim = 1408
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1408]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,0

[State 1408, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Ground Slam Forward Stance

[Statedef 1409]
type    = A
movetype= A
physics = N
anim = 1409
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1409]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,0

[State 1409, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Horizontal Thrown Down  Stance

[Statedef 1410]
type    = A
movetype= A
physics = N
anim = 1410
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 1410]
type = Turn
trigger1 = AnimElem = 4


[State 1410]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1410, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
;Carbonadium Coil Air Diag Up Stance
[Statedef 1450]
type    = A
movetype= A
physics = N
juggle  = 3
poweradd= 40
ctrl = 0
velset = 0,0
anim = 1450
sprpriority = 4


[State 1450, 1]
type = PlaySnd
trigger1 = Time = 16
value = 1240,0

[State 1450]
type = Helper
trigger1 = Time = 17
stateno = 21450
id = 21450

[State 1450, 1]
type = VarSet
trigger1 = Time = 0
var(1) = 0


[State 1450]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1450]
type = VarAdd
trigger1 = AnimElem = 7, = 5
var(0) = 1

[State 1450, 1]
type = VarSet
triggerall = Time = [4,25]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 2


[State 1450, 1]
type = VarSet
triggerall = Time = [26,55]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 4


[State 1450]
type = ChangeAnim
trigger1 = var(1) = 2
trigger1 = Time > 22
value = 1450
elem = 6
persistent = 0

[State 1450]
type = ChangeAnim
trigger1 = var(1) = 4
value = 1450
elem = 6
persistent = 0

[State 1450]
type = ChangeState
trigger1 = NumHelper(21450)
trigger1 = Helper(21450),MoveHit
value = 1451


[State 1450]
type = ChangeAnim
trigger1 = var(1) = 0
trigger1 = Time < 53
trigger1 = AnimElem = 6
value = 1450
elem = 4

[State 1450]
type = ChangeAnim
trigger1 = AnimElem = 7, = 5
value = 1450
elem = 6


[State 1450]
type = VelAdd
trigger1 = Time > 27
y = 0.05

[State 1450]
type = ChangeState
trigger1 = var(0) = 2
trigger2 = var(0) = 1
trigger2 = var(1) = 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Grab

[Statedef 1451]
type    = A
movetype= A
physics = N
anim = 1451
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1451]
type = Width
trigger1 = Time = 0
edge = 150,0

[State 1451]
type = VarAdd
trigger1 = Time = 0
var(42) = 1

[State 1451]
type = VarSet
trigger1 = Time = 0
var(2) = 0



;[State 1451]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%7


;[State 1451]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = power < 1000
;var(2) = 2

;[State 1451]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = life < var(34)
;var(2) = 1


[State 1451]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1451]
type = VarAdd
trigger1 = AnimElem = 5, = 5
var(0) = 1

[State 1451]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1451]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1451]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1451]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1451]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1451]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1451]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1451]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1451]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1451]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1451]
type = ChangeState
trigger1 = var(2)
value = 1451+var(2)



[State 1451]
type = ChangeAnim
trigger1 = Time < 43
trigger1 = AnimElem = 4
value = 1451
elem = 2

[State 1451]
type = ChangeAnim
trigger1 = AnimElem = 5, = 5
value = 1451
elem = 4

[State 1451]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Grab To Death Factor

[Statedef 1452]
type    = A
movetype= A
physics = N
anim = 1452
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4

[State 21241]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = 5;-Root,var(30)

[State 1452]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1452]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%7


[State 1452]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1452]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1452]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1452]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1452]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1452]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1452]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1452]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1452]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1452]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1452]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1452]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1452]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1451+var(2)


[State 1452]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1452
elem = 1

[State 1452]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1452
elem = 3

[State 1452]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Grab To Enegy Drain

[Statedef 1453]
type    = A
movetype= A
physics = N
anim = 1453
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1453]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1453]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%7



[State 1453]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1453]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1453]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1453]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1453]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1453]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1453]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1453]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1453]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1453]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1453]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1453]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1453]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1451+var(2)


[State 1453]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1453
elem = 1

[State 1453]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1453
elem = 3

[State 1453]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Throw Horizontal Stance

[Statedef 1454]
type    = A
movetype= A
physics = N
anim = 1454
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1454]
type = Turn
trigger1 = AnimElem = 4


[State 1454]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1454, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Ground Slam Back Stance

[Statedef 1455]
type    = A
movetype= A
physics = N
anim = 1455
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1455]
type = Turn
trigger1 = AnimElem = 4


[State 1455]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1455, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0
;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Throw Back Up Stance

[Statedef 1456]
type    = A
movetype= A
physics = N
anim = 1456
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1456]
type = Turn
trigger1 = AnimElem = 4


[State 1456]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1456, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Throw Upward Stance

[Statedef 1457]
type    = A
movetype= A
physics = N
anim = 1457
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1457]
type = Turn
trigger1 = AnimElem = 4


[State 1457]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1457, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0

;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Throw Up Forward Stance

[Statedef 1458]
type    = A
movetype= A
physics = N
anim = 1458
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1458]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,0

[State 1458, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Ground Slam Forward Stance

[Statedef 1459]
type    = A
movetype= A
physics = N
anim = 1459
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1459]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,0

[State 1459, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Up Thrown Down  Stance

[Statedef 1460]
type    = A
movetype= A
physics = N
anim = 1460
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 1460]
type = Turn
trigger1 = AnimElem = 4


[State 1460]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1460, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
;Carbonadium Coil Air Up Stance
[Statedef 1500]
type    = A
movetype= A
physics = N
juggle  = 3
poweradd= 40
ctrl = 0
velset = 0,0
anim = 1500
sprpriority = 4


[State 1500, 1]
type = PlaySnd
trigger1 = Time = 16
value = 1240,0

[State 1500]
type = Helper
trigger1 = Time = 17
stateno = 21500
id = 21500

[State 1500, 1]
type = VarSet
trigger1 = Time = 0
var(1) = 0


[State 1500]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1500]
type = VarAdd
trigger1 = AnimElem = 7, = 5
var(0) = 1

[State 1500, 1]
type = VarSet
triggerall = Time = [4,25]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 2


[State 1500, 1]
type = VarSet
triggerall = Time = [26,55]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 4


[State 1500]
type = ChangeAnim
trigger1 = var(1) = 2
trigger1 = Time > 22
value = 1500
elem = 6
persistent = 0

[State 1500]
type = ChangeAnim
trigger1 = var(1) = 4
value = 1500
elem = 6
persistent = 0

[State 1500]
type = ChangeState
trigger1 = NumHelper(21500)
trigger1 = Helper(21500),MoveHit
value = 1501


[State 1500]
type = ChangeAnim
trigger1 = var(1) = 0
trigger1 = Time < 53
trigger1 = AnimElem = 6
value = 1500
elem = 4

[State 1500]
type = ChangeAnim
trigger1 = AnimElem = 7, = 5
value = 1500
elem = 6


[State 1500]
type = VelAdd
trigger1 = Time > 27
y = 0.05

[State 1500]
type = ChangeState
trigger1 = var(0) = 2
trigger2 = var(0) = 1
trigger2 = var(1) = 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Grab

[Statedef 1501]
type    = A
movetype= A
physics = N
anim = 1501
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1501]
type = Width
trigger1 = Time = 0
edge = 150,0

[State 1501]
type = VarSet
trigger1 = Time = 0
var(2) = 0


;[State 1501]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%7


;[State 1501]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = power < 1000
;var(2) = 2

;[State 1501]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = life < var(34)
;var(2) = 1

[State 1501]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1501]
type = VarAdd
trigger1 = AnimElem = 5, = 5
var(0) = 1

[State 1501]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1501]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1501]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1501]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1501]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1501]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1501]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1501]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1501]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1501]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1501]
type = ChangeState
trigger1 = var(2)
value = 1501+var(2)



[State 1501]
type = ChangeAnim
trigger1 = Time < 43
trigger1 = AnimElem = 4
value = 1501
elem = 2

[State 1501]
type = ChangeAnim
trigger1 = AnimElem = 5, = 5
value = 1501
elem = 4

[State 1501]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Grab To Death Factor

[Statedef 1502]
type    = A
movetype= A
physics = N
anim = 1502
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4

[State 21241]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = 5;-Root,var(30)

[State 1502]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1502]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%7



[State 1502]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1502]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1502]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1502]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1502]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1502]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1502]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1502]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1502]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1502]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1502]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1502]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1502]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1501+var(2)


[State 1502]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1502
elem = 1

[State 1502]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1502
elem = 3

[State 1502]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Grab To Enegy Drain

[Statedef 1503]
type    = A
movetype= A
physics = N
anim = 1503
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1503]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1503]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%7

[State 1503]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1503]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1503]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1503]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1503]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1503]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1503]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1503]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1503]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1503]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1503]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1503]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1503]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1501+var(2)


[State 1503]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1503
elem = 1

[State 1503]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1503
elem = 3

[State 1503]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Throw Horizontal Stance

[Statedef 1504]
type    = A
movetype= A
physics = N
anim = 1504
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1504]
type = Turn
trigger1 = AnimElem = 4


[State 1504]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1504, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Ground Slam Back Stance

[Statedef 1505]
type    = A
movetype= A
physics = N
anim = 1505
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1505]
type = Turn
trigger1 = AnimElem = 4


[State 1505]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1505, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0
;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Throw Back Up Stance

[Statedef 1506]
type    = A
movetype= A
physics = N
anim = 1506
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1506]
type = Turn
trigger1 = AnimElem = 4


[State 1506]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1506, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Throw Upward Stance

[Statedef 1507]
type    = A
movetype= A
physics = N
anim = 1507
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1507]
type = Turn
trigger1 = AnimElem = 4


[State 1507]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1507, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0

;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Throw Up Forward Stance

[Statedef 1508]
type    = A
movetype= A
physics = N
anim = 1508
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1508]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,0

[State 1508, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Ground Slam Forward Stance

[Statedef 1509]
type    = A
movetype= A
physics = N
anim = 1509
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 1509]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,0

[State 1509, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Up Thrown Down  Stance

[Statedef 1510]
type    = A
movetype= A
physics = N
anim = 1510
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 1510]
type = Turn
trigger1 = AnimElem = 4


[State 1510]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1510, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
;Carbonadium Coil Air Diag Down Stance
[Statedef 1550]
type    = A
movetype= A
physics = N
juggle  = 3
poweradd= 40
ctrl = 0
velset = 0,0
anim = 1550
sprpriority = 4


[State 1550, 1]
type = PlaySnd
trigger1 = Time = 16
value = 1240,0

[State 1550]
type = Helper
trigger1 = Time = 17
stateno = 21550
id = 21550

[State 1550, 1]
type = VarSet
trigger1 = Time = 0
var(1) = 0


[State 1550]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1550]
type = VarAdd
trigger1 = AnimElem = 7, = 5
var(0) = 1

[State 1550, 1]
type = VarSet
triggerall = Time = [4,25]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 2


[State 1550, 1]
type = VarSet
triggerall = Time = [26,55]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 4


[State 1550]
type = ChangeAnim
trigger1 = var(1) = 2
trigger1 = Time > 22
value = 1550
elem = 6
persistent = 0

[State 1550]
type = ChangeAnim
trigger1 = var(1) = 4
value = 1550
elem = 6
persistent = 0

[State 1550]
type = ChangeState
trigger1 = NumHelper(21550)
trigger1 = Helper(21550),MoveHit
value = 1551


[State 1550]
type = ChangeAnim
trigger1 = var(1) = 0
trigger1 = Time < 53
trigger1 = AnimElem = 6
value = 1550
elem = 4

[State 1550]
type = ChangeAnim
trigger1 = AnimElem = 7, = 5
value = 1550
elem = 6


[State 1550]
type = VelAdd
trigger1 = Time > 27
y = 0.05

[State 1550]
type = ChangeState
trigger1 = var(0) = 2
trigger2 = var(0) = 1
trigger2 = var(1) = 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Grab

[Statedef 1551]
type    = A
movetype= A
physics = N
anim = 1551
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1551]
type = Width
trigger1 = Time = 0
edge = 150,0

[State 1551]
type = VarAdd
trigger1 = Time = 0
var(42) = 1


[State 1551]
type = VarSet
trigger1 = Time = 0
var(2) = 0


;[State 1551]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%7


;[State 1551]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = power < 1000
;var(2) = 2

;[State 1551]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = life < var(34)
;var(2) = 1

[State 1551]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1551]
type = VarAdd
trigger1 = AnimElem = 5, = 5
var(0) = 1

[State 1551]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1551]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1551]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1551]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1551]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1551]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1551]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1551]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1551]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1551]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1551]
type = ChangeState
trigger1 = var(2)
value = 1551+var(2)



[State 1551]
type = ChangeAnim
trigger1 = Time < 43
trigger1 = AnimElem = 4
value = 1551
elem = 2

[State 1551]
type = ChangeAnim
trigger1 = AnimElem = 5, = 5
value = 1551
elem = 4

[State 1551]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Grab To Death Factor

[Statedef 1552]
type    = A
movetype= A
physics = N
anim = 1552
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4

[State 21241]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = 5;-Root,var(30)

[State 1552]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1552]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%7


[State 1552]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1552]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1552]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1552]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1552]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1552]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1552]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1552]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1552]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1552]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1552]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1552]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1552]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1551+var(2)


[State 1552]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1552
elem = 1

[State 1552]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1552
elem = 3

[State 1552]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Grab To Enegy Drain

[Statedef 1553]
type    = A
movetype= A
physics = N
anim = 1553
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1553]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1553]
;type = VarSet
;trigger1 = Time = 50
;trigger1 = var(59)
;var(2) = 3+random%7

[State 1553]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1553]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1553]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1553]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1553]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1553]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1553]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1553]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1553]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1553]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1553]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1553]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1553]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1551+var(2)


[State 1553]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1553
elem = 1

[State 1553]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1553
elem = 3

[State 1553]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Throw Horizontal Stance

[Statedef 1554]
type    = A
movetype= A
physics = N
anim = 1554
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1554]
type = Turn
trigger1 = AnimElem = 4


[State 1554]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1554, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Ground Slam Back Stance

[Statedef 1555]
type    = A
movetype= A
physics = N
anim = 1555
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1555]
type = Turn
trigger1 = AnimElem = 4


[State 1555]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1555, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0
;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Throw Back Up Stance

[Statedef 1556]
type    = A
movetype= A
physics = N
anim = 1556
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1556]
type = Turn
trigger1 = AnimElem = 4


[State 1556]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1556, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Throw Upward Stance

[Statedef 1557]
type    = A
movetype= A
physics = N
anim = 1557
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1557]
type = Turn
trigger1 = AnimElem = 4


[State 1557]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1557, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0

;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Throw Up Forward Stance

[Statedef 1558]
type    = A
movetype= A
physics = N
anim = 1558
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1558]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,0

[State 1558, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Ground Slam Forward Stance

[Statedef 1559]
type    = A
movetype= A
physics = N
anim = 1559
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 1559]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,0

[State 1559, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Diag Down Thrown Down Stance

[Statedef 1560]
type    = A
movetype= A
physics = N
anim = 1560
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 1560]
type = Turn
trigger1 = AnimElem = 4


[State 1560]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1560, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
;Carbonadium Coil Air Down Stance
[Statedef 1600]
type    = A
movetype= A
physics = N
juggle  = 3
poweradd= 40
ctrl = 0
velset = 0,0
anim = 1600
sprpriority = 4


[State 1600, 1]
type = PlaySnd
trigger1 = Time = 16
value = 1240,0

[State 1600]
type = Helper
trigger1 = Time = 17
stateno = 21600
id = 21600

[State 1600, 1]
type = VarSet
trigger1 = Time = 0
var(1) = 0


[State 1600]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1600]
type = VarAdd
trigger1 = AnimElem = 7, = 5
var(0) = 1

[State 1600, 1]
type = VarSet
triggerall = Time = [4,25]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 2


[State 1600, 1]
type = VarSet
triggerall = Time = [26,55]
trigger1 = command = "x" || command = "y" || command = "z"
var(1) = 4


[State 1600]
type = ChangeAnim
trigger1 = var(1) = 2
trigger1 = Time > 22
value = 1600
elem = 6
persistent = 0

[State 1600]
type = ChangeAnim
trigger1 = var(1) = 4
value = 1600
elem = 6
persistent = 0

[State 1600]
type = ChangeState
trigger1 = NumHelper(21600)
trigger1 = Helper(21600),MoveHit
value = 1601


[State 1600]
type = ChangeAnim
trigger1 = var(1) = 0
trigger1 = Time < 53
trigger1 = AnimElem = 6
value = 1600
elem = 4

[State 1600]
type = ChangeAnim
trigger1 = AnimElem = 7, = 5
value = 1600
elem = 6


[State 1600]
type = VelAdd
trigger1 = Time > 27
y = 0.05

[State 1600]
type = ChangeState
trigger1 = var(0) = 2
trigger2 = var(0) = 1
trigger2 = var(1) = 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Grab

[Statedef 1601]
type    = A
movetype= A
physics = N
anim = 1601
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1601]
type = Width
trigger1 = Time = 0
edge = 150,0

[State 1601]
type = VarAdd
trigger1 = Time = 0
var(42) = 1

[State 1601]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 1601]
type = PosAdd
trigger1 = Time = 0
y = -50


[State 1601]
type = VarSet
trigger1 = Time = 0
var(2) = 0


;[State 1601]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%7


;[State 1601]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = power < 1000
;var(2) = 2

;[State 1601]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;trigger1 = life < var(34)
;var(2) = 1

[State 1601]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1601]
type = VarAdd
trigger1 = AnimElem = 5, = 5
var(0) = 1

[State 1601]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1601]
type = VarSet
triggerall = Time = [4,40]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1601]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1601]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1601]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1601]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1601]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1601]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1601]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1601]
type = VarSet
triggerall = Time = [8,40]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1601]
type = ChangeState
trigger1 = var(2)
value = 1601+var(2)



[State 1601]
type = ChangeAnim
trigger1 = Time < 43
trigger1 = AnimElem = 4
value = 1601
elem = 2

[State 1601]
type = ChangeAnim
trigger1 = AnimElem = 5, = 5
value = 1601
elem = 4

[State 1601]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Grab To Death Factor

[Statedef 1602]
type    = A
movetype= A
physics = N
anim = 1602
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4

[State 21241]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = 5;-Root,var(30)

[State 1602]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 1602]
type = PosAdd
trigger1 = Time = 0
y = 0

[State 1602]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1602]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%7


[State 1602]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1602]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1602]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1602]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1602]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1602]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1602]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1602]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1602]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1602]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1602]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1602]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1602]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1601+var(2)


[State 1602]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1602
elem = 1

[State 1602]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1602
elem = 3

[State 1602]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Grab To Enegy Drain

[Statedef 1603]
type    = A
movetype= A
physics = N
anim = 1603
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1603]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 1603]
type = PosAdd
trigger1 = Time = 0
y = 0

[State 1603]
type = VarSet
trigger1 = Time = 1
var(2) = 0


;[State 1603]
;type = VarSet
;trigger1 = Time = 1
;trigger1 = var(59)
;var(2) = 3+random%7

[State 1603]
type = VarSet
trigger1 = Time = 0
var(0) = 0

[State 1603]
type = VarAdd
trigger1 = AnimElem = 4, = 5
var(0) = 1

[State 1603]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "x" || command = "y" || command = "z"
var(2) = 1


[State 1603]
type = VarSet
triggerall = Time = [4,60]
trigger1 = command = "a" || command = "b" || command = "c"
var(2) = 2


[State 1603]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 5


[State 1603]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 7


[State 1603]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3


[State 1603]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1603]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdup"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 6


[State 1603]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 9



[State 1603]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3



[State 1603]
type = VarSet
triggerall = Time = [4,60]
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c"
var(2) = 3




[State 1603]
type = ChangeState
trigger1 = var(2) = [3,9]
value = 1601+var(2)


[State 1603]
type = ChangeAnim
trigger1 = Time < 60
trigger1 = AnimElem = 3
value = 1603
elem = 1

[State 1603]
type = ChangeAnim
trigger1 = AnimElem = 4, = 5
value = 1603
elem = 3

[State 1603]
type = ChangeState
trigger1 = var(0) >= 2
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Throw Horizontal Stance

[Statedef 1604]
type    = A
movetype= A
physics = N
anim = 1604
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1604]
type = Turn
trigger1 = AnimElem = 4


[State 1604]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1604, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Ground Slam Back Stance

[Statedef 1605]
type    = A
movetype= A
physics = N
anim = 1605
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1605]
type = Turn
trigger1 = AnimElem = 4


[State 1605]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1605, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0
;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Throw Back Up Stance

[Statedef 1606]
type    = A
movetype= A
physics = N
anim = 1606
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1606]
type = Turn
trigger1 = AnimElem = 4


[State 1606]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1606, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0



;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Throw Upward Stance

[Statedef 1607]
type    = A
movetype= A
physics = N
anim = 1607
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 4


[State 1607]
type = Turn
trigger1 = AnimElem = 4


[State 1607]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1607, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0

;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Throw Up Forward Stance

[Statedef 1608]
type    = A
movetype= A
physics = N
anim = 1608
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1608]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,0

[State 1608, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Ground Slam Forward Stance

[Statedef 1609]
type    = A
movetype= A
physics = N
anim = 1609
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 1609]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,0

[State 1609, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0


;---------------------------------------------------------------------------
; Carbonadium Coil Air Down Thrown Down Stance

[Statedef 1610]
type    = A
movetype= A
physics = N
anim = 1610
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 1610]
type = Turn
trigger1 = AnimElem = 4


[State 1610]
type = PlaySnd
trigger1 = AnimElem = 7
value = 200,0

[State 1610, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1390
ctrl = 0

;tentaculos
;------------------------------------------------------------------------------------------------------------
;Horizontal Coil
[Statedef 21240]
type = S
movetype = A
physics = N
anim = 21240
ctrl = 0
sprpriority = 1
;velset = 0,0


[State 21240]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = Root,var(30)
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 0,0
sparkxy = -20,-70
hitsound   = S1,7
guardsound = S4,0
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,0,0)
p1stateno = 21241
p2stateno = 21261
id = 21241



[State 21240, 1]
type = ParentVarSet
triggerall = Parent,Time = [7,35]
trigger1 = MoveGuarded
var(1) = 2
persistent = 0

[State 21240, 1]
type = ParentVarSet
triggerall = Parent,Time = [36,63]
trigger1 = MoveGuarded
var(1) = 4
persistent = 0

[State 21240]
type = ChangeAnim
trigger1 = parent,var(1) = 2
trigger1 = parent,Time > 31
value = 21240
elem = 38
persistent = 0

[State 21240]
type = ChangeAnim
trigger1 = parent,var(1) = 4
value = 21240
elem = 35
persistent = 0

[State 21240]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Grab

[Statedef 21241]
type    = S
movetype= A
physics = N
anim = 21241
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21241]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1241

[State 21241]
type = BindToParent
trigger1 = Time = 0



[State 21241]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = P2BodyDist X = [0,120]
value = 21241


[State 21241]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = P2BodyDist X = [121,140]
value = 21241

[State 21241]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = P2BodyDist X = [141,170]
value = 21242

[State 21241]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = P2BodyDist X >= 171
value = 21243


[State 21241]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 21241]
type = null;NotHitBy
trigger1 = 1
value = SCA

[State 21241, Bind 1]
type = TargetBind
trigger1 = Anim = 21241
pos = 170,-60

[State 21241, Bind 1]
type = TargetBind
trigger1 = Anim = 21242
pos = 210,-60

[State 21241, Bind 1]
type = TargetBind
trigger1 = Anim = 21243
pos = 240,-60


[State 21241]
type = Helper
trigger1 = Time = 4
stateno = 30004
postype = p2
pos = 10,0


[State 21241]
type = TargetState
trigger1 = Parent,var(2) = [1,2]
value = 21261+Parent,var(2)
ctrl = 0

[State 21241]
type = ChangeState
trigger1 = Parent,var(2) = [1,2]
value = 21241+Parent,var(2)


[State 21241]
type = TargetState
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31324
ctrl = 0

[State 21241]
type = ChangeState
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31304


[State 21241]
type = TargetState
trigger1 = Parent,var(2) = [5,6]
value = 31374
ctrl = 0

[State 21241]
type = ChangeState
trigger1 = Parent,var(2) = [5,6]
value = 31350

[State 21241]
type = TargetState
trigger1 = Parent,var(2) = [7,8]
value = 32020+(Parent,var(2)-7)*50
ctrl = 0

[State 21241]
type = ChangeState
trigger1 = Parent,var(2) = [7,8]
value = 32000+(Parent,var(2)-7)*50

[State 21241]
type = TargetState
trigger1 = Parent,AnimElem = 4, = 1
value = 21269
ctrl = 0


[State 21241]
type = ChangeState
trigger1 = Parent,AnimElem = 4, = 1
value = 21249


[State 21241, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A



;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Grab To Death Factor

[Statedef 21242]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21242]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1242


[State 21242, Bind 1]
type = TargetBind
trigger1 = Anim = 21241
pos = 170,-60

[State 21242, Bind 1]
type = TargetBind
trigger1 = Anim = 21242
pos = 210,-60

[State 21242, Bind 1]
type = TargetBind
trigger1 = Anim = 21243
pos = 240,-60


[State 21242]
type = Helper
trigger1 = Time = 1
stateno = 30001

[State 21242]
type = Helper
trigger1 = Time = 2
trigger1 = Anim = 21243
stateno = 30000


[State 21242]
type = Helper
trigger1 = Time = 12
trigger1 = Anim = 21243
stateno = 30003
pos = 20,0

[State 21242]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,1

[State 21242]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2
channel = 1

[State 21242]
type = TargetLifeAdd
trigger1 = Time <= 60
trigger1 = Time%8 = 0
value = -10;Root,var(30)

[State 21242]
type = TargetState
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31324
ctrl = 0

[State 21242]
type = ChangeState
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31304


[State 21242]
type = TargetState
trigger1 = Parent,var(2) = [5,6]
value = 31374
ctrl = 0

[State 21242]
type = ChangeState
trigger1 = Parent,var(2) = [5,6]
value = 31350


[State 21242]
type = TargetState
trigger1 = Parent,var(2) = [7,8]
value = 32020+(Parent,var(2)-7)*50
ctrl = 0

[State 21242]
type = ChangeState
trigger1 = Parent,var(2) = [7,8]
value = 32000+(Parent,var(2)-7)*50

[State 21242]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21269
ctrl = 0

[State 21242]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21249

[State 21242, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Grab To Energy Drain

[Statedef 21243]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21243]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1243


[State 21243, Bind 1]
type = TargetBind
trigger1 = Anim = 21241
pos = 170,-60

[State 21243, Bind 1]
type = TargetBind
trigger1 = Anim = 21242
pos = 210,-60

[State 21243, Bind 1]
type = TargetBind
trigger1 = Anim = 21243
pos = 240,-60


[State 21243]
type = Helper
trigger1 = Time = 1
stateno = 30002

[State 21243]
type = Helper
trigger1 = Time = 2
stateno = 30000

[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = Time <= 60
trigger1 = Time%4 = 0
value = -15

[State 21243]
type = Helper
trigger1 = Time = 12
trigger1 = Anim = 21243
stateno = 30003
pos = 20,0


[State 21243]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,3

[State 21243]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2


[State 21243]
type = PowerAdd
trigger1 = Time <= 60
trigger1 = Time%6 = 0
value = 50


[State 21243]
type = TargetState
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31324
ctrl = 0

[State 21243]
type = ChangeState
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31304


[State 21243]
type = TargetState
trigger1 = Parent,var(2) = [5,6]
value = 31374
ctrl = 0

[State 21243]
type = ChangeState
trigger1 = Parent,var(2) = [5,6]
value = 31350


[State 21243]
type = TargetState
trigger1 = Parent,var(2) = [7,8]
value = 32020+(Parent,var(2)-7)*50
ctrl = 0

[State 21243]
type = ChangeState
trigger1 = Parent,var(2) = [7,8]
value = 32000+(Parent,var(2)-7)*50

[State 21243]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21269
ctrl = 0

[State 21243]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21249

[State 21243, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A



;---------------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Horizontal Helper End
[Statedef 21249]
type    = S
movetype= I
physics = N
;anim = 21249
;poweradd =
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21249]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim = 21241
value = 21249
elem = 5

[State 21249]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim = 21242
value = 21249
elem = 3

[State 21249]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim = 21243
value = 21249
elem = 1

[State 21249]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,stateno != [1240,1243]

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 21261]
type    = A
movetype= H
physics = N
velset = 0,0


[State 21261]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 21261, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21261

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = -10
kill = 1
absolute = 1

[State 21261, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21261, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal To Death Factor

[Statedef 21262]
type    = A
movetype= H
physics = N
velset = 0,0


[State 21262]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0


[State 21262, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21262

[State 21262, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = 64,-16,64

[State 21262, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = 80,17,80

[State 21262, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21262, 2]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal To Energy Drain

[Statedef 21263]
type    = A
movetype= H
physics = N
velset = 0,0


[State 21263]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 21263, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21263


[State 21263, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = -16,64,-16

[State 21263, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = -16,64,64

[State 21263, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21263, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 21269]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 40


[State 21269]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 21269, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21261

[State 21269, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.4


[State 21269, 4]
type = ChangeState
trigger1 = Time = 7
value = 21330

[State 21269, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Hit ground



;------------------------------------------------------------------------------------------------------------
;Diag Up Coil
[Statedef 21300]
type = S
movetype = A
physics = N
anim = 21300
ctrl = 0
sprpriority = 1
;velset = 0,0


[State 21300]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = Root,var(30)
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 0,0
sparkxy = -20,-70+floor(P2Dist Y)
hitsound   = S1,7
guardsound = S4,0
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,0,0)
p1stateno = 21301
p2stateno = 21321
id = 21241



[State 21300, 1]
type = ParentVarSet
triggerall = Parent,Time = [7,35]
trigger1 = MoveGuarded
var(1) = 2
persistent = 0

[State 21300, 1]
type = ParentVarSet
triggerall = Parent,Time = [36,63]
trigger1 = MoveGuarded
var(1) = 4
persistent = 0

[State 21300]
type = ChangeAnim
trigger1 = parent,var(1) = 2
trigger1 = parent,Time > 31
value = 21300
elem = 33
persistent = 0

[State 21300]
type = ChangeAnim
trigger1 = parent,var(1) = 4
value = 21300
elem = 30
persistent = 0

[State 21300]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Grab

[Statedef 21301]
type    = S
movetype= A
physics = N
anim = 21301
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21301]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1241

[State 21301]
type = BindToParent
trigger1 = Time = 0


[State 21301]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 21301]
type = null;NotHitBy
trigger1 = 1
value = SCA

[State 21301, Bind 1]
type = TargetBind
trigger1 = 1
pos = 180,-157


[State 21301]
type = Helper
trigger1 = Time = 2
stateno = 30014


[State 21301]
type = TargetState
trigger1 = Parent,var(2) = [1,2]
value = 21321+Parent,var(2)
ctrl = 0

[State 21301]
type = ChangeState
trigger1 = Parent,var(2) = [1,2]
value = 21301+Parent,var(2)


[State 21301]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 33020
ctrl = 0

[State 21301]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 33000



[State 21301]
type = TargetState
trigger1 = Parent,AnimElem = 4, = 1
value = 21329
ctrl = 0

[State 21301]
type = ChangeState
trigger1 = Parent,AnimElem = 4, = 1
value = 21319


[State 21301, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Grab To Death Factor

[Statedef 21302]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21242]
type = TargetLifeAdd
trigger1 = Time <= 60
trigger1 = Time%8 = 0
value = -10;Root,var(30)

[State 21302]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1242


[State 21302, Bind 1]
type = TargetBind
trigger1 = 1
pos = 186,-164


[State 21302]
type = Helper
trigger1 = Time = 1
stateno = 30011

[State 21302]
type = Helper
trigger1 = Time = 2
stateno = 30000


[State 21302]
type = Helper
trigger1 = Time = 12
stateno = 30013
pos = -4,0

[State 21302]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,1

[State 21302]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2
channel = 1

[State 21302]
type = TargetLifeAdd
trigger1 = Time <= 60
trigger1 = Time%8 = 0
value = -Root,var(30)

[State 21302]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = -Root,var(30)


[State 21302]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 33020
ctrl = 0

[State 21302]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 33000



[State 21302]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21329
ctrl = 0

[State 21302]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21319

[State 21302, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Grab To Energy Drain

[Statedef 21303]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = Time <= 60
trigger1 = Time%4 = 0
value = -15

[State 21303]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1243


[State 21303, Bind 1]
type = TargetBind
trigger1 = 1
pos = 186,-164



[State 21303]
type = Helper
trigger1 = Time = 1
stateno = 30012

[State 21303]
type = Helper
trigger1 = Time = 2
stateno = 30000


[State 21303]
type = Helper
trigger1 = Time = 12
stateno = 30013
pos = -4,0


[State 21303]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,3

[State 21303]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2


[State 21303]
type = PowerAdd
trigger1 = Time <= 60
trigger1 = Time%6 = 0
value = 50



[State 21303]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 33020
ctrl = 0

[State 21303]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 33000

[State 21303]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21329
ctrl = 0

[State 21303]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21319

[State 21303, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Diag Up Helper End
[Statedef 21319]
type    = S
movetype= I
physics = N
anim = 21319
;poweradd =
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 21319]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,stateno != [1300,1303]

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Up

[Statedef 21321]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21321]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 21321, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21321

[State 21321, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21321, 3]
type = DestroySelf
trigger1 = ishelper



;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Up To Death Factor

[Statedef 21322]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21322]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0


[State 21322, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21322

[State 21322, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = 64,-16,64

[State 21322, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = 80,17,80

[State 21322, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 21322, 2]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Up To Energy Drain

[Statedef 21323]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21323]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 21323, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21323


[State 21323, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = -16,64,-16

[State 21323, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = -16,64,64

[State 21323, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21323, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Up

[Statedef 21329]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 40

[State 21329, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21321

[State 21329]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 21329, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.4


[State 21329, 4]
type = ChangeState
trigger1 = Time = 7
value = 21330

[State 21329, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Hit ground


;---------------------------------------------------------------------------
; auto recover
[Statedef 21330]
type    = A
movetype= H
physics = N


[State 21330]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 21330, 1]
type = SelfState
trigger1 = !Alive
value = 5050

[State 21330, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 21330, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 21330, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 21330, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)


[State 21330, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND



;------------------------------------------------------------------------------------------------------------
;Up Coil
[Statedef 21350]
type = S
movetype = A
physics = N
anim = 21350
ctrl = 0
sprpriority = 1
;velset = 0,0


[State 21350]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = Root,var(30)
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 0,0
sparkxy = -20,-70+floor(P2Dist Y)
hitsound   = S1,7
guardsound = S4,0
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,0,0)
p1stateno = 21351
p2stateno = 21371
id = 21241



[State 21350, 1]
type = ParentVarSet
triggerall = Parent,Time = [7,35]
trigger1 = MoveGuarded
var(1) = 2
persistent = 0

[State 21350, 1]
type = ParentVarSet
triggerall = Parent,Time = [36,63]
trigger1 = MoveGuarded
var(1) = 4
persistent = 0

[State 21350]
type = ChangeAnim
trigger1 = parent,var(1) = 2
trigger1 = parent,Time > 31
value = 21350
elem = 37
persistent = 0

[State 21350]
type = ChangeAnim
trigger1 = parent,var(1) = 4
value = 21350
elem = 35
persistent = 0

[State 21350]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType != A



;---------------------------------------------------------------------------
; Carbonadium Coil Up Grab

[Statedef 21351]
type    = S
movetype= A
physics = N
anim = 21351
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21351]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1241

[State 21351]
type = BindToParent
trigger1 = Time = 0


[State 21351]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 21351]
type = null;NotHitBy
trigger1 = 1
value = SCA

[State 21351, Bind 1]
type = TargetBind
trigger1 = 1
pos = 54,-235

[State 21351]
type = Helper
trigger1 = Time = 0
stateno = 21355
helpertype = player

[State 21351]
type = Helper
trigger1 = Time = 2
stateno = 30024


[State 21351]
type = TargetState
trigger1 = Parent,var(2) = [1,2]
value = 21371+Parent,var(2)
ctrl = 0

[State 21351]
type = ChangeState
trigger1 = Parent,var(2) = [1,2]
value = 21351+Parent,var(2)


[State 21351]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 32170
ctrl = 0

[State 21351]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 32150



[State 21351]
type = TargetState
trigger1 = Parent,AnimElem = 4, = 1
value = 21379
ctrl = 0

[State 21351]
type = ChangeState
trigger1 = Parent,AnimElem = 4, = 1
value = 21369


[State 21351, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Up Grab To Death Factor

[Statedef 21352]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21242]
type = TargetLifeAdd
trigger1 = Time <= 60
trigger1 = Time%8 = 0
value = -10;Root,var(30)

[State 21352]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1242


[State 21352, Bind 1]
type = TargetBind
trigger1 = 1
pos = 54,-235


[State 21352]
type = Helper
trigger1 = Time = 1
stateno = 30021

[State 21352]
type = Helper
trigger1 = Time = 2
stateno = 30000


[State 21352]
type = Helper
trigger1 = Time = 12
stateno = 30023
pos = 0,20

[State 21352]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,1

[State 21352]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2
channel = 1

[State 21352]
type = TargetLifeAdd
trigger1 = Time <= 60
trigger1 = Time%8 = 0
value = -Root,var(30)

[State 21352]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = -Root,var(30)


[State 21352]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 33020
ctrl = 0

[State 21352]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 33000



[State 21352]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21379
ctrl = 0

[State 21352]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21369

[State 21352, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Up Grab To Energy Drain

[Statedef 21353]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = Time <= 60
trigger1 = Time%4 = 0
value = -15

[State 21353]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1243


[State 21353, Bind 1]
type = TargetBind
trigger1 = 1
pos = 54,-235



[State 21353]
type = Helper
trigger1 = Time = 1
stateno = 30022

[State 21353]
type = Helper
trigger1 = Time = 2
stateno = 30000


[State 21353]
type = Helper
trigger1 = Time = 12
stateno = 30023
pos = 0,20


[State 21353]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,3

[State 21353]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2


[State 21353]
type = PowerAdd
trigger1 = Time <= 60
trigger1 = Time%6 = 0
value = 50



[State 21353]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 33020
ctrl = 0

[State 21353]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 33000

[State 21353]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21379
ctrl = 0

[State 21353]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21369

[State 21353, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Camera Push Up
[Statedef 21355]
type = S
movetype = I
physics =N
anim = 9800
ctrl = 0
sprpriority = 0
velset = 0,-17

[State 21355]
type = VelSet
trigger1 = Pos Y < -80+Parent,Pos Y
y = 0

[State 21355]
type = DestroySelf
trigger1 = parent,stateno != [21351,21353]


;---------------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Up Helper End
[Statedef 21369]
type    = S
movetype= I
physics = N
anim = 21369
;poweradd =
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21369]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,stateno != [1350,1353]

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Up

[Statedef 21371]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21371]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 21371, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21371

[State 21371, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21371, 3]
type = DestroySelf
trigger1 = ishelper



;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Up To Death Factor

[Statedef 21372]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21372]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0


[State 21372, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21372

[State 21372, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = 64,-16,64

[State 21372, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = 80,17,80

[State 21372, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21372, 2]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Up To Energy Drain

[Statedef 21373]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21373]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 21373, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21373


[State 21373, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = -16,64,-16

[State 21373, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = -16,64,64

[State 21373, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21373, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Up

[Statedef 21379]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 40



[State 21379, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21321


[State 21379]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 21379, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.4


[State 21379, 4]
type = ChangeState
trigger1 = Time = 7
value = 21330

[State 21379, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Hit ground




;------------------------------------------------------------------------------------------------------------
;Air Horizontal Coil
[Statedef 21400]
type = S
movetype = A
physics = N
anim = 21240
ctrl = 0
sprpriority = 1
;velset = 0,0


[State 21400]
type = BindToParent
trigger1 = 1

[State 21400]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = Root,var(30)
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 0,0
sparkxy = -20,-70
hitsound   = S1,7
guardsound = S4,0
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,0,0)
p1stateno = 21241
p2stateno = 21261
id = 21241



[State 21400]
type = ParentVarSet
triggerall = Parent,Time = [4,25]
trigger1 = MoveGuarded
var(1) = 2
persistent = 0

[State 21400]
type = ParentVarSet
triggerall = Parent,Time = [26,55]
trigger1 = MoveGuarded
var(1) = 4
persistent = 0

[State 21400]
type = ChangeAnim
trigger1 = parent,var(1) = 2
trigger1 = parent,Time > 22
value = 21240
elem = 38
persistent = 0

[State 21400]
type = ChangeAnim
trigger1 = parent,var(1) = 4
value = 21240
elem = 35
persistent = 0

[State 21400]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Air Diag Up Coil
[Statedef 21450]
type = S
movetype = A
physics = N
anim = 21300
ctrl = 0
sprpriority = 1
;velset = 0,0


[State 21450]
type = BindToParent
trigger1 = 1

[State 21450]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = Root,var(30)
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 0,0
sparkxy = -20,-70+floor(P2Dist Y)
hitsound   = S1,7
guardsound = S4,0
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,0,0)
p1stateno = 21301
p2stateno = 21321
id = 21241



[State 21450]
type = ParentVarSet
triggerall = Parent,Time = [4,25]
trigger1 = MoveGuarded
var(1) = 2
persistent = 0

[State 21450]
type = ParentVarSet
triggerall = Parent,Time = [26,55]
trigger1 = MoveGuarded
var(1) = 4
persistent = 0

[State 21450]
type = ChangeAnim
trigger1 = parent,var(1) = 2
trigger1 = parent,Time > 22
value = 21300
elem = 33
persistent = 0

[State 21450]
type = ChangeAnim
trigger1 = parent,var(1) = 4
value = 21300
elem = 30
persistent = 0

[State 21450]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Air Up Coil
[Statedef 21500]
type = S
movetype = A
physics = N
anim = 21350
ctrl = 0
sprpriority = 1
;velset = 0,0


[State 21500]
type = BindToParent
trigger1 = 1

[State 21500]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = Root,var(30)
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 0,0
sparkxy = -20,-70
hitsound   = S1,7
guardsound = S4,0
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,0,0)
p1stateno = 21351
p2stateno = 21371
id = 21241



[State 21500, 1]
type = ParentVarSet
triggerall = Parent,Time = [7,35]
trigger1 = MoveGuarded
var(1) = 2
persistent = 0

[State 21500, 1]
type = ParentVarSet
triggerall = Parent,Time = [36,63]
trigger1 = MoveGuarded
var(1) = 4
persistent = 0

[State 21500]
type = ChangeAnim
trigger1 = parent,var(1) = 2
trigger1 = parent,Time > 31
value = 21350
elem = 37
persistent = 0

[State 21500]
type = ChangeAnim
trigger1 = parent,var(1) = 4
value = 21350
elem = 35
persistent = 0

[State 21500]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType != A



;------------------------------------------------------------------------------------------------------------
;Diag Down Coil
[Statedef 21550]
type = S
movetype = A
physics = N
anim = 21550
ctrl = 0
sprpriority = 1
;velset = 0,0


[State 21550]
type = BindToParent
trigger1 = 1

[State 21550]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = Root,var(30)
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 0,0
sparkxy = -20,-70+floor(P2Dist Y)
hitsound   = S1,7
guardsound = S4,0
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,0,0)
p1stateno = 21551
p2stateno = 21571
id = 21241



[State 21550, 1]
type = ParentVarSet
triggerall = Parent,Time = [7,35]
trigger1 = MoveGuarded
var(1) = 2
persistent = 0

[State 21550, 1]
type = ParentVarSet
triggerall = Parent,Time = [36,63]
trigger1 = MoveGuarded
var(1) = 4
persistent = 0

[State 21550]
type = ChangeAnim
trigger1 = parent,var(1) = 2
trigger1 = parent,Time > 31
value = 21550
elem = 33
persistent = 0

[State 21550]
type = ChangeAnim
trigger1 = parent,var(1) = 4
value = 21550
elem = 30
persistent = 0

[State 21550]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Diag Down Grab

[Statedef 21551]
type    = S
movetype= A
physics = N
anim = 21551
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21551]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1241

[State 21551]
type = BindToParent
trigger1 = 1


[State 21551]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 21551]
type = null;NotHitBy
trigger1 = 1
value = SCA

[State 21551, Bind 1]
type = TargetBind
trigger1 = 1
pos = 214,32


[State 21551]
type = Helper
trigger1 = Time = 2
stateno = 30034

[State 21551]
type = null;Helper
trigger1 = AnimElem = 1
stateno = 21557
helpertype = player

[State 21551]
type = TargetState
trigger1 = Parent,var(2) = [1,2]
value = 21571+Parent,var(2)
ctrl = 0

[State 21551]
type = ChangeState
trigger1 = Parent,var(2) = [1,2]
value = 21551+Parent,var(2)


[State 21551]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 32220
ctrl = 0

[State 21551]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 32200



[State 21551]
type = TargetState
trigger1 = Parent,AnimElem = 4, = 1
value = 21579
ctrl = 0

[State 21551]
type = ChangeState
trigger1 = Parent,AnimElem = 4, = 1
value = 21559


[State 21551, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Diag Down Grab To Death Factor

[Statedef 21552]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21242]
type = TargetLifeAdd
trigger1 = Time <= 60
trigger1 = Time%8 = 0
value = -10;Root,var(30)

[State 21552]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1242


[State 21552]
type = BindToParent
trigger1 = 1

[State 21552, Bind 1]
type = TargetBind
trigger1 = 1
pos = 214,32


[State 21552]
type = Helper
trigger1 = Time = 1
stateno = 30031

[State 21552]
type = Helper
trigger1 = Time = 2
stateno = 30000


[State 21552]
type = Helper
trigger1 = Time = 12
stateno = 30033
pos = 0,0

[State 21552]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,1

[State 21552]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2
channel = 1

[State 21552]
type = TargetLifeAdd
trigger1 = Time <= 60
trigger1 = Time%8 = 0
value = -Root,var(30)

[State 21552]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = -Root,var(30)


[State 21552]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 32220
ctrl = 0

[State 21552]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 32200



[State 21552]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21579
ctrl = 0

[State 21552]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21559

[State 21552, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Diag Down Grab To Energy Drain

[Statedef 21553]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = Time <= 60
trigger1 = Time%4 = 0
value = -15

[State 21553]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1243


[State 21553, Bind 1]
type = TargetBind
trigger1 = 1
pos = 214,32



[State 21553]
type = Helper
trigger1 = Time = 1
stateno = 30032

[State 21553]
type = Helper
trigger1 = Time = 2
stateno = 30000


[State 21553]
type = Helper
trigger1 = Time = 12
stateno = 30033
pos = 0,0


[State 21553]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,3

[State 21553]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2


[State 21553]
type = PowerAdd
trigger1 = Time <= 60
trigger1 = Time%6 = 0
value = 50



[State 21553]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 32220
ctrl = 0

[State 21553]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 32200

[State 21553]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21579
ctrl = 0

[State 21553]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21559

[State 21553, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Camera Push Down
[Statedef 21557]
type = S
movetype = I
physics =N
anim = 0;9800
ctrl = 0
sprpriority = 0
velset = 0,17


[State 21551]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 21557]
type = DestroySelf
trigger1 = parent,stateno != [21551,21553]
;---------------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Diag Down Helper End
[Statedef 21559]
type    = S
movetype= I
physics = N
anim = 21559
;poweradd =
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0



[State 21559]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,stateno != [1550,1553]

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Down

[Statedef 21571]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21571]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 21571, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21571

[State 21571, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21571, 3]
type = DestroySelf
trigger1 = ishelper



;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Down To Death Factor

[Statedef 21572]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21572]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0


[State 21572, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21572

[State 21572, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = 64,-16,64

[State 21572, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = 80,17,80

[State 21572, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21572, 2]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Down To Energy Drain

[Statedef 21573]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21573]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 21573, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21573


[State 21573, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = -16,64,-16

[State 21573, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = -16,64,64

[State 21573, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21573, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Down

[Statedef 21579]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 40



[State 21579, 1]
type = null;ChangeAnim2
trigger1 = Time = 0
value = 21579


[State 21579]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 21579, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.4


[State 21579, 4]
type = ChangeState
trigger1 = Time = 7
value = 21330

[State 21579, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Hit ground


;------------------------------------------------------------------------------------------------------------
;Down Coil
[Statedef 21600]
type = S
movetype = A
physics = N
anim = 21600
ctrl = 0
sprpriority = 1
;velset = 0,0


[State 21600]
type = BindToParent
trigger1 = 1

[State 21600]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = Root,var(30)
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 0,0
sparkxy = -20,-70+floor(P2Dist Y)
hitsound   = S1,7
guardsound = S4,0
sparkno = 1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,0,0)
p1stateno = 21601
p2stateno = 21621
id = 21241



[State 21600, 1]
type = ParentVarSet
triggerall = Parent,Time = [7,35]
trigger1 = MoveGuarded
var(1) = 2
persistent = 0

[State 21600, 1]
type = ParentVarSet
triggerall = Parent,Time = [36,63]
trigger1 = MoveGuarded
var(1) = 4
persistent = 0

[State 21600]
type = ChangeAnim
trigger1 = parent,var(1) = 2
trigger1 = parent,Time > 31
value = 21600
elem = 33
persistent = 0

[State 21600]
type = ChangeAnim
trigger1 = parent,var(1) = 4
value = 21600
elem = 30
persistent = 0

[State 21600]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Down Grab

[Statedef 21601]
type    = S
movetype= A
physics = N
anim = 21601
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21601]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1241

[State 21601]
type = BindToParent
trigger1 = 1


[State 21601]
type = null;PlayerPush
trigger1 = 1
value = 0

[State 21601]
type = null;NotHitBy
trigger1 = 1
value = SCA

[State 21601, Bind 1]
type = TargetBind
trigger1 = 1
pos = 74,85


[State 21601]
type = Helper
trigger1 = Time = 2
stateno = 30044

[State 21601]
type = null;Helper
trigger1 = AnimElem = 1
stateno = 21607
helpertype = player

[State 21601]
type = TargetState
trigger1 = Parent,var(2) = [1,2]
value = 21621+Parent,var(2)
ctrl = 0

[State 21601]
type = ChangeState
trigger1 = Parent,var(2) = [1,2]
value = 21601+Parent,var(2)


[State 21601]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 32270
ctrl = 0

[State 21601]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 32250



[State 21601]
type = TargetState
trigger1 = Parent,AnimElem = 4, = 1
value = 21629
ctrl = 0

[State 21601]
type = ChangeState
trigger1 = Parent,AnimElem = 4, = 1
value = 21609


[State 21601, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Down Grab To Death Factor

[Statedef 21602]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21242]
type = TargetLifeAdd
trigger1 = Time <= 60
trigger1 = Time%8 = 0
value = -10;Root,var(30)

[State 21602]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1242

[State 21602]
type = BindToParent
trigger1 = 1

[State 21602, Bind 1]
type = TargetBind
trigger1 = 1
pos = 74,85


[State 21602]
type = Helper
trigger1 = Time = 1
stateno = 30041

[State 21602]
type = Helper
trigger1 = Time = 2
stateno = 30000


[State 21602]
type = Helper
trigger1 = Time = 12
stateno = 30043
pos = 0,0

[State 21602]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,1

[State 21602]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2
channel = 1

[State 21602]
type = TargetLifeAdd
trigger1 = Time <= 60
trigger1 = Time%8 = 0
value = -Root,var(30)

[State 21602]
type = LifeAdd
trigger1 = Time <= 60
trigger1 = Time%12 = 0
value = -Root,var(30)


[State 21602]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 32270
ctrl = 0

[State 21602]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 32250



[State 21602]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21629
ctrl = 0

[State 21602]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21609

[State 21602, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;---------------------------------------------------------------------------
; Carbonadium Coil Down Grab To Energy Drain

[Statedef 21603]
type    = S
movetype= A
physics = N
;anim =
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = Time <= 60
trigger1 = Time%4 = 0
value = -15

[State 21603]
type = Parentvarset
trigger1 = Time = 0
var(1) = 1243


[State 21603]
type = BindToParent
trigger1 = 1

[State 21603, Bind 1]
type = TargetBind
trigger1 = 1
pos = 74,85



[State 21603]
type = Helper
trigger1 = Time = 1
stateno = 30042

[State 21603]
type = Helper
trigger1 = Time = 2
stateno = 30000


[State 21603]
type = Helper
trigger1 = Time = 12
stateno = 30043
pos = 0,0


[State 21603]
type = PlaySnd
trigger1 = AnimElem = 1, = 1
value = 1240,3

[State 21603]
type = PlaySnd
trigger1 = Time >= 2
trigger1 = Time%8 = 0
value = 1240,2


[State 21603]
type = PowerAdd
trigger1 = Time <= 60
trigger1 = Time%6 = 0
value = 50



[State 21603]
type = TargetState
trigger1 = Parent,var(2) = [3,9]
value = 32270
ctrl = 0

[State 21603]
type = ChangeState
trigger1 = Parent,var(2) = [3,9]
value = 32250

[State 21603]
type = TargetState
trigger1 = Parent,AnimElem = 3, = 1
value = 21629
ctrl = 0

[State 21603]
type = ChangeState
trigger1 = Parent,AnimElem = 3, = 1
value = 21609

[State 21603, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Camera Push Down
[Statedef 21607]
type = S
movetype = I
physics =N
anim = 0;9800
ctrl = 0
sprpriority = 0
velset = 0,17


[State 21601]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 21607]
type = DestroySelf
trigger1 = parent,stateno != [21601,21603]
;---------------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Down Helper End
[Statedef 21609]
type    = S
movetype= I
physics = N
anim = 21609
;poweradd =
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0



[State 21609]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,stateno != [1600,1603]

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Down

[Statedef 21621]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21621]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 21621, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21621

[State 21621, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21621, 3]
type = DestroySelf
trigger1 = ishelper



;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Down To Death Factor

[Statedef 21622]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21622]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0


[State 21622, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21622

[State 21622, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = 64,-16,64

[State 21622, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = 80,17,80

[State 21622, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21622, 2]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Down To Energy Drain

[Statedef 21623]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 21623]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 21623, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 21623


[State 21623, 1]
type = PalFx
trigger1 = Time >= 0
trigger1 = Time%4 = 0
color = 0
time = 4
add = -16,64,-16

[State 21623, 1]
type = PalFx
trigger1 = Time >= 4
trigger1 = Time%8 = 0
color = 0
time = 4
add = -16,64,64

[State 21623, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 21623, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Down

[Statedef 21629]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 40



[State 21629, 1]
type = null;ChangeAnim2
trigger1 = Time = 0
value = 21629


[State 21629]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 21629, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.4


[State 21629, 4]
type = ChangeState
trigger1 = Time = 7
value = 21330

[State 21629, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Hit ground
;------------------------------------------------------------------------------------------------------------
;Absorbtion Spark
[Statedef 30000]
type = S
movetype = I
physics =N
anim = 30000
ctrl = 0
sprpriority = 5
velset = 0,0


[State 30000]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30000]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30000]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30000]
type = DestroySelf
trigger1 = parent,anim != [21241,21243]




;------------------------------------------------------------------------------------------------------------
;Death Factor Spark Long Range
[Statedef 30001]
type = S
movetype = I
physics =N
anim = 30001
ctrl = 0
sprpriority = -2
velset = 0,0



[State 30001]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30001]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30001]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30001]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Parent,Anim = 21242
value = 30005

[State 30001]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Parent,Anim = 21241
value = 30009



[State 30001]
type = DestroySelf
trigger1 = parent,stateno != 21242


;------------------------------------------------------------------------------------------------------------
;Energy Drain Spark Long Range
[Statedef 30002]
type = S
movetype = I
physics =N
anim = 30002
ctrl = 0
sprpriority = -2
velset = 0,0



[State 30001]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30001]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30001]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30002]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Parent,Anim = 21242
value = 30006

[State 30002]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Parent,Anim = 21241
value = 30010

[State 30002]
type = DestroySelf
trigger1 = parent,stateno != 21243


;------------------------------------------------------------------------------------------------------------
;Drain Chain
[Statedef 30003]
type = S
movetype = I
physics =N
anim = 30003
ctrl = 0
sprpriority = 1
velset = 0,0



[State 30002]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30002]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30003]
type = DestroySelf
trigger1 = parent,anim != [21241,21243]

;------------------------------------------------------------------------------------------------------------
;Coil Wrap
[Statedef 30004]
type = S
movetype = I
physics =N
anim = 21245
ctrl = 0
sprpriority = 3
velset = 0,0



[State 30004]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30004]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))



[State 30004]
type = ChangeAnim
trigger1 = Parent,Stateno = [21242,21243]
trigger1 = Parent,Time = 1
value = 21246
persistent = 0

[State 30004]
type = DestroySelf
trigger1 = parent,stateno != [21241,21243]



;------------------------------------------------------------------------------------------------------------
;Death Factor Spark Diag Up
[Statedef 30011]
type = S
movetype = I
physics =N
anim = 30011
ctrl = 0
sprpriority = -2
velset = 0,0




[State 30011]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30011]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30011]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30011]
type = DestroySelf
trigger1 = parent,stateno != 21302


;------------------------------------------------------------------------------------------------------------
;Energy Drain Spark Diag Up
[Statedef 30012]
type = S
movetype = I
physics =N
anim = 30012
ctrl = 0
sprpriority = -2
velset = 0,0



[State 30012]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30012]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30012]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30012]
type = DestroySelf
trigger1 = parent,stateno != 21303


;------------------------------------------------------------------------------------------------------------
;Drain Chain Diag Up
[Statedef 30013]
type = S
movetype = I
physics =N
anim = 30013
ctrl = 0
sprpriority = 1
velset = 0,0



[State 30013]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30013]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30013]
type = DestroySelf
trigger1 = parent,anim != 21301


;------------------------------------------------------------------------------------------------------------
;Coil Wrap Diag Up
[Statedef 30014]
type = S
movetype = I
physics =N
anim = 21305
ctrl = 0
sprpriority = 3
velset = 0,0



[State 30014]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30014]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30014]
type = ChangeAnim
trigger1 = Parent,Stateno = [21302,21303]
trigger1 = Parent,Time = 1
value = 21306
persistent = 0

[State 30014]
type = DestroySelf
trigger1 = parent,anim != 21301


;------------------------------------------------------------------------------------------------------------
;Death Factor Spark Up
[Statedef 30021]
type = S
movetype = I
physics =N
anim = 30021
ctrl = 0
sprpriority = -2
velset = 0,0



[State 30021]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30021]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30021]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30021]
type = DestroySelf
trigger1 = parent,stateno != 21352




;------------------------------------------------------------------------------------------------------------
;Energy Drain Spark Up
[Statedef 30022]
type = S
movetype = I
physics =N
anim = 30022
ctrl = 0
sprpriority = -2
velset = 0,0




[State 30022]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30022]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30022]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30022]
type = DestroySelf
trigger1 = parent,stateno != 21353


;------------------------------------------------------------------------------------------------------------
;Drain Chain Up
[Statedef 30023]
type = S
movetype = I
physics =N
anim = 30023
ctrl = 0
sprpriority = 1
velset = 0,0



[State 30023]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30023]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))



[State 30023]
type = DestroySelf
trigger1 = parent,anim != 21351


;------------------------------------------------------------------------------------------------------------
;Coil Wrap Up
[Statedef 30024]
type = S
movetype = I
physics =N
anim = 21355
ctrl = 0
sprpriority = 3
velset = 0,0



[State 30024]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30024]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30024]
type = ChangeAnim
trigger1 = Parent,Stateno = [21352,21353]
trigger1 = Parent,Time = 1
value = 21356
persistent = 0

[State 30024]
type = DestroySelf
trigger1 = parent,anim != 21351



;------------------------------------------------------------------------------------------------------------
;Death Factor Spark Diag Down
[Statedef 30031]
type = S
movetype = I
physics =N
anim = 30031
ctrl = 0
sprpriority = -2
velset = 0,0



[State 30031]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30031]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30031]
type = BindToParent
trigger1 = PlayerIDExist(var(3))


[State 30031]
type = DestroySelf
trigger1 = parent,stateno != 21552


;------------------------------------------------------------------------------------------------------------
;Energy Drain Spark Diag Down
[Statedef 30032]
type = S
movetype = I
physics =N
anim = 30032
ctrl = 0
sprpriority = -2
velset = 0,0



[State 30032]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30032]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30031]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30032]
type = DestroySelf
trigger1 = parent,stateno != 21553


;------------------------------------------------------------------------------------------------------------
;Drain Chain Diag Down
[Statedef 30033]
type = S
movetype = I
physics =N
anim = 30033
ctrl = 0
sprpriority = 1
velset = 0,0



[State 30033]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30033]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30033]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30033]
type = DestroySelf
trigger1 = parent,anim != 21551


;------------------------------------------------------------------------------------------------------------
;Coil Wrap Diag Down
[Statedef 30034]
type = S
movetype = I
physics =N
anim = 21555
ctrl = 0
sprpriority = 3
velset = 0,0



[State 30034]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30034]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30034]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30034]
type = ChangeAnim
trigger1 = Parent,Stateno = [21552,21553]
trigger1 = Parent,Time = 1
value = 21556
persistent = 0

[State 30034]
type = DestroySelf
trigger1 = parent,anim != 21551

;------------------------------------------------------------------------------------------------------------
;Death Factor Spark Down
[Statedef 30041]
type = S
movetype = I
physics =N
anim = 30041
ctrl = 0
sprpriority = -2
velset = 0,0



[State 30041]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30041]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30041]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30041]
type = DestroySelf
trigger1 = parent,stateno != 21602

;------------------------------------------------------------------------------------------------------------
;Energy Drain Spark Down
[Statedef 30042]
type = S
movetype = I
physics =N
anim = 30042
ctrl = 0
sprpriority = -2
velset = 0,0



[State 30042]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30042]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30042]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30042]
type = DestroySelf
trigger1 = parent,stateno != 21603


;------------------------------------------------------------------------------------------------------------
;Drain Chain Down
[Statedef 30043]
type = S
movetype = I
physics =N
anim = 30043
ctrl = 0
sprpriority = 1
velset = 0,0



[State 30043]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30043]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30043]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30043]
type = DestroySelf
trigger1 = parent,anim != 21601

;------------------------------------------------------------------------------------------------------------
;Coil Wrap Down
[Statedef 30044]
type = S
movetype = I
physics =N
anim = 21605
ctrl = 0
sprpriority = 3
velset = 0,0



[State 30043]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 30043]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))


[State 30043]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 30044]
type = ChangeAnim
trigger1 = Parent,Stateno = [21602,21603]
trigger1 = Parent,Time = 1
value = 21606
persistent = 0

[State 30044]
type = DestroySelf
trigger1 = parent,anim != 21601

;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Horizontal Mid Range

[Statedef 31274]
type    = S
movetype= A
physics = N
anim = 31274
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 31274]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0


[State 31274]
type = Helper
trigger1 = Time = 4
stateno = 31275

[State 31274]
type = Helper
trigger1 = AnimElem = 1
stateno = 31276

[State 31274]
type = Helper
trigger1 = AnimElem = 1
stateno = 31277
helpertype = player



[State 31274, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 135,-65

[State 31274, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 139,-71

[State 31274, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 137,-71


[State 31274, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 137,-71


[State 31274, Bind 5]
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = 119,-83


[State 31274, Bind 6]
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = 117,-80



[State 31274, Bind 7]
type = TargetBind
trigger1 = AnimElemNo(0) = 7
pos = 111,-77

[State 31274, Bind 8]
type = TargetBind
trigger1 = AnimElemNo(0) = 8
pos = 111,-77

[State 31274, Bind 9]
type = TargetBind
trigger1 = AnimElemNo(0) = 9
pos = 111,-77

[State 31274, Bind 10]
type = TargetBind
trigger1 = AnimElemNo(0) = 10
pos = 114,-84

[State 31274, Bind 11]
type = TargetBind
trigger1 = AnimElemNo(0) = 11
pos = 110,-91

[State 31274, Bind 12]
type = TargetBind
trigger1 = AnimElemNo(0) = 12
pos = 110,-91

[State 31274, Bind 13]
type = TargetBind
trigger1 = AnimElemNo(0) = 13
pos = 110,-91

[State 31274, Bind 14]
type = TargetBind
trigger1 = AnimElemNo(0) = 14
pos = 110,-91


[State 31274, Bind 15]
type = TargetBind
trigger1 = AnimElemNo(0) = 15
pos = 128,-87

[State 31274, Bind 16]
type = TargetBind
trigger1 = AnimElemNo(0) = 16
pos = 124,-87

[State 31274, Bind 17]
type = TargetBind
trigger1 = AnimElemNo(0) = 17
pos = 124,-87

[State 31274, Bind 18]
type = TargetBind
trigger1 = AnimElemNo(0) = 18
pos = 124,-87

[State 31274, Bind 19]
type = TargetBind
trigger1 = AnimElemNo(0) = 19
pos = 124,-87

[State 31274, Bind 20]
type = TargetBind
trigger1 = AnimElemNo(0) = 20
pos = 112,-109

[State 31274, Bind 21]
type = TargetBind
trigger1 = AnimElemNo(0) = 21
pos = 111,-120


[State 31274, Bind 22]
type = TargetBind
trigger1 = AnimElemNo(0) = 22
pos = 100,-128

[State 31274, Bind 23]
type = TargetBind
trigger1 = AnimElemNo(0) = 23
pos = 97,-133

[State 31274, Bind 24]
type = TargetBind
trigger1 = AnimElemNo(0) = 24
pos = 80,-144

[State 31274, Bind 25]
type = TargetBind
trigger1 = AnimElemNo(0) = 25
pos = 12,-139

[State 31274, Bind 26]
type = TargetBind
trigger1 = AnimElemNo(0) = 26
pos = -3,-148

[State 31274, Bind 27]
type = TargetBind
trigger1 = AnimElemNo(0) = 27
pos = -29,-145

[State 31274, Bind 28]
type = TargetBind
trigger1 = AnimElemNo(0) = 28
pos = -36,-150

[State 31274, Bind 29]
type = TargetBind
trigger1 = AnimElemNo(0) = 29
pos = -46,-148

[State 31274, Bind 30]
type = TargetBind
trigger1 = AnimElemNo(0) = 30
pos = -173,-111

[State 31274, Bind 31]
type = TargetBind
trigger1 = AnimElemNo(0) = 31
pos = -202,-95

[State 31274, Bind 32]
type = TargetBind
trigger1 = AnimElemNo(0) = 32
pos = -210,-73

[State 31274, Bind 33]
type = TargetBind
trigger1 = AnimElemNo(0) = 33
pos = -216,-62

[State 31274, Bind 34]
type = TargetBind
trigger1 = AnimElemNo(0) = 34
pos = -220,-57


[State 31274, Bind 345]
type = TargetBind
trigger1 = AnimElemNo(0) = 35
pos = -220,-57

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = -100
kill = 1
absolute = 1





[State 31274]
type = TargetState
trigger1 = AnimElem = 35
value = 31299
ctrl = 0

[State 31274]
type = ChangeState
trigger1 = AnimElem = 35
value = 31284


[State 31274, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Coil  Helper For Horizontal
[Statedef 31275]
type = S
movetype = I
physics =N
anim = 31305
ctrl = 0
sprpriority = 5
velset = 0,0

[State 31275]
type = BindToParent
trigger1 = 1

[State 31275]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31274


;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Horizontal
[Statedef 31276]
type = S
movetype = I
physics =N
anim = 31276
ctrl = 0
sprpriority = 3
velset = 0,0


[State 31276]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31274


[State 31276]
type = BindToParent
trigger1 = 1
;------------------------------------------------------------------------------------------------------------
;Camera Push Left
[Statedef 31277]
type = S
movetype = I
physics =N
anim = 9800
ctrl = 0
sprpriority = 0
velset = -17,0



[State 31277]
type = DestroySelf
trigger1 = parent,stateno != 31274



;------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Horizontal Throw Horizontal End
[Statedef 31284]
type = S
movetype = I
physics =N
;anim = 9800
ctrl = 0
sprpriority = 0
velset = 0,0



[State 31284]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal, Horizontal

[Statedef 31294]
type    = A
movetype= H
physics = N
velset = 0,0


[State 31294]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 31294, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 31294

[State 31294, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 31294, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 31299]
type    = A
movetype= H
physics = N
velset = 7,0
poweradd = 40


[State 31299, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7827

[State 31299, 1]
type = Turn
Trigger1 = Time = 0

[State 31299, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 31299, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,0


[State 31299, 1]
type = null;ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 7827

[State 31299, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Horizontal Long Range

[Statedef 31304]
type    = S
movetype= A
physics = N
anim = 31304
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 31304]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0


[State 31304]
type = Turn
trigger1 = Time = 0
trigger1 = facing != parent,facing

[State 31304]
type = Helper
trigger1 = AnimElem = 4
stateno = 31305

[State 31304]
type = Helper
trigger1 = AnimElem = 1
stateno = 31306

[State 31304]
type = Helper
trigger1 = AnimElem = 1
stateno = 31307
helpertype = player



[State 31304, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 225,-40

[State 31304, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 188,-39

[State 31304, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 190,-40


[State 31304, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 179,-38

[State 31304, Bind 5]
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = 173,-33

[State 31304, Bind 6]
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = 160,-27

[State 31304, Bind 7]
type = TargetBind
trigger1 = AnimElemNo(0) = 7
pos = 155,-25

[State 31304, Bind 8]
type = TargetBind
trigger1 = AnimElemNo(0) = 8
pos = 145,-20

[State 31304, Bind 9]
type = TargetBind
trigger1 = AnimElemNo(0) = 9
pos = 147,-23

[State 31304, Bind 10]
type = TargetBind
trigger1 = AnimElemNo(0) = 10
pos = 149,-30

[State 31304, Bind 11]
type = TargetBind
trigger1 = AnimElemNo(0) = 11
pos = 161,-30

[State 31304, Bind 12]
type = TargetBind
trigger1 = AnimElemNo(0) = 12
pos = 147,-30

[State 31304, Bind 13]
type = TargetBind
trigger1 = AnimElemNo(0) = 13
pos = 144,-26

[State 31304, Bind 14]
type = TargetBind
trigger1 = AnimElemNo(0) = 14
pos = 155,-51


[State 31304, Bind 15]
type = TargetBind
trigger1 = AnimElemNo(0) = 15
pos = 161,-73

[State 31304, Bind 16]
type = TargetBind
trigger1 = AnimElemNo(0) = 16
pos = 155,-91

[State 31304, Bind 17]
type = TargetBind
trigger1 = AnimElemNo(0) = 17
pos = 157,-104

[State 31304, Bind 18]
type = TargetBind
trigger1 = AnimElemNo(0) = 18
pos = 155,-123

[State 31304, Bind 19]
type = TargetBind
trigger1 = AnimElemNo(0) = 19
pos = 84,-133

[State 31304, Bind 20]
type = TargetBind
trigger1 = AnimElemNo(0) = 20
pos = 67,-154

[State 31304, Bind 21]
type = TargetBind
trigger1 = AnimElemNo(0) = 21
pos = 53,-170


[State 31304, Bind 22]
type = TargetBind
trigger1 = AnimElemNo(0) = 22
pos = 40,-178

[State 31304, Bind 23]
type = TargetBind
trigger1 = AnimElemNo(0) = 23
pos = 21,-189

[State 31304, Bind 24]
type = TargetBind
trigger1 = AnimElemNo(0) = 24
pos = -125,-166

[State 31304, Bind 25]
type = TargetBind
trigger1 = AnimElemNo(0) = 25
pos = -193,-156

[State 31304, Bind 26]
type = TargetBind
trigger1 = AnimElemNo(0) = 26
pos = -231,-130

[State 31304, Bind 27]
type = TargetBind
trigger1 = AnimElemNo(0) = 27
pos = -267,-114

[State 31304, Bind 28]
type = TargetBind
trigger1 = AnimElemNo(0) = 28
pos = -281,-90

[State 31304, Bind 29]
type = TargetBind
trigger1 = AnimElemNo(0) = 29
pos = -288,-74

[State 31304, Bind 30]
type = TargetBind
trigger1 = AnimElemNo(0) = 30
pos = -281,-74

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = -100
kill = 1
absolute = 1


[State 31304]
type = ParentVarSet
triggerall = Parent,AnimElem = 6
trigger1 = Parent,var(3) = 4
trigger2 = Parent,var(3) = 9
var(2) = Parent,var(3)

[State 31304]
type = TargetState
trigger1 = Parent,AnimElem = 7
trigger1 = Parent,var(2) = 4
value = 31334
ctrl = 0

[State 31304]
type = ChangeState
trigger1 = Parent,AnimElem = 7
trigger1 = Parent,var(2) = 4
value = 31310


[State 31304]
type = TargetState
trigger1 = Parent,AnimElem = 7
trigger1 = Parent,var(2) = 9
value = 31474
ctrl = 0

[State 31304]
type = ChangeState
trigger1 = Parent,AnimElem = 7
trigger1 = Parent,var(2) = 9
value = 31450

[State 31304]
type = TargetState
trigger1 = AnimElem = 30
value = 31329
ctrl = 0

[State 31304]
type = ChangeState
trigger1 = AnimElem = 30
value = 31319


[State 31304, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;------------------------------------------------------------------------------------------------------------
;Coil  Helper For Horizontal
[Statedef 31305]
type = S
movetype = I
physics =N
anim = 31305
ctrl = 0
sprpriority = 5
velset = 0,0


[State 31305]
type = BindToParent
trigger1 = 1

[State 31305]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31304
;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Horizontal
[Statedef 31306]
type = S
movetype = I
physics =N
anim = 31306
ctrl = 0
sprpriority = 3
velset = 0,0


[State 31306]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31304


[State 31306]
type = BindToParent
trigger1 = 1

;------------------------------------------------------------------------------------------------------------
;Camera Push Left
[Statedef 31307]
type = S
movetype = I
physics =N
anim = 9800
ctrl = 0
sprpriority = 0
velset = -17,0



[State 31307]
type = DestroySelf
trigger1 = parent,stateno != 31304


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Ground Slam Back

[Statedef 31310]
type    = S
movetype= A
physics = N
anim = 31310
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 31310]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0


[State 31310]
type = Helper
trigger1 = Time = 0
stateno = 31311

[State 31310]
type = Helper
trigger1 = Time = 0
stateno = 31312



[State 31310, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = -149,-155

[State 31310, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = -197,-142

[State 31310, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = -233,-104


[State 31310, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = -263,-58

[State 31310, Bind 5]
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = -268,0

[State 31310, Bind 6]
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = -248,42


[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = -90
kill = 1
absolute = 1


[State 31310]
type = PlaySnd
trigger1 =  AnimElem = 6
trigger1 = Root,Statetype = S
value = 5100,4

[State 31310, EnvShake]
type = EnvShake
trigger1 =  AnimElem = 6
trigger1 = Root,Statetype = S
time = 8
ampl = -8



[State 31310]
type = ParentVarAdd
triggerall =  AnimElem = 5
trigger1 = Parent,var(3)
var(5) = 1
persistent = 0


[State 31310]
type = ParentVarAdd
triggerall =  AnimElem = 5
trigger1 = Parent,var(3) = [3,9]
var(2) = Parent,var(3)

[State 31310]
type = TargetState
triggerall =  AnimElem = 6
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [3,4]
trigger2 = Parent,var(3) = 9
value = 31324
ctrl = 0

[State 31310]
type = ChangeState
triggerall =  AnimElem = 6
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [3,4]
trigger2 = Parent,var(3) = 9
value = 31304


[State 31310]
type = TargetState
triggerall =  AnimElem = 6
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [5,6]
value = 31374
ctrl = 0

[State 31310]
type = ChangeState
triggerall =  AnimElem = 6
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [5,6]
value = 31350


[State 31310]
type = TargetState
triggerall =  AnimElem = 6
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [7,8]
value = 32020+(Parent,var(3)-7)*50
ctrl = 0

[State 31310]
type = ChangeState
triggerall =  AnimElem = 6
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [7,8]
value = 32000+(Parent,var(3)-7)*50




[State 31310]
type = TargetState
trigger1 = AnimElem = 6
value = 31339
ctrl = 0

[State 31310]
type = ChangeState
trigger1 = AnimElem = 6
value = 31319


[State 31310, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A



;------------------------------------------------------------------------------------------------------------
;Coil  Helper For Horizontal
[Statedef 31312]
type = S
movetype = I
physics =N
anim = 31312
ctrl = 0
sprpriority = 5


[State 31312]
type = BindToParent
trigger1 = 1

[State 31312]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31310
;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Horizontal
[Statedef 31311]
type = S
movetype = I
physics =N
anim = 31311
ctrl = 0
sprpriority = 3
velset = 0,0


[State 31311]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31310


[State 31311]
type = BindToParent
trigger1 = 1

;------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Horizontal Throw Horizontal End
[Statedef 31319]
type = S
movetype = I
physics =N
;anim = 9800
ctrl = 0
sprpriority = 0
velset = 0,0



[State 31319]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal, Horizontal

[Statedef 31324]
type    = A
movetype= H
physics = N
velset = 0,0

[State 31324, 0]
type = Turn
trigger1 = Time = 0
trigger1 = facing = enemy,facing

[State 31324]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 31324, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 31324

[State 31324, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 31324, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 31329]
type    = A
movetype= H
physics = N
velset = 7,0
poweradd = 40


[State 31329, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7827


[State 31329, 1]
type = Turn
trigger1 = Time = 0



[State 31329, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 31329, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,0


[State 31329, 1]
type = null;ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 7827

;[State 0, TargetLifeAdd]
;type = TargetLifeAdd
;trigger1 = Vel Y > 0
;trigger1 = Pos Y >= 0
;value = -150
;kill = 1
;absolute = 1

[State 31329, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal, Ground Slam Back

[Statedef 31334]
type    = A
movetype= H
physics = N
velset = 0,0


[State 31334]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 31334, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 31334




[State 31334, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 31334, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 31339]
type    = A
movetype= H
physics = N
velset = 0,17
poweradd = 40

[State 31339, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 31339, 1]
type = null;ChangeAnim2
Trigger1 = Time = 0
value = 7828


[State 31339, 1]
type = Turn
Trigger1 = Time = 0


[State 31339, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 31339, No scroll]
type = null;ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 0,1


[State 31339, 1]
type = null;ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 7827

[State 31339, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Back Up

[Statedef 31350]
type    = S
movetype= A
physics = N
anim = 31350
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0


[State 31350]
type = Turn
trigger1 = Time = 0
trigger1 = facing != parent,facing

[State 31350]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0



[State 31350]
type = varset
trigger1 = Time = 0
var(1) = parent,stateno


[State 31350]
type = Helper
trigger1 = Time = 0
stateno = 31351

[State 31350]
type = Helper
trigger1 = Time = 4
stateno = 31352

[State 31350]
type = Helper
trigger1 = AnimElem = 1
stateno = 31357
helpertype = player



[State 31350, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 205,-18

[State 31350, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 179,4

[State 31350, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 161,17


[State 31350, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 149,15


[State 31350, Bind 5]
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = 149,15

[State 31350, Bind 6]
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = 124,10

[State 31350, Bind 7]
type = TargetBind
trigger1 = AnimElemNo(0) = 7
pos = 126,-1


[State 31350, Bind 8]
type = TargetBind
trigger1 = AnimElemNo(0) = 8
pos = 121,0

[State 31350, Bind 9]
type = TargetBind
trigger1 = AnimElemNo(0) = 9
pos = 121,-1

[State 31350, Bind 10]
type = TargetBind
trigger1 = AnimElemNo(0) = 10
pos = 143,-3


[State 31350, Bind 11]
type = TargetBind
trigger1 = AnimElemNo(0) = 11
pos = 154,-9


[State 31350, Bind 12]
type = TargetBind
trigger1 = AnimElemNo(0) = 12
pos = 158,-28


[State 31350, Bind 13]
type = TargetBind
trigger1 = AnimElemNo(0) = 13
pos = 172,-37

[State 31350, Bind 14]
type = TargetBind
trigger1 = AnimElemNo(0) = 14
pos = 173,-46

[State 31350, Bind 15]
type = TargetBind
trigger1 = AnimElemNo(0) = 15
pos = 171,-52

[State 31350, Bind 16]
type = TargetBind
trigger1 = AnimElemNo(0) = 16
pos = 107,-72

[State 31350, Bind 17]
type = TargetBind
trigger1 = AnimElemNo(0) = 17
pos = 106,-83

[State 31350, Bind 18]
type = TargetBind
trigger1 = AnimElemNo(0) = 18
pos = 105,-92


[State 31350, Bind 19]
type = TargetBind
trigger1 = AnimElemNo(0) = 19
pos = 101,-99


[State 31350, Bind 20]
type = TargetBind
trigger1 = AnimElemNo(0) = 20
pos = 64,-146

[State 31350, Bind 21]
type = TargetBind
trigger1 = AnimElemNo(0) = 21
pos = 26,-177

[State 31350, Bind 22]
type = TargetBind
trigger1 = AnimElemNo(0) = 22
pos = -12,-203


[State 31350, Bind 23]
type = TargetBind
trigger1 = AnimElemNo(0) = 23
pos = -66,-213

[State 31350, Bind 24]
type = TargetBind
trigger1 = AnimElemNo(0) = 24
pos = -105,-219

[State 31350, Bind 25]
type = TargetBind
trigger1 = AnimElemNo(0) = 25
pos = -153,-218


[State 31350, Bind 26]
type = TargetBind
trigger1 = AnimElemNo(0) = 26
pos = -192,-210


[State 31350, Bind 27]
type = TargetBind
trigger1 = AnimElemNo(0) = 27
pos = -201,-196

[State 31350]
type = ParentVarSet
trigger1 = Parent,AnimElem = 6
trigger1 = Parent,var(3) = 6
var(2) = Parent,var(3)

[State 31350]
type = TargetState
trigger1 = Parent,AnimElem = 7
trigger1 = Parent,var(2) = 6
value = 31414
ctrl = 0

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = -100
kill = 1
absolute = 1

[State 31350]
type = ChangeState
trigger1 = Parent,AnimElem = 7
trigger1 = Parent,var(2) = 6
value = 31390

[State 31350]
type = TargetState
trigger1 = AnimElem = 27
value = 31379
ctrl = 0

[State 31350]
type = ChangeState
trigger1 = AnimElem = 27
value = 31359


[State 31350, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Coil  Helper For Horizontal
[Statedef 31352]
type = S
movetype = I
physics =N
anim = 31352
ctrl = 0
sprpriority = 5


[State 31352]
type = BindToParent
trigger1 = 1

[State 31352]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31350
;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Horizontal
[Statedef 31351]
type = S
movetype = I
physics =N
anim = 31351
ctrl = 0
sprpriority = 3
velset = 0,0


[State 31351]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31350


[State 31351]
type = BindToParent
trigger1 = 1
;------------------------------------------------------------------------------------------------------------
;Camera Push Left
[Statedef 31357]
type = S
movetype = I
physics =N
anim = 9800
ctrl = 0
sprpriority = 0
velset = -17,0



[State 31357]
type = DestroySelf
trigger1 = parent,stateno != 31350



;------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Horizontal Throw Horizontal End
[Statedef 31359]
type = S
movetype = I
physics =N
;anim = 9800
ctrl = 0
sprpriority = 0
velset = 0,0



[State 31359]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != var(1)

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal, Back Up

[Statedef 31374]
type    = A
movetype= H
physics = N
velset = 0,0


[State 31374]
type = Turn
trigger1 = Time = 0
trigger1 = facing = enemy,facing


[State 31374]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 31374, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 31374

[State 31374, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 31374, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 31379]
type    = A
movetype= H
physics = N
velset = 3,-7
poweradd = 40


[State 31379, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7825


[State 31379, 1]
type = Turn
Trigger1 = Time = 0


[State 31379, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 31379, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 31379, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


[State 31379, 5]
type = SelfState
trigger1 = Vel Y > 2
value = 5040 ;HITA_RECOV

;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Up

[Statedef 31390]
type    = S
movetype= A
physics = N
anim = 31390
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 31390]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 31390]
type = varset
trigger1 = Time = 0
var(1) = parent,stateno

[State 31390]
type = Helper
trigger1 = Time = 0
stateno = 31391

[State 31390]
type = Helper
trigger1 = Time = 0
stateno = 31392



[State 31390, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 77,-108

[State 31390, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 68,-146

[State 31390, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 66,-186


[State 31390, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 42,-212

[State 31390, Bind 5]
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = 16,-232

[State 31390, Bind 6]
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = -8,-246


[State 31390, Bind 7]
type = TargetBind
trigger1 = AnimElemNo(0) = 7
pos = -33,-257


[State 31390, Bind 8]
type = TargetBind
trigger1 = AnimElemNo(0) = 8
pos = -52,-257

[State 31390]
type = TargetState
trigger1 = AnimElem = 8
value = 31419
ctrl = 0

[State 31390]
type = ChangeState
trigger1 = AnimElem = 8
value = 31409


[State 31390, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Coil  Helper For Horizontal
[Statedef 31392]
type = S
movetype = I
physics = N
anim = 31392
ctrl = 0
sprpriority = 5


[State 31392]
type = BindToParent
trigger1 = 1

[State 31392]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31390
;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Horizontal
[Statedef 31391]
type = S
movetype = I
physics =N
anim = 31391
ctrl = 0
sprpriority = 3
velset = 0,0


[State 31391]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31390



[State 31391]
type = BindToParent
trigger1 = 1
;------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Horizontal Throw Horizontal End
[Statedef 31409]
type = S
movetype = I
physics =N
;anim = 9800
ctrl = 0
sprpriority = 0
velset = 0,0



[State 31409]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,stateno != var(1)

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal, Up

[Statedef 31414]
type    = A
movetype= H
physics = N
velset = 0,0


[State 31414]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 31414, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 31414

[State 31414, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 31414, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 31419]
type    = A
movetype= H
physics = N
velset = 1,-10
poweradd = 40


[State 31419, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7826


[State 31419, 1]
type = Turn
Trigger1 = Time = 0


[State 31419, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 31419, No scroll]
type = null;ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 0,1


[State 31419, 1]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 7827

[State 31419, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


[State 31419, 5]
type = SelfState
trigger1 = Vel Y > 2
value = 5040 ;HITA_RECOV
;---------------------------------------------------------------------------
; Carbonadium Coil Air Throw Downward

[Statedef 31450]
type    = S
movetype= A
physics = N
anim = 31450
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 31450]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0


[State 31450]
type = Helper
trigger1 = Time = 0
stateno = 31451

[State 31450, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = -229,-53

[State 31450, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = -230,-12

[State 31450, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = -232,25


[State 31450, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = -216,91

[State 31450]
type = TargetState
trigger1 = AnimElem = 4
value = 31479
ctrl = 0

[State 31450]
type = ChangeState
trigger1 = AnimElem = 4
value = 31459


[State 31450, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Horizontal
[Statedef 31451]
type = S
movetype = I
physics =N
anim = 31451
ctrl = 0
sprpriority = 3
velset = 0,0


[State 31451]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 31450



[State 31451]
type = BindToParent
trigger1 = 1
;------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Horizontal Throw Horizontal End
[Statedef 31459]
type = S
movetype = I
physics =N
;anim = 9800
ctrl = 0
sprpriority = 0
velset = 0,0



[State 31459]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal, Downward

[Statedef 31474]
type    = A
movetype= H
physics = N
velset = 0,0


[State 31474]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 31474, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 31474

[State 31474, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 31474, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 31479]
type    = A
movetype= H
physics = N
velset = 0,17
poweradd = 40


[State 31479, 1]
type = null;ChangeAnim2
Trigger1 = Time = 0
value = 7825


[State 31479, 1]
type = Turn
Trigger1 = Time = 0


[State 31479, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 31479, No scroll]
type = null;ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1


[State 31479, 1]
type = null;ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 0
trigger2 = FrontEdgeBodyDist <= 0
value = 7827

[State 31479, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y >= 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground



;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Throw Up Forward

[Statedef 32000]
type    = S
movetype= A
physics = N
anim = 32000
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 1


[State 32000]
type = Turn
trigger1 = Time = 0
trigger1 = facing != parent,facing

[State 32000]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0



[State 32000]
type = varset
trigger1 = Time = 0
var(1) = parent,stateno

[State 32000]
type = SprPriority
trigger1 = Root,AnimElem = 5
value = -1

[State 32000]
type = Helper
trigger1 = AnimElem = 1
stateno = 32001

[State 32000]
type = Helper
trigger1 = AnimElem = 1
stateno = 32007
helpertype = player



[State 32000, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 218,-56

[State 32000, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 201,-45

[State 32000, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 188,-41


[State 32000, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 158,-42

[State 32000, Bind 5]
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = 153,-42

[State 32000, Bind 6]
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = 148,-41

[State 32000, Bind 7]
type = TargetBind
trigger1 = AnimElemNo(0) = 7
pos = 93,-76

[State 32000, Bind 8]
type = TargetBind
trigger1 = AnimElemNo(0) = 8
pos = 79,-98

[State 32000, Bind 9]
type = TargetBind
trigger1 = AnimElemNo(0) = 9
pos = 62,-117

[State 32000, Bind 10]
type = TargetBind
trigger1 = AnimElemNo(0) = 10
pos = 30,-143

[State 32000, Bind 11]
type = TargetBind
trigger1 = AnimElemNo(0) = 11
pos = 2,-151

[State 32000, Bind 12]
type = TargetBind
trigger1 = AnimElemNo(0) = 12
pos = -13,-152

[State 32000, Bind 13]
type = TargetBind
trigger1 = AnimElemNo(0) = 13
pos = -20,-162

[State 32000, Bind 14]
type = TargetBind
trigger1 = AnimElemNo(0) = 14
pos = -55,-175


[State 32000, Bind 15]
type = TargetBind
trigger1 = AnimElemNo(0) = 15
pos = -105,-183

[State 32000, Bind 16]
type = TargetBind
trigger1 = AnimElemNo(0) = 16
pos = -133,-169

[State 32000, Bind 17]
type = TargetBind
trigger1 = AnimElemNo(0) = 17
pos = -170,-156

[State 32000, Bind 18]
type = TargetBind
trigger1 = AnimElemNo(0) = 18
pos = -198,-132

[State 32000, Bind 19]
type = TargetBind
trigger1 = AnimElemNo(0) = 19
pos = -210,-109

[State 32000, Bind 20]
type = TargetBind
trigger1 = AnimElemNo(0) = 20
pos = -218,-93

[State 32000, Bind 21]
type = TargetBind
trigger1 = AnimElemNo(0) = 21
pos = -155,-83


[State 32000, Bind 22]
type = TargetBind
trigger1 = AnimElemNo(0) = 22
pos = -150,-63

[State 32000, Bind 23]
type = TargetBind
trigger1 = AnimElemNo(0) = 23
pos = -134,-42

[State 32000, Bind 24]
type = TargetBind
trigger1 = AnimElemNo(0) = 24
pos = -126,-38

[State 32000, Bind 25]
type = TargetBind
trigger1 = AnimElemNo(0) = 25
pos = -118,-27

[State 32000, Bind 26]
type = TargetBind
trigger1 = AnimElemNo(0) = 26
pos = -96,-23

[State 32000, Bind 27]
type = TargetBind
trigger1 = AnimElemNo(0) = 27
pos = -80,-96

[State 32000, Bind 28]
type = TargetBind
trigger1 = AnimElemNo(0) = 28
pos = -81,-131

[State 32000, Bind 29]
type = TargetBind
trigger1 = AnimElemNo(0) = 29
pos = -74,-170

[State 32000, Bind 30]
type = TargetBind
trigger1 = AnimElemNo(0) = 30
pos = -54,-210

[State 32000, Bind 31]
type = TargetBind
trigger1 = AnimElemNo(0) = 31
pos = -20,-235

[State 32000, Bind 32]
type = TargetBind
trigger1 = AnimElemNo(0) = 32
pos = 7,-250

[State 32000, Bind 33]
type = TargetBind
trigger1 = AnimElemNo(0) = 33
pos = 43,-258


[State 32000, Bind 34]
type = TargetBind
trigger1 = AnimElemNo(0) = 34
pos = 46,-258


[State 32000]
type = TargetState
trigger1 = AnimElem = 34
value = 32029
ctrl = 0

[State 32000]
type = ChangeState
trigger1 = AnimElem = 34
value = 32019


[State 32000, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A


;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Horizontal
[Statedef 32001]
type = S
movetype = I
physics =N
anim = 32001
ctrl = 0
sprpriority = 3
velset = 0,0

[State 32001]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 32000


[State 32001]
type = BindToParent
trigger1 = 1

;------------------------------------------------------------------------------------------------------------
;Camera Push Left
[Statedef 32007]
type = S
movetype = I
physics =N
anim = 9800
ctrl = 0
sprpriority = 0
velset = -17,0

[State 32007]
type = VelSet
trigger1 = Parent,Time = 17
x = 17

[State 32007]
type = PosSet
trigger1 = Parent,Time = 17
x = Parent,Pos X

[State 32007]
type = DestroySelf
trigger1 = parent,stateno != 32000


;------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Horizontal Throw Horizontal End
[Statedef 32019]
type = S
movetype = I
physics =N
;anim = 9800
ctrl = 0
sprpriority = 0
velset = 0,0



[State 32019]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != var(1)
;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal, Horizontal

[Statedef 32020]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2


[State 32020]
type = Turn
trigger1 = Time = 0
trigger1 = facing = enemy,facing

[State 32020]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 32020, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 32020

[State 32020, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 32020, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 32029]
type    = A
movetype= H
physics = N
velset = -1,-10
poweradd = 40


[State 32029, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7826


[State 32029, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 32029, No scroll]
type = null;ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,0


[State 32029, 1]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 7827

[State 32029, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground



[State 32029, 5]
type = SelfState
trigger1 = Vel Y > 2
value = 5040 ;HITA_RECOV

;---------------------------------------------------------------------------
; Carbonadium Coil Horizontal Ground Slam Forward

[Statedef 32050]
type    = S
movetype= A
physics = N
anim = 32050
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 1


[State 32050]
type = Turn
trigger1 = Time = 0
trigger1 = facing != parent,facing


[State 32050]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 32050]
type = SprPriority
trigger1 = Root,AnimElem = 6
value = -1

[State 32050]
type = Helper
trigger1 = AnimElem = 1
stateno = 32051

[State 32050]
type = Helper
trigger1 = AnimElem = 1
stateno = 32057
helpertype = player



[State 32050, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 204,-35

[State 32050, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 175,-21

[State 32050, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 164,-12


[State 32050, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 164,-12

[State 32050, Bind 5]
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = 89,-42

[State 32050, Bind 6]
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = 86,-54

[State 32050, Bind 7]
type = TargetBind
trigger1 = AnimElemNo(0) = 7
pos = 86,-54

[State 32050, Bind 8]
type = TargetBind
trigger1 = AnimElemNo(0) = 8
pos = 86,-54

[State 32050, Bind 9]
type = TargetBind
trigger1 = AnimElemNo(0) = 9
pos = 86,-54

[State 32050, Bind 10]
type = TargetBind
trigger1 = AnimElemNo(0) = 10
pos = 62,-96

[State 32050, Bind 11]
type = TargetBind
trigger1 = AnimElemNo(0) = 11
pos = 48,-121

[State 32050, Bind 12]
type = TargetBind
trigger1 = AnimElemNo(0) = 12
pos = 46,-135

[State 32050, Bind 13]
type = TargetBind
trigger1 = AnimElemNo(0) = 13
pos = 46,-135

[State 32050, Bind 14]
type = TargetBind
trigger1 = AnimElemNo(0) = 14
pos = 46,-135


[State 32050, Bind 15]
type = TargetBind
trigger1 = AnimElemNo(0) = 15
pos = 19,-176

[State 32050, Bind 16]
type = TargetBind
trigger1 = AnimElemNo(0) = 16
pos = -17,-193

[State 32050, Bind 17]
type = TargetBind
trigger1 = AnimElemNo(0) = 17
pos = -62,-197

[State 32050, Bind 18]
type = TargetBind
trigger1 = AnimElemNo(0) = 18
pos = -109,-196

[State 32050, Bind 19]
type = TargetBind
trigger1 = AnimElemNo(0) = 19
pos = -149,-185

[State 32050, Bind 20]
type = TargetBind
trigger1 = AnimElemNo(0) = 20
pos = -73,-193

[State 32050, Bind 21]
type = TargetBind
trigger1 = AnimElemNo(0) = 21
pos = -37,-193


[State 32050, Bind 22]
type = TargetBind
trigger1 = AnimElemNo(0) = 22
pos = -37,-193

[State 32050, Bind 23]
type = TargetBind
trigger1 = AnimElemNo(0) = 23
pos = -37,-193

[State 32050, Bind 24]
type = TargetBind
trigger1 = AnimElemNo(0) = 24
pos = -37,-193

[State 32050, Bind 25]
type = TargetBind
trigger1 = AnimElemNo(0) = 25
pos = 131,-141

[State 32050, Bind 26]
type = TargetBind
trigger1 = AnimElemNo(0) = 26
pos = 186,-128

[State 32050, Bind 27]
type = TargetBind
trigger1 = AnimElemNo(0) = 27
pos = 237,-98

[State 32050, Bind 28]
type = TargetBind
trigger1 = AnimElemNo(0) = 28
pos = 250,-60

[State 32050, Bind 29]
type = TargetBind
trigger1 = AnimElemNo(0) = 29
pos = 260,-22

[State 32050, Bind 30]
type = TargetBind
trigger1 = AnimElemNo(0) = 30
pos = 251,32

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = -90
kill = 1
absolute = 1


[State 32050]
type = PlaySnd
trigger1 =  AnimElem = 30
trigger1 = Root,Statetype = S
value = 5100,4

[State 32050, EnvShake]
type = EnvShake
trigger1 =  AnimElem = 30
trigger1 = Root,Statetype = S
time = 8
ampl = -8



[State 32050]
type = ParentVarAdd
triggerall =  AnimElem = 29
trigger1 = Parent,var(3)
var(5) = 1
persistent = 0


[State 31310]
type = ParentVarSet
triggerall =  AnimElem = 29
trigger1 = Parent,var(3) = [3,9]
var(2) = Parent,var(3)

[State 32050]
type = TargetState
triggerall =  AnimElem = 30
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [3,4]
trigger2 = Parent,var(3) = 9
value = 31324
ctrl = 0

[State 32050]
type = ChangeState
triggerall =  AnimElem = 30
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [3,4]
trigger2 = Parent,var(3) = 9
value = 31304


[State 32050]
type = TargetState
triggerall =  AnimElem = 30
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [5,6]
value = 31374
ctrl = 0

[State 32050]
type = ChangeState
triggerall =  AnimElem = 30
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [5,6]
value = 31350


[State 32050]
type = TargetState
triggerall =  AnimElem = 30
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [7,8]
value = 32020+(Parent,var(3)-7)*50
ctrl = 0

[State 32050]
type = ChangeState
triggerall =  AnimElem = 30
triggerall = Parent,var(5) = 1
trigger1 = Parent,var(3) = [7,8]
value = 32000+(Parent,var(3)-7)*50







[State 32050]
type = TargetState
trigger1 = AnimElem = 30
value = 32079
ctrl = 0

[State 32050]
type = ChangeState
trigger1 = AnimElem = 30
value = 32069


[State 32050, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Horizontal
[Statedef 32051]
type = S
movetype = I
physics =N
anim = 32051
ctrl = 0
sprpriority = 3
velset = 0,0



[State 32051]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 32050

[State 32051]
type = BindToParent
trigger1 = 1
;------------------------------------------------------------------------------------------------------------
;Camera Push Left
[Statedef 32057]
type = S
movetype = I
physics =N
anim = 9800
ctrl = 0
sprpriority = 0
velset = -17,0

[State 32057]
type = VelSet
trigger1 = Parent,Time = 13
x = 17

[State 32057]
type = PosSet
trigger1 = Parent,Time = 13
x = Parent,Pos X


[State 32057]
type = DestroySelf
trigger1 = parent,stateno != 32050


;------------------------------------------------------------------------------------------------------------
;Carbonadium Coil Horizontal Throw Horizontal End
[Statedef 32069]
type = S
movetype = I
physics =N
;anim = 9800
ctrl = 0
sprpriority = 0
velset = 0,0

[State 32069]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal, Horizontal

[Statedef 32070]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2


[State 32070]
type = Turn
trigger1 = Time = 0
trigger1 = facing = enemy,facing

[State 32070]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 32070, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 32070

[State 32070, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 32070, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Horizontal

[Statedef 32079]
type    = A
movetype= H
physics = N
velset = 0,17
poweradd = 40




[State 32079, 1]
type = null;ChangeAnim2
Trigger1 = Time = 0
value = 7828


[State 32079, 1]
type = null;Turn
Trigger1 = Time = 0



[State 32079, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4


[State 32079, No scroll]
type = null;ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,0


[State 32079, 1]
type = null;ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 7827

[State 32079, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
; Carbonadium Coil Up Transition

[Statedef 32150]
type    = S
movetype= A
physics = N
anim = 32150
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = 0;-150
kill = 1
absolute = 1

[State 32150]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 32150]
type = Helper
trigger1 = AnimElem = 1
stateno = 32151


[State 32150, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 135,-187

[State 32150, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 171,-155


[State 32150, Bind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 206,-118

[State 32150, Bind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 216,-86



[State 32150]
type = TargetState
triggerall = AnimTime = 0
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31324
ctrl = 0

[State 32150]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31304



[State 32150]
type = TargetState
trigger1 = AnimTime = 0
trigger1 = Parent,var(2) = [5,6]
value = 31374
ctrl = 0

[State 32150]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Parent,var(2) = [5,6]
value = 31350


[State 32150]
type = TargetState
trigger1 = Parent,var(2) = [7,8]
trigger1 = AnimTime = 0
value = 32020+(Parent,var(2)-7)*50
ctrl = 0

[State 32150]
type = ChangeState
trigger1 = Parent,var(2) = [7,8]
trigger1 = AnimTime = 0
value = 32000+(Parent,var(2)-7)*50

[State 32150, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Up
[Statedef 32151]
type = S
movetype = I
physics =N
anim = 32151
ctrl = 0
sprpriority = 3
velset = 0,0



[State 32151]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 32150


[State 32151]
type = BindToParent
trigger1 = 1
;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Up

[Statedef 32170]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 32170]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 32170, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 32170

[State 32170, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 32170, 2]
type = DestroySelf
trigger1 = ishelper



;---------------------------------------------------------------------------
; Carbonadium Coil Diag Down Transition

[Statedef 32200]
type    = S
movetype= A
physics = N
anim = 32200
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = 0;-150
kill = 1
absolute = 1

[State 32200]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 32200]
type = Helper
trigger1 = AnimElem = 1
stateno = 32201


[State 32200, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 211,21

[State 32200, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 210,-15


[State 32200]
type = TargetState
triggerall = AnimTime = 0
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31324
ctrl = 0

[State 32200]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31304


[State 32200]
type = TargetState
trigger1 = AnimTime = 0
trigger1 = Parent,var(2) = [5,6]
value = 31374
ctrl = 0

[State 32200]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Parent,var(2) = [5,6]
value = 31350

[State 32200]
type = TargetState
trigger1 = Parent,var(2) = [7,8]
trigger1 = AnimTime = 0
value = 32020+(Parent,var(2)-7)*50
ctrl = 0

[State 32200]
type = ChangeState
trigger1 = Parent,var(2) = [7,8]
trigger1 = AnimTime = 0
value = 32000+(Parent,var(2)-7)*50

[State 32200, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Diag Down
[Statedef 32201]
type = S
movetype = I
physics =N
anim = 32201
ctrl = 0
sprpriority = 3
velset = 0,0



[State 32201]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 32200


[State 32201]
type = BindToParent
trigger1 = 1
;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Down

[Statedef 32220]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 32220]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 32220, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 32220

[State 32220, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 32220, 2]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
; Carbonadium Coil Down Transition

[Statedef 32250]
type    = S
movetype= A
physics = N
anim = 32250
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = 0;-150
kill = 1
absolute = 1

[State 32250]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 32250]
type = Helper
trigger1 = AnimElem = 1
stateno = 32251


[State 32250, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 139,72

[State 32250, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 182,44


[State 32250, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 213,22

[State 32250, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 214,-3

[State 32250]
type = TargetState
triggerall = AnimTime = 0
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31324
ctrl = 0

[State 32250]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31304


[State 32250]
type = TargetState
trigger1 = AnimTime = 0
trigger1 = Parent,var(2) = [5,6]
value = 31374
ctrl = 0

[State 32250]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Parent,var(2) = [5,6]
value = 31350

[State 32250]
type = TargetState
trigger1 = Parent,var(2) = [7,8]
trigger1 = AnimTime = 0
value = 32020+(Parent,var(2)-7)*50
ctrl = 0

[State 32250]
type = ChangeState
trigger1 = Parent,var(2) = [7,8]
trigger1 = AnimTime = 0
value = 32000+(Parent,var(2)-7)*50

[State 32250, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Down
[Statedef 32251]
type = S
movetype = I
physics =N
anim = 32251
ctrl = 0
sprpriority = 3
velset = 0,0


[State 32251]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 32250


[State 32251]
type = BindToParent
trigger1 = 1
;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Down

[Statedef 32270]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 32270]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 32270, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 32270

[State 32270, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 32270, 2]
type = DestroySelf
trigger1 = ishelper



;---------------------------------------------------------------------------
; Carbonadium Coil Diag Up Transition

[Statedef 33000]
type    = S
movetype= A
physics = N
anim = 33000
;poweradd = 40
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 1

[State 33000]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 33000]
type = Helper
trigger1 = AnimElem = 1
stateno = 33001


[State 33000, Bind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 181,-105

[State 33000, Bind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 183,-70

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 0
value = 0;-150
kill = 1
absolute = 1

[State 33000]
type = TargetState
triggerall = AnimTime = 0
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31324
ctrl = 0

[State 33000]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = Parent,var(2) = [3,4]
trigger2 = Parent,var(2) = 9
value = 31304


[State 33000]
type = TargetState
trigger1 = AnimTime = 0
trigger1 = Parent,var(2) = [5,6]
value = 31374
ctrl = 0

[State 33000]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Parent,var(2) = [5,6]
value = 31350

[State 33000]
type = TargetState
trigger1 = Parent,var(2) = [7,8]
trigger1 = AnimTime = 0
value = 32020+(Parent,var(2)-7)*50
ctrl = 0

[State 33000]
type = ChangeState
trigger1 = Parent,var(2) = [7,8]
trigger1 = AnimTime = 0
value = 32000+(Parent,var(2)-7)*50

[State 33000, State End]
type = DestroySelf
trigger1 = !NumTarget(21241)
trigger2 = Root,MoveType != A

;------------------------------------------------------------------------------------------------------------
;Coil Wrap Helper For Diag Up
[Statedef 33001]
type = S
movetype = I
physics =N
anim = 33001
ctrl = 0
sprpriority = 3
velset = 0,0

[State 33001]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 33000

[State 33001]
type = BindToParent
trigger1 = 1
;---------------------------------------------------------------------------
;Thrown by Carbonadium Coil Diag Up

[Statedef 33020]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 33020]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 33020, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 33020


;ignorehitpause =
;persistent =

;ignorehitpause =
;persistent =


[State 33020, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 33020, 2]
type = DestroySelf
trigger1 = ishelper
 ;---- teste

 ;Wall Smack
[Statedef 7827]
type = A
movetype = H
physics = N
;velset = 0,0


[State 7827, 4]
type = null;ChangeAnim2
trigger1 = time = 0
value = 827


[State 7827, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

;[State 7827, Spark]
;type = Explod
;trigger1 = Time = 0
;trigger1 = Anim = 7827
;anim = F72
;pos = 0, 0
;sprpriority = 3

;[State 7827, Spark]
;type = Explod
;trigger1 = Time = 0
;trigger1 = Anim = 7825
;anim = F72
;pos = -40,-40
;sprpriority = 3

[State 7828, 5]
type = null;Turn
trigger1 = time = 0

[State 7827, 6]
type = null;VelSet
trigger1 = time = 0
x = ifelse(Vel X < 0,3,-3)




[State 7827, 7]
type = VelAdd
trigger1 = time >= 0
y = .39


[State 7827, 8]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;----------------
[StateDef 1900]
type = S
movetype = A
physics = N
anim = 1900
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 0,2

[State 2040]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2000,1

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
trigger5 = animelem = 10
trigger6 = animelem = 11
trigger7 = animelem = 15
trigger8 = animelem = 17
x = 15

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 12
trigger2 = animelem = 19
x = 16

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 13
x = 12

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 14
x = 17

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 16
x = 13

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 18
x = 2

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 100,5
guardflag = MA
pausetime = 10,10
hitsound = 5,3
guardsound = 6,0
priority = 4, Hit
sparkno = 3
sparkxy = 0,-55
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,-4
guard.velocity = -8
air.velocity = -14,-4
fall = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
trigger2 = movehit
trigger3 = moveguarded
trigger4 = FrontEdgeBodyDist < 30
value = 1901
ctrl = 0


[StateDef 1901]
type = S
movetype = I
physics = N
anim = 1901
velset = 10,0
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 4



[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1




