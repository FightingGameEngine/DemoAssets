;---------------------------------------------------------------------------
; Summon Intro
[Statedef 53]
type = A
physics = A
velset = 5, 0

[State 53, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [44, 46]
value = IfElse(!(Vel X), 44, IfElse((Vel X) > 0, 45, 46))

[State 53, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 53, PosSet]
type = PosSet
trigger1 = !Time && PrevStateNo != 9000
x = -300 * Facing	; Inaccurate numbers
y = -152			; Inaccurate numbers

;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 200]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 200, PlaySnd]
type = PlaySnd
triggerall = !Time
trigger1 = Anim != 200
trigger2 = PrevStateNo = 200
value = 200, 0

[State 200, PowerAdd]
type = PowerAdd
triggerall = !Time
trigger1 = Anim != 200
trigger2 = PrevStateNo = 200
value = 14

[State 200, Super Armor - ChangeAnim]
type = ChangeAnim
triggerall = !Time
trigger1 = Anim != 200
trigger2 = PrevStateNo = 200
value = 200

[State 200, HitDef]
type = HitDef
trigger1 = !AnimElemTime(7)
attr = S, NA
guardflag = MA
animtype = Light
damage = 42, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, -80
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -7
air.velocity = -5, 7
fall.yvelocity = -6
air.fall = 1
guard.kill = 0

[State 200, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 200, Crouch]
type = ChangeState
triggerall = Command = "holddown"
trigger1 = AnimElemTime(7) <= 0
trigger2 = AnimElemTime(16) >= 0
value = 10
ctrl = 1

[State 200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Stand Light Punch
[Statedef 205]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 205, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 205
value = 205, 0

[State 205, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 205
value = 14

[State 205, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 205
value = 205

[State 205, HitDef]
type = HitDef
trigger1 = !AnimElemTime(8)
attr = S, NA
guardflag = MA
animtype = Light
damage = 42, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, -80
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -7
air.velocity = -5, 7
fall.yvelocity = -6
air.fall = 1
guard.kill = 0

[State 205, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 205, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Stand Medium Punch
[Statedef 206]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 206, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 206
value = 200, 0

[State 206, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 206
value = 43

[State 206, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 206
value = 206

[State 206, HitDef]
type = HitDef
trigger1 = !AnimElemTime(8)
attr = S, NA
guardflag = MA
animtype = Medium
damage = 42, 7
pausetime = 4, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -80
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -7
air.velocity = -5, 7
fall.yvelocity = -6
air.fall = 1
guard.kill = 0

[State 206, HitDef]
type = HitDef
trigger1 = !AnimElemTime(16)
attr = S, NA
guardflag = MA
animtype = Medium
damage = 21, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -80
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -7
air.velocity = -5, 7
fall.yvelocity = -6
air.fall = 1
guard.kill = 0

[State 206, HitFlash]
type = Explod
triggerall = MoveHit = 1
trigger1 = HitPauseTime = 8 && AnimElemTime(16) = 1
trigger2 = HitPauseTime = 3 && AnimElemTime(8) = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 206, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[Statedef 210]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 1

[State 210, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 210
value = 210, 0

[State 210, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 210
value = 43

[State 210, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 210
value = 210

[State 210, Missile A]
type = Helper
trigger1 = !AnimElemTime(13)
name = "Missile A"
id = 215
pos = 57, -108
stateno = 215
ownpal = 1

[State 210, Missile B]
type = Helper
trigger1 = !AnimElemTime(13)
name = "Missile B"
id = 217
pos = 84, -99
stateno = 215
ownpal = 1

[State 210, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 211

;---------------------------------------------------------------------------
; Stand Medium Punch - Hold
[Statedef 211]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 1

[State 211, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 211
value = 211

[State 211, TimerSet]
type = VarSet
trigger1 = !Time && PrevStateNo != 9000
var(31) = 153

[State 211, ChangeState]
type = ChangeState
triggerall = AnimElemTime(4) >= 0
trigger1 = Command != "holdy"
trigger2 = !Var(31)
value = 212

[State 211, TimerCountDown]
type = VarAdd
trigger1 = Var(31)
var(31) = -1

;---------------------------------------------------------------------------
; Stand Medium Punch - Release
[Statedef 212]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 1

[State 212, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 212
value = 212, 0

[State 212, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 212
value = 212

[State 212, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch - Helper - Missile
[Statedef 215]
type = A
movetype = A
anim = 215 + 2 * IsHelper(217)
ctrl = 0
sprpriority = 2 - 2 * IsHelper(217)

[State 215, BindToParent - Missile A]
type = BindToParent
trigger1 = IsHelper(215)
time = 1
pos = 57, -108

[State 215, BindToParent - Missile B]
type = BindToParent
trigger1 = IsHelper(217)
time = 1
pos = 84, -99

[State 215, BindToParent - Missile A]
type = BindToParent
trigger1 = IsHelper(215)
trigger1 = Parent, AnimElemNo(0) = [15, 16]
time = 1
pos = 54, -108

[State 215, BindToParent - Missile B]
type = BindToParent
trigger1 = IsHelper(217)
trigger1 = Parent, AnimElemNo(0) = [15, 16]
time = 1
pos = 83, -99

[State 215, Launch Initiate]
type = ChangeAnim
trigger1 = Parent, Anim = 212
value = Anim + 1
persistent = 0

[State 215, Launch]
type = ChangeState
trigger1 = Anim = 216 || Anim = 218
trigger1 = !AnimElemTime(3)
value = 216

[State 215, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [210, 212]

;---------------------------------------------------------------------------
; Stand Medium Punch - Helper - Missile Launched
[Statedef 216]
type = A
movetype = A
velset = 11, 5
ctrl = 0

[State 216, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Parent, FVar(10)

[State 216, HitDef]
Type = HitDef
Trigger1 = !MoveContact
attr = S, NP
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = IfElse(IsHelper(217), 76, 35), 7
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, 0
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -10, -11
down.velocity = -12
down.hittime = 2; 10; 20
guard.kill = 0

[State 216, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 216, Explode]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = MoveContact
value = 217

;---------------------------------------------------------------------------
; Stand Medium Punch - Helper - Missile Explode
[Statedef 217]
type = A
anim = 6041
velset = 0, 0
ctrl = 0

[State 217, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 215, 0

[State 217, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
; Stand Strong Punch
[Statedef 220]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 220, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 220
value = 56

[State 220, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 220
value = 220

[State 220, Beam Energy]
type = Helper
trigger1 = !AnimElemTime(13)
name = "Beam Energy"
id = 221
pos = 0, 0
stateno = 221
ownpal = 1

[State 220, Beam]
type = Helper
trigger1 = !AnimElemTime(16)
name = "Beam"
id = 222
pos = 88, -104
stateno = 222
ownpal = 1

[State 220, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Punch - Helper - Beam Energy
[Statedef 221]
anim = 221
ctrl = 0
sprpriority = 3

[State 221, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 220, 0

[State 221, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 221, BindToParent]
type = BindToParent
trigger1 = !Time
time = -1
pos = 0, 0

[State 221, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Parent, Anim != 220

;---------------------------------------------------------------------------
; Stand Strong Punch - Helper - Beam
[Statedef 222]
movetype = A
anim = 222
ctrl = 0
sprpriority = 2

[State 222, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 88, -104

[State 222, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 222, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Parent, FVar(10)

[State 222, HitDef]
Type = HitDef;Projectile
trigger1 = !MoveContact
;trigger1 = AnimElemNo(0) = 7
;projID = 223
;projanim = 223
;projremovetime = 25
attr = S, NP
guardflag = MA
animtype = Hard
damage = 69, 7;173, 7	; XCOTA damage
pausetime = 0, 5
sparkno = S7002
sparkxy = 0, 0
hitsound = S5, 20
guardsound = S6, 0
ground.type = High
ground.slidetime = 0
ground.hittime = 12
air.hittime = 12
yaccel = 0.68
ground.velocity = -12, -7
air.velocity = -13, -6
fall = 1
fall.yvelocity = -4	; air.fall.yvelocity = -6
guard.kill = 0

[State 222, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 222, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Parent, Anim != 220

;---------------------------------------------------------------------------
; Original - Stand Strong Punch - Rocket
[Statedef 225]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 225, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 225
value = 56

[State 225, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 225
value = 225

[State 225, Smoke]
type = Helper
trigger1 = !AnimElemTime(11)
name = "Smoke"
id = 226
pos = 13, -40
stateno = 226
ownpal = 1

[State 225, Rocket]
type = Helper
trigger1 = !AnimElemTime(16)
name = "Rocket"
id = 422
pos = 122 + 13, -67 - 40
stateno = 422
ownpal = 1

[State 420, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Original - Stand Strong Punch - Rocket - Helper - Smoke
[Statedef 226]
anim = 421
ctrl = 0
sprpriority = 3

[State 226, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 420, 0

[State 226, BindToParent]
type = BindToParent
trigger1 = !Time
time = -1
pos = 13, -40

[State 226, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Parent, Anim != 225

;---------------------------------------------------------------------------
; Stand Light Kick - MVC2 Stand Medium Kick
[Statedef 230]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 230, PlaySnd]
type = PlaySnd
triggerall = !Time
trigger1 = Anim != 230
trigger2 = PrevStateNo = 230
value = 200, 0

[State 230, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 230
value = 43

[State 230, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 230
value = 230

[State 230, HitDef]
type = HitDef
trigger1 = !AnimElemTime(4)
attr = S, NA
guardflag = MA
animtype = Medium;Light	; XCOTA animtype
damage = 35, 7;49, 7	; XCOTA damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001;S7000	; XCOTA spark
sparkxy = 0, -60
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -11, -5
fall.yvelocity = -5
air.fall = 1
guard.kill = 0

[State 230, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Stand Light Kick
[Statedef 235]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 235, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 235
value = 205, 0

[State 235, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 235
value = 14

[State 235, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 235
value = 235

[State 235, HitDef]
type = HitDef
trigger1 = !AnimElemTime(4)
attr = S, NA
guardflag = MA
animtype = Light
damage = 35, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, -60
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -11, -5
fall.yvelocity = -5
air.fall = 1
guard.kill = 0

[State 235, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 235, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[Statedef 240]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 240, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 240
value = 240, 0

[State 240, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 240
value = 43

[State 240, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 240
value = 240

[State 240, Grenade 1 + 2 + 3]
Type = Projectile
trigger1 = !AnimElemTime(9)
trigger2 = !AnimElemTime(11)
trigger3 = !AnimElemTime(13)
projid = 241
projanim = 241
projremovetime = 15
offset = 59 * !AnimElemTime(9) + 91 * !AnimElemTime(11) + 121 * !AnimElemTime(13), -17 * !AnimElemTime(9) + -37 * !AnimElemTime(11) + -78 * !AnimElemTime(13)
attr = S, NA
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = 49, 7
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, 0
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
air.hittime = 12
yaccel = 0.68
ground.velocity = -5, -15	; XCOTA velocity
air.velocity = -5, -15	; XCOTA velocity
down.velocity = -15, 0
down.hittime = 2
guard.kill = 0

[State 240, Grenade 4 + 5 + 6]
Type = Projectile
trigger1 = !AnimElemTime(15)
trigger2 = !AnimElemTime(18)
trigger3 = !AnimElemTime(26)
projid = 241
projanim = 241
projremovetime = 15
offset = 118 * !AnimElemTime(15) + 111 * !AnimElemTime(18) + 94 * !AnimElemTime(26), -119 * !AnimElemTime(15) + -156 * !AnimElemTime(18) + -164 * !AnimElemTime(26)
attr = S, NA
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = 49, 7
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, 0
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
air.hittime = 12
yaccel = 0.68
ground.velocity = -5, -15	; XCOTA velocity
air.velocity = -5, -15	; XCOTA velocity
down.velocity = -15, 0
down.hittime = 2
guard.kill = 0

[State 240, Grenade 7]
Type = Projectile
trigger1 = !AnimElemTime(32)
projid = 241
projanim = 241
projremovetime = 15
offset = 74 * !AnimElemTime(32), -141 * !AnimElemTime(32)
attr = S, NA
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = 49, 7
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, 0
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
air.hittime = 12
yaccel = 0.68
ground.velocity = -5, -15	; XCOTA velocity
air.velocity = -5, -15	; XCOTA velocity
down.velocity = -15, 0
down.hittime = 2
guard.kill = 0

[State 240, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = -1
trigger2 = AnimElemTime(11) = -1
trigger3 = AnimElemTime(13) = -1
trigger4 = AnimElemTime(15) = -1
trigger5 = AnimElemTime(18) = -1
trigger6 = AnimElemTime(26) = -1
trigger7 = AnimElemTime(32) = -1
value = 215, 0

[State 240, HitFlash]
type = Explod
trigger1 = ProjHit[241] = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 240, CornerPush Reset]
type = VarSet
trigger1 = FVar(25) && NumTarget
trigger1 = (target, HitOver) || (target, GetHitVar(hitshaketime) > 0 && target, Time <= 0)
fvar(25) = 0

[State 240, CornerPush]
type = VarSet
trigger1 = ProjContact241 = 1 && NumTarget
fvar(25) = target, GetHitVar(xvel)
ignorehitpause = 1

[State 240, CornerPush PosAdd VarSet]
type = PosAdd
triggerall = FVar(25)
triggerall = NumTarget
triggerall = !HitPauseTime && (target, GetHitVar(hitshaketime) <= 0)
triggerall = (target, StateType != L)
trigger1 = target, FrontEdgeBodyDist <= Abs(target, Vel X)
trigger1 = (target, GetHitVar(xvel) * target, Facing) > 0
trigger2 = target, BackEdgeBodyDist <= Abs(target, Vel X)
trigger2 = (target, GetHitVar(xvel) * target, Facing) < 0
x = IfElse(target, FrontEdgeBodyDist <= 0, -1, 1) * (target, Facing) * FVar(25)

[State 240, CornerPush Friction]
type = VarSet
trigger1 = NumTarget
trigger1 = target, GetHitVar(hitshaketime) <= 0
fvar(25) = FVar(25) * 0.85

[State 240, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Kick
[Statedef 250]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 250, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 250
value = 250, 0

[State 250, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 250
value = 56

[State 250, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 250
value = 250

[State 250, HitDef]
type = HitDef
trigger1 = !AnimElemTime(13)
attr = S, NA
guardflag = MA
animtype = Hard
damage = 125, 7;215, 7	; XCOTA damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -50
hitsound = S5, 3
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -14, 0
fall.yvelocity = -4
air.fall = 1
guard.kill = 0

[State 250, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 250, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Stand Strong Kick
[Statedef 251]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 251, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 240
value = 240, 0

[State 251, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 240
value = 56

[State 251, Grenade Generator]
type = Helper
trigger1 = !Time
trigger1 = Anim != 240
name = "Grenade Generator"
id = 252
stateno = 252
ownpal = 1

[State 251, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 240
value = 240

[State 251, HitDef]
Type = HitDef
trigger1 = !AnimElemTime(8)
attr = S, NA
hitflag = MAFD
guardflag = MA
animtype = Up
damage = 125, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -30
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime = 12
air.hittime = 12
yaccel = 0.68
ground.velocity = 0, -16;-5, -15	; XCOTA velocity
air.velocity = 0, -16
down.velocity = -15, 0
down.hittime = 2
guard.kill = 0

[State 251, Launch Explod]
type = Explod
trigger1 = MoveHit = 1
anim = 7080
id = 7080
pos = 0, enemyNear, Const(size.mid.pos.y) - 30
postype = p2
bindtime = 1
scale = Const(size.xscale), Const(size.yscale)
sprpriority = 2
ontop = 1
ownpal = 1
ignorehitpause = 1
trans = add
persistent = 0

[State 251, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 251, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Stand Strong Kick - Helper - Grenade Generator
[Statedef 252]
anim = 240
ctrl = 0

[State 252, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 252, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 252, Grenade 1]
type = Explod
trigger1 = AnimElemTime(9) = -1
anim = 241
id = 241
pos = 59, -17
sprpriority = 2
shadow = -1

[State 252, Grenade 2]
type = Explod
trigger1 = AnimElemTime(11) = -1
anim = 241
id = 241
pos = 91, -37
sprpriority = 2
shadow = -1

[State 252, Grenade 3]
type = Explod
trigger1 = AnimElemTime(13) = -1
anim = 241
id = 241
pos = 121, -78
sprpriority = 2
shadow = -1

[State 252, Grenade 4]
type = Explod
trigger1 = AnimElemTime(15) = -1
anim = 241
id = 241
pos = 118, -119
sprpriority = 2
shadow = -1

[State 252, Grenade 5]
type = Explod
trigger1 = AnimElemTime(18) = -1
anim = 241
id = 241
pos = 111, -156
sprpriority = 2
shadow = -1

[State 252, Grenade 6]
type = Explod
trigger1 = AnimElemTime(26) = -1
anim = 241
id = 241
pos = 94, -164
sprpriority = 2
shadow = -1

[State 252, Grenade 7]
type = Explod
trigger1 = AnimElemTime(32) = -1
anim = 241
id = 241
pos = 74, -141
sprpriority = 2
shadow = -1

[State 252, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(9) = -1
trigger2 = AnimElemTime(11) = -1
trigger3 = AnimElemTime(13) = -1
trigger4 = AnimElemTime(15) = -1
trigger5 = AnimElemTime(18) = -1
trigger6 = AnimElemTime(26) = -1
trigger7 = AnimElemTime(32) = -1
value = 215, 0

[State 252, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
; Crouch Light Punch
[Statedef 400]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 400, PlaySnd]
type = PlaySnd
triggerall = !Time
trigger1 = Anim != 400
trigger2 = PrevStateNo = 400
value = 200, 0

[State 400, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 400
value = 14

[State 400, Super Armor - ChangeAnim]
type = ChangeAnim
triggerall = !Time
trigger1 = Anim != 400
trigger2 = PrevStateNo = 400
value = 400

[State 400, HitDef]
type = HitDef
trigger1 = !AnimElemTime(7)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Light
damage = 49, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, -36
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -10, 6
fall.yvelocity = -4
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 400, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, Crouch]
type = ChangeState
triggerall = Command != "holddown"
trigger1 = AnimElemTime(16) >= 0
value = 12
ctrl = 1

[State 400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Crouch Light Punch
[Statedef 405]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 405, PlaySnd]
type = PlaySnd
triggerall = !Time
trigger1 = Anim != 405
value = 205, 0

[State 405, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 405
value = 14

[State 405, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 405
value = 405

[State 405, HitDef]
type = HitDef
trigger1 = !AnimElemTime(7)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Light
damage = 42, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, -36
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -10, 6
fall.yvelocity = -4
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 405, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 405, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Crouch Medium Punch
[Statedef 406]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 406, PlaySnd]
type = PlaySnd
triggerall = !Time
trigger1 = Anim != 406
value = 200, 0

[State 406, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 406
value = 43

[State 406, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 406
value = 406

[State 406, HitDef]
type = HitDef
trigger1 = !AnimElemTime(7)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = 42, 7
pausetime = 4, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -36
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -10, 6
fall.yvelocity = -4
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 406, HitDef]
type = HitDef
trigger1 = !AnimElemTime(17)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = 21, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -36
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -10, 6
fall.yvelocity = -4
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 406, HitFlash]
type = Explod
triggerall = MoveHit = 1
trigger1 = HitPauseTime = 8 && AnimElemTime(17) = 1
trigger2 = HitPauseTime = 3 && AnimElemTime(7) = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 406, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[Statedef 410]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 1

[State 410, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 410
value = 210, 0

[State 410, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 410
value = 43

[State 410, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 410
value = 410

[State 410, Missile A]
type = Helper
trigger1 = !AnimElemTime(13)
name = "Missile A"
id = 415
pos = 60, -67
stateno = 415
ownpal = 1

[State 410, Missile B]
type = Helper
trigger1 = !AnimElemTime(13)
name = "Missile B"
id = 417
pos = 87, -62
stateno = 415
ownpal = 1

[State 410, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 411

;---------------------------------------------------------------------------
; Crouch Medium Punch - Hold
[Statedef 411]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 1

[State 411, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 411
value = 411

[State 411, TimerSet]
type = VarSet
trigger1 = !Time && PrevStateNo != 9000
var(31) = 152

[State 411, ChangeState]
type = ChangeState
triggerall = AnimElemTime(3) >= 0
trigger1 = Command != "holdy"
trigger2 = !Var(31)
value = 412

[State 411, TimerCountDown]
type = VarAdd
trigger1 = Var(31)
var(31) = -1

;---------------------------------------------------------------------------
; Crouch Medium Punch - Release
[Statedef 412]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 1

[State 412, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 412
value = 212, 0

[State 412, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 412
value = 412

[State 412, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch - Helper - Missile
[Statedef 415]
type = A
movetype = A
anim = 215 + 2 * IsHelper(417)
ctrl = 0
sprpriority = 2 - 2 * IsHelper(417)

[State 415, BindToParent - Missile A]
type = BindToParent
trigger1 = IsHelper(415)
time = 1
pos = 60, -67

[State 415, BindToParent - Missile B]
type = BindToParent
trigger1 = IsHelper(417)
time = 1
pos = 87, -62

[State 415, BindToParent - Missile A]
type = BindToParent
trigger1 = IsHelper(415)
trigger1 = Parent, AnimElemNo(0) = [14, 15]
time = 1
pos = 57, -67

[State 415, BindToParent - Missile B]
type = BindToParent
trigger1 = IsHelper(417)
trigger1 = Parent, AnimElemNo(0) = [14, 15]
time = 1
pos = 86, -62

[State 415, Launch Initiate]
type = ChangeAnim
trigger1 = Parent, Anim = 412
value = Anim + 1
persistent = 0

[State 415, Launch]
type = ChangeState
trigger1 = Anim = 216 || Anim = 218
trigger1 = !AnimElemTime(3)
value = 416

[State 415, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [410, 412]

;---------------------------------------------------------------------------
; Crouch Medium Punch - Helper - Missile Launched
[Statedef 416]
type = A
movetype = A
velset = 14, 6
ctrl = 0

[State 416, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Parent, FVar(10)

[State 416, HitDef]
Type = HitDef
Trigger1 = !MoveContact
attr = C, NP
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = IfElse(IsHelper(417), 76, 35), 7
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, 0
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -9, -11
down.velocity = -12
down.hittime = 2
guard.kill = 0

[State 416, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 416, Explode]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = MoveContact
value = 217

;---------------------------------------------------------------------------
; Crouch Strong Punch
[Statedef 420]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 420, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 420
value = 56

[State 420, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 420
value = 420

[State 420, Smoke]
type = Helper
trigger1 = !AnimElemTime(11)
name = "Smoke"
id = 421
pos = 0, 0
stateno = 421
ownpal = 1

[State 420, Rocket]
type = Helper
trigger1 = !AnimElemTime(16)
name = "Rocket"
id = 422
pos = 122, -67
stateno = 422
ownpal = 1

[State 420, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Punch - Helper - Smoke
[Statedef 421]
anim = 421
ctrl = 0
sprpriority = 3

[State 421, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 420, 0

[State 421, BindToParent]
type = BindToParent
trigger1 = !Time
time = -1
pos = 0, 0

[State 421, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Parent, Anim != 420

;---------------------------------------------------------------------------
; Crouch Strong Punch - Helper - Rocket
[Statedef 422]
type = A
movetype = A
anim = 422
velset = 1, 0
ctrl = 0
sprpriority = 2

[State 422, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Parent, FVar(10)

[State 422, VelSet]
type = VelSet
trigger1 = Time
x = 6

[State 422, HitDef]
Type = HitDef
trigger1 = !MoveContact
attr = C, NP
guardflag = MA
animtype = Hard
damage = 90, 7;180, 7 ; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, 0
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -9, -12
guard.kill = 0

[State 422, PosFreeze]
type = PosFreeze
trigger1 = MoveContact

[State 422, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 422, Explode]
type = ChangeState
trigger1 = MoveContact = 2
value = 423

;---------------------------------------------------------------------------
; Crouch Strong Punch - Helper - Rocket Explode
[Statedef 423]
type = A
velset = 0, 0
ctrl = 0

[State 423, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 423, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 423, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 215, 0

[State 423, Impact 1]
type = Explod
trigger1 = !Time
anim = 6040
id = 6040
pos = 0, IfElse(NumTarget, enemyNear, Const(size.mid.pos.y), -40)
postype = p2
facing = -1 * IfElse(Facing = enemy, Facing, -1, 1)
bindtime = -1
random = 30, 30
sprpriority = 3
ignorehitpause = 1

[State 423, Impact 2]
type = Explod
trigger1 = !Time
anim = 6040
id = 6040
pos = 0, IfElse(NumTarget, enemyNear, Const(size.mid.pos.y), -40)
postype = p2
facing = -1 * IfElse(Facing = enemy, Facing, -1, 1)
bindtime = -1
random = 30, 30
sprpriority = 3
ignorehitpause = 1

[State 423, Impact 3]
type = Explod
trigger1 = !Time
anim = 6040
id = 6040
pos = 0, IfElse(NumTarget, enemyNear, Const(size.mid.pos.y), -40)
postype = p2
facing = -1 * IfElse(Facing = enemy, Facing, -1, 1)
bindtime = -1
random = 30, 30
sprpriority = 3
ignorehitpause = 1

[State 423, Impact 4]
type = Explod
trigger1 = !Time
anim = 6040
id = 6040
pos = 0, IfElse(NumTarget, enemyNear, Const(size.mid.pos.y), -40)
postype = p2
facing = -1 * IfElse(Facing = enemy, Facing, -1, 1)
bindtime = -1
random = 30, 30
sprpriority = 3
ignorehitpause = 1

[State 423, Impact 5]
type = Explod
trigger1 = !Time
anim = 6040
id = 6040
pos = 0, IfElse(NumTarget, enemyNear, Const(size.mid.pos.y), -40)
postype = p2
facing = -1 * IfElse(Facing = enemy, Facing, -1, 1)
bindtime = -1
random = 30, 30
sprpriority = 3
ignorehitpause = 1

[State 423, Impact 6]
type = Explod
trigger1 = !Time
anim = 6040
id = 6040
pos = 0, IfElse(NumTarget, enemyNear, Const(size.mid.pos.y), -40)
postype = p2
facing = -1 * IfElse(Facing = enemy, Facing, -1, 1)
bindtime = -1
random = 30, 30
sprpriority = 3
ignorehitpause = 1

[State 423, Explosion 1]
type = Explod
trigger1 = Time
trigger1 = Random < 200
trigger1 = NumExplod(6041) < 7
anim = 6041
id = 6041
pos = 0, IfElse(NumTarget, enemyNear, Const(size.mid.pos.y), -40)
postype = p2
facing = -1 * IfElse(Facing = enemy, Facing, -1, 1)
bindtime = -1
random = 30, 30
sprpriority = 3
ignorehitpause = 1

[State 423, Explosion 2]
type = Explod
trigger1 = Time
trigger1 = Random < 200
trigger1 = NumExplod(6041) < 7
anim = 6041
id = 6041
pos = 0, IfElse(NumTarget, enemyNear, Const(size.mid.pos.y), -40)
postype = p2
facing = -1 * IfElse(Facing = enemy, Facing, -1, 1)
bindtime = -1
random = 30, 30
sprpriority = 3
ignorehitpause = 1

[State 423, DestroySelf]
type = DestroySelf
trigger1 = Time = 16

;---------------------------------------------------------------------------
; MVC2 - Crouch Strong Punch
[Statedef 425]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 425, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 425
value = 56

[State 425, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 425
value = 425

[State 425, Beam Energy]
type = Helper
trigger1 = !AnimElemTime(13)
name = "Beam Energy"
id = 426
pos = -13, 40
stateno = 426
ownpal = 1

[State 425, Beam]
type = Helper
trigger1 = !AnimElemTime(16)
name = "Beam"
id = 427
pos = 88 - 13, -104 + 40
stateno = 427
ownpal = 1

[State 425, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Crouch Strong Punch - Helper - Beam Energy
[Statedef 426]
anim = 221
ctrl = 0
sprpriority = 3

[State 426, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 220, 0

[State 426, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 426, BindToParent]
type = BindToParent
trigger1 = !Time
time = -1
pos = -13, 40

[State 426, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Parent, Anim != 425

;---------------------------------------------------------------------------
; MVC2 - Crouch Strong Punch - Helper - Beam
[Statedef 427]
movetype = A
anim = 222
ctrl = 0
sprpriority = 2

[State 427, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 88 - 13, -104 + 40

[State 427, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 427, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Parent, FVar(10)

[State 427, HitDef]
Type = HitDef;Projectile
trigger1 = !MoveContact
;trigger1 = AnimElemNo(0) = 7
;projID = 223
;projanim = 223
;projremovetime = 25
attr = S, NP
guardflag = MA
animtype = Hard
damage = 69, 7
pausetime = 0, 5
sparkno = S7002
sparkxy = 0, 0
hitsound = S5, 20
guardsound = S6, 0
ground.type = High
ground.slidetime = 0
ground.hittime = 12
air.hittime = 12
yaccel = 0.68
ground.velocity = -12, -7
air.velocity = -13, -6
fall = 1
fall.yvelocity = -4	; air.fall.yvelocity = -6
guard.kill = 0

[State 427, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 427, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Parent, Anim != 425

;---------------------------------------------------------------------------
; Crouch Light Kick
[Statedef 430]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 430, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 430
value = 200, 0

[State 430, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 430
value = 14

[State 430, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 430
value = 430

[State 430, HitDef]
type = HitDef
trigger1 = !AnimElemTime(6)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Light
damage = 49, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, -10
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -11, 0
fall.yvelocity = -3
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 430, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 430, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Crouch Light Kick
[Statedef 435]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 435, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 435
value = 205, 0

[State 435, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 435
value = 14

[State 435, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 435
value = 435

[State 435, HitDef]
type = HitDef
trigger1 = !AnimElemTime(9)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Light
damage = 42, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, -10
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -11, 0
fall.yvelocity = -3
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 435, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 435, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Crouch Medium Kick
[Statedef 436]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 436, PlaySnd]
type = PlaySnd
trigger1 = Anim = 436
trigger1 = !AnimElemTime(17)
value = 200, 0

[State 436, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 436
value = 43

[State 436, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 436
value = 436

[State 436, HitDef]
type = HitDef
trigger1 = !AnimElemTime(9)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = 42, 7
pausetime = 4, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -10
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -11, 0
fall.yvelocity = -3
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 436, HitDef]
type = HitDef
trigger1 = !AnimElemTime(19)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = 21, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -10
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -13, 0
fall.yvelocity = -3
air.fall = 1
down.velocity = -12
down.hittime = 2
guard.kill = 0

[State 436, HitFlash]
type = Explod
triggerall = MoveHit = 1
trigger1 = HitPauseTime = 8 && AnimElemTime(19) = 1
trigger2 = HitPauseTime = 3 && AnimElemTime(9) = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 436, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[Statedef 440]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 440, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 440
value = 200, 0

[State 440, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 440
value = 43

[State 440, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 440
value = 440

[State 440, HitDef]
type = HitDef
trigger1 = !AnimElemTime(10)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Medium
damage = 50, 7;111, 7	; XCOTA damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -10
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -13, 0
fall.yvelocity = -3
air.fall = 1
down.velocity = -12
down.hittime = 2
guard.kill = 0

[State 440, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 440, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 450]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 450, Reset NumContact]
type = VarSet
trigger1 = Anim != 450
var(13) = 0

[State 450, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 450
value = 56

[State 450, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 450
value = 450

[State 450, PlaySnd]
type = PlaySnd
triggerall = Anim = 450
trigger1 = !AnimElemTime(13)
trigger2 = !AnimElemTime(29)
value = 200, 0

[State 450, HitDef]
type = HitDef
trigger1 = !AnimElemTime(13)
trigger2 = !AnimElemTime(29)
trigger2 = !Var(13)
attr = C, NA
hitflag = MAFD
guardflag = L
animtype = Hard
damage = 76, 7;153, 7	; XCOTA damage
pausetime = 9, 5;17, 5	; XCOTA pausetime
guard.pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -10
hitsound = S5, 3
guardsound = S6, 0
ground.type = Trip
ground.slidetime = 12
guard.slidetime = 12
ground.hittime = 12
guard.hittime = 12
yaccel = 0.68
ground.velocity = 0
guard.velocity = -12
air.velocity = -13, 0
fall = 1
fall.yvelocity = 0
fall.recover = 0
fall.recovertime = 60;38
down.velocity = -12
down.hittime = 10
guard.kill = 0

[State 450, HitDef]	; 2nd Hit if previous HitDef made contact
type = HitDef
trigger1 = !AnimElemTime(29)
trigger1 = Var(13) = 1
attr = C, NA
hitflag = MAFD
guardflag = L
animtype = Hard
damage = 76, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -10
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -13, 0
down.velocity = -12
down.hittime = 10
guard.kill = 0

[State 450, Increment NumContact]
type = VarAdd
trigger1 = MoveContact = 1
var(13) = 1

[State 450, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 450, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Crouch Strong Kick
[Statedef 455]
type = C
movetype = A
physics = C
ctrl = 0
sprpriority = 2

[State 455, PlaySnd]
type = PlaySnd
triggerall = Anim = 455
trigger1 = !AnimElemTime(17)
trigger2 = !AnimElemTime(25)
value = 200, 0

[State 455, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 455
value = 56

[State 455, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 455
value = 455

[State 455, HitDef]
type = HitDef
trigger1 = !AnimElemTime(9)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Hard
damage = 42, 7
pausetime = 4, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -10
hitsound = S5, 1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -11, 0
fall.yvelocity = -3
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 455, HitDef]
type = HitDef
trigger1 = !AnimElemTime(19)
attr = C, NA
hitflag = MAFD
guardflag = MA
animtype = Hard
damage = 42, 7
pausetime = 4, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -10
hitsound = S5, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -13, 0
fall.yvelocity = -3
air.fall = 1
down.velocity = -12
down.hittime = 2
guard.kill = 0

[State 455, HitDef]
type = HitDef
trigger1 = !AnimElemTime(25)
attr = C, NA
hitflag = MAFD
guardflag = L
animtype = Hard
damage = 42, 7
pausetime = 9, 5;17, 5	; XCOTA pausetime
guard.pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -10
hitsound = S5, 3
guardsound = S6, 0
ground.type = Trip
ground.slidetime = 12
guard.slidetime = 12
ground.hittime = 12
guard.hittime = 12
yaccel = 0.68
ground.velocity = 0
guard.velocity = -12
air.velocity = -13, 0
fall = 1
fall.yvelocity = 0
fall.recover = 0
fall.recovertime = 60;38
down.velocity = -12
down.hittime = 10
guard.kill = 0

[State 455, HitFlash]
type = Explod
triggerall = MoveHit = 1
trigger1 = HitPauseTime = 8 && AnimElemTime(25) = 1
trigger2 = HitPauseTime = 3 && (AnimElemTime(9) = 1 || AnimElemTime(19) = 1)
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 455, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Light Punch
[Statedef 600]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 600, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 600, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 600, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 600 + 30000 * Var(33)
value = 200, 0

[State 600, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 600
value = 14

[State 600, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 600 + 30000 * Var(33)
value = 600 + 30000 * Var(33)

[State 600, HitDef]
type = HitDef
trigger1 = !AnimElemTime(3)
attr = A, NA
hitflag = MAFD
guardflag = HA
animtype = Light
damage = 49, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, 0
hitsound = S5, 16
guardsound = S6, 0
ground.type = High	; Should be low when Pos Y is low enough
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = IfElse(Vel Y < 0, Vel X * -0.95, -4), IfElse(Vel Y < 0, Vel Y * 1.05, 14)
fall.yvelocity = -6
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 600, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 600, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Aerial Light Punch
[Statedef 605]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 605, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 605, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 605, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 605 + 30000 * Var(33)
value = 200, 0

[State 605, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 605
value = 14

[State 605, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 605 + 30000 * Var(33)
value = 605 + 30000 * Var(33)

[State 605, HitDef]
type = HitDef
trigger1 = !AnimElemTime(2)
attr = A, NA
hitflag = MAFD
guardflag = HA
animtype = Light
damage = 35, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, 0
hitsound = S5, 16
guardsound = S6, 0
ground.type = High	; Should be low when Pos Y is low enough
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = IfElse(Vel Y < 0, Vel X * -0.95, -4), IfElse(Vel Y < 0, Vel Y * 1.05, 14)
fall.yvelocity = -6
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 605, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 605, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Aerial Medium Punch
[Statedef 606]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 606, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 606, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 606, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 606 + 30000 * Var(33)
value = 200, 0

[State 606, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 606
value = 43

[State 606, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 606 + 30000 * Var(33)
value = 606 + 30000 * Var(33)

[State 606, HitDef]
type = HitDef
trigger1 = !AnimElemTime(3)
attr = A, NA
hitflag = MAFD
guardflag = HA
animtype = Medium
damage = 56, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, 0
hitsound = S5, 16
guardsound = S6, 0
ground.type = High	; Should be low when Pos Y is low enough
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = IfElse(Vel Y < 0, Vel X * -0.95, -4), IfElse(Vel Y < 0, Vel Y * 1.05, 14)
fall.yvelocity = -6
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 606, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 606, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Medium Punch
[Statedef 610]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 610, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 610, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 610, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 610 + 30000 * Var(33)
value = 250, 0

[State 610, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 610
value = 43

[State 610, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 610 + 30000 * Var(33)
value = 610 + 30000 * Var(33)

[State 610, HitDef]
type = HitDef
trigger1 = !AnimElemTime(11)
attr = A, NA
guardflag = HA
animtype = Medium
damage = 111, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -79
hitsound = S5, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = IfElse(Vel Y < 0, Vel X * -0.95, -5), IfElse(Vel Y < 0, Vel Y * 1.05, 14)
fall.yvelocity = -6
air.fall = 1
guard.kill = 0

[State 610, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 610, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Medium Punch - Down
[Statedef 615]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 615, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 615, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 615, PlaySnd]
type = PlaySnd
trigger1 = Anim = 615 + 30000 * Var(33)
trigger1 = !AnimElemTime(18)
value = 250, 0

[State 615, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 615
value = 43

[State 615, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 615 + 30000 * Var(33)
value = 615 + 30000 * Var(33)

[State 615, VelSet X]
type = VelSet
trigger1 = AnimElemTime(18) < 0
trigger1 = Command != "holdfwd" && Command != "holdback"
x = 0 + 0.03 * (Vel X > 0) - 0.03 * (Vel X < 0)

[State 615, VelSet Y]
type = VelSet
trigger1 = AnimElemTime(18) < 0
y = IfElse((Vel Y) > 0, 0.03, -0.03)

[State 615, VelSet X]
type = VelSet
trigger1 = !AnimElemTime(18)
trigger1 = ((Command != "holdfwd" && Command != "holdback") && Var(32)) ^^ !Var(32)
x = 5 * !Var(32)

[State 615, VelSet Y]
type = VelSet
trigger1 = !AnimElemTime(18)
y = 6

[State 615, HitDef]
type = HitDef
trigger1 = AnimElemNo(0) = [20, 21]
trigger1 = !MoveContact
attr = A, NA
guardflag = HA
animtype = Medium
damage = 130, 7;208, 7	; XCOTA damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -79
hitsound = S5, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -10, -6
guard.velocity = -17
air.velocity = IfElse(Vel Y < 0, Vel X * -0.95, -11), IfElse(Vel Y < 0, Vel Y * 1.05, 22)
fall = 1
fall.yvelocity = -6
guard.kill = 0

[State 615, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 615, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Strong Punch
[Statedef 620]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 620, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 620, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 620, PlaySnd]
type = PlaySnd
triggerall = Anim = 620 + 30000 * Var(33)
trigger1 = !AnimElemTime(5)
value = 250, 0

[State 620, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 620
value = 56

[State 620, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 620 + 30000 * Var(33)
value = 620 + 30000 * Var(33)

[State 620, HitDef]
type = HitDef
trigger1 = AnimElemNo(0) = [5, 6]
trigger1 = !MoveContact
attr = A, NA
guardflag = HA
animtype = Hard
damage = 125, 7;208, 7	; XCOTa damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -45
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -6 - 3 * (PrevStateNo = [600, 655]), 14
fall.yvelocity = -6
air.fall = 1
guard.kill = 0
fall.envshake.time = 6
fall.envshake.ampl = -6
id = 600 * (PrevStateNo = [600, 655])

[State 620, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 620, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Aerial Strong Punch
[Statedef 621]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 621, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 621, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 621, PlaySnd]
type = PlaySnd
triggerall = Anim = 621 + 30000 * Var(33)
trigger1 = !AnimElemTime(6)
value = 250, 0

[State 621, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 621
value = 56

[State 621, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 621 + 30000 * Var(33)
value = 621 + 30000 * Var(33)

[State 621, HitDef]
type = HitDef
trigger1 = AnimElemNo(0) = [6, 7]
trigger1 = !MoveContact
attr = A, NA
guardflag = HA
animtype = Hard
damage = 125, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -45
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -6 - 3 * (PrevStateNo = [600, 655]), 14
fall.yvelocity = -6
air.fall = 1
guard.kill = 0
fall.envshake.time = 6
fall.envshake.ampl = -6
id = 600 * (PrevStateNo = [600, 655])

[State 621, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 621, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Strong Punch - Up Down
[Statedef 625]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 625, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 625 + 30000 * Var(33)
value = 625, 0

[State 625, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 625
value = 56

[State 625, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 625 + 30000 * Var(33)
value = 625 + 30000 * Var(33)

[State 625, Turn Off Super Jump]
type = VarSet
trigger1 = !Time
var(32) = 0

[State 625, VelSet 0]
type = VelSet
trigger1 = !Time
x = 0 + 0.03 * (Vel X > 0) - 0.03 * (Vel X < 0)
y = IfElse((Vel Y) > 0, 0.03, -0.03)

[State 625, VelSet]
type = VelSet
trigger1 = 16
x = 0
y = 3

[State 625, VelAdd]
type = VelAdd
trigger1 = Time > 16
y = 0.5 * (Time - 16)

[State 625, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A, NA
hitflag = MAFD
guardflag = HA
animtype = Hard
damage = 130, 0;194, 0	; XCOTA damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = 0, -6
guard.velocity = -12
air.velocity = 0, 23
airguard.velocity = -5, 20
fall = 1
fall.yvelocity = -6
down.velocity = -12
down.hittime = 10
guard.kill = 0
fall.envshake.time = 6
fall.envshake.ampl = -6

[State 625, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 625, Wave]
type = Explod
trigger1 = Pos Y >= 0
anim = 7144
pos = 0,4
sprpriority = -1
ownpal = 1
scale = 1.4, 1.2

[State 625, EnvShake]
type = EnvShake
trigger1 = Pos Y >= 0
time = 6
freq = 180

[State 625, PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= 0
value = 44, 0

[State 625, VelSet]
type = VelSet
trigger1 = Pos Y >= 0
trigger2 = MoveContact
x = -1
y = -7

[State 625, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = MoveContact
value = 626

;---------------------------------------------------------------------------
; Aerial Strong Punch - Up Down - Jump Bounce
[Statedef 626]
type = A
velset = -1, -7

[State 626, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 44 + 30000 * Var(33)
value = 44 + 30000 * Var(33)

[State 626, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.318

[State 626, Jump Land]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Light Kick
[Statedef 630]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 630, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 630, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 630, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 630 + 30000 * Var(33)
value = 200, 0

[State 630, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 630
value = 14

[State 630, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 630 + 30000 * Var(33)
value = 630 + 30000 * Var(33)

[State 630, HitDef]
type = HitDef
trigger1 = !AnimElemTime(3)
attr = A, NA
hitflag = MAFD
guardflag = HA
animtype = Light
damage = 49, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000
sparkxy = 0, 0
hitsound = S5, 16
guardsound = S6, 0
ground.type = High	; Should be low when Pos Y is low enough
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = IfElse(Vel Y < 0, Vel X * -0.95, -8), IfElse(Vel Y < 0, Vel Y * 1.05, 9)
fall.yvelocity = -6
air.fall = 1
down.velocity = -20
down.hittime = 2
guard.kill = 0

[State 630, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 630, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Medium Kick - Down - MVC2 Aerial Strong Kick
[Statedef 640]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 640, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 640, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 640, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 640 + 30000 * Var(33)
value = 200, 0

[State 640, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 640
value = 56

[State 640, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 640 + 30000 * Var(33)
value = 640 + 30000 * Var(33)

[State 640, HitDef]
type = HitDef
trigger1 = !AnimElemTime(5)
attr = A, NA
hitflag = MAFD
guardflag = HA
animtype = Hard;Medium	; XCOTA animtype
damage = 104, 7;111, 7	; XCOTA damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002;S7001	; XCOTA spark
sparkxy = 0, 52
hitsound = S5, 2
guardsound = S6, 0
ground.type = High	; Should be low when Pos Y is low enough
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -9, 14
fall.yvelocity = -6
air.fall = 1
down.velocity = -12
down.hittime = 2
guard.kill = 0
envshake.time = 6
envshake.ampl = 6
id = 600 * (PrevStateNo = [600, 655])

[State 640, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 640, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Medium Kick - Down Forward - MVC2 Aerial Light Kick
[Statedef 642]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 642, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 642, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 642, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 642 + 30000 * Var(33)
value = 200, 0

[State 642, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 642
value = 14

[State 642, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 642 + 30000 * Var(33)
value = 642 + 30000 * Var(33)

[State 642, HitDef]
type = HitDef
trigger1 = !AnimElemTime(5)
attr = A, NA
hitflag = MAFD
guardflag = HA
animtype = Light;Medium	; XCOTA animtype
damage = 35, 7;111, 7	; XCOTA damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7000;S7001	; XCOTA spark
sparkxy = 0, 11
hitsound = S5, 2
guardsound = S6, 0
ground.type = High	; Should be low when Pos Y is low enough
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = IfElse(Vel Y < 0, Vel X * -0.95, -9), IfElse(Vel Y < 0, Vel Y * 1.05, 14)
fall.yvelocity = -6
air.fall = 1
down.velocity = -12
down.hittime = 2
guard.kill = 0

[State 642, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 642, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Medium Kick - Forward
[Statedef 644]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 644, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 644, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 644, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 644 + 30000 * Var(33)
value = 200, 0

[State 644, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 644
value = 43

[State 644, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 644 + 30000 * Var(33)
value = 644 + 30000 * Var(33)

[State 644, HitDef]
type = HitDef
trigger1 = !AnimElemTime(5)
attr = A, NA
hitflag = MAFD
guardflag = HA
animtype = Medium
damage = 111, 7
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -70
hitsound = S5, 2
guardsound = S6, 0
ground.type = High	; Should be low when Pos Y is low enough
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = IfElse(Vel Y < 0, Vel X * -0.95, -9), IfElse(Vel Y < 0, Vel Y * 1.05, 14)
fall.yvelocity = -6
air.fall = 1
down.velocity = -12
down.hittime = 2
guard.kill = 0

[State 644, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 644, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Medium Kick - Up Forward - MVC2 Aerial Medium Kick
[Statedef 646]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 646, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 646, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 646, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 646 + 30000 * Var(33)
value = 200, 0

[State 646, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 646
value = 43

[State 646, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 646 + 30000 * Var(33)
value = 646 + 30000 * Var(33)

[State 646, HitDef]
type = HitDef
trigger1 = !AnimElemTime(5)
attr = A, NA
hitflag = MAFD
guardflag = HA
animtype = Medium
damage = 56, 7;111, 7	; XCOTA damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7001
sparkxy = 0, -93
hitsound = S5, 2
guardsound = S6, 0
ground.type = High	; Should be low when Pos Y is low enough
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = IfElse(Vel Y < 0, Vel X * -0.95, -9), IfElse(Vel Y < 0, Vel Y * 1.05, 14)
fall.yvelocity = -6
air.fall = 1
down.velocity = -12
down.hittime = 2
guard.kill = 0

[State 646, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 646, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Strong Kick
[Statedef 650]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 650, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 650, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 650, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 650 + 30000 * Var(33)
value = 250, 0

[State 650, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 650
value = 56

[State 650, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 650 + 30000 * Var(33)
value = 650 + 30000 * Var(33)

[State 650, HitDef]
type = HitDef
trigger1 = !AnimElemTime(8)
attr = A, NA
guardflag = HA
animtype = Hard
damage = 130, 7;208, 7	; XCOTA damage
pausetime = 9, 9;17, 17	; XCOTA pausetime
sparkno = S7002
sparkxy = 0, -23
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = -12
air.velocity = -12, -4
guard.kill = 0

[State 650, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 8
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Strong Kick - Down
[Statedef 655]
type = A
movetype = A
ctrl = 0
sprpriority = 2

[State 655, Fly - VelSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(33)
x = 0
y = 0

[State 655, StateTypeSet]
type = StateTypeSet
trigger1 = !Var(33)
physics = A

[State 655, Reset NumContact]
type = VarSet
trigger1 = Anim != 655 + 30000 * Var(33)
var(13) = 0

[State 655, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 655 + 30000 * Var(33)
value = 240, 0

[State 655, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 655
value = 56

[State 655, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 655 + 30000 * Var(33)
value = 655 + 30000 * Var(33)

[State 655, HitDef]
type = HitDef
trigger1 = !AnimElemTime(6)
trigger2 = !AnimElemTime(7)
trigger3 = !AnimElemTime(9)
trigger4 = !AnimElemTime(12)
attr = A, NA
guardflag = HA
animtype = Hard
damage = 50 * Var(13) + 40 * (Var(13) = 1) + 30 * (Var(13) = 2) + 20 * (Var(13) = 3), 7
; damage = 104 * !Var(13) + 49 * (Var(13) = 1) + 42 * (Var(13) = 2) + 35 * (Var(13) = 3), 7
; XCOTA damage
pausetime = 5, 5
sparkno = S7002
sparkxy = 0, 15
hitsound = S5, 16
guardsound = S6, 0
ground.type = High	; Should be low when Pos Y is low enough
ground.slidetime = 11
ground.hittime = 11
yaccel = 0.68
ground.velocity = -11
air.velocity = -8, 10
fall.yvelocity = -6
air.fall = 1
down.velocity = -11
down.hittime = 2
guard.kill = 0

[State 655, Increment NumContact]
type = VarAdd
trigger1 = MoveContact = 1
var(13) = 1

[State 655, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 4
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 655, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Throw
[Statedef 800]
type = S
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 800, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 800
value = 800

[State 800, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S, NT
hitflag = M-
guardflag = 
animtype = Medium
damage = 0, 0
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = S240, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime = 0
ground.velocity = 0
p1sprpriority = -1
id = 800
numhits = 0

[State 800, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = NumTarget(800)
value = 805
id = 800

[State 800, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = NumTarget(800)
value = 801

[State 800, ChangeState]
type = ChangeState
trigger1 = Time && !NumTarget(800)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Throw - P1 State
[Statedef 801]
type = S
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 801, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 801, PowerAdd]
type = PowerAdd
trigger1 = !Time
value = 43

[State 801, ChangeAnim]	; Sync with P2 Anim
type = ChangeAnim
trigger1 = !Time
value = 800

[State 801, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = [1, 6]
trigger1 = NumTarget(800)
pos = 81, -6
id = 800

[State 801, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = [7, 12]
trigger1 = NumTarget(800)
pos = 104, -152
id = 800

[State 801, TargetBind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = [13, 28]
trigger1 = NumTarget(800)
pos = 77, -179
id = 800

[State 801, TargetBind 4]
type = TargetBind
trigger1 = AnimElemNo(0) = [29, 34]
trigger1 = NumTarget(800)
pos = 30, -164
id = 800

[State 801, HitDef]
type = HitDef
trigger1 = AnimElemNo(0) = 34
attr = S, NT
guardflag = 
animtype = Hard
damage = 104, 0
pausetime = 0, 0
sparkno = S7002
sparkxy = 10, -164
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 0
ground.hittime = 0
yaccel = 0.68
ground.velocity = -5, -6
air.velocity = -5, -6
p1sprpriority = -1
p2stateno = 5050
p2getp1state = 0
fall = 1
fall.recover = 0
fall.damage = 104
id = 801
chainID = 800

[State 801, TargetVelSet]
type = TargetVelSet
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(801)
x = -5
y = -6
id = 801

; Fail Safe
[State 801, Fail Safe - TargetState]
type = TargetState
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(800) && !NumTarget(801)
value = 806
id = 800
persistent = 0

[State 801, Fail Safe - HitSpark]
type = Explod
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(800) && !NumTarget(801)
anim = 7002
id = 801
pos = (target(800), Const(size.mid.pos.x)), (target(800), Const(size.mid.pos.y))
postype = p2
facing = -1
sprpriority = 5
ontop = 1
persistent = 0

[State 801, Fail Safe - PlaySnd]
type = PlaySnd
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(800) && !NumTarget(801)
value = 5, 3
persistent = 0

[State 801, Fail Safe - TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(800) && !NumTarget(801)
value = -208 ; Can't do fall damage here
id = 800
persistent = 0

[State 801, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = !NumTarget(800)
trigger2 = !NumTarget(801)
trigger2 = AnimElemTime(35) < 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Throw - P2 State
[Statedef 805]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 1

[State 805, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 805, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 805

[State 805, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 5
value = SCA

[State 805, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 805, Fail Safe - SelfState]
type = SelfState
trigger1 = Vel X
trigger1 = Vel Y
value = 5050

;---------------------------------------------------------------------------
; Stand Medium Throw - Fail Safe P2 State
[Statedef 806]
type = A
movetype = H
velset = -5, -6
ctrl = 0
sprpriority = 0

[State 806, Fail Safe - SelfState]
type = SelfState
trigger1 = 1
value = 5050

;---------------------------------------------------------------------------
; Aerial Medium Throw
[Statedef 850]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 850, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 850 + 30000 * Var(33)
value = 850 + 30000 * Var(33)

[State 850, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A, NT
hitflag = A-
guardflag = 
animtype = Medium
damage = 0, 0
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = S240, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime = 0
ground.velocity = 0
p1sprpriority = -1
id = 850
numhits = 0

[State 850, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = NumTarget(850)
value = 855
id = 850

[State 850, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = NumTarget(850)
value = 851

[State 850, ChangeState]
type = ChangeState
trigger1 = Time && !NumTarget(850)
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Medium Throw - P1 State
[Statedef 851]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 851, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 851, PowerAdd]
type = PowerAdd
trigger1 = !Time
value = 43

[State 851, ChangeAnim]	; Sync with P2 Anim
type = ChangeAnim
trigger1 = !Time
value = 850 + 30000 * Var(33)

[State 851, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = [1, 2]
trigger1 = NumTarget(850)
pos = 62, -109
id = 850

[State 851, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
trigger1 = NumTarget(850)
pos = 106, -109
id = 850

[State 851, TargetBind 3]		; Default common1.cns doesn't use aerial gethit sprites so this is inaccurate
type = TargetBind
trigger1 = AnimElemNo(0) = 4
trigger1 = NumTarget(850)
pos = 97, -198
id = 850

[State 851, TargetBind 4]		; Default common1.cns doesn't use aerial gethit sprites so this is inaccurate
type = TargetBind
trigger1 = AnimElemNo(0) = 5
trigger1 = NumTarget(850)
pos = 101, -197
id = 850

[State 851, HitDef]
type = HitDef
trigger1 = AnimElemTime(5) = 5
attr = A, NT
guardflag = 
animtype = Hard
damage = 104, 0
pausetime = 0, 0
sparkno = S7002
sparkxy = 10, -197
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 0
ground.hittime = 0
yaccel = 0.68
ground.velocity = -5, -6
air.velocity = -5, -6
p1sprpriority = -1
p2stateno = 5050
p2getp1state = 0
fall = 1
fall.recover = 0
fall.damage = 104
id = 851
chainID = 850

[State 851, TargetVelSet]
type = TargetVelSet
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(851)
x = -5
y = -6
id = 851

; Fail Safe
[State 851, Fail Safe - TargetState]
type = TargetState
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(850) && !NumTarget(851)
value = 856
id = 850
persistent = 0

[State 851, Fail Safe - HitSpark]
type = Explod
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(850) && !NumTarget(851)
anim = 7002
id = 851
pos = (target(850), Const(size.mid.pos.x)), (target(850), Const(size.mid.pos.y))
postype = p2
facing = -1
sprpriority = 5
ontop = 1
persistent = 0

[State 851, Fail Safe - PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(850) && !NumTarget(851)
value = 5, 3
persistent = 0

[State 851, Fail Safe - TargetLifeAdd]
type = TargetLifeAdd
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(850) && !NumTarget(851)
value = -208 ; Can't do fall damage here
id = 850
persistent = 0

[State 851, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = !NumTarget(850)
trigger2 = !NumTarget(851)
trigger2 = AnimElemTime(6) < 0
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Medium Throw - P2 State
[Statedef 855]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = -1
sprpriority = 1

[State 855, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 855, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 855

[State 855, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 5
value = SCA

[State 855, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 855, Fail Safe - SelfState]
type = SelfState
trigger1 = Vel X
trigger1 = Vel Y
value = 5050

;---------------------------------------------------------------------------
; Aerial Medium Throw - Fail Safe P2 State
[Statedef 856]
type = A
movetype = H
velset = -5, -6
ctrl = 0
sprpriority = 0

[State 856, Fail Safe - SelfState]
type = SelfState
trigger1 = 1
value = 5050

;---------------------------------------------------------------------------
; Stand Strong Throw
[Statedef 900]
type = S
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 900, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 900
value = 900

[State 900, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S, NT
hitflag = M-
guardflag = 
animtype = Hard
damage = 0, 0
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = S240, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime = 0
ground.velocity = 0
p1sprpriority = -1
id = 900
numhits = 0

[State 900, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = NumTarget(900)
value = 905
id = 900

[State 900, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = NumTarget(900)
value = 901

[State 900, ChangeState]
type = ChangeState
trigger1 = Time && !NumTarget(900)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Throw - P1 State
[Statedef 901]
type = S
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 901, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 901, PowerAdd]
type = PowerAdd
trigger1 = !Time
value = 56

[State 901, ChangeAnim]	; Sync with P2 Anim
type = ChangeAnim
trigger1 = !Time
value = 900

[State 901, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = [1, 13]
trigger1 = NumTarget(900)
pos = 81, -6
id = 900

[State 901, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = [14, 21]
trigger1 = NumTarget(900)
pos = 104, -152
id = 900

[State 901, TargetBind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = [22, 29]
trigger1 = NumTarget(900)
pos = 148, -87
id = 900

[State 901, PlaySnd]
type = PlaySnd
trigger1 = !AnimTime
value = 1000, 0

[State 901, TargetState]
type = TargetState
trigger1 = !AnimTime
trigger1 = NumTarget(900)
value = 925 - (Command = "holddown") * 10 + (Command = "holdup") * 10
id = 900

[State 901, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger1 = NumTarget(900)
value = 920 - (Command = "holddown") * 10 + (Command = "holdup") * 10
id = 900

[State 901, ChangeState]
type = ChangeState
trigger1 = !NumTarget(900)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Throw - P2 State
[Statedef 905]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 905, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 905, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 905

[State 905, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 905, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

;---------------------------------------------------------------------------
; Stand Strong Throw - Down - P1 State
[Statedef 910]
type = S
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 910, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 910, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 910
value = 910

[State 910, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
trigger1 = NumTarget(900)
pos = 136, -53
id = 900

[State 910, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = [2, 3]
trigger1 = NumTarget(900)
pos = 129, -85
id = 900

[State 910, Arm]
type = Helper
trigger1 = !NumHelper(1050)
trigger1 = !AnimElemTime(4)
name = "Rocket Punch - Arm"
id = 1050
pos = 120, -72
stateno = 913
ownpal = 1

[State 910, Wire]
type = Helper
trigger1 = AnimElemTime(4) = 1
trigger1 = !NumHelper(1055)
name = "Rocket Punch - Wire"
id = 1055
pos = 116, -73
stateno = 1055
ownpal = 1

[State 910, TargetBind Arm]
type = TargetBind
trigger1 = NumTarget(900)
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), StateNo = 913
pos = (120 + 2) + 10 * (Helper(1050), Time), (-72 + 10) + 8 * (Helper(1050), Time)
id = 900

[State 910, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 911

[State 910, ChangeState]
type = ChangeState
trigger1 = !NumTarget(900)
value = 1002

;---------------------------------------------------------------------------
; Stand Strong Throw - Down - P1 State
[Statedef 911]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 911, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 911
value = 911

[State 911, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 911, TargetBind]
type = TargetBind
trigger1 = NumTarget(900)
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), StateNo = 913
pos = (120 + 2) + 10 * (Helper(1050), Time), (-72 + 10) + 8 * (Helper(1050), Time)
id = 900

[State 911, TargetBind Hit Ground]
type = TargetBind
trigger1 = NumTarget(900)
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), StateNo = 914
pos = (120 + 37) + 10 * (Helper(1050), Var(1)), (-72 + 23) + 8 * (Helper(1050), Var(1))
id = 900

[State 911, Hit Ground Spark]
type = Explod
trigger1 = NumTarget(900)
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), StateNo = 914
trigger1 = Helper(1050), Time = 1
anim = 7002
id = 7002
postype = p2
facing = -1
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 911, Hit Ground Sound]
type = PlaySnd
trigger1 = NumTarget(900)
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), StateNo = 914
trigger1 = Helper(1050), Time = 1
value = 5, 3

[State 911, Hit Ground TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(900)
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), StateNo = 914
trigger1 = Helper(1050), Time = 1
value = -111;-250	; XCOTA damage
id = 900

[State 911, ChangeState]
type = ChangeState
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), Var(0)
trigger2 = !NumHelper(1050)
trigger3 = NumHelper(1050)
trigger3 = Helper(1050), StateNo != [1050, 1051]
trigger3 = Helper(1050), StateNo != [913, 914]
value = 1002

;---------------------------------------------------------------------------
; Stand Strong Throw - Down - Arm
[Statedef 913]
type = S
movetype = A
anim = 940
ctrl = 0
sprpriority = 4

[State 913, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 913, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 120 + 10 * Time, -72 + 8 * Time

[State 913, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1051
time = -1

[State 913, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 913, EnvShake]
type = EnvShake
trigger1 = Pos Y >= -32
time = 48
freq = 60

[State 913, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 913, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -32
value = 914

[State 913, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [910, 911]

;---------------------------------------------------------------------------
; Stand Strong Throw - Down - Arm - Hit Ground
[Statedef 914]
type = S
movetype = A
ctrl = 0
sprpriority = 4

[State 914, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 941
elem = AnimElemNo(0)

[State 914, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 120 + 10 * Var(1), -72 + 8 * Var(1)

[State 914, ChangeState]
type = ChangeState
trigger1 = Time = 4
value = 1051

[State 914, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [910, 911]

;---------------------------------------------------------------------------
; Stand Strong Throw - Down - P2 State
[Statedef 915]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 915, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 915, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 915

[State 915, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 915, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 915, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -32
value = 916

;---------------------------------------------------------------------------
; Stand Strong Throw - Down - P2 State - Hit Ground
[Statedef 916]
type = S
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 916, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 916, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 916

[State 916, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 916, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 916, PosSet]
type = PosSet
trigger1 = !AnimElemTime(2)
y = 0

[State 916, SelfState]
type = SelfState
trigger1 = !AnimTime
value = 5110

;---------------------------------------------------------------------------
; Stand Strong Throw - Forward - P1 State
[Statedef 920]
type = S
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 920, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 920, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 920
value = 920

[State 920, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
trigger1 = NumTarget(900)
pos = 148, -87
id = 900

[State 920, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = [2, 3]
trigger1 = NumTarget(900)
pos = 173, -94
id = 900

[State 920, Arm]
type = Helper
trigger1 = !NumHelper(1060)
trigger1 = !AnimElemTime(4)
name = "Rocket Punch - Arm"
id = 1060
pos = 130, -94
stateno = 923
ownpal = 1

[State 920, Wire]
type = Helper
trigger1 = AnimElemTime(4) = 1
trigger1 = !NumHelper(1065)
name = "Rocket Punch - Wire"
id = 1065
pos = 124, -94
stateno = 1065
ownpal = 1

[State 920, TargetBind]
type = TargetBind
trigger1 = NumTarget(900)
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), StateNo = 923
pos = (130 + 51) + 14 * (Helper(1060), Time), (-94 + -26)
id = 900

[State 920, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 921

[State 920, ChangeState]
type = ChangeState
trigger1 = !NumTarget(900)
trigger2 = NumTarget(900)
trigger2 = target(900), Vel X
value = 1012

;---------------------------------------------------------------------------
; Stand Strong Throw - Forward - P1 State
[Statedef 921]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 921, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 921
value = 921

[State 921, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 921, TargetBind]
type = TargetBind
trigger1 = NumTarget(900)
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), StateNo = 923
pos = (130 + 51) + 14 * (Helper(1060), Time), (-94 + -26)
id = 900

; Fail Safe
[State 921, Fail Safe - TargetState]
type = TargetState
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), FrontEdgeDist < 0
trigger1 = NumTarget(900)
value = 926
id = 900
persistent = 0

[State 921, Fail Safe - HitSpark]
type = Explod
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), FrontEdgeDist < 0
trigger1 = NumTarget(900)
anim = 7070
id = 921
pos = -16, 0
postype = p2
facing = -1
sprpriority = 5
ontop = 1
persistent = 0

[State 921, Fail Safe - PlaySnd]
type = PlaySnd
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), FrontEdgeDist < 0
trigger1 = NumTarget(900)
value = 5, 3
persistent = 0

[State 921, Fail Safe - TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), FrontEdgeDist < 0
trigger1 = NumTarget(900)
value = -102 ; Can't do fall damage here
id = 900
persistent = 0

[State 921, ChangeState]
type = ChangeState
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), Var(0)
trigger2 = !NumHelper(1060)
trigger3 = NumHelper(1060)
trigger3 = Helper(1060), StateNo != [1060, 1061]
trigger3 = Helper(1060), StateNo != [923, 924]
trigger4 = NumHelper(1060)
trigger4 = Helper(1060), FrontEdgeDist < 0
trigger4 = NumTarget(900)
value = 1012

;---------------------------------------------------------------------------
; Stand Strong Throw - Forward - Arm
[Statedef 923]
type = S
movetype = A
anim = 943
ctrl = 0
sprpriority = 4

[State 923, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 923, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 130 + 14 * Time, -94

[State 923, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1061
time = -1

[State 923, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 923, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 923, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 923, HitDef]
type = HitDef
trigger1 = FrontEdgeDist <= 20
trigger1 = !MoveContact
attr = S, NT
guardflag = 
animtype = Hard
damage = 56;125, 0	; XCOTA damage
pausetime = 0, 4
sparkno = S7070
sparkxy = -16, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 4
ground.hittime = 4
yaccel = 0.68
ground.velocity = -8, 0
air.velocity = -8, 0
p1sprpriority = 4
p2stateno = 5050
p2getp1state = 0
fall = 1
fall.recover = 0
fall.damage = 56;125	; XCOTA damage
id = 923

[State 923, TargetVelSet]
type = TargetVelSet
trigger1 = FrontEdgeDist <= 20
trigger1 = NumTarget(923)
x = -8
y = 0
id = 923

[State 923, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = !Parent, NumTarget(900)
trigger3 = Parent, StateNo = 1012
value = 1061

[State 923, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [920, 921]

;---------------------------------------------------------------------------
; Stand Strong Throw - Forward - P2 State
[Statedef 925]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 925, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 925, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 925

[State 925, NotHitBy]
type = NotHitBy
trigger1 = BackEdgeDist > 20
value = SCA

[State 925, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

;---------------------------------------------------------------------------
; Stand Strong Throw - Forward - Fail Safe P2 State
[Statedef 926]
type = A
movetype = H
velset = -8, 0
ctrl = 0
sprpriority = 0

[State 926, Fail Safe - SelfState]
type = SelfState
trigger1 = 1
value = 5050

;---------------------------------------------------------------------------
; Stand Strong Throw - Up - P1 State
[Statedef 930]
type = S
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 930, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 930, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 930
value = 930

[State 930, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
trigger1 = NumTarget(900)
pos = 125, -150
id = 900

[State 930, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
trigger1 = NumTarget(900)
pos = 125, -158
id = 900

[State 930, TargetBind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
trigger1 = NumTarget(900)
pos = 121, -155
id = 900

[State 930, Arm]
type = Helper
trigger1 = !NumHelper(1070)
trigger1 = !AnimElemTime(4)
name = "Rocket Punch - Arm"
id = 1070
pos = 87, -141
stateno = 933
ownpal = 1

[State 930, Wire]
type = Helper
trigger1 = AnimElemTime(4) = 1
trigger1 = !NumHelper(1075)
name = "Rocket Punch - Wire"
id = 1075
pos = 87, -143
stateno = 1075
ownpal = 1

[State 930, TargetBind]
type = TargetBind
trigger1 = NumTarget(900)
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), StateNo = 933
pos = (87 + 39) + 10 * (Helper(1070), Time), (-141 + -16) - 8 * (Helper(1070), Time)
id = 900

[State 930, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 931

[State 930, ChangeState]
type = ChangeState
trigger1 = !NumTarget(900)
value = 1022

;---------------------------------------------------------------------------
; Stand Strong Throw - Up - P1 State
[Statedef 931]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 931, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 931
value = 931

[State 931, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 931, TargetBind]
type = TargetBind
trigger1 = NumTarget(900)
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), StateNo = 933
pos = (87 + 39) + 10 * (Helper(1070), Time), (-141 + -16) - 8 * (Helper(1070), Time)
id = 900

; Fail Safe
[State 931, Fail Safe - TargetState]
type = TargetState
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), FrontEdgeDist < 0
trigger1 = NumTarget(900)
value = 936
id = 900
persistent = 0

[State 931, Fail Safe - HitSpark]
type = Explod
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), FrontEdgeDist < 0
trigger1 = NumTarget(900)
anim = 7070
id = 931
pos = -16, 0
postype = p2
facing = -1
sprpriority = 5
ontop = 1
persistent = 0

[State 931, Fail Safe - PlaySnd]
type = PlaySnd
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), FrontEdgeDist < 0
trigger1 = NumTarget(900)
value = 5, 3
persistent = 0

[State 931, Fail Safe - TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), FrontEdgeDist < 0
trigger1 = NumTarget(900)
value = -102 ; Can't do fall damage here
id = 900
persistent = 0

[State 931, ChangeState]
type = ChangeState
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), Var(0)
trigger2 = !NumHelper(1070)
trigger3 = NumHelper(1070)
trigger3 = Helper(1070), StateNo != [1070, 1071]
trigger3 = Helper(1070), StateNo != [933, 934]
trigger4 = NumHelper(1070)
trigger4 = Helper(1070), FrontEdgeDist < 0
trigger4 = NumTarget(900)
value = 1022

;---------------------------------------------------------------------------
; Stand Strong Throw - Up - Arm
[Statedef 933]
type = S
movetype = A
anim = 946
ctrl = 0
sprpriority = 4

[State 933, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 933, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 87 + 10 * Time, -141 - 8 * Time

[State 933, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1071
time = -1

[State 933, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 933, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 933, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 933, HitDef]
type = HitDef
trigger1 = FrontEdgeDist <= 20
trigger1 = !MoveContact
attr = S, NT
guardflag = 
animtype = Hard
damage = 56;125, 0	; XCOTA damage
pausetime = 0, 4
sparkno = S7070
sparkxy = -16, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 4
ground.hittime = 4
yaccel = 0.68
ground.velocity = -8, 0
air.velocity = -8, 0
p1sprpriority = 4
p2stateno = 5050
p2getp1state = 0
fall = 1
fall.recover = 0
fall.damage = 56;125	; XCOTA damage
id = 933

[State 933, TargetVelSet]
type = TargetVelSet
trigger1 = FrontEdgeDist <= 20
trigger1 = NumTarget(933)
x = -8
y = 0
id = 933

[State 933, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = !Parent, NumTarget(900)
trigger3 = Parent, StateNo = 1022
value = 1071

[State 933, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [930, 931]

;---------------------------------------------------------------------------
; Stand Strong Throw - Up - P2 State
[Statedef 935]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 935, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 935, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 935

[State 935, NotHitBy]
type = NotHitBy
trigger1 = BackEdgeDist > 20
value = SCA

[State 935, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 1

[State 935, Fail Safe - SelfState]
type = SelfState
trigger1 = Vel X
value = 5050

;---------------------------------------------------------------------------
; Stand Strong Throw - Up - Fail Safe P2 State
[Statedef 936]
type = A
movetype = H
velset = -8, 0
ctrl = 0
sprpriority = 0

[State 936, Fail Safe - SelfState]
type = SelfState
trigger1 = 1
value = 5050

;---------------------------------------------------------------------------
; Aerial Strong Throw
[Statedef 950]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 950, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 950 + 30000 * Var(33)
value = 950 + 30000 * Var(33)

[State 950, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A, NT
hitflag = A-
guardflag = 
animtype = Hard
damage = 0, 0
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = S240, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime = 0
ground.velocity = 0
p1sprpriority = -1
id = 950
numhits = 0

[State 950, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = NumTarget(950)
value = 955
id = 950

[State 950, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = NumTarget(950)
value = 951

[State 950, ChangeState]
type = ChangeState
trigger1 = Time && !NumTarget(950)
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Strong Throw - P1 State
[Statedef 951]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 951, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 951, PowerAdd]
type = PowerAdd
trigger1 = !Time
value = 56

[State 951, ChangeAnim]	; Sync with P2 Anim
type = ChangeAnim
trigger1 = !Time
value = 950 + 30000 * Var(33)

[State 951, TargetBind]
type = TargetBind
trigger1 = AnimElemNo(0) = [1, 2]
trigger1 = NumTarget(950)
pos = 130, -95
id = 950

[State 951, PlaySnd]
type = PlaySnd
trigger1 = !AnimTime
value = 1000, 0

[State 951, TargetState]
type = TargetState
trigger1 = !AnimTime
trigger1 = NumTarget(950)
value = 975 - (Command = "holddown") * 10 + (Command = "holdup") * 10
id = 950

[State 951, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger1 = NumTarget(950)
value = 970 - (Command = "holddown") * 10 + (Command = "holdup") * 10

[State 951, ChangeState]
type = ChangeState
trigger1 = !NumTarget(950)
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Strong Throw - P2 State
[Statedef 955]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 955, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 955, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 955

[State 955, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 955, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

;---------------------------------------------------------------------------
; Aerial Strong Throw - Down - P1 State
[Statedef 960]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 960, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 960, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 960 + 30000 * Var(33)
value = 960 + 30000 * Var(33)

[State 960, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
trigger1 = NumTarget(950)
pos = 98, -61
id = 950

[State 960, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = [2, 3]
trigger1 = NumTarget(950)
pos = 116, -69
id = 950

[State 960, Arm]
type = Helper
trigger1 = !NumHelper(1150)
trigger1 = !AnimElemTime(4)
name = "Rocket Punch - Arm"
id = 1150
pos = 80, -82
stateno = 963
ownpal = 1

[State 960, Wire]
type = Helper
trigger1 = AnimElemTime(4) = 1
trigger1 = !NumHelper(1155)
name = "Rocket Punch - Wire"
id = 1155
pos = 77, -84
stateno = 1155
ownpal = 1

[State 960, TargetBind Arm]
type = TargetBind
trigger1 = NumTarget(950)
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), StateNo = 963
pos = (80 + 2) + 10 * (Helper(1150), Time), (-82 + 10) + 8 * (Helper(1150), Time)
id = 950

[State 960, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 961

[State 960, ChangeState]
type = ChangeState
trigger1 = !NumTarget(950)
value = 1102

;---------------------------------------------------------------------------
; Aerial Strong Throw - Down - P1 State
[Statedef 961]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 2

[State 961, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 961 + 30000 * Var(33)
value = 961 + 30000 * Var(33)

[State 961, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 961, TargetBind]
type = TargetBind
trigger1 = NumTarget(950)
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), StateNo = 963
pos = (80 + 2) + 10 * (Helper(1150), Time), (-82 + 10) + 8 * (Helper(1150), Time)
id = 950

[State 961, TargetBind Hit Ground]
type = TargetBind
trigger1 = NumTarget(950)
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), StateNo = 964
trigger1 = !Helper(1150), MoveContact
pos = (80 + 37) + 10 * (Helper(1150), Var(1)), (-82 + 23) + 8 * (Helper(1150), Var(1))
id = 950

[State 961, Hit Ground Spark]
type = Explod
trigger1 = NumTarget(950)
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), StateNo = 964
trigger1 = Helper(1150), Time = 1
trigger1 = !Helper(1150), MoveContact
anim = 7002
id = 7002
postype = p2
facing = -1
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 961, Hit Ground Sound]
type = PlaySnd
trigger1 = NumTarget(950)
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), StateNo = 964
trigger1 = Helper(1150), Time = 1
trigger1 = !Helper(1150), MoveContact
value = 5, 3

[State 961, Hit Ground TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(950)
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), StateNo = 964
trigger1 = Helper(1150), Time = 1
trigger1 = !Helper(1150), MoveContact
value = -111;-250	; XCOTA damage
id = 950

[State 961, ChangeState]
type = ChangeState
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), Var(0)
trigger2 = !NumHelper(1150)
trigger3 = NumHelper(1150)
trigger3 = Helper(1150), StateNo != [1150, 1151]
trigger3 = Helper(1150), StateNo != [963, 964]
value = 1102

;---------------------------------------------------------------------------
; Aerial Strong Throw - Down - Arm
[Statedef 963]
type = A
movetype = A
anim = 940 + 30000 * Parent, Var(33)
ctrl = 0
sprpriority = 4

[State 963, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 963, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 80 + 10 * Time, -82 + 8 * Time

[State 963, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1151
time = -1

[State 963, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 963, EnvShake]
type = EnvShake
trigger1 = Pos Y >= -32
time = 48
freq = 60

[State 963, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 963, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 963, HitDef]
type = HitDef
trigger1 = FrontEdgeDist <= 20
trigger1 = !MoveContact
attr = A, NT
guardflag = 
animtype = Hard
damage = 56;125, 0	; XCOTA damage
pausetime = 0, 4
sparkno = S7070
sparkxy = -16, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 4
ground.hittime = 4
yaccel = 0.68
ground.velocity = -8, 0
air.velocity = -8, 0
p1sprpriority = 4
p2stateno = 5050
p2getp1state = 0
fall = 1
fall.recover = 0
fall.damage = 56;125	; XCOTA damage
id = 963

[State 963, TargetVelSet]
type = TargetVelSet
trigger1 = FrontEdgeDist <= 20
trigger1 = NumTarget(963)
x = -8
y = 0
id = 963

[State 963, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -32
trigger2 = MoveContact
trigger3 = !Parent, NumTarget(950)
value = 964

[State 963, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [960 + 30000 * Parent, Var(33), 961 + 30000 * Parent, Var(33)]

;---------------------------------------------------------------------------
; Aerial Strong Throw - Down - Arm - Hit Ground
[Statedef 964]
type = A
movetype = A
ctrl = 0
movehitpersist = 1
sprpriority = 4

[State 964, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 941 + 30000 * Parent, Var(33)
elem = AnimElemNo(0)

[State 964, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 80 + 10 * Var(1), -82 + 8 * Var(1)

[State 964, ChangeState]
type = ChangeState
trigger1 = Time = 4
value = 1151

[State 964, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [960 + 30000 * Parent, Var(33), 961 + 30000 * Parent, Var(33)]

;---------------------------------------------------------------------------
; Aerial Strong Throw - Down - P2 State
[Statedef 965]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 965, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 965, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 965

[State 965, NotHitBy]
type = NotHitBy
trigger1 = BackEdgeDist > 20
value = SCA

[State 965, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 965, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -32
value = 916

;---------------------------------------------------------------------------
; Aerial Strong Throw - Forward - P1 State
[Statedef 970]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 970, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 970, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 970 + 30000 * Var(33)
value = 970 + 30000 * Var(33)

[State 970, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
trigger1 = NumTarget(950)
pos = 130, -95
id = 950

[State 970, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = [2, 3]
trigger1 = NumTarget(950)
pos = 148, -115
id = 950

[State 970, Arm]
type = Helper
trigger1 = !NumHelper(1160)
trigger1 = !AnimElemTime(4)
name = "Rocket Punch - Arm"
id = 1160
pos = 97, -105
stateno = 973
ownpal = 1

[State 970, Wire]
type = Helper
trigger1 = AnimElemTime(4) = 1
trigger1 = !NumHelper(1165)
name = "Rocket Punch - Wire"
id = 1165
pos = 92, -106
stateno = 1165
ownpal = 1

[State 970, TargetBind]
type = TargetBind
trigger1 = NumTarget(950)
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), StateNo = 973
pos = (97 + 51) + 14 * (Helper(1160), Time), (-105 + -26)
id = 950

[State 970, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 971

[State 970, ChangeState]
type = ChangeState
trigger1 = !NumTarget(950)
value = 1112

;---------------------------------------------------------------------------
; Aerial Strong Throw - Forward - P1 State
[Statedef 971]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 2

[State 971, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 971 + 30000 * Var(33)
value = 971 + 30000 * Var(33)

[State 971, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 971, TargetBind]
type = TargetBind
trigger1 = NumTarget(950)
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), StateNo = 973
pos = (97 + 51) + 14 * (Helper(1160), Time), (-105 + -26)
id = 950

; Fail Safe
[State 971, Fail Safe - TargetState]
type = TargetState
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), FrontEdgeDist < 0
trigger1 = NumTarget(950)
value = 976
id = 950
persistent = 0

[State 971, Fail Safe - HitSpark]
type = Explod
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), FrontEdgeDist < 0
trigger1 = NumTarget(950)
anim = 7070
id = 971
pos = -16, 0
postype = p2
facing = -1
sprpriority = 5
ontop = 1
persistent = 0

[State 971, Fail Safe - PlaySnd]
type = PlaySnd
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), FrontEdgeDist < 0
trigger1 = NumTarget(950)
value = 5, 3
persistent = 0

[State 971, Fail Safe - TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), FrontEdgeDist < 0
trigger1 = NumTarget(950)
value = -102 ; Can't do fall damage here
id = 950
persistent = 0

[State 971, ChangeState]
type = ChangeState
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), Var(0)
trigger2 = !NumHelper(1160)
trigger3 = NumHelper(1160)
trigger3 = Helper(1160), StateNo != [1160, 1161]
trigger3 = Helper(1160), StateNo != [973, 974]
trigger4 = NumHelper(1160)
trigger4 = Helper(1160), FrontEdgeDist < 0
trigger4 = NumTarget(950)
value = 1112

;---------------------------------------------------------------------------
; Aerial Strong Throw - Forward - Arm
[Statedef 973]
type = A
movetype = A
anim = 943 + 30000 * Parent, Var(33)
ctrl = 0
sprpriority = 4

[State 973, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 973, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 97 + 14 * Time, -105

[State 973, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1161
time = -1

[State 973, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 973, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 973, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 973, HitDef]
type = HitDef
trigger1 = FrontEdgeDist <= 20
trigger1 = !MoveContact
attr = A, NT
guardflag = 
animtype = Hard
damage = 56;125, 0	; XCOTA damage
pausetime = 0, 4
sparkno = S7070
sparkxy = -16, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 4
ground.hittime = 4
yaccel = 0.68
ground.velocity = -8, 0
air.velocity = -8, 0
p1sprpriority = 4
p2stateno = 5050
p2getp1state = 0
fall = 1
fall.recover = 0
fall.damage = 56;125	; XCOTA damage
id = 973

[State 973, TargetVelSet]
type = TargetVelSet
trigger1 = FrontEdgeDist <= 20
trigger1 = NumTarget(973)
x = -8
y = 0
id = 973

[State 973, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = !Parent, NumTarget(950)
trigger3 = Parent, StateNo = 1112
value = 1161

[State 973, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [970 + 30000 * Parent, Var(33), 971 + 30000 * Parent, Var(33)]

;---------------------------------------------------------------------------
; Aerial Strong Throw - Forward - P2 State
[Statedef 975]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 975, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 975, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 975

[State 975, NotHitBy]
type = NotHitBy
trigger1 = BackEdgeDist > 20
value = SCA

[State 975, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 975, Fail Safe - SelfState]
type = SelfState
trigger1 = Vel X
value = 5050

;---------------------------------------------------------------------------
; Aerial Strong Throw - Forward - Fail Safe P2 State
[Statedef 976]
type = A
movetype = H
velset = -8, 0
ctrl = 0
sprpriority = 0

[State 976, Fail Safe - SelfState]
type = SelfState
trigger1 = 1
value = 5050

;---------------------------------------------------------------------------
; Aerial Strong Throw - Up - P1 State
[Statedef 980]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 980, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 980, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 980 + 30000 * Var(33)
value = 980 + 30000 * Var(33)

[State 980, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
trigger1 = NumTarget(950)
pos = 92, -78
id = 950

[State 980, TargetBind 2]		; Inaccurate. Should be sprite 5010,1 but that is not a Mugen required sprite
type = TargetBind
trigger1 = AnimElemNo(0) = [2, 3]
trigger1 = NumTarget(950)
pos = 100, -143
id = 950

[State 980, Arm]
type = Helper
trigger1 = !NumHelper(1170)
trigger1 = !AnimElemTime(4)
name = "Rocket Punch - Arm"
id = 1170
pos = 85, -141
stateno = 983
ownpal = 1

[State 980, Wire]
type = Helper
trigger1 = AnimElemTime(4) = 1
trigger1 = !NumHelper(1175)
name = "Rocket Punch - Wire"
id = 1175
pos = 83, -139
stateno = 1175
ownpal = 1

[State 980, TargetBind]
type = TargetBind
trigger1 = NumTarget(950)
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), StateNo = 983
pos = (85 + 39) + 10 * (Helper(1170), Time), (-141 + -16) - 8 * (Helper(1170), Time)
id = 950

[State 980, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 981

[State 980, ChangeState]
type = ChangeState
trigger1 = !NumTarget(950)
value = 1122

;---------------------------------------------------------------------------
; Aerial Strong Throw - Up - P1 State
[Statedef 981]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 2

[State 981, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 981 + 30000 * Var(33)
value = 981 + 30000 * Var(33)

[State 981, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 981, TargetBind]
type = TargetBind
trigger1 = NumTarget(950)
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), StateNo = 983
pos = (85 + 39) + 10 * (Helper(1170), Time), (-141 + -16) - 8 * (Helper(1170), Time)
id = 950

; Fail Safe
[State 981, Fail Safe - TargetState]
type = TargetState
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), FrontEdgeDist < 0
trigger1 = NumTarget(950)
value = 986
id = 950
persistent = 0

[State 981, Fail Safe - HitSpark]
type = Explod
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), FrontEdgeDist < 0
trigger1 = NumTarget(950)
anim = 7070
id = 971
pos = -16, 0
postype = p2
facing = -1
sprpriority = 5
ontop = 1
persistent = 0

[State 981, Fail Safe - PlaySnd]
type = PlaySnd
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), FrontEdgeDist < 0
trigger1 = NumTarget(950)
value = 5, 3
persistent = 0

[State 981, Fail Safe - TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), FrontEdgeDist < 0
trigger1 = NumTarget(950)
value = -102 ; Can't do fall damage here
id = 950
persistent = 0

[State 981, ChangeState]
type = ChangeState
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), Var(0)
trigger2 = !NumHelper(1170)
trigger3 = NumHelper(1170)
trigger3 = Helper(1170), StateNo != [1170, 1171]
trigger3 = Helper(1170), StateNo != [983, 984]
trigger4 = NumHelper(1170)
trigger4 = Helper(1170), FrontEdgeDist < 0
trigger4 = NumTarget(950)
value = 1122

;---------------------------------------------------------------------------
; Aerial Strong Throw - Up - Arm
[Statedef 983]
type = A
movetype = A
anim = 946 + 30000 * Parent, Var(33)
ctrl = 0
sprpriority = 4

[State 983, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 983, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 85 + 10 * Time, -141 - 8 * Time

[State 983, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1171
time = -1

[State 983, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 983, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 983, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 983, HitDef]
type = HitDef
trigger1 = FrontEdgeDist <= 20
trigger1 = !MoveContact
attr = A, NT
guardflag = 
animtype = Hard
damage = 56;125, 0	; XCOTA damage
pausetime = 0, 4
sparkno = S7070
sparkxy = -16, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 4
ground.hittime = 4
yaccel = 0.68
ground.velocity = -8, 0
air.velocity = -8, 0
p1sprpriority = 4
p2stateno = 5050
p2getp1state = 0
fall = 1
fall.recover = 0
fall.damage = 56;125	; XCOTA damage
id = 983

[State 983, TargetVelSet]
type = TargetVelSet
trigger1 = FrontEdgeDist <= 20
trigger1 = NumTarget(983)
x = -8
y = 0
id = 983

[State 983, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = !Parent, NumTarget(950)
trigger3 = Parent, StateNo = 1122
value = 1171

[State 983, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [980 + 30000 * Parent, Var(33), 981 + 30000 * Parent, Var(33)]

;---------------------------------------------------------------------------
; Aerial Strong Throw - Up - P2 State
[Statedef 985]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 985, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 985, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 985

[State 985, NotHitBy]
type = NotHitBy
trigger1 = BackEdgeDist > 20
value = SCA

[State 985, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 1

[State 985, Fail Safe - SelfState]
type = SelfState
trigger1 = Vel X
value = 5050

;---------------------------------------------------------------------------
; Aerial Strong Throw - Up - Fail Safe P2 State
[Statedef 986]
type = A
movetype = H
velset = -8, 0
ctrl = 0
sprpriority = 0

[State 986, Fail Safe - SelfState]
type = SelfState
trigger1 = 1
value = 5050

;---------------------------------------------------------------------------
; Rocket Punch - Down - Init
[Statedef 1000]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 1000
value = 1000, 0

[State 1000, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 1000
value = 35

[State 1000, Special Dust]
type = Explod
trigger1 = !Time
trigger1 = Anim != 1000
anim = 7200
ID = 7200
pos = 5, -10
sprpriority = 3
ownpal = 1

[State 1000, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1000
value = 1000

[State 1000, Arm]
type = Helper
trigger1 = !NumHelper(1050)
trigger1 = !AnimElemTime(14)
name = "Rocket Punch - Arm"
id = 1050
pos = 120, -72
stateno = 1050
ownpal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1001

;---------------------------------------------------------------------------
; Rocket Punch - Down
[Statedef 1001]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 1001, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1001
value = 1001

[State 1001, Wire]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(1055)
name = "Rocket Punch - Wire"
id = 1055
pos = 116, -73
stateno = 1055
ownpal = 1

[State 1001, CornerPush PosAdd]
type = PosAdd
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), FVar(0)
x = Helper(1050), FVar(1)

[State 1001, ChangeState]
type = ChangeState
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), Var(0)
trigger2 = !NumHelper(1050)
trigger3 = NumHelper(1050)
trigger3 = Helper(1050), StateNo != [1050, 1051]
value = 1002

;---------------------------------------------------------------------------
; Rocket Punch - Down - End
[Statedef 1002]
type = S
physics = S
ctrl = 0
sprpriority = 2

[State 1002, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1002
value = 1002

[State 1002, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rocket Punch - Forward - Init
[Statedef 1010]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 1010
value = 1000, 0

[State 1010, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 1010
value = 35

[State 1010, Special Dust]
type = Explod
trigger1 = !Time
trigger1 = Anim != 1010
anim = 7200
ID = 7200
pos = 5, -10
sprpriority = 3
ownpal = 1

[State 1010, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1010
value = 1010

[State 1010, Arm]
type = Helper
trigger1 = !NumHelper(1060)
trigger1 = !AnimElemTime(15)
name = "Rocket Punch - Arm"
id = 1060
pos = 130, -94
stateno = 1060
ownpal = 1

[State 1010, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1011

;---------------------------------------------------------------------------
; Rocket Punch - Forward
[Statedef 1011]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 1011, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1011
value = 1011

[State 1011, Wire]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(1065)
name = "Rocket Punch - Wire"
id = 1065
pos = 124, -94
stateno = 1065
ownpal = 1

[State 1011, CornerPush PosAdd]
type = PosAdd
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), FVar(0)
x = Helper(1060), FVar(1)

[State 1011, ChangeState]
type = ChangeState
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), Var(0)
trigger2 = !NumHelper(1060)
trigger3 = NumHelper(1060)
trigger3 = Helper(1060), StateNo != [1060, 1061]
value = 1012

;---------------------------------------------------------------------------
; Rocket Punch - Forward - End
[Statedef 1012]
type = S
physics = S
ctrl = 0
sprpriority = 2

[State 1012, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1012
value = 1012

[State 1012, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rocket Punch - Up - Init
[Statedef 1020]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 1020
value = 1000, 0

[State 1020, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 1020
value = 35

[State 1020, Special Dust]
type = Explod
trigger1 = !Time
trigger1 = Anim != 1020
anim = 7200
ID = 7200
pos = 5, -10
sprpriority = 3
ownpal = 1

[State 1020, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1020
value = 1020

[State 1020, Arm]
type = Helper
trigger1 = !NumHelper(1070)
trigger1 = !AnimElemTime(14)
name = "Rocket Punch - Arm"
id = 1070
pos = 87, -141
stateno = 1070
ownpal = 1

[State 1020, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1021

;---------------------------------------------------------------------------
; Rocket Punch - Up
[Statedef 1021]
type = S
movetype = A
physics = S
ctrl = 0
sprpriority = 2

[State 1021, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1021
value = 1021

[State 1021, Wire]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(1075)
name = "Rocket Punch - Wire"
id = 1075
pos = 87, -143
stateno = 1075
ownpal = 1

[State 1021, CornerPush PosAdd]
type = PosAdd
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), FVar(0)
x = Helper(1070), FVar(1)

[State 1021, ChangeState]
type = ChangeState
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), Var(0)
trigger2 = !NumHelper(1070)
trigger3 = NumHelper(1070)
trigger3 = Helper(1070), StateNo != [1070, 1071]
value = 1022

;---------------------------------------------------------------------------
; Rocket Punch - Up - End
[Statedef 1022]
type = S
physics = S
ctrl = 0
sprpriority = 2

[State 1022, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1022
value = 1022

[State 1022, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rocket Punch - Down - Arm
[Statedef 1050]
type = S
movetype = A
anim = 1150
ctrl = 0
sprpriority = 4

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 1050, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 120 + 10 * Time, -72 + 8 * Time

[State 1050, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1051
time = -1

[State 1050, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1050, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 1050, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAFD
guardflag = MA
animtype = Hard
priority = 4, Miss
damage = 173, 21;180, 21	; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7012
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime = 14
yaccel = 0.68
ground.velocity = -11
air.velocity = -12, 11
fall = 1
fall.yvelocity = -6
air.fall = 1
down.velocity = -12
down.hittime = 10

[State 1050, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1050, CornerPush]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(0) = target, GetHitVar(xvel)
ignorehitpause = 1

[State 1050, EnvShake]
type = EnvShake
trigger1 = Pos Y >= 0
time = 6
freq = 180

[State 1050, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 1050, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeDist <= 0 && Time
trigger3 = MoveContact
trigger4 = Parent, Command = "holdback"
trigger4 = Parent, Command = "x" || Parent, Command = "y" || Parent, Command = "z"
value = 1051

[State 1050, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [1000, 1001]

;---------------------------------------------------------------------------
; Rocket Punch - Down - Arm - Return
[Statedef 1051]
type = S
ctrl = 0
sprpriority = 4

[State 1051, CornerPush PosAdd VarSet]
type = VarSet
triggerall = FVar(0)
triggerall = NumTarget
trigger1 = target, FrontEdgeBodyDist <= Abs(target, Vel X)
trigger1 = (target, GetHitVar(xvel) * target, Facing) > 0
trigger2 = target, BackEdgeBodyDist <= Abs(target, Vel X)
trigger2 = (target, GetHitVar(xvel) * target, Facing) < 0
fvar(1) = IfElse(target, FrontEdgeBodyDist <= 0, -1, 1) * (target, Facing) * FVar(0)

[State 1051, CornerPush Friction]
type = VarSet
trigger1 = NumTarget
fvar(0) = FVar(0) * 0.85

[State 1051, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1150
value = 1150
elem = AnimElemNo(0)

[State 1051, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 1051, VarSet]
type = VarSet
trigger1 = Time >= Var(1)
var(0) = 1

[State 1051, BindToParent]
type = BindToParent
trigger1 = !Var(0)
time = -1
pos = 120 + 10 * (Var(1) - Time), -72 + 8 * (Var(1) - Time)

[State 1051, BindToParent]
type = BindToParent
trigger1 = Var(0)
time = -1
pos = 120, -72

[State 1051, DestroySelf]
type = DestroySelf
trigger1 = Var(0)
trigger1 = Parent, Anim = 1002
trigger1 = !Parent, AnimElemTime(3)
trigger2 = Parent, Anim != [1001, 1002]
trigger2 = Parent, Anim != 911

;---------------------------------------------------------------------------
; Rocket Punch - Down - Wire
[Statedef 1055]
type = S
anim = 1155
ctrl = 0
sprpriority = 3

[State 1055, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 116, -73

[State 1055, Explod]
type = Explod
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), StateNo = 1050 || Helper(1050), StateNo = 913
trigger1 = Time
trigger1 = !(Time % 4)
trigger1 = !((Var(0) := (Var(0) + 1)) * 0)
anim = 1155
id = 1055 + Var(0) - 1
pos = 42 * Var(0), 33 * Var(0)
bindtime = -1
removetime = -1
sprpriority = 3
shadow = -1

[State 1055, VarSet]
type = VarSet
trigger1 = NumHelper(1050)
trigger1 = Helper(1050), StateNo = 1051
var(1) = Time - (Time % 4)
persistent = 0

[State 1055, RemoveExplod]
type = RemoveExplod
triggerall = NumHelper(1050)
trigger1 = Helper(1050), StateNo = 1051
trigger1 = !((Time - Var(1)) % 4) && Time > Var(1)
trigger1 = !((Var(0) := (Var(0) - 1)) * 0)
id = 1055 + Var(0)

[State 1055, RemoveAllExplod]
type = RemoveExplod
trigger1 = Parent, Anim = 1002
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1050)
trigger3 = !Var(0) && Var(1)

[State 1055, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 1002
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1050)

;---------------------------------------------------------------------------
; Rocket Punch - Forward - Arm
[Statedef 1060]
type = S
movetype = A
anim = 1160
ctrl = 0
sprpriority = 4

[State 1060, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 1060, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 130 + 14 * Time, -94

[State 1060, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1061
time = -1

[State 1060, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1060, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 1060, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAFD
guardflag = MA
animtype = Hard
priority = 4, Miss
damage = 173, 21;180, 21	; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7012
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
yaccel = 0.68
ground.velocity = -12, -7
air.velocity = -13, -6
fall = 1
fall.yvelocity = -4.5
air.fall = 1
down.velocity = -12
down.hittime = 10

[State 1060, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1060, CornerPush]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(0) = target, GetHitVar(xvel)
ignorehitpause = 1

[State 1060, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 1060, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeDist <= 0 && Time
trigger3 = MoveContact
trigger4 = Parent, Command = "holdback"
trigger4 = Parent, Command = "x" || Parent, Command = "y" || Parent, Command = "z"
value = 1061

[State 1060, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [1010, 1011]

;---------------------------------------------------------------------------
; Rocket Punch - Forward - Arm - Return
[Statedef 1061]
type = S
ctrl = 0
sprpriority = 4

[State 1061, CornerPush PosAdd VarSet]
type = VarSet
triggerall = FVar(0)
triggerall = NumTarget
trigger1 = target, FrontEdgeBodyDist <= Abs(target, Vel X)
trigger1 = (target, GetHitVar(xvel) * target, Facing) > 0
trigger2 = target, BackEdgeBodyDist <= Abs(target, Vel X)
trigger2 = (target, GetHitVar(xvel) * target, Facing) < 0
fvar(1) = IfElse(target, FrontEdgeBodyDist <= 0, -1, 1) * (target, Facing) * FVar(0)

[State 1061, CornerPush Friction]
type = VarSet
trigger1 = NumTarget
fvar(0) = FVar(0) * 0.85

[State 1061, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1160
value = 1160
elem = AnimElemNo(0)

[State 1061, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 1061, VarSet]
type = VarSet
trigger1 = Time >= Var(1)
var(0) = 1

[State 1061, BindToParent]
type = BindToParent
trigger1 = !Var(0)
time = -1
pos = 130 + 14 * (Var(1) - Time), -94

[State 1061, BindToParent]
type = BindToParent
trigger1 = Var(0)
time = -1
pos = 130, -94

[State 1061, DestroySelf]
type = DestroySelf
trigger1 = Var(0)
trigger1 = Parent, Anim = 1012
trigger1 = !Parent, AnimElemTime(3)
trigger2 = Parent, Anim != [1011, 1012]
trigger2 = Parent, Anim != 921

;---------------------------------------------------------------------------
; Rocket Punch - Forward - Wire
[Statedef 1065]
type = S
anim = 1165
ctrl = 0
sprpriority = 3

[State 1065, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 124, -94

[State 1065, Explod]
type = Explod
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), StateNo = 1060 || Helper(1060), StateNo = 923
trigger1 = Time
trigger1 = !(Time % 4)
trigger1 = !((Var(0) := (Var(0) + 1)) * 0)
anim = 1165
id = 1065 + Var(0) - 1
pos = 64 * Var(0), 0
bindtime = -1
removetime = -1
sprpriority = 3
shadow = -1

[State 1065, VarSet]
type = VarSet
trigger1 = NumHelper(1060)
trigger1 = Helper(1060), StateNo = 1061
var(1) = Time - (Time % 4)
persistent = 0

[State 1065, RemoveExplod]
type = RemoveExplod
triggerall = NumHelper(1060)
trigger1 = Helper(1060), StateNo = 1061
trigger1 = !((Time - Var(1)) % 4) && Time > Var(1)
trigger1 = !((Var(0) := (Var(0) - 1)) * 0)
id = 1065 + Var(0)

[State 1065, RemoveAllExplod]
type = RemoveExplod
trigger1 = Parent, Anim = 1012
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1060)
trigger3 = !Var(0) && Var(1)

[State 1065, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 1012
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1060)

;---------------------------------------------------------------------------
; Rocket Punch - Up - Arm
[Statedef 1070]
type = S
movetype = A
anim = 1170
ctrl = 0
sprpriority = 4

[State 1070, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 1070, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 87 + 10 * Time, -141 - 8 * Time

[State 1070, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1071
time = -1

[State 1070, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1070, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 1070, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAFD
guardflag = MA
animtype = Hard
priority = 4, Miss
damage = 173, 21;180, 21	; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7012
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
yaccel = 0.68
ground.velocity = -5, -15
air.velocity = -5, -15
down.velocity = -12
down.hittime = 10

[State 1070, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1070, CornerPush]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(0) = target, GetHitVar(xvel)
ignorehitpause = 1

[State 1070, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 1070, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeDist <= 0 && Time
trigger3 = MoveContact
trigger4 = Parent, Command = "holdback"
trigger4 = Parent, Command = "x" || Parent, Command = "y" || Parent, Command = "z"
value = 1071

[State 1070, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [1020, 1021]

;---------------------------------------------------------------------------
; Rocket Punch - Up - Arm - Return
[Statedef 1071]
type = S
ctrl = 0
sprpriority = 4

[State 1071, CornerPush PosAdd VarSet]
type = VarSet
triggerall = FVar(0)
triggerall = NumTarget
trigger1 = target, FrontEdgeBodyDist <= Abs(target, Vel X)
trigger1 = (target, GetHitVar(xvel) * target, Facing) > 0
trigger2 = target, BackEdgeBodyDist <= Abs(target, Vel X)
trigger2 = (target, GetHitVar(xvel) * target, Facing) < 0
fvar(1) = IfElse(target, FrontEdgeBodyDist <= 0, -1, 1) * (target, Facing) * FVar(0)

[State 1071, CornerPush Friction]
type = VarSet
trigger1 = NumTarget
fvar(0) = FVar(0) * 0.85

[State 1071, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1170
value = 1170
elem = AnimElemNo(0)

[State 1071, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 1071, VarSet]
type = VarSet
trigger1 = Time >= Var(1)
var(0) = 1

[State 1071, BindToParent]
type = BindToParent
trigger1 = !Var(0)
time = -1
pos = 87 + 10 * (Var(1) - Time), -141 - 8 * (Var(1) - Time)

[State 1071, BindToParent]
type = BindToParent
trigger1 = Var(0)
time = -1
pos = 87, -141

[State 1071, DestroySelf]
type = DestroySelf
trigger1 = Var(0)
trigger1 = Parent, Anim = 1022
trigger1 = !Parent, AnimElemTime(3)
trigger2 = Parent, Anim != [1021, 1022]
trigger2 = Parent, Anim != 931

;---------------------------------------------------------------------------
; Rocket Punch - Up - Wire
[Statedef 1075]
type = S
anim = 1175
ctrl = 0
sprpriority = 3

[State 1075, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 87, -143

[State 1075, Explod]
type = Explod
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), StateNo = 1070 || Helper(1070), StateNo = 933
trigger1 = Time
trigger1 = !(Time % 4)
trigger1 = !((Var(0) := (Var(0) + 1)) * 0)
anim = 1175
id = 1075 + Var(0) - 1
pos = 45 * Var(0), -35 * Var(0)
bindtime = -1
removetime = -1
sprpriority = 3
shadow = -1

[State 1075, VarSet]
type = VarSet
trigger1 = NumHelper(1070)
trigger1 = Helper(1070), StateNo = 1071
var(1) = Time - (Time % 4)
persistent = 0

[State 1075, RemoveExplod]
type = RemoveExplod
triggerall = NumHelper(1070)
trigger1 = Helper(1070), StateNo = 1071
trigger1 = !((Time - Var(1)) % 4) && Time > Var(1)
trigger1 = !((Var(0) := (Var(0) - 1)) * 0)
id = 1075 + Var(0)

[State 1075, RemoveAllExplod]
type = RemoveExplod
trigger1 = Parent, Anim = 1022
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1070)
trigger3 = !Var(0) && Var(1)

[State 1075, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 1022
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1070)

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Down - Init
[Statedef 1100]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 1100 + 30000 * Var(33)
value = 1000, 0

[State 1100, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 1100
value = 35

[State 1100, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1100 + 30000 * Var(33)
value = 1100 + 30000 * Var(33)

[State 1100, Arm]
type = Helper
trigger1 = !NumHelper(1150)
trigger1 = !AnimElemTime(14)
name = "Rocket Punch - Arm"
id = 1150
pos = 80, -82
stateno = 1150
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1101

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Down
[Statedef 1101]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1101, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1101 + 30000 * Var(33)
value = 1101 + 30000 * Var(33)

[State 1101, Wire]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(1155)
name = "Rocket Punch - Wire"
id = 1155
pos = 77, -84
stateno = 1155
ownpal = 1

[State 1101, VelSet]
type = VelSet
trigger1 = !Var(33)
y = 0.167

[State 1101, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1101, CornerPush PosAdd]
type = PosAdd
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), FVar(0)
x = Helper(1150), FVar(1)

[State 1101, ChangeState]
type = ChangeState
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), Var(0)
trigger2 = !NumHelper(1150)
trigger3 = NumHelper(1150)
trigger3 = Helper(1150), StateNo != [1150, 1151]
value = 1102

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Down - End
[Statedef 1102]
type = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1102, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1102 + 30000 * Var(33)
value = 1102 + 30000 * Var(33)

[State 1102, VelSet]
type = VelSet
trigger1 = !Var(33)
y = 0.167

[State 1102, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1102, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Forward - Init
[Statedef 1110]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 1110 + 30000 * Var(33)
value = 1000, 0

[State 1110, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 1110
value = 35

[State 1110, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1110 + 30000 * Var(33)
value = 1110 + 30000 * Var(33)

[State 1110, Arm]
type = Helper
trigger1 = !NumHelper(1160)
trigger1 = !AnimElemTime(14)
name = "Rocket Punch - Arm"
id = 1160
pos = 97, -105
stateno = 1160
ownpal = 1

[State 1110, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1111

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Forward
[Statedef 1111]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1111, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1111 + 30000 * Var(33)
value = 1111 + 30000 * Var(33)

[State 1111, Wire]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(1165)
name = "Rocket Punch - Wire"
id = 1165
pos = 92, -106
stateno = 1165
ownpal = 1

[State 1111, VelSet]
type = VelSet
trigger1 = !Var(33)
y = 0.167

[State 1111, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1111, CornerPush PosAdd]
type = PosAdd
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), FVar(0)
x = Helper(1160), FVar(1)

[State 1111, ChangeState]
type = ChangeState
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), Var(0)
trigger2 = !NumHelper(1160)
trigger3 = NumHelper(1160)
trigger3 = Helper(1160), StateNo != [1150, 1161]
value = 1112

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Forward - End
[Statedef 1112]
type = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1112, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1112 + 30000 * Var(33)
value = 1112 + 30000 * Var(33)

[State 1112, VelSet]
type = VelSet
trigger1 = !Var(33)
y = 0.167

[State 1112, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1112, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Up - Init
[Statedef 1120]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1120, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 1120 + 30000 * Var(33)
value = 1000, 0

[State 1120, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 1120
value = 35

[State 1120, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1120 + 30000 * Var(33)
value = 1120 + 30000 * Var(33)

[State 1120, Arm]
type = Helper
trigger1 = !NumHelper(1170)
trigger1 = !AnimElemTime(14)
name = "Rocket Punch - Arm"
id = 1170
pos = 85, -141
stateno = 1170
ownpal = 1

[State 1120, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1121

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Up
[Statedef 1121]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1121, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1121 + 30000 * Var(33)
value = 1121 + 30000 * Var(33)

[State 1121, Wire]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(1175)
name = "Rocket Punch - Wire"
id = 1175
pos = 83, -139
stateno = 1175
ownpal = 1

[State 1121, VelSet]
type = VelSet
trigger1 = !Var(33)
y = 0.167

[State 1121, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1121, CornerPush PosAdd]
type = PosAdd
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), FVar(0)
x = Helper(1170), FVar(1)

[State 1121, ChangeState]
type = ChangeState
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), Var(0)
trigger2 = !NumHelper(1170)
trigger3 = NumHelper(1170)
trigger3 = Helper(1170), StateNo != [1170, 1171]
value = 1122

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Up - End
[Statedef 1122]
type = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1122, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1122 + 30000 * Var(33)
value = 1122 + 30000 * Var(33)

[State 1122, VelSet]
type = VelSet
trigger1 = !Var(33)
y = 0.167

[State 1122, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1122, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 51 + (Var(34) > 0) * 1251
ctrl = 1

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Down - Arm
[Statedef 1150]
type = A
movetype = A
anim = 1150 + 30000 * Parent, Var(33)
ctrl = 0
sprpriority = 4

[State 1150, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 1150, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 80 + 10 * Time, -82 + 8 * Time

[State 1150, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1151
time = -1

[State 1150, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1150, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 1150, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
hitflag = MAFD
guardflag = MA
animtype = Hard
priority = 4, Miss
damage = 173, 21;180, 21	; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7012
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High;	Should be Low if low enough
ground.slidetime = 12
ground.hittime = 14
yaccel = 0.68
ground.velocity = -9
air.velocity = -9, 11
fall = 1
fall.yvelocity = -6
air.fall = 1
down.velocity = -12
down.hittime = 10

[State 1150, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1150, CornerPush]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(0) = target, GetHitVar(xvel)
ignorehitpause = 1

[State 1150, EnvShake]
type = EnvShake
trigger1 = Pos Y >= 0
time = 6
freq = 180

[State 1150, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 1150, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeDist <= 0 && Time
trigger3 = MoveContact
trigger4 = Parent, Command = "holdback"
trigger4 = Parent, Command = "x" || Parent, Command = "y" || Parent, Command = "z"
value = 1151

[State 1150, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [1100 + 30000 * Parent, Var(33), 1101 + 30000 * Parent, Var(33)]

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Down - Arm - Return
[Statedef 1151]
type = A
ctrl = 0
sprpriority = 4

[State 1151, CornerPush PosAdd VarSet]
type = VarSet
triggerall = FVar(0)
triggerall = NumTarget
trigger1 = target, FrontEdgeBodyDist <= Abs(target, Vel X)
trigger1 = (target, GetHitVar(xvel) * target, Facing) > 0
trigger2 = target, BackEdgeBodyDist <= Abs(target, Vel X)
trigger2 = (target, GetHitVar(xvel) * target, Facing) < 0
fvar(1) = IfElse(target, FrontEdgeBodyDist <= 0, -1, 1) * (target, Facing) * FVar(0)

[State 1151, CornerPush Friction]
type = VarSet
trigger1 = NumTarget
fvar(0) = FVar(0) * 0.85

[State 1151, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1150 + 30000 * Parent, Var(33)
value = 1150 + 30000 * Parent, Var(33)
elem = AnimElemNo(0)

[State 1151, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 1151, VarSet]
type = VarSet
trigger1 = Time >= Var(1)
var(0) = 1

[State 1151, BindToParent]
type = BindToParent
trigger1 = !Var(0)
time = -1
pos = 80 + 10 * (Var(1) - Time), -82 + 8 * (Var(1) - Time)

[State 1151, BindToParent]
type = BindToParent
trigger1 = Var(0)
time = -1
pos = 80, -82

[State 1151, DestroySelf]
type = DestroySelf
trigger1 = Var(0)
trigger1 = Parent, Anim = 1102 + 30000 * Parent, Var(33)
trigger1 = !Parent, AnimElemTime(3)
trigger2 = Parent, Anim != [1101 + 30000 * Parent, Var(33), 1102 + 30000 * Parent, Var(33)]
trigger2 = Parent, Anim != 961 + 30000 * Parent, Var(33)

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Down - Wire
[Statedef 1155]
type = A
anim = 1155
ctrl = 0
sprpriority = 3

[State 1155, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 77, -84

[State 1155, Explod]
type = Explod
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), StateNo = 1150 || Helper(1150), StateNo = 963
trigger1 = Time
trigger1 = !(Time % 4)
trigger1 = !((Var(0) := (Var(0) + 1)) * 0)
anim = 1155
id = 1155 + Var(0) - 1
pos = 42 * Var(0), 33 * Var(0)
bindtime = -1
removetime = -1
sprpriority = 3
shadow = -1

[State 1155, VarSet]
type = VarSet
trigger1 = NumHelper(1150)
trigger1 = Helper(1150), StateNo = 1151
var(1) = Time - (Time % 4)
persistent = 0

[State 1155, RemoveExplod]
type = RemoveExplod
triggerall = NumHelper(1150)
trigger1 = Helper(1150), StateNo = 1151
trigger1 = !((Time - Var(1)) % 4) && Time > Var(1)
trigger1 = !((Var(0) := (Var(0) - 1)) * 0)
id = 1155 + Var(0)

[State 1155, RemoveAllExplod]
type = RemoveExplod
trigger1 = Parent, Anim = 1102 + 30000 * Parent, Var(33)
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1150)
trigger3 = !Var(0) && Var(1)

[State 1155, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 1102 + 30000 * Parent, Var(33)
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1150)

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Forward - Arm
[Statedef 1160]
type = A
movetype = A
anim = 1160 + 30000 * Parent, Var(33)
ctrl = 0
sprpriority = 4

[State 1160, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 1160, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 97 + 14 * Time, -105

[State 1160, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1161
time = -1

[State 1160, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1160, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 1160, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
hitflag = MAFD
guardflag = MA
animtype = Hard
priority = 4, Miss
damage = 173, 21;180, 21	; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7012
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
yaccel = 0.68
ground.velocity = -13, -6
air.velocity = -12, -6
fall = 1
fall.yvelocity = -4.5
air.fall = 1
down.velocity = -12
down.hittime = 10

[State 1160, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1160, CornerPush]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(0) = target, GetHitVar(xvel)
ignorehitpause = 1

[State 1160, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 1160, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeDist <= 0 && Time
trigger3 = MoveContact
trigger4 = Parent, Command = "holdback"
trigger4 = Parent, Command = "x" || Parent, Command = "y" || Parent, Command = "z"
value = 1161

[State 1160, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [1110 + 30000 * Parent, Var(33), 1111 + 30000 * Parent, Var(33)]

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Forward - Arm - Return
[Statedef 1161]
type = A
ctrl = 0
sprpriority = 4

[State 1161, CornerPush PosAdd VarSet]
type = VarSet
triggerall = FVar(0)
triggerall = NumTarget
trigger1 = target, FrontEdgeBodyDist <= Abs(target, Vel X)
trigger1 = (target, GetHitVar(xvel) * target, Facing) > 0
trigger2 = target, BackEdgeBodyDist <= Abs(target, Vel X)
trigger2 = (target, GetHitVar(xvel) * target, Facing) < 0
fvar(1) = IfElse(target, FrontEdgeBodyDist <= 0, -1, 1) * (target, Facing) * FVar(0)

[State 1161, CornerPush Friction]
type = VarSet
trigger1 = NumTarget
fvar(0) = FVar(0) * 0.85

[State 1161, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1160 + 30000 * Parent, Var(33)
value = 1160 + 30000 * Parent, Var(33)
elem = AnimElemNo(0)

[State 1161, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 1161, VarSet]
type = VarSet
trigger1 = Time >= Var(1)
var(0) = 1

[State 1161, BindToParent]
type = BindToParent
trigger1 = !Var(0)
time = -1
pos = 97 + 14 * (Var(1) - Time), -105

[State 1161, BindToParent]
type = BindToParent
trigger1 = Var(0)
time = -1
pos = 97, -105

[State 1161, DestroySelf]
type = DestroySelf
trigger1 = Var(0)
trigger1 = Parent, Anim = 1112 + 30000 * Parent, Var(33)
trigger1 = !Parent, AnimElemTime(3)
trigger2 = Parent, Anim != [1111 + 30000 * Parent, Var(33), 1112 + 30000 * Parent, Var(33)]
trigger2 = Parent, Anim != 971 + 30000 * Parent, Var(33)

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Forward - Wire
[Statedef 1165]
type = A
anim = 1165
ctrl = 0
sprpriority = 3

[State 1165, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 92, -106

[State 1165, Explod]
type = Explod
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), StateNo = 1160 || Helper(1160), StateNo = 973
trigger1 = Time
trigger1 = !(Time % 4)
trigger1 = !((Var(0) := (Var(0) + 1)) * 0)
anim = 1165
id = 1165 + Var(0) - 1
pos = 64 * Var(0), 0
bindtime = -1
removetime = -1
sprpriority = 3
shadow = -1

[State 1165, VarSet]
type = VarSet
trigger1 = NumHelper(1160)
trigger1 = Helper(1160), StateNo = 1161
var(1) = Time - (Time % 4)
persistent = 0

[State 1165, RemoveExplod]
type = RemoveExplod
triggerall = NumHelper(1160)
trigger1 = Helper(1160), StateNo = 1161
trigger1 = !((Time - Var(1)) % 4) && Time > Var(1)
trigger1 = !((Var(0) := (Var(0) - 1)) * 0)
id = 1165 + Var(0)

[State 1165, RemoveAllExplod]
type = RemoveExplod
trigger1 = Parent, Anim = 1112 + 30000 * Parent, Var(33)
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1160)
trigger3 = !Var(0) && Var(1)

[State 1165, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 1112 + 30000 * Parent, Var(33)
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1160)

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Up - Arm
[Statedef 1170]
type = A
movetype = A
anim = 1170 + 30000 * Parent, Var(33)
ctrl = 0
sprpriority = 4

[State 1170, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 250, 0

[State 1170, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 85 + 10 * Time, -141 - 8 * Time

[State 1170, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1171
time = -1

[State 1170, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1170, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 1170, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
hitflag = MAFD
guardflag = MA
animtype = Hard
priority = 4, Miss
damage = 173, 21;180, 21	; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7012
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
yaccel = 0.68
ground.velocity = -5, -14
air.velocity = -5, -14
down.velocity = -12
down.hittime = 10

[State 1170, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1170, CornerPush]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(0) = target, GetHitVar(xvel)
ignorehitpause = 1

[State 1170, VarSet]
type = VarSet
trigger1 = 1
var(1) = Time

[State 1170, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeDist <= 0 && Time
trigger3 = MoveContact
trigger4 = Parent, Command = "holdback"
trigger4 = Parent, Command = "x" || Parent, Command = "y" || Parent, Command = "z"
value = 1171

[State 1170, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim != [1120 + 30000 * Parent, Var(33), 1121 + 30000 * Parent, Var(33)]

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Up - Arm - Return
[Statedef 1171]
type = A
ctrl = 0
sprpriority = 4

[State 1171, CornerPush PosAdd VarSet]
type = VarSet
triggerall = FVar(0)
triggerall = NumTarget
trigger1 = target, FrontEdgeBodyDist <= Abs(target, Vel X)
trigger1 = (target, GetHitVar(xvel) * target, Facing) > 0
trigger2 = target, BackEdgeBodyDist <= Abs(target, Vel X)
trigger2 = (target, GetHitVar(xvel) * target, Facing) < 0
fvar(1) = IfElse(target, FrontEdgeBodyDist <= 0, -1, 1) * (target, Facing) * FVar(0)

[State 1171, CornerPush Friction]
type = VarSet
trigger1 = NumTarget
fvar(0) = FVar(0) * 0.85

[State 1171, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1170 + 30000 * Parent, Var(33)
value = 1170 + 30000 * Parent, Var(33)
elem = AnimElemNo(0)

[State 1171, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = -1

[State 1171, VarSet]
type = VarSet
trigger1 = Time >= Var(1)
var(0) = 1

[State 1171, BindToParent]
type = BindToParent
trigger1 = !Var(0)
time = -1
pos = 85 + 10 * (Var(1) - Time), -141 - 8 * (Var(1) - Time)

[State 1171, BindToParent]
type = BindToParent
trigger1 = Var(0)
time = -1
pos = 85, -141

[State 1171, DestroySelf]
type = DestroySelf
trigger1 = Var(0)
trigger1 = Parent, Anim = 1122 + 30000 * Parent, Var(33)
trigger1 = !Parent, AnimElemTime(3)
trigger2 = Parent, Anim != [1121 + 30000 * Parent, Var(33), 1122 + 30000 * Parent, Var(33)]
trigger2 = Parent, Anim != 981 + 30000 * Parent, Var(33)

;---------------------------------------------------------------------------
; Aerial Rocket Punch - Up - Wire
[Statedef 1175]
type = A
anim = 1175
ctrl = 0
sprpriority = 3

[State 1175, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
pos = 83, -139

[State 1175, Explod]
type = Explod
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), StateNo = 1170 || Helper(1170), StateNo = 983
trigger1 = Time
trigger1 = !(Time % 4)
trigger1 = !((Var(0) := (Var(0) + 1)) * 0)
anim = 1175
id = 1175 + Var(0) - 1
pos = 45 * Var(0), -35 * Var(0)
bindtime = -1
removetime = -1
sprpriority = 3
shadow = -1

[State 1175, VarSet]
type = VarSet
trigger1 = NumHelper(1170)
trigger1 = Helper(1170), StateNo = 1171
var(1) = Time - (Time % 4)
persistent = 0

[State 1175, RemoveExplod]
type = RemoveExplod
triggerall = NumHelper(1170)
trigger1 = Helper(1170), StateNo = 1171
trigger1 = !((Time - Var(1)) % 4) && Time > Var(1)
trigger1 = !((Var(0) := (Var(0) - 1)) * 0)
id = 1175 + Var(0)

[State 1175, RemoveAllExplod]
type = RemoveExplod
trigger1 = Parent, Anim = 1122 + 30000 * Parent, Var(33)
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1170)
trigger3 = !Var(0) && Var(1)

[State 1175, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 1122 + 30000 * Parent, Var(33)
trigger1 = !Parent, AnimElemTime(3)
trigger2 = !NumHelper(1170)

;---------------------------------------------------------------------------
; Sentinel Force - Light
[Statedef 1200]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 1200
value = 1200, 0

[State 1200, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 1200
value = 35

[State 1200, Special Dust]
type = Explod
trigger1 = !Time
trigger1 = Anim != 1200
anim = 7200
ID = 7200
pos = 5, -10
sprpriority = 3
ownpal = 1

[State 1200, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1200
value = 1200

[State 1200, Sentinel Missile 3]
type = Helper
trigger1 = !NumHelper(1207)
trigger1 = !AnimElemTime(9)
name = "Sentinel Missile"
id = 1207
pos = -208, -161
postype = back
stateno = 1205
ownpal = 1

[State 1200, Sentinel Missile 2]
type = Helper
trigger1 = !NumHelper(1206)
trigger1 = !AnimElemTime(9)
name = "Sentinel Missile"
id = 1206
pos = -160, -161
postype = back
stateno = 1205
ownpal = 1

[State 1200, Sentinel Missile 1]
type = Helper
trigger1 = !NumHelper(1205)
trigger1 = !AnimElemTime(9)
name = "Sentinel Missile"
id = 1205
pos = -112, -161	; -37 - 7 * 8 = -112; -145 - 2 * 8 = -161
postype = back
stateno = 1205
ownpal = 1

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sentinel Force - Light - Helper - Sentinel Missile
[Statedef 1205]
type = A
movetype = A
anim = 1205
velset = 7, 2
ctrl = 0
sprpriority = 3

[State 1205, Explod]
type = Explod
trigger1 = !Time
anim = 11020
id = 1205
bindtime = -1
removetime = -1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 1205, HitOverride]
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1207

[State 1205, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1205, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 1205, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A, SP
hitflag = MAFD
guardflag = MA
animtype = Hard
priority = 4, Miss
damage = 56, 7;76, 7	; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7012
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 13
ground.hittime = 24
yaccel = 0.68
ground.velocity = -13, 0
air.velocity = -12, -5
fall.yvelocity = -6
air.fall = 1
down.velocity = -13
down.hittime = 10

[State 1205, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1205, VarSet]
type = VarSet
trigger1 = Root, Command = "holdup"
trigger1 = !Var(0) || Var(0) >= 6
var(0) = -1

[State 1205, VarSet]
type = VarSet
trigger1 = Root, Command != "holdup"
trigger1 = (!Var(0) && Root, Command = "holddown") || Var(0) <= -6
var(0) = 1

[State 1205, VelSet]
type = VelSet
triggerall = Var(0)
trigger1 = IsHelper(1205)
trigger1 = Var(0) = 1 * Var(0)/Abs(Var(0))
trigger2 = IsHelper(1206)
trigger2 = Var(0) = 3 * Var(0)/Abs(Var(0))
trigger3 = IsHelper(1207)
trigger3 = Var(0) = 5 * Var(0)/Abs(Var(0))
y = 2 * Var(0)/Abs(Var(0))

[State 1205, VarAdd]
type = VarAdd
trigger1 = Var(0)
var(0) = Var(0)/Abs(Var(0))

[State 1205, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1205, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1206

[State 1205, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80	; Not exact number
trigger2 = ScreenPos Y < -50	; Not exact number
id = 1205

[State 1205, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50	; Not exact number

;---------------------------------------------------------------------------
; Sentinel Force - Helper - Sentinel Missile - Fly Away
[Statedef 1206]
type = A
anim = 1205
velset = 1, -4
ctrl = 0
sprpriority = 3

[State 1206, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80	; Not exact number
trigger2 = ScreenPos Y < -50	; Not exact number
id = 1205

[State 1206, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50	; Not exact number

;---------------------------------------------------------------------------
; Sentinel Force - Helper - Sentinel Missile - Hit - Fly Away
[Statedef 1207]
type = A
velset = 1, -4
ctrl = 0
sprpriority = 3

[State 1207, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 5, 12 + GetHitVar(animtype) - (GetHitVar(animtype) = [3,5]) * 3
channel = 0

[State 1207, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1226
trigger2 = Anim = 1227 && AnimElemNo(0) != 2
value = 1227
elem = 2
persistent = 0

[State 1207, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 1227 && !AnimTime
value = 1205

[State 1207, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80	; Not exact number
trigger2 = ScreenPos Y < -50	; Not exact number
id = 1205

[State 1207, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50	; Not exact number

;---------------------------------------------------------------------------
; Sentinel Force - Medium
[Statedef 1210]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 1200
value = 1200, 0

[State 1210, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 1200
value = 35

[State 1210, Special Dust]
type = Explod
trigger1 = !Time
trigger1 = Anim != 1210
anim = 7200
ID = 7200
pos = 5, -10
sprpriority = 3
ownpal = 1

[State 1210, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1200
value = 1200

[State 1210, Sentinel Missile 3]
type = Helper
trigger1 = !NumHelper(1207)
trigger1 = !AnimElemTime(9)
name = "Sentinel Missile"
id = 1207
pos = -144, -154
postype = back
stateno = 1215
ownpal = 1

[State 1210, Sentinel Missile 2]
type = Helper
trigger1 = !NumHelper(1206)
trigger1 = !AnimElemTime(9)
name = "Sentinel Missile"
id = 1206
pos = -128, -122
postype = back
stateno = 1215
ownpal = 1

[State 1210, Sentinel Missile 1]
type = Helper
trigger1 = !NumHelper(1205)
trigger1 = !AnimElemTime(9)
name = "Sentinel Missile"
id = 1205
pos = -112, -90	; -37 - 7 * 8 = -112
postype = back
stateno = 1215
ownpal = 1

[State 1210, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sentinel Force - Medium - Helper - Sentinel Missile
[Statedef 1215]
type = A
movetype = A
anim = 1205
velset = 7, 0
ctrl = 0
sprpriority = 3

[State 1215, Explod]
type = Explod
trigger1 = !Time
anim = 11020
id = 1205
bindtime = -1
removetime = -1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 1215, HitOverride]
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1207

[State 1215, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1215, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 1215, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A, SP
hitflag = MAFD
guardflag = MA
animtype = Hard
priority = 4, Miss
damage = 56, 7;76, 7	; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7012
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 13
ground.hittime = 24
yaccel = 0.68
ground.velocity = -13, 0
air.velocity = -12, -5
fall.yvelocity = -6
air.fall = 1
down.velocity = -13
down.hittime = 10

[State 1215, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1215, PlaySnd]
type = PlaySnd
triggerall = !Var(1)
triggerall = Root, Command = "a" || Root, Command = "b" || Root, Command = "c" || Root, Command = "x" || Root, Command = "y" || Root, Command = "z"
trigger1 = IsHelper(1205)
trigger2 = IsHelper(1206)
trigger2 = NumHelper(1205)
trigger2 = Helper(1205), Var(1)
trigger3 = IsHelper(1206) && !NumHelper(1205)
trigger4 = IsHelper(1207)
trigger4 = NumHelper(1206)
trigger4 = Helper(1206), Var(1)
trigger5 = IsHelper(1207) && !NumHelper(1206) && !NumHelper(1205)
trigger6 = IsHelper(1207)
trigger6 = !NumHelper(1206) && NumHelper(1207)
trigger6 = Helper(1207), Var(1)
value = 40, 0

[State 1215, Home]
type = VarSet
triggerall = !Var(1)
triggerall = Root, Command = "x" || Root, Command = "y" || Root, Command = "z"
trigger1 = IsHelper(1205)
trigger2 = IsHelper(1206)
trigger2 = NumHelper(1205)
trigger2 = Helper(1205), Var(1)
trigger3 = IsHelper(1206) && !NumHelper(1205)
trigger4 = IsHelper(1207)
trigger4 = NumHelper(1206)
trigger4 = Helper(1206), Var(1)
trigger5 = IsHelper(1207) && !NumHelper(1206) && !NumHelper(1205)
trigger6 = IsHelper(1207)
trigger6 = !NumHelper(1206) && NumHelper(1207)
trigger6 = Helper(1207), Var(1)
var(1) = -1

[State 1215, Downward]
type = VarSet
triggerall = !Var(1)
triggerall = Root, Command = "a" || Root, Command = "b" || Root, Command = "c"
trigger1 = IsHelper(1205)
trigger2 = IsHelper(1206)
trigger2 = NumHelper(1205)
trigger2 = Helper(1205), Var(1)
trigger3 = IsHelper(1206) && !NumHelper(1205)
trigger4 = IsHelper(1207)
trigger4 = NumHelper(1206)
trigger4 = Helper(1206), Var(1)
trigger5 = IsHelper(1207) && !NumHelper(1206) && !NumHelper(1205)
trigger6 = IsHelper(1207)
trigger6 = !NumHelper(1206) && NumHelper(1207)
trigger6 = Helper(1207), Var(1)
var(1) = 1

; Source: http://mugenguild.com/forumx/index.php?topic=8060.0
; Finds the X component of the vector Player, EnemyNear
; Formula to find the components of a given vector AB
; V(x) = B(x) - A(x)
; V(y) = B(y) - A(y)
[State 1215, X]
Type = VarSet
Trigger1 = 1
fvar(0) = (EnemyNear(0), Pos X - Pos X) * Facing ;Adjust the direction towards player facing

; Finds the Y component of the vector Player, EnemyNear
[State 1215, Y]
Type = VarSet
trigger1 = 1
fvar(1) = (EnemyNear(0), Pos Y - Pos Y)

; Finds the vector length
; Formula of the length of a given vector AB
; |AB| = (AB(x)^2  + AB(y)^2)^1/2
[State 1215, Vector Length]
Type = VarSet
trigger1 = 1
fvar(2) = Exp(0.5*Ln((FVar(0) * FVar(0))+(FVar(1) * FVar(1))))

[State 1215, Home VelSet]
type = VelSet
trigger1 = Var(1) = -1
y = FVar(1)/FVar(2) * 2	; Normalizes the components

[State 1215, Downward VelSet]
type = VelSet
trigger1 = Var(1) = 1
y = 2 + IsHelper(1206) + IsHelper(1207) * 2

[State 1215, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1215, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1206

[State 1215, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80	; Not exact number
trigger2 = ScreenPos Y < -50	; Not exact number
id = 1205

[State 1215, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50	; Not exact number

;---------------------------------------------------------------------------
; Sentinel Force - Strong
[Statedef 1220]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 1200
value = 1200, 0

[State 1220, PowerAdd]
type = PowerAdd
trigger1 = !Time
trigger1 = Anim != 1200
value = 35

[State 1220, Special Dust]
type = Explod
trigger1 = !Time
trigger1 = Anim != 1220
anim = 7200
ID = 7200
pos = 5, -10
sprpriority = 3
ownpal = 1

[State 1220, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1200
value = 1200

[State 1220, Sentinel Missile 3]
type = Helper
trigger1 = !NumHelper(1207)
trigger1 = !AnimElemTime(9)
name = "Sentinel Missile"
id = 1207
pos = -149, -154
postype = back
stateno = 1225
ownpal = 1

[State 1220, Sentinel Missile 2]
type = Helper
trigger1 = !NumHelper(1206)
trigger1 = !AnimElemTime(9)
name = "Sentinel Missile"
id = 1206
pos = -117, -154
postype = back
stateno = 1225
ownpal = 1

[State 1220, Sentinel Missile 1]
type = Helper
trigger1 = !NumHelper(1205)
trigger1 = !AnimElemTime(9)
name = "Sentinel Missile"
id = 1205
pos = -85, -154	; -37 - 3 * 16 = -85
postype = back
stateno = 1225
ownpal = 1

[State 1220, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Sentinel Force - Strong - Helper - Sentinel Missile
[Statedef 1225]
type = A
movetype = A
anim = 1205
velset = 3, 0
ctrl = 0
sprpriority = 3

[State 1225, Explod]
type = Explod
trigger1 = !Time
anim = 11020
id = 1205
bindtime = -1
removetime = -1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 1225, HitOverride]
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1207

[State 1225, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1225, ChangeState]
type = ChangeState
trigger1 = Root, Command != "holdc"
trigger2 = Time = 61
value = 1226

[State 1225, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80	; Not exact number
trigger2 = ScreenPos Y < -50	; Not exact number
id = 1205

[State 1225, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50	; Not exact number

;---------------------------------------------------------------------------
; Sentinel Force - Strong - Helper - Sentinel Missile - Hatch Open
[Statedef 1226]
type = A
movetype = A
anim = 1226
velset = 3, 0
ctrl = 0
sprpriority = 3

[State 1226, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 212, 0

[State 1226, PlaySnd]
type = PlaySnd
trigger1 = Time = 26 + IsHelper(1206) * 13 + IsHelper(1207) * 29
trigger2 = Time = 50 + IsHelper(1206) * 13 + IsHelper(1207) * 29
trigger3 = Time = 74 + IsHelper(1206) * 13 + IsHelper(1207) * 29
value = 215, 0

[State 1226, Bomb 1]
type = Helper
trigger1 = Time = 29 + IsHelper(1206) * 16 + IsHelper(1207) * 32
name = "Bomb"
id = 1228
pos = 19, -1
stateno = 1228

[State 1226, Bomb 2]
type = Helper
trigger1 = Time = 53 + IsHelper(1206) * 16 + IsHelper(1207) * 32
name = "Bomb"
id = 1228
pos = 19, -1
stateno = 1228

[State 1226, Bomb 3]
type = Helper
trigger1 = Time = 77 + IsHelper(1206) * 16 + IsHelper(1207) * 32
name = "Bomb"
id = 1228
pos = 19, -1
stateno = 1228

[State 1226, Close Hatch]
type = ChangeAnim
trigger1 = Anim != 1227
trigger1 = Time = 77 + IsHelper(1206) * 16 + IsHelper(1207) * 32
value = 1227

[State 1226, ChangeState]
type = ChangeState
trigger1 = Anim = 1227
trigger1 = !AnimTime
value = 1206

[State 1226, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80	; Not exact number
trigger2 = ScreenPos Y < -50	; Not exact number
id = 1205

[State 1226, Remove]
type = ChangeState
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50	; Not exact number
value = 1227

;---------------------------------------------------------------------------
; Sentinel Force - Strong - Helper - Sentinel Missile - Remove
; Purpose is due to an engine bug where the child must be destroyed before the parent
[Statedef 1227]
ctrl = 0

[State 1227, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1227, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 1227, DestroySelf]
type = DestroySelf
trigger1 = !NumHelper(1228)

;---------------------------------------------------------------------------
; Sentinel Force - Strong - Helper - Bomb
[Statedef 1228]
movetype = A
anim = 11030
velset = 0, 1
ctrl = 0
sprpriority = 3

[State 1228, HitOverride]
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 11031

[State 1228, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 1228, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 1228, HitDef]
type = HitDef
trigger1 = 1
attr = A, SP
animtype = Medium			; Confirmed
air.animtype = Medium		; Confirmed
damage = 28, 7;76, 7	; XCOTA damage
guardflag = MA
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7012				; Based off animtype
sparkxy = -10, 10			;
hitsound = S5, 3			; 
guardsound = S6, 0			; Confirmed
ground.type = High			; Confirmed
air.type = Low				; Confirmed
ground.slidetime = 0		; N/A when ground.velocity y < 0
guard.slidetime = 17
ground.hittime  = 17		; N/A when ground.velocity y < 0
guard.hittime = 17
ground.velocity = -11, 0	;
guard.velocity = -11		;
air.velocity = -8, 10		;
fall.yvelocity = -6
air.fall = 1
palfx.time = 23				;
palfx.add = 160, 80, -32	;
palfx.sinadd = 80,40,-16,4	;

[State 1228, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7300
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1228, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.2						; Not exact number

[State 1228, Flame]
type = Explod
trigger1 = MoveHit
trigger1 = NumExplod(6020) < 4
anim = 6020 + (Random < 500) * 10
id = 6020
pos = 0, -40
postype = p2
bindtime = -1
random = 20, 20
sprpriority = -1
shadow = -1
ownpal = 1

[State 1228, Explode]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = MoveContact
value = 1229

;---------------------------------------------------------------------------
; Sentinel Force - Strong - Helper - Bomb - Explode
[Statedef 1229]
type = A
anim = 6041
velset = 0, 0
ctrl = 0

[State 1229, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;---------------------------------------------------------------------------
; Fly Start
[Statedef 1300]
statetype = S
physics = S
ctrl = 0

[State 1300, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 40
value = 40

[State 1300, Turn SuperJump Off]
type = VarSet
trigger1 = !Time
var(32) = 0

[State 1300, VelSet]
type = VelSet
trigger1 = Anim = 40
trigger1 = !AnimTime
x = 3
y = -3

[State 1300, Sentinel - ChangeState]
type = ChangeState
trigger1 = Anim = 40
trigger1 = !AnimTime
value = 1301
ctrl = 1

;---------------------------------------------------------------------------
; Fly - Start 2
[Statedef 1301]
type = A
ctrl = 0

[State 1301, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 42 + 30000
value = 42 + 30000

[State 1301, VelAdd X]
type = VelAdd
trigger1 = Vel X > 3
x = -0.33

[State 1301, VelAdd Y]
type = VelAdd
trigger1 = Vel Y < 0
x = 0.27

[State 1301, VelSet X]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 1301, VelSet Y]
type = VelSet
trigger1 = Vel Y > 0
y = 0

[State 1301, Fly Set]
type = VarSet
trigger1 = !AnimTime
var(33) = 1

[State 1301, Timer Set]
type = VarSet
trigger1 = !AnimTime
var(34) = 1320

[State 1301, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1302

;---------------------------------------------------------------------------
; Fly - Hover
[Statedef 1302]
type = A
velset = 0, 0
ctrl = 1
sprpriority = 0

[State 1302, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1300 + Var(44) * 10 + 30000 * Var(33)
trigger1 = Var(44)
value = 1300 + Var(44) * 10 + 30000 * Var(33)

[State 1302, Hover]
type = ChangeAnim
trigger1 = Anim != 45 + 30000 * Var(33)
trigger1 = !Var(44)
value = 45 + 30000 * Var(33)

[State 1302, Backward - VelSet]
type = VelSet
trigger1 = Anim = [1310 + 30000 * Var(33), 1330 + 30000 * Var(33)]
x = -6
y = 6 * (Var(44) = 2 || Var(44) = 4 || Var(44) = 6) - 6 * (Var(44) = 3 || Var(44) = 7 || Var(44) = 8)

[State 1302, Forward - VelSet]
type = VelSet
trigger1 = Anim = [1350 + 30000 * Var(33), 1370 + 30000 * Var(33)]
x = 6
y = 6 * (Var(44) = 2 || Var(44) = 4 || Var(44) = 6) - 6 * (Var(44) = 3 || Var(44) = 7 || Var(44) = 8)

[State 1302, Downward - VelSet]
type = VelSet
trigger1 = Anim = 1340 + 30000 * Var(33)
x = 0
y = 6

[State 1302, Upward - VelSet]
type = VelSet
trigger1 = Anim = 1380 + 30000 * Var(33)
x = 0
y = -6

[State 1302, Hover - VelSet]
type = VelSet
trigger1 = Anim = 45 + 30000 * Var(33)
x = 0
y = 0

[State 1302, Downward Limit - VelSet Y]
type = VelSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 1302, Downward Limit - PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1302, Upward Limit - VelSet Y]
type = VelSet
trigger1 = Pos Y <= enemyNear, Pos Y - 147
trigger1 = Vel Y < 0
y = 0

[State 1302, Upward Limit - PosSet]
type = PosSet
trigger1 = Pos Y < enemyNear, Pos Y - 147
y = enemyNear, Pos Y - 147

[State 1302, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1302, ChangeState]
type = ChangeState
trigger1 = !Var(33)
value = 51
ctrl = 1

[State 1302, Partner Change - Leave]
type = ChangeState
trigger1 = !Var(53)
trigger1 = !Var(18)
value = 1303

;---------------------------------------------------------------------------
; Partner Change - Leave - Fly - Hover
[Statedef 1303]
type = A
velset = -6, -6
ctrl = 0
sprpriority = 0

[State 1303, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 40, 0

[State 1303, Backward Up]
type = ChangeAnim
trigger1 = Anim != 1330 + 30000 * Var(33)
value = 1330 + 30000 * Var(33)

[State 1303, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1303, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 1303, ChangeState]
type = ChangeState
trigger1 = BackEdgeDist < -100
trigger1 = !(Var(34) := 0) + !(Var(33) := 0)
value = 13201

;---------------------------------------------------------------------------
; Grab
[Statedef 1400]
type = S
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 1400, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1400
value = 1400

[State 1400, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = S, ST
hitflag = DF
guardflag = 
animtype = Medium
damage = 0, 0
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = S240, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime = 0
ground.velocity = 0
p1sprpriority = -1
id = 1400
numhits = 0

[State 1400, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = NumTarget(1400)
value = 1405
id = 1400

[State 1400, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = NumTarget(1400)
trigger1 = Var(40) := 1	; Sets Grab On
trigger1 = Var(41) := 270	; Sets Grab Timer
value = 1401

[State 1400, ChangeState]
type = ChangeState
trigger1 = Time && !MoveContact
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Grab - Successful
[Statedef 1401]
type = S
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 1401, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1401, PowerAdd]
type = PowerAdd
trigger1 = !Time && PrevStateNo = 1400
value = 56

[State 1401, ChangeAnim]	; Sync with P2 Anim
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 1400
value = 1400

[State 1401, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = [1, 10]
trigger1 = NumTarget(1400)
id = 1400
pos = 100, -8

[State 1401, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = [11, 20]
trigger1 = NumTarget(1400)
id = 1400
pos = 130, -147

[State 1401, TargetBind 3]
type = TargetBind
trigger1 = AnimElemNo(0) = [21, 30]
trigger1 = NumTarget(1400)
id = 1400
pos = 80, -164

[State 1401, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = !NumTarget(1400)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Grab - P2 State
[Statedef 1405]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 1

[State 1405, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 1405, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1405

[State 1405, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1405, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1405, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 1406

;---------------------------------------------------------------------------
; Grab - P2 State
[Statedef 1406]
type = A
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 1406, Turn]
type = Turn
trigger1 = !Time

[State 1406, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 1406, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1406

[State 1406, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1406, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

;---------------------------------------------------------------------------
; Grab - P2 State - Over
[Statedef 1407]
type = A
movetype = H
velset = 5, -4
ctrl = 0
sprpriority = -1

[State 1407, SelfState]
type = SelfState
trigger1 = 1
value = 5040

;---------------------------------------------------------------------------
; Grab - Stand Medium Throw - P1 State
[Statedef 1450]
type = S
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 1450, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1450, PowerAdd]
type = PowerAdd
trigger1 = !Time
value = 43

[State 1450, TargetState]
type = TargetState
trigger1 = !Time
trigger1 = NumTarget(1400)
value = 1455
id = 1400

[State 1450, ChangeAnim]	; Sync with P2 Anim
type = ChangeAnim
trigger1 = !Time
value = 800
elem = 13

[State 1450, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = [13, 28]
trigger1 = NumTarget(1400)
pos = 77, -179
id = 1400

[State 1450, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = [29, 34]
trigger1 = NumTarget(1400)
pos = 30, -164
id = 1400

[State 1450, HitDef]
type = HitDef
trigger1 = AnimElemNo(0) = 34
attr = S, NT
guardflag = 
animtype = Hard
damage = 104, 0
pausetime = 0, 0
sparkno = S7002
sparkxy = 10, -164
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 0
ground.hittime = 0
yaccel = 0.68
ground.velocity = -5, -6
air.velocity = -5, -6
p1sprpriority = -1
p2stateno = 5050
p2getp1state = 0
fall = 1
fall.recover = 0
fall.damage = 104
id = 1450
chainID = 1400

[State 1450, TargetVelSet]
type = TargetVelSet
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(1450)
x = -5
y = -6
id = 1450

; Fail Safe
[State 1450, Fail Safe - TargetState]
type = TargetState
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(1400) && !NumTarget(1450)
value = 1456
id = 1400
persistent = 0

[State 1450, Fail Safe - HitSpark]
type = Explod
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(1400) && !NumTarget(1450)
anim = 7002
id = 1450
pos = (target(1400), Const(size.mid.pos.x)), (target(1400), Const(size.mid.pos.y))
postype = p2
facing = -1
sprpriority = 5
ontop = 1
persistent = 0

[State 1450, Fail Safe - PlaySnd]
type = PlaySnd
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(1400) && !NumTarget(1450)
value = 5, 3
persistent = 0

[State 1450, Fail Safe - TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemNo(0) = 35
trigger1 = NumTarget(1400) && !NumTarget(1450)
value = -208 ; Can't do fall damage here
id = 1400
persistent = 0

[State 1450, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = !NumTarget(1400)
trigger2 = !NumTarget(1450)
trigger2 = AnimElemTime(35) < 0
value = 0 + (Var(40) := 0)
ctrl = 1

;---------------------------------------------------------------------------
; Grab - Stand Medium Throw - P2 State
[Statedef 1455]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 1

[State 1455, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 1455, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 805
elem = 3

[State 1455, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 5
value = SCA

[State 1455, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1455, Fail Safe - SelfState]
type = SelfState
trigger1 = Vel X
trigger1 = Vel Y
value = 5050

;---------------------------------------------------------------------------
; Grab - Stand Medium Throw - Fail Safe P2 State
[Statedef 1456]
type = A
movetype = H
velset = -5, -6
ctrl = 0
sprpriority = 0

[State 1456, Fail Safe - SelfState]
type = SelfState
trigger1 = 1
value = 5050

;---------------------------------------------------------------------------
; Grab - Aerial Medium Throw - P1 State
[Statedef 1460]
type = A
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 1460, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1460, PowerAdd]
type = PowerAdd
trigger1 = !Time
value = 43

[State 1460, TargetState]
type = TargetState
trigger1 = !Time
trigger1 = NumTarget(1400)
value = 1465
id = 1400

[State 1460, ChangeAnim]	; Sync with P2 Anim
type = ChangeAnim
trigger1 = !Time
value = 850

[State 1460, TargetBind 1]
type = TargetBind
trigger1 = AnimElemNo(0) = [1, 2]
trigger1 = NumTarget(1400)
pos = 62, -109
id = 1400

[State 1460, TargetBind 2]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
trigger1 = NumTarget(1400)
pos = 106, -109
id = 1400

[State 1460, TargetBind 3]		; Default common1.cns doesn't use aerial gethit sprites so this is inaccurate
type = TargetBind
trigger1 = AnimElemNo(0) = 4
trigger1 = NumTarget(1400)
pos = 97, -198
id = 1400

[State 1460, TargetBind 4]		; Default common1.cns doesn't use aerial gethit sprites so this is inaccurate
type = TargetBind
trigger1 = AnimElemNo(0) = 5
trigger1 = NumTarget(1400)
pos = 101, -197
id = 1400

[State 1460, HitDef]
type = HitDef
trigger1 = AnimElemTime(5) = 5
attr = A, NT
guardflag = 
animtype = Hard
damage = 104, 0
pausetime = 0, 0
sparkno = S7002
sparkxy = 10, -197
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 0
ground.hittime = 0
yaccel = 0.68
ground.velocity = -5, -6
air.velocity = -5, -6
p1sprpriority = -1
p2stateno = 5050
p2getp1state = 0
fall = 1
fall.recover = 0
fall.damage = 104
id = 1460
chainID = 1400

[State 1460, TargetVelSet]
type = TargetVelSet
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(1460)
x = -5
y = -6
id = 1460

; Fail Safe
[State 1460, Fail Safe - TargetState]
type = TargetState
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(1400) && !NumTarget(1460)
value = 1466
id = 1400
persistent = 0

[State 1460, Fail Safe - HitSpark]
type = Explod
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(1400) && !NumTarget(1460)
anim = 7002
id = 1460
pos = (target(1400), Const(size.mid.pos.x)), (target(1400), Const(size.mid.pos.y))
postype = p2
facing = -1
sprpriority = 5
ontop = 1
persistent = 0

[State 1460, Fail Safe - PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(1400) && !NumTarget(1460)
value = 5, 3
persistent = 0

[State 1460, Fail Safe - TargetLifeAdd]
type = TargetLifeAdd
trigger1 = !AnimElemTime(6)
trigger1 = NumTarget(1400) && !NumTarget(1460)
value = -208 ; Can't do fall damage here
id = 1400
persistent = 0

[State 1460, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = !NumTarget(1400)
trigger2 = !NumTarget(1460)
trigger2 = AnimElemTime(6) < 0
value = 51 + (Var(34) > 0) * 1251 + (Var(40) := 0)
ctrl = 1

;---------------------------------------------------------------------------
; Grab - Aerial Medium Throw - P2 State
[Statedef 1465]
type = A
movetype = H
velset = 0, 0
ctrl = 0
facep2 = -1
sprpriority = 1

[State 1465, DestroySelf]
type = DestroySelf
trigger1 = IsHelper

[State 1465, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 855

[State 1465, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 5
value = SCA

[State 1465, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1465, Fail Safe - SelfState]
type = SelfState
trigger1 = Vel X
trigger1 = Vel Y
value = 5050

;---------------------------------------------------------------------------
; Grab - Aerial Medium Throw - Fail Safe P2 State
[Statedef 1466]
type = A
movetype = H
velset = -5, -6
ctrl = 0
sprpriority = 0

[State 1466, Fail Safe - SelfState]
type = SelfState
trigger1 = 1
value = 5050

;---------------------------------------------------------------------------
; Plasma Storm - Init
[Statedef 3000]
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 3000
value = 3000, 0

[State 3000, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3000
value = 3000

[State 3000, Special Dust]
type = Explod
trigger1 = AnimTime = -1
anim = 7200
ID = 7200
pos = 5, -10
sprpriority = 3
ownpal = 1

[State 3000, Remove LifeBar]
type = RemoveExplod
trigger1 = NumExplod(7700)
trigger1 = AnimTime = -1
id = 7700

[State 3000, Remove LifeBar - Small Portrait]
type = RemoveExplod
trigger1 = NumExplod(7705)
trigger1 = AnimTime = -1
id = 7705

[State 3000, Remove LifeBar - Red Bar]
type = RemoveExplod
trigger1 = NumExplod(7710)
trigger1 = AnimTime = -1
id = 7710

[State 3000, Remove LifeBar - Yellow Bar]
type = RemoveExplod
trigger1 = NumExplod(7720)
trigger1 = AnimTime = -1
id = 7720

[State 3000, Hyper]
type = Helper
trigger1 = AnimTime = -1
name = "Hyper"
id = 19000
stateno = 19000
pos = 145, -119
ownpal = 1
supermovetime = 45

[State 3000, SuperPause]
type = SuperPause
trigger1 = AnimTime = -1
time = 45
anim = -1
sound = S9001, 0	; No sound
pos = 0, 0
darken = 0
poweradd = -1000

[State 3000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3001 + (Var(35) := 0) + (Var(36) := 0) + (Var(37) := 0) + (Var(38) := 0)

;---------------------------------------------------------------------------
; Plasma Storm - Charge
[Statedef 3001]
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3001, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3001
value = 3001

[State 3001, Charge Spark]
type = Helper
trigger1 = !NumHelper(3010)
name = "Charge Spark"
id = 3010
stateno = 3010
ownpal = 1

[State 3001, Charge Timer Increment]
type = VarAdd
trigger1 = 1
var(35) = 1

[State 3001, Charge Level Counter Increment]
type = VarAdd
triggerall = Var(35) < 15 && !Var(36)
triggerall = Var(38) < 31
trigger1 = Var(35) = 2
var(38) = 1

[State 3001, CornerPush PosAdd]
type = PosAdd
trigger1 = NumHelper(3030)
trigger1 = Helper(3030), FVar(0)
x = Helper(3030), FVar(1)

[State 3001, ChangeState]
type = ChangeState
trigger1 = Var(35) >= 48
value = 3002 + (Var(37) := 18 - AnimElemNo(0) + (AnimElemNo(0) > 6) * 6) * 0

;---------------------------------------------------------------------------
; Plasma Storm - Release
[Statedef 3002]
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3002, Freeze Anim]
type = ChangeAnim
trigger1 = Var(37) <= 0
value = Anim
elem = AnimElemNo(0) - 1

[State 3002, Charge Again]
type = ChangeState
triggerall = Var(36) < 2	; Energy blast limit
triggerall = Var(37) > 0	; Command time limit
triggerall = NumHelper(3030)
triggerall = Helper(3030), StateNo != 3030
trigger1 = Command = "x" || Command = "y" || Command = "z"
trigger2 = Var(0) = 1
value = 3001 + (Var(36) := Var(36) + 1) * 0 + (Var(35) := 0) +(Var(37) := 0)

[State 3002, VarAdd]
type = VarAdd
trigger1 = 1
var(37) = -1

[State 3002, ChangeState]
type = ChangeState
trigger1 = Var(37) = -25
value = 3003

;---------------------------------------------------------------------------
; Plasma Storm - End
[Statedef 3003]
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3003, Accel]
type = VelAdd
trigger1 = Vel X < -0.33
x = 0.33

[State 3003, VelSet]
type = VelSet
trigger1 = Anim != 3002
x = -5

[State 3003, Dust]
type = Explod
trigger1 = Anim != 3002
anim = 7145
sprpriority = 5
ownpal = 1

[State 3003, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3002
value = 3002

[State 3003, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Plasma Storm - Charge Spark
[Statedef 3010]
ctrl = 0
sprpriority = 3

[State 3010, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3010 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
value = 3010 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
elem = AnimElemNo(0)

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3010, 0

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 60
trigger2 = Time > 60
trigger2 = !(Time % 50)
value = 3010, 1

[State 3010, BindToParent]
type = BindToParent
trigger1 = 1

[State 3010, Particles]
type = Helper
trigger1 = !NumHelper(3020)
name = "Particles"
id = 3020
stateno = 3020

[State 3010, Energy Ball]
type = Helper
trigger1 = Parent, Var(35) = 1
trigger1 = Parent, StateNo = 3001
name = "Energy Ball"
id = 3030
pos = 136, -114
stateno = 3030

[State 3010, Remove]
type = ChangeState
trigger1 = Parent, Anim != [3001, 3002]
trigger2 = Parent, Var(37) < 0
value = 3011

;---------------------------------------------------------------------------
; Plasma Storm - Charge Spark - Remove
; Purpose is due to an engine bug where the child must be destroyed before the parent
[Statedef 3011]
ctrl = 0

[State 3011, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3011, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 3011, DestroySelf]
type = DestroySelf
trigger1 = !NumHelper(3020) && !NumHelper(3030)

;---------------------------------------------------------------------------
; Plasma Storm - Particles
[Statedef 3020]
ctrl = 0
sprpriority = 4

[State 3020, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3020 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
value = 3020 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
elem = AnimElemNo(0)

[State 3020, BindToParent]
type = BindToParent
trigger1 = 1

[State 3020, DestroySelf]
type = DestroySelf
trigger1 = Root, Anim != [3001, 3002]
trigger2 = Root, Var(37) < 0

;---------------------------------------------------------------------------
; Plasma Storm - Energy Ball - Init
[Statedef 3030]
movetype = A
ctrl = 0
sprpriority = 3

[State 3030, SprPriority]
type = SprPriority
trigger1 = 1
value = 3

[State 3030, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3030 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
value = 3030 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
elem = AnimElemNo(0)

[State 3030, BindToParent]
type = BindToParent
trigger1 = 1
pos = 136, -114

[State 3030, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 3030, HitDef]
Type = HitDef
trigger1 = !(Time % 10)
attr = S, HP
guardflag = MA
animtype = Medium
damage = 65 + (Root, Var(38) = [10, 20]) * 10 + (Root, Var(38) = [21, 30]) * 20 + (Root, Var(38) > 30) * 30, 0
;104, 0	; XCOTA damage
pausetime = 0, 0
sparkno = S7022
sparkxy = 0, 0
hitsound = S5, 20
guardsound = S6, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 13
yaccel = 0.68
ground.velocity = -9
air.velocity = -6, -3
getpower = 0
palfx.time = 13
palfx.sinadd = 16, 16, 16, 4
palfx.color = 0

[State 3030, Electricity 1]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3060)
anim = 3060 + (Random % 5)
id = 3060
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 13
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3030, Electricity 2]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3061)
anim = 3060 + (Random % 5)
id = 3061
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 13
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3030, Electricity 3]
type = Explod
trigger1 = MoveHit = 1
anim = 3060 + (Random % 5)
trigger1 = !NumExplod(3062)
id = 3062
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 13
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3030, CornerPush]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(0) = target, GetHitVar(xvel)
ignorehitpause = 1

[State 3030, CornerPush PosAdd VarSet]
type = VarSet
triggerall = FVar(0)
triggerall = NumTarget
triggerall = !HitPauseTime && (target, GetHitVar(hitshaketime) <= 0)
triggerall = (target, StateType != L)
trigger1 = target, FrontEdgeBodyDist <= Abs(target, Vel X)
trigger1 = (target, GetHitVar(xvel) * target, Facing) > 0
trigger2 = target, BackEdgeBodyDist <= Abs(target, Vel X)
trigger2 = (target, GetHitVar(xvel) * target, Facing) < 0
fvar(1) = IfElse(target, FrontEdgeBodyDist <= 0, -1, 1) * (target, Facing) * FVar(0)

[State 3030, CornerPush Friction]
type = VarSet
trigger1 = NumTarget
trigger1 = target, GetHitVar(hitshaketime) <= 0
fvar(0) = FVar(0) * 0.85

[State 3030, CornerPush Reset]
type = VarSet
trigger1 = Root, Var(35) >= 48
trigger2 = Root, Anim != [3001, 3002]
trigger3 = Root, Var(37) < 0
trigger4 = FVar(0) && NumTarget
trigger4 = (target, HitOver) || (target, GetHitVar(hitshaketime) > 0 && target, Time <= 0)
fvar(0) = 0

[State 3030, CornerPush Reset]
type = VarSet
trigger1 = Root, Var(35) >= 48
trigger2 = Root, Anim != [3001, 3002]
trigger3 = Root, Var(37) < 0
fvar(1) = 0

[State 3030, Release]
type = ChangeState
trigger1 = Root, Var(35) >= 48
trigger2 = Root, Anim != [3001, 3002]
trigger3 = Root, Var(37) < 0
value = 3040

;---------------------------------------------------------------------------
; Plasma Storm - Energy Ball - Release
[Statedef 3040]
movetype = A
ctrl = 0
sprpriority = 3

[State 3040, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 3040, Small Energy Projectile 1]
type = Helper
trigger1 = !Time
name = "Small Energy Projectile 1"
id = 3050
pos = 6, -20
stateno = 3050

[State 3040, Small Energy Projectile 2]
type = Helper
trigger1 = !Time
name = "Small Energy Projectile 2"
id = 3051
pos = 4, -16
stateno = 3050

[State 3040, Small Energy Projectile 3]
type = Helper
trigger1 = !Time
name = "Small Energy Projectile 3"
id = 3052
pos = 2, -12
stateno = 3050

[State 3040, Small Energy Projectile 4]
type = Helper
trigger1 = !Time
name = "Small Energy Projectile 4"
id = 3053
pos = 0, -8
stateno = 3050

[State 3040, Small Energy Projectile 5]
type = Helper
trigger1 = !Time
name = "Small Energy Projectile 5"
id = 3054
pos = 0, -4
stateno = 3050

[State 3040, Small Energy Projectile 6]
type = Helper
trigger1 = !Time
name = "Small Energy Projectile 6"
id = 3055
pos = 2, 0
stateno = 3050

[State 3040, Small Energy Projectile 7]
type = Helper
trigger1 = !Time
name = "Small Energy Projectile 7"
id = 3056
pos = 4, 4
stateno = 3050

[State 3040, Small Energy Projectile 8]
type = Helper
trigger1 = !Time
name = "Small Energy Projectile 8"
id = 3057
pos = 6, 8
stateno = 3050

[State 3040, PlaySnd]
type = PlaySnd
trigger1 = Time = 5
value = 3011, 0

[State 3040, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 5
value = 3040

[State 3040, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 5
trigger1 = Anim != 3040 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
value = 3040 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
elem = AnimElemNo(0)

[State 3040, VelSet]
type = VelSet
trigger1 = Time = 5
x = 25

[State 3040, HitDef]
Type = HitDef
trigger1 = !MoveContact
trigger1 = Time >= 5
attr = S, HP
guardflag = MA
animtype = Up
damage = 120 + (Root, Var(38) = [10, 20]) * 10 + (Root, Var(38) = [21, 30]) * 20 + (Root, Var(38) > 30) * 30, 20 + (Root, Var(38) = [10, 20]) * 5 + (Root, Var(38) = [21, 30]) * 10 + (Root, Var(38) > 30) * 15
;215, 49	; XCOTA damage
pausetime = 0, 0
sparkno = S7022
sparkxy = 0, 0
hitsound = S3060, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = 0, -16
guard.velocity = -14
air.velocity = 0, -16
fall = 1
fall.yvelocity = -6
fall.recover = 0
getpower = 0
palfx.time = 8
palfx.sinadd = 16, 16, 16, 4
palfx.color = 0

[State 3040, Electricity 1]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3060)
anim = 3060 + (Random % 5)
id = 3060
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 8
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3040, Electricity 2]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3061)
anim = 3060 + (Random % 5)
id = 3061
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 8
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3040, Electricity 3]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3062)
anim = 3060 + (Random % 5)
id = 3062
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 8
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3040, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -100
trigger1 = !NumHelper(3050)
trigger1 = !NumHelper(3051)
trigger1 = !NumHelper(3052)
trigger1 = !NumHelper(3053)
trigger1 = !NumHelper(3054)
trigger1 = !NumHelper(3055)
trigger1 = !NumHelper(3056)
trigger1 = !NumHelper(3057)

;---------------------------------------------------------------------------
; Plasma Storm - Small Energy Projectile
[Statedef 3050]
movetype = A
ctrl = 0
sprpriority = 5

[State 3050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3050 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
value = 3050 + (Root, Var(38) = [10, 20]) + (Root, Var(38) = [21, 30]) * 2 + (Root, Var(38) > 30) * 3
elem = AnimElemNo(0)

[State 3050, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 3050, VelSet 1]
type = VelSet
trigger1 = IsHelper(3050)
trigger1 = Time < 7
x = -2	; 14/7
y = -14	; 98/7

[State 3050, VelSet 2]
type = VelSet
trigger1 = IsHelper(3051)
trigger1 = Time < 7
x = -4	; 28/7
y = -10	; 70/7

[State 3050, VelSet 3]
type = VelSet
trigger1 = IsHelper(3052)
trigger1 = Time < 7
x = -6	; 42/7
y = -6	; 42/7

[State 3050, VelSet 4]
type = VelSet
trigger1 = IsHelper(3053)
trigger1 = Time < 7
x = -8	; 56/7
y = -2	; 14/7

[State 3050, VelSet 5]
type = VelSet
trigger1 = IsHelper(3054)
trigger1 = Time < 7
x = -8	; 56/7
y = 2	; 14/7

[State 3050, VelSet 6]
type = VelSet
trigger1 = IsHelper(3055)
trigger1 = Time < 7
x = -6	; 42/7
y = 6	; 42/7

[State 3050, VelSet 7]
type = VelSet
trigger1 = IsHelper(3056)
trigger1 = Time < 7
x = -4	; 28/7
y = 10	; 70/7

[State 3050, VelSet 8]
type = VelSet
trigger1 = IsHelper(3057)
trigger1 = Time < 7
x = -2	; 14/7
y = 14	; 98/7

[State 3050, VelSet - Stop]
type = VelSet
trigger1 = Time = [7, 13]
x = 0
y = 0

[State 3050, VelSet - Forward]
type = VelSet
trigger1 = Time > 13
x = 24

[State 3050, HitDef]
Type = HitDef
trigger1 = !MoveContact
attr = S, HP
guardflag = MA
animtype = Up
damage = 23 + (Root, Var(38) = [10, 20]) * 10 + (Root, Var(38) = [21, 30]) * 20 + (Root, Var(38) > 30) * 30, 7 + (Root, Var(38) = [10, 20]) * 5 + (Root, Var(38) = [21, 30]) * 10 + (Root, Var(38) > 30) * 15
;90, 14	; XCOTA damage
pausetime = 0, 0
sparkno = S7022
sparkxy = 0, 0
hitsound = S3060, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
yaccel = 0.68
ground.velocity = 0, -16
guard.velocity = -14
air.velocity = 0, -16
fall = 1
fall.yvelocity = -6
fall.recover = 0
getpower = 0
palfx.time = 55
palfx.sinadd = 16, 16, 16, 4
palfx.color = 0

[State 3050, Electricity 1]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3060)
anim = 3060 + (Random % 5)
id = 3060
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 55
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3050, Electricity 2]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3061)
trigger1 = Random < 500
anim = 3060 + (Random % 5)
id = 3061
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 55
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3050, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeDist < -100

;---------------------------------------------------------------------------
; MVC2 - Plasma Storm - Init
[Statedef 3100]
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = Anim != 3000
value = 3000, 0

[State 3100, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3000
value = 3000

[State 3100, Special Dust]
type = Explod
trigger1 = AnimTime = -1
anim = 7200
ID = 7200
pos = 5, -10
sprpriority = 3
ownpal = 1

[State 3100, Remove LifeBar]
type = RemoveExplod
trigger1 = NumExplod(7700)
trigger1 = AnimTime = -1
id = 7700

[State 3100, Remove LifeBar - Small Portrait]
type = RemoveExplod
trigger1 = NumExplod(7705)
trigger1 = AnimTime = -1
id = 7705

[State 3100, Remove LifeBar - Red Bar]
type = RemoveExplod
trigger1 = NumExplod(7710)
trigger1 = AnimTime = -1
id = 7710

[State 3100, Remove LifeBar - Yellow Bar]
type = RemoveExplod
trigger1 = NumExplod(7720)
trigger1 = AnimTime = -1
id = 7720

[State 3100, Hyper]
type = Helper
trigger1 = AnimTime = -1
name = "Hyper"
id = 19000
stateno = 19000
pos = 145, -119
ownpal = 1
supermovetime = 45

[State 3100, SuperPause]
type = SuperPause
trigger1 = AnimTime = -1
time = 45
anim = -1
sound = S9001, 0	; No sound
pos = 0, 0
darken = 0
poweradd = -1000

[State 3100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3101 + (Var(35) := 0) + (Var(37) := 0)

;---------------------------------------------------------------------------
; MVC2 - Plasma Storm - Charge
[Statedef 3101]
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3101, Energy Ball]
type = Helper
trigger1 = !Time
trigger1 = Anim != 3001
trigger1 = !NumHelper(3130)
name = "Energy Ball"
id = 3130
pos = 136, -114
stateno = 3130

[State 3101, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3001
value = 3001

[State 3101, Charge Timer Increment]
type = VarAdd
trigger1 = 1
var(35) = 1

[State 3101, CornerPush PosAdd]
type = Null;PosAdd
trigger1 = NumHelper(3130)
trigger1 = Helper(3130), FVar(0)
x = Helper(3130), FVar(1)

[State 3101, ChangeState]
type = ChangeState
trigger1 = Var(35) >= 150;70
value = 3102 + (Var(37) := 18 - AnimElemNo(0) + (AnimElemNo(0) > 6) * 6) * 0

;---------------------------------------------------------------------------
; MVC2 - Plasma Storm - Release
[Statedef 3102]
movetype = A
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3102, Freeze Anim]
type = ChangeAnim
trigger1 = Var(37) <= 0
value = Anim
elem = AnimElemNo(0) - 1

[State 3102, VarAdd]
type = VarAdd
trigger1 = 1
var(37) = -1

[State 3102, ChangeState]
type = ChangeState
trigger1 = Var(37) = -25
value = 3103

;---------------------------------------------------------------------------
; MVC2 - Plasma Storm - End
[Statedef 3103]
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3103, Accel]
type = VelAdd
trigger1 = Vel X < -0.33
x = 0.33

[State 3103, VelSet]
type = VelSet
trigger1 = Anim != 3002
x = -5

[State 3103, Dust]
type = Explod
trigger1 = Anim != 3002
anim = 7145
sprpriority = 5
ownpal = 1

[State 3103, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3002
value = 3002

[State 3103, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Plasma Storm - Energy Ball
[Statedef 3130]
movetype = A
ctrl = 0
sprpriority = 3

[State 3130, SprPriority]
type = SprPriority
trigger1 = 1
value = 3

[State 3130, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3130
value = 3130

[State 3130, BindToParent]
type = BindToParent
trigger1 = 1
pos = 136, -114

[State 3130, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 3010, 0

[State 3130, PlaySnd]
type = PlaySnd
trigger1 = Time = 60
trigger2 = Time = 110
value = 3010, 1

[State 3130, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 3130, HitDef]
Type = HitDef
trigger1 = HitCount < 9
trigger1 = !(Time % 10)
;trigger1 = !(Time % 8)
attr = S, HP
guardflag = MA
animtype = Medium
damage = 42, 7
;104, 0	; XCOTA damage
pausetime = 0, 0
sparkno = S7022
sparkxy = 0, 0
hitsound = S5, 20
guardsound = S6, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 13
yaccel = 0.68
ground.velocity = -3, -20 * (HitCount > 7)
air.velocity = -3, -2 -18 * (HitCount > 7)
fall = 1 * (HitCount > 7)
fall.yvelocity = -6
fall.recover = 0
getpower = 0
palfx.time = 13
palfx.sinadd = 16, 16, 16, 4
palfx.color = 0

[State 3130, Electricity 1]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3060)
anim = 3060 + (Random % 5)
id = 3060
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 13
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3130, Electricity 2]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3061)
anim = 3060 + (Random % 5)
id = 3061
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 13
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3130, Electricity 3]
type = Explod
trigger1 = MoveHit = 1
trigger1 = !NumExplod(3062)
anim = 3060 + (Random % 5)
id = 3062
pos = 0, -60
postype = p2
facing = 1 - (Random % 2) * 2
vfacing = 1 - (Random % 2) * 2
bindtime = -1
random = 40, 40
removetime = 13
sprpriority = -3 + (Random % 2) * 4
ignorehitpause = 1

[State 3130, CornerPush]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(0) = target, GetHitVar(xvel)
ignorehitpause = 1

[State 3130, CornerPush PosAdd VarSet]
type = VarSet
triggerall = FVar(0)
triggerall = NumTarget
triggerall = !HitPauseTime && (target, GetHitVar(hitshaketime) <= 0)
triggerall = (target, StateType != L)
trigger1 = target, FrontEdgeBodyDist <= Abs(target, Vel X)
trigger1 = (target, GetHitVar(xvel) * target, Facing) > 0
trigger2 = target, BackEdgeBodyDist <= Abs(target, Vel X)
trigger2 = (target, GetHitVar(xvel) * target, Facing) < 0
fvar(1) = IfElse(target, FrontEdgeBodyDist <= 0, -1, 1) * (target, Facing) * FVar(0)

[State 3130, CornerPush Friction]
type = VarSet
trigger1 = NumTarget
trigger1 = target, GetHitVar(hitshaketime) <= 0
fvar(0) = FVar(0) * 0.85

[State 3130, CornerPush Reset]
type = VarSet
trigger1 = Time >= 150
trigger2 = FVar(0) && NumTarget
trigger2 = (target, HitOver) || (target, GetHitVar(hitshaketime) > 0 && target, Time <= 0)
fvar(0) = 0

[State 3130, CornerPush Reset]
type = VarSet
trigger1 = Time >= 150
fvar(1) = 0

[State 3130, Scale Up]
type = AngleDraw
trigger1 = Time < 130;65
scale = 1.09 + 0.0034 * Time, 1.09 + 0.0034 * Time	; (1.6 - 1.09)/130
;scale = 1.09 + 0.0078 * Time, 1.09 + 0.0078 * Time

[State 3130, Scale Down]
type = AngleDraw
trigger1 = Time > 130;65
scale = 1.6 - (Time - 130) * 0.0255, 1.6 - (Time - 130) * 0.0255;(1.6 - 1.09)/(150 - 130)
;scale = 1.6 - (Time - 65) * 0.102, 1.6 - (Time - 65) * 0.102

[State 3130, DestroySelf]
type = DestroySelf
trigger1 = Time >= 150;!AnimTime
trigger2 = Root, Anim != [3001, 3002]

;---------------------------------------------------------------------------
; MVC2 - Hyper Sentinel Force
[Statedef 3200]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = !AnimElemTime(12)
value = 1200, 0

; Purpose is to set individual helper's palettes apart from the parent,
; but to give each helper ownpal = 0 to reduce memory consumption and speed up gameplay
; If too many helpers are generated with ownpal = 1, then gameplay slows down
[State 3200, Sentinel Missile Generator]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(3205)
trigger1 = Anim != 1200
name = "Sentinel Missile Generator"
id = 3205
stateno = 3205
ownpal = 1

[State 3200, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1200
value = 1200

[State 3200, Special Dust]
type = Explod
trigger1 = !AnimElemTime(11)
anim = 7200
ID = 7200
pos = 5, -10
sprpriority = 3
ownpal = 1

[State 3200, Remove LifeBar]
type = RemoveExplod
trigger1 = NumExplod(7700)
trigger1 = !AnimElemTime(11)
id = 7700

[State 3200, Remove LifeBar - Small Portrait]
type = RemoveExplod
trigger1 = NumExplod(7705)
trigger1 = !AnimElemTime(11)
id = 7705

[State 3200, Remove LifeBar - Red Bar]
type = RemoveExplod
trigger1 = NumExplod(7710)
trigger1 = !AnimElemTime(11)
id = 7710

[State 3200, Remove LifeBar - Yellow Bar]
type = RemoveExplod
trigger1 = NumExplod(7720)
trigger1 = !AnimElemTime(11)
id = 7720

[State 3200, Hyper]
type = Helper
trigger1 = !AnimElemTime(11)
name = "Hyper"
id = 19000
stateno = 19000
pos = 145, -119
ownpal = 1
supermovetime = 45

[State 3200, SuperPause]
type = SuperPause
trigger1 = !AnimElemTime(11)
time = 45
anim = -1
sound = S9001, 0	; No sound
pos = 0, 0
darken = 0
poweradd = -1000

[State 3200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MVC2 - Hyper Sentinel Force - Helper - Sentinel Missile Generator
[Statedef 3205]
anim = 1200
ctrl = 0

[State 3205, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3205, Invisible]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 3205, BindToParent]
type = BindToParent
trigger1 = 1

[State 3205, Sentinel Missile 3]
type = Helper
;trigger1 = !NumHelper(3207)
trigger1 = !AnimElemTime(11)
trigger2 = AnimElemTime(11) = 18
trigger3 = AnimElemTime(11) = 36
name = "Sentinel Missile"
id = 3208
pos = -238, -41;168
postype = back
stateno = 3210

[State 3205, Sentinel Missile 2]
type = Helper
;trigger1 = !NumHelper(3206)
trigger1 = !AnimElemTime(11)
trigger2 = AnimElemTime(11) = 18
trigger3 = AnimElemTime(11) = 36
name = "Sentinel Missile"
id = 3207
pos = -190, -89
postype = back
stateno = 3210

[State 3205, Sentinel Missile 1]
type = Helper
;trigger1 = !NumHelper(3205)
trigger1 = !AnimElemTime(11)
trigger2 = AnimElemTime(11) = 18
trigger3 = AnimElemTime(11) = 36
name = "Sentinel Missile"
id = 3206
pos = -142, -137	;-37 -7 * 15 = 142; -37 - 7 * 15 = -142
postype = back
stateno = 3210

[State 3205, Sentinel Missile 6]
type = Null;Helper
trigger1 = !NumHelper(1217)
trigger1 = !AnimElemTime(11)
name = "Sentinel Missile"
id = 1217
pos = -502, -41
postype = back
stateno = 3210

[State 3205, Sentinel Missile 5]
type = Null;Helper
trigger1 = !NumHelper(1216)
trigger1 = !AnimElemTime(11)
name = "Sentinel Missile"
id = 1216
pos = -454, -89
postype = back
stateno = 3210

[State 3205, Sentinel Missile 4]
type = Null;Helper
trigger1 = !NumHelper(1215)
trigger1 = !AnimElemTime(11)
name = "Sentinel Missile"
id = 1215
pos = -406, -137
postype = back
stateno = 3210

[State 3205, Sentinel Missile 9]
type = Null;Helper
trigger1 = !NumHelper(1227)
trigger1 = !AnimElemTime(11)
name = "Sentinel Missile"
id = 1227
pos = -766, -41
postype = back
stateno = 3210

[State 3205, Sentinel Missile 8]
type = Null;Helper
trigger1 = !NumHelper(1226)
trigger1 = !AnimElemTime(11)
name = "Sentinel Missile"
id = 1226
pos = -718, -89
postype = back
stateno = 3210

[State 3205, Sentinel Missile 7]
type = Null;Helper
trigger1 = !NumHelper(1225)
trigger1 = !AnimElemTime(11)
name = "Sentinel Missile"
id = 1225
pos = -670, -137
postype = back
stateno = 3210

[State 3205, Remove]
type = ChangeState
trigger1 = Parent, Anim != 1200
value = 3206

;---------------------------------------------------------------------------
; MVC2 - Hyper Sentinel Force - Helper - Sentinel Missile Generator - Remove
; Purpose is due to an engine bug where the child must be destroyed before the parent
[Statedef 3206]
ctrl = 0

[State 3206, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3206, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 3206, DestroySelf]
type = DestroySelf
trigger1 = !NumHelper(3206) && !NumHelper(3207) && !NumHelper(3208)

;---------------------------------------------------------------------------
; MVC2 - Hyper Sentinel Force - Helper - Sentinel Missile
[Statedef 3210]
type = A
movetype = A
anim = 1205
velset = 15, 0
ctrl = 0
sprpriority = 3

[State 3210, Explod]
type = Explod
trigger1 = !Time
anim = 11020
id = 1205
bindtime = -1
removetime = -1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3210, HitOverride]
type = HitOverride
trigger1 = !Time
time = -1
attr = SCA, NA, NP, NT, SA, SP, ST, HA, HP, HT
stateno = 1207

[State 3210, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = , NT, ST, HT
time = -1

[State 3210, Apply Damage Dampener]
type = AttackMulSet
trigger1 = 1
value = Root, FVar(10)

[State 3210, HitDef]
type = HitDef
trigger1 = !MoveContact
attr = A, SP
hitflag = MAFD
guardflag = MA
animtype = Hard
priority = 4, Miss
damage = 56, 7;76, 7	; XCOTA damage
pausetime = 0, 9;0, 17	; XCOTA pausetime
sparkno = S7022
sparkxy = 0, 0
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 13
ground.hittime = 24
yaccel = 0.68
ground.velocity = -13, -6
air.velocity = -12, -6
fall = 1
fall.yvelocity = -6
air.fall = 1
down.velocity = -13
down.hittime = 10
getpower = 0

[State 3210, HitFlash]
type = Explod
trigger1 = MoveHit = 1
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 3210, RemoveExplod]
type = RemoveExplod
trigger1 = FrontEdgeDist < -80	; Not exact number
trigger2 = ScreenPos Y < -50	; Not exact number
id = 1205

[State 3210, Remove]
type = DestroySelf
trigger1 = FrontEdgeDist < -80
trigger2 = ScreenPos Y < -50	; Not exact number

;---------------------------------------------------------------------------
; MVC2 - Hard Drive - Init
[Statedef 3300]
type = A
movetype = I
ctrl = 0
sprpriority = 2

[State 3300, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1370 + 30000 * Var(33)
value = 1370 + 30000 * Var(33)

[State 3300, Remove LifeBar]
type = RemoveExplod
trigger1 = NumExplod(7700)
trigger1 = !Time
id = 7700

[State 3300, Remove LifeBar - Small Portrait]
type = RemoveExplod
trigger1 = NumExplod(7705)
trigger1 = !Time
id = 7705

[State 3300, Remove LifeBar - Red Bar]
type = RemoveExplod
trigger1 = NumExplod(7710)
trigger1 = !Time
id = 7710

[State 3300, Remove LifeBar - Yellow Bar]
type = RemoveExplod
trigger1 = NumExplod(7720)
trigger1 = !Time
id = 7720

[State 3300, Hyper]
type = Helper
trigger1 = !Time
name = "Hyper"
id = 19000
stateno = 19000
pos = 52, -120
ownpal = 1
supermovetime = 45

[State 3300, SuperPause]
type = SuperPause
trigger1 = !Time
time = 45
anim = -1
sound = S9001, 0	; No sound
pos = 0, 0
darken = 0
poweradd = -1000

[State 3300, ChangeState]
type = ChangeState
trigger1 = Time
value = 3301

;---------------------------------------------------------------------------
; MVC2 - Hard Drive
[Statedef 3301]
type = A
movetype = A
velset = 7, 0
ctrl = 0
sprpriority = 2

[State 3301, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 1200, 0

[State 3301, Explod]
type = Explod
trigger1 = !Time
trigger1 = Anim != 1350
trigger1 = !NumExplod(3310)
anim = 3310
id = 3310
pos = -1, -112;-12, -101
bindtime = -1
removetime = -1
scale = 1.6 * Const(size.xscale), 1.6 * Const(size.yscale)
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3301, Super Armor - ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1350 + 30000 * Var(33)
value = 1350 + 30000 * Var(33)

[State 3301, HitDef]
Type = HitDef
trigger1 = HitCount < 10
trigger1 = !(Time % 2)
attr = A, HA
guardflag = MA
animtype = Hard
damage = 50, 7;28, 7
pausetime = 6, 6
sparkno = S7022
sparkxy = 0, -100
hitsound = S5, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 13
air.type = low
yaccel = 0.68
ground.velocity = -3, -8
air.velocity = -3, -8
fall = 1
fall.yvelocity = -6
getpower = 0

[State 3301, HitFlash]
type = Explod
trigger1 = MoveHit = 1
trigger1 = HitPauseTime = 2
anim = 7030
id = 7030
pos = 0, 0
postype = Left
bindtime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 3301, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 28
id = 3310

[State 3301, ChangeState]
type = ChangeState
trigger1 = Time >= 28
value = 51
ctrl = 1

;---------------------------------------------------------------------------
; Super Armor
[Statedef 9000]
type = U
movetype = H
facep2 = 0
ctrl = 0
movehitpersist = 1

[State 9000, PlaySnd]
type = PlaySnd
trigger1 = !(GetHitVar(animtype)) 
value = 5, 12
channel = 0
persistent = 0

[State 9000, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 1
value = 5, 13
channel = 0
persistent = 0

[State 9000, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) = 2
value = 5, 14
channel = 0
persistent = 0

[State 9000, PlaySnd]
type = PlaySnd
trigger1 = (GetHitVar(animtype)) >= 3
value = 5, 15
channel = 0
persistent = 0

[State 9000, Damage]
type = Null;VarAdd
trigger1 = !Time
var(30) = - Ceil(GetHitVar(damage) * 100/125 * FVar(11))

[State 9000, Forcefeedback Light]
type = ForceFeedback
trigger1 = !GetHitVar(animtype)
trigger1 = !Time
time = 6
waveform = square

[State 9000, Forcefeedback Medium]
type = ForceFeedback
trigger1 = GetHitVar(animtype) = 1
trigger1 = !Time
time = 8
waveform = sinesquare
ampl = 110, -1, -.3

[State 9000, Forcefeedback Strong]
type = ForceFeedback
trigger1 = GetHitVar(animtype) = [2, 5]
trigger1 = !Time
time = 15
waveform = sinesquare
ampl = 140

[State 9000, Increment GetHit Counter]		; For hurt anim
type = VarAdd
trigger1 = !Time
var(7) = 100 + (GetHitVar(animtype) + 1) * 50

[State -3, PalFx]
type = Null;PalFx
trigger1 = Var(50) = 3
trigger1 = !Time
time = 8
add = 256, 0, -256
sinadd = 256, 68, 0, 14
ignorehitpause = 1

[State 9000, PalFxCounter Set]
type = VarSet
trigger1 = !Var(14)
var(14) = 8
ignorehitpause = 1
persistent = 0

[State 9000, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 9000, Pause]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = AnimElemNo(-1) - 1 * (!AnimTime && AnimElemNo(0) > 2)	; Helps prevent looping

[State 9000, HitShakeOver]
type = ChangeState
trigger1 = HitShakeOver
value = Var(5)
ctrl = !Var(5)

;---------------------------------------------------------------------------
; Partner Change - Leave - Jump Start
[Statedef 9040]
type = S
physics = S
ctrl = 0

[State 9040, Grab - Over]
type = VarSet
trigger1 = !Time
var(41) = 0

[State 9040, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 40
value = 40

[State 9040, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9040, VelSet]
type = VelSet
trigger1 = Anim = 40
trigger1 = !AnimTime
x = -(BackEdgeDist + 100) / (6/Const(movement.yaccel))
y = -6

[State 9040, PlaySnd]
type = PlaySnd
trigger1 = Anim = 40
trigger1 = !AnimTime
value = 40, 0

[State 9040, ChangeState]
type = ChangeState
trigger1 = Anim = 40
trigger1 = !AnimTime
value = 9050

;---------------------------------------------------------------------------
; Partner Change - Leave - Jump Up
[Statedef 9050]
type = A
physics = N
ctrl = 0

[State 9050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 43
value = 43

[State 9050, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 43
trigger1 = !AnimTime
trigger1 = SelfAnimExist(Anim + 3)
persistent = 0
value = Anim + 3

[State 9050, Gravity]
type = Gravity
trigger1 = 1

[State 9050, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 9050, ChangeState]
type = ChangeState
trigger1 = BackEdgeDist < -100
value = 13201

;---------------------------------------------------------------------------
; Sentinel - KO - Fall
[Statedef 9100]
type = A
movetype = H
physics = N
velset = -3, -16
ctrl = 0

[State 9100 NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5250

[State 9100, ChangeAnim]
type = ChangeAnim
trigger1 = Vel Y >= 0
trigger1 = Anim != 5050
trigger1 = Anim != 5090
value = 5050

[State 9100, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5050
trigger1 = !AnimTime
value = 5090

[State 9100, KO PlaySnd]
type = PlaySnd
trigger1 = !Var(30) && Var(50) = 3
trigger1 = Anim = 5090
trigger1 = !Var(39)
trigger1 = Var(39) := 1
value = 9150, 0 + (Random < 500)
persistent = 0

[State 9100, Gravity]
type = VelAdd
trigger1 = 1
y = 0.68

[State 9100, EnvShake]
type = FallEnvShake
trigger1 = Pos Y > -Vel Y

[State 9100, Hit Ground Explod]
type = Explod
trigger1 = Pos Y > -Vel Y
anim = 7060
sprpriority = -3

[State 9100, GameMakeAnim]
type = Null;GameMakeAnim
trigger1 = Pos Y > -Vel Y
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 9100, PlaySnd]
type = PlaySnd
trigger1 = Pos Y > -Vel Y
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 9100, ForceFeedBack]
type = ForceFeedback
trigger1 = Pos Y > -Vel Y
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

[State 9100, LieDead]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 9150

;---------------------------------------------------------------------------
; Sentinel - LieDead
[Statedef 9150]
type = L
movetype = I
physics = N
ctrl = 0
sprpriority = -3

[State 9150, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 9150, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 9150, ChangeAnim] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 9150, ChangeAnim] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 9150, ChangeAnim] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 9150, ChangeAnim] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 9150, VelMul] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 9150, VelSet] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 9150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 9150, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 9150, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 9150, Explosion]
type = Explod
trigger1 = !(Time % 9)		; New explod every 9 ticks
anim = 6000
id = 6000
pos = 0, -20
bindtime = -1
random = 90, 20
sprpriority = 4
shadow = -1
ownpal = 1
ignorehitpause = 0

[State 9150, Explosion PlaySnd]
type = PlaySnd
trigger1 = !(Time % 9)
value = 215, 0

[State 9150, Invisible]
type = AssertSpecial
trigger1 = Time >= 62
trigger1 = !(Time % 2)
flag = invisible

[State 9150, ChangeState]
type = ChangeState
trigger1 = Time = 120
value = 13201

;---------------------------------------------------------------------------
; Intro A
[Statedef 30190]
velset = 0, 0
ctrl = 0

[State 30190, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 30190, Invisible]
type = AssertSpecial
trigger1 = Time = [0, 106]
flag = Invisible

[State 30190, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 107
value = 30190

[State 30190, Right Arm]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30215)
name = "Right Arm"
id = 30215
pos = 771, 22
stateno = 30215

[State 30190, Right Shoulder]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30211)
name = "Right Shoulder"
id = 30211
pos = 0, -506
stateno = 30211

[State 30190, Right Thigh]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30203)
name = "Right Thigh"
id = 30203
pos = 0, -383
stateno = 30203

[State 30190, Right Shin]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30195)
name = "Right Shin"
id = 30195
pos = 0, -250
stateno = 30195

[State 30190, Right Knee]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30199)
name = "Right Knee"
id = 30199
pos = 0, -303
stateno = 30199

[State 30190, Right Leg]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30191)
name = "Right Leg"
id = 30191
pos = 0, -196
stateno = 30191

[State 30190, Thorax]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30209)
name = "Thorax"
id = 30209
pos = 0, -506
stateno = 30209

[State 30190, Head]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30219)
name = "Head"
id = 30219
pos = 0, -518
stateno = 30219

[State 30190, Abdomen]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30207)
name = "Abdomen"
id = 30207
pos = 0, -443
stateno = 30207

[State 30190, Left Thigh]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30205)
name = "Left Thigh"
id = 30205
pos = 0, -383
stateno = 30205

[State 30190, Left Shin]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30197)
name = "Left Shin"
id = 30197
pos = 0, -250
stateno = 30197

[State 30190, Left Knee]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30201)
name = "Left Knee"
id = 30201
pos = 0, -303
stateno = 30201

[State 30190, Left Leg]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30193)
name = "Left Leg"
id = 30193
pos = 0, -196
stateno = 30193

[State 30190, Left Shoulder]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30213)
name = "Left Shoulder"
id = 30213
pos = 0, -506
stateno = 30213

[State 30190, Left Arm]
type = Helper
trigger1 = !Time
trigger1 = !NumHelper(30217)
name = "Left Arm"
id = 30217
pos = 771, 22
stateno = 30217

[State 30190, ChangeState]
type = ChangeState
trigger1 = Anim = 30190
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Intro A - Right Leg
[Statedef 30191]
anim = 30191
velset = 0, 12
ctrl = 0

[State 30191, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y > -Vel Y
value = 30192
persistent = 0

[State 30191, StopSnd]
type = StopSnd
trigger1 = Pos Y > -Vel Y
channel = 1
persistent = 0

[State 30191, PlaySnd]
type = PlaySnd
trigger1 = Pos Y > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30191, VelSet]
type = VelSet
trigger1 = Pos Y > -Vel Y
y = 0

[State 30191, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 0

[State 30191, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Left Leg
[Statedef 30193]
anim = 30193
velset = 0, 12
ctrl = 0

[State 30193, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y > -Vel Y
value = 30194
persistent = 0

[State 30193, StopSnd]
type = StopSnd
trigger1 = Pos Y > -Vel Y
channel = 1
persistent = 0

[State 30193, PlaySnd]
type = PlaySnd
trigger1 = Pos Y > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30193, VelSet]
type = VelSet
trigger1 = Pos Y > -Vel Y
y = 0

[State 30193, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 0

[State 30193, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Right Shin
[Statedef 30195]
anim = 30195
velset = 0, 12
ctrl = 0

[State 30195, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 6 > -Vel Y
value = 30196
persistent = 0

[State 30195, StopSnd]
type = StopSnd
trigger1 = Pos Y + 6 > -Vel Y
channel = 1
persistent = 0

[State 30195, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 6 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30195, VelSet]
type = VelSet
trigger1 = Pos Y + 6 > -Vel Y
y = 0

[State 30195, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 6

[State 30195, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Left Shin
[Statedef 30197]
anim = 30197
velset = 0, 12
ctrl = 0

[State 30197, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 6 > -Vel Y
value = 30198
persistent = 0

[State 30197, StopSnd]
type = StopSnd
trigger1 = Pos Y + 6 > -Vel Y
channel = 1
persistent = 0

[State 30197, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 6 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30197, VelSet]
type = VelSet
trigger1 = Pos Y + 6 > -Vel Y
y = 0

[State 30197, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 6

[State 30197, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Right Knee
[Statedef 30199]
anim = 30199
velset = 0, 12
ctrl = 0

[State 30199, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 6 > -Vel Y
value = 30200
persistent = 0

[State 30199, StopSnd]
type = StopSnd
trigger1 = Pos Y + 6 > -Vel Y
channel = 1
persistent = 0

[State 30199, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 6 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30199, VelSet]
type = VelSet
trigger1 = Pos Y + 6 > -Vel Y
y = 0

[State 30199, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 6

[State 30199, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Left Knee
[Statedef 30201]
anim = 30201
velset = 0, 12
ctrl = 0

[State 30201, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 6 > -Vel Y
value = 30202
persistent = 0

[State 30201, StopSnd]
type = StopSnd
trigger1 = Pos Y + 6 > -Vel Y
channel = 1
persistent = 0

[State 30201, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 6 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30201, VelSet]
type = VelSet
trigger1 = Pos Y + 6 > -Vel Y
y = 0

[State 30201, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 6

[State 30201, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Right Thigh
[Statedef 30203]
anim = 30203
velset = 0, 12
ctrl = 0

[State 30203, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 13 > -Vel Y
value = 30204
persistent = 0

[State 30203, StopSnd]
type = StopSnd
trigger1 = Pos Y + 13 > -Vel Y
channel = 1
persistent = 0

[State 30203, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 13 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30203, VelSet]
type = VelSet
trigger1 = Pos Y + 13 > -Vel Y
y = 0

[State 30203, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 13

[State 30203, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Left Thigh
[Statedef 30205]
anim = 30205
velset = 0, 12
ctrl = 0

[State 30205, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 13 > -Vel Y
value = 30206
persistent = 0

[State 30205, StopSnd]
type = StopSnd
trigger1 = Pos Y + 13 > -Vel Y
channel = 1
persistent = 0

[State 30205, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 13 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30205, VelSet]
type = VelSet
trigger1 = Pos Y + 13 > -Vel Y
y = 0

[State 30205, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 13

[State 30205, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Abdomen
[Statedef 30207]
anim = 30207
velset = 0, 12
ctrl = 0

[State 30207, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 19 > -Vel Y
value = 30208
persistent = 0

[State 30207, StopSnd]
type = StopSnd
trigger1 = Pos Y + 19 > -Vel Y
channel = 1
persistent = 0

[State 30207, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 19 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30207, VelSet]
type = VelSet
trigger1 = Pos Y + 19 > -Vel Y
y = 0

[State 30207, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 19

[State 30207, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Thorax
[Statedef 30209]
anim = 30209
velset = 0, 12
ctrl = 0

[State 30209, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 22 > -Vel Y
value = 30210
persistent = 0

[State 30209, StopSnd]
type = StopSnd
trigger1 = Pos Y + 22 > -Vel Y
channel = 1
persistent = 0

[State 30209, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 22 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30209, VelSet]
type = VelSet
trigger1 = Pos Y + 22 > -Vel Y
y = 0

[State 30209, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 22

[State 30209, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Right Shoulder
[Statedef 30211]
anim = 30211
velset = 0, 12
ctrl = 0

[State 30211, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 22 > -Vel Y
value = 30212
persistent = 0

[State 30211, StopSnd]
type = StopSnd
trigger1 = Pos Y + 22 > -Vel Y
channel = 1
persistent = 0

[State 30211, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 22 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30211, VelSet]
type = VelSet
trigger1 = Pos Y + 22 > -Vel Y
y = 0

[State 30211, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 22

[State 30211, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Left Shoulder
[Statedef 30213]
anim = 30213
velset = 0, 12
ctrl = 0

[State 30213, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 22 > -Vel Y
value = 30214
persistent = 0

[State 30213, StopSnd]
type = StopSnd
trigger1 = Pos Y + 22 > -Vel Y
channel = 1
persistent = 0

[State 30213, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 22 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30213, VelSet]
type = VelSet
trigger1 = Pos Y + 22 > -Vel Y
y = 0

[State 30213, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 22

[State 30213, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Right Arm
[Statedef 30215]
anim = 30215
velset = -16, 0
ctrl = 0
sprpriority = 2

[State 30215, PosSet]
type = PosSet
trigger1 = !Time
y = 22

[State 30215, ChangeAnim]
type = ChangeAnim
trigger1 = (Pos X - Parent, Pos X) * Facing < -Vel X
value = 30216
persistent = 0

[State 30215, StopSnd]
type = StopSnd
trigger1 = (Pos X - Parent, Pos X) * Facing < -Vel X
channel = 1
persistent = 0

[State 30215, PlaySnd]
type = PlaySnd
trigger1 = (Pos X - Parent, Pos X) * Facing < -Vel X
value = 190, 0
channel = 1
persistent = 0

[State 30215, VelSet]
type = VelSet
trigger1 = (Pos X - Parent, Pos X) * Facing < -Vel X
x = 0

[State 30215, BindToParent]
type = BindToParent
trigger1 = !Vel X
pos = 0, 22

[State 30215, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Left Arm
[Statedef 30217]
anim = 30217
velset = -16, 0
ctrl = 0

[State 30217, PosSet]
type = PosSet
trigger1 = !Time
y = 22

[State 30217, ChangeAnim]
type = ChangeAnim
trigger1 = (Pos X - Parent, Pos X) * Facing < -Vel X
value = 30218
persistent = 0

[State 30217, StopSnd]
type = StopSnd
trigger1 = (Pos X - Parent, Pos X) * Facing < -Vel X
channel = 1
persistent = 0

[State 30217, PlaySnd]
type = PlaySnd
trigger1 = (Pos X - Parent, Pos X) * Facing < -Vel X
value = 190, 0
channel = 1
persistent = 0

[State 30217, VelSet]
type = VelSet
trigger1 = (Pos X - Parent, Pos X) * Facing < -Vel X
x = 0

[State 30217, BindToParent]
type = BindToParent
trigger1 = !Vel X
pos = 0, 22

[State 30217, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190

;---------------------------------------------------------------------------
; Intro A - Head
[Statedef 30219]
anim = 30219
velset = 0, 10
ctrl = 0

[State 30219, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y + 22 > -Vel Y
value = 30220
persistent = 0

[State 30219, StopSnd]
type = StopSnd
trigger1 = Pos Y + 22 > -Vel Y
channel = 1
persistent = 0

[State 30219, PlaySnd]
type = PlaySnd
trigger1 = Pos Y + 22 > -Vel Y
value = 20, 0
channel = 1
persistent = 0

[State 30219, VelSet]
type = VelSet
trigger1 = Pos Y + 22 > -Vel Y
y = 0

[State 30219, PosSet]
type = PosSet
trigger1 = !Vel Y
y = 22

[State 30219, DestroySelf]
type = DestroySelf
trigger1 = Parent, Anim = 30190