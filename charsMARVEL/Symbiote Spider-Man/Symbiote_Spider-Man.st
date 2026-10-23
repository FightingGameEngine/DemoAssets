;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?

;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type    = C
physics = C
anim = 10

[State 10, 1]
type = VelMul
trigger1 = Time = 0
x = ifelse((prevstateno = [100,106]),1.5,0.75)

[State 10, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------


; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 100, PlaySnd]
type = PlaySnd
trigger1 = gametime%16=0
value = S21,0

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

;----------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;----------------------------------------------------------------------
; Jump Up
[Statedef 50]
type    = A
physics = A

[State 53, 1]
type = Turn
trigger1 = P2Dist X < -5
;trigger1 = var(41)=1

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S22,0

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;Scoot Forward When Holding FWD During Jump Up & Super Jump
[State 50, Scoot Forward When Holding FWD During Jump Up & Super Jump]
type = VelAdd
triggerall = anim = 44
trigger1 = (command ="holdfwd")
trigger1 = (animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7)
x = 1

;Scoot Backward When Holding BCKWD During Jump Up & Super Jump
[State 50, Scoot Backward When Holding BCKWD During Jump Up & Super Jump]
type = VelAdd
triggerall = anim = 44
trigger1 = (command ="holdback")
trigger1 = (animelem = 1 || animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7)
x = -1

;creates afterimage trail
[State -2, 5]
type = AfterImage
Trigger1 = time = 1
trigger1 = stateno = 100
trigger2 = time = 1
trigger2 = stateno = 50
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 40

;---------------------------------------------------------------------------
; Jump Down (empty state for compatibility)
[Statedef 51]
type    = A
physics = A

[State 51, 1]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
;Forward Dash
[statedef 100]
type = S
movetype = I
physics = N
anim = 100
velset = const(velocity.run.fwd.x),const(velocity.run.back.y)
ctrl = 0

;creates afterimage trail
[State -2, 1]
type = AfterImage
Trigger1 = time = 1
trigger1 = stateno = 100
trigger2 = time = 1
trigger2 = stateno = 105
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 40

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 100
flag = nowalk

[State 0, ]
type = VelAdd
trigger1 = time >= 0
y = 0.35

[State 0, ]
type = CtrlSet
trigger1 = time = 1
value = 1

[State 0, ]
type = explod
trigger1 = time = 0
anim = 101
postype = p1
pos = 30,0
bindtime = 1
sprpriority = 2
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
;Backward Dash
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 2]
type = CtrlSet
trigger1 = Time = 2
value = 1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;creates afterimage trail
[State -2, 1]
type = AfterImage
Trigger1 = time = 1
trigger1 = stateno = 100
trigger2 = time = 1
trigger2 = stateno = 105
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 40

;sets var(58) for dash backward
[State -2, 1.2]
type = varset
trigger1 = stateno = 105
trigger1 = var(58) = 0
var(58) = 1

;---------------------------------------------------------------------------
; STAND GUARD PART
; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, CancelBlockDamage]
type = lifeadd
trigger1 = Time = 0
value = Ceil(gethitvar(damage))

[State 150, 1]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

;----------------------------------
; CROUCH GUARD PART
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 152, CancelBlockDamage]
type = lifeadd
trigger1 = Time = 0
value = Ceil(gethitvar(damage))

[State 152, 1]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;---------------------------
; AIR GUARD PART
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 154, CancelBlockDamage]
type = lifeadd
trigger1 = Time = 0
value = Ceil(gethitvar(damage))

[State 154, 1]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;------------------------------------------------------------------------

;---Win--------
[statedef 180]
type = S
movetype = I
physics = S
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = var(1) = 2
value = 184

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = var(1) = 1
value = 182

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = var(1) = 3
value = 196

[State 0, ]
type = ChangeState
trigger1 = time = 0
value = 181

; (Win) "I'm just getting warmed up!"
[statedef 181]
type = S
movetype = I
physics = S
anim = 181
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = time = 100
flag = roundnotover

[State 0, ]
type = PlaySnd
trigger1 = stateno = 181 && animelem = 1
value = S28,9

; (Win) "One for J.J!"
[statedef 182]
type = S
movetype = I
physics = S
anim = 182
sprpriority = -8
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = time = 300
flag = roundnotover

[State 0, ]
type = VelSet
trigger1 = time = [13,30]
x = 7

[State 0, ]
type = VelSet
trigger1 = animelem = 11
x = 0

[State 0, ]
type = Explod
trigger1 = animelem = 7
anim = 183
ID = 183
sprpriority = -7
removetime = -1

[State 0, ]
type = EnvColor
trigger1 = animelem = 13
time = 3
under = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S28,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 11
value = S5,10

[State 0, ]
type = PlaySnd
trigger1 = animelem = 13
value = S12,0

;-------------------------------------------------------------------------------
;Intro 1, "Now I'm supposed to come running when you call?!"
[statedef 190]
type = S
movetype = I
physics = S
anim = 190
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 190
flag = intro

[State 0, ]
type = AssertSpecial
trigger1 = time = 100
flag = roundnotover

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = random > 330
value = 193

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = random > 330
value = 191

;Now I'm supposed to come running when you call?!
[State 0, PlaySnd]
type = PlaySnd
trigger1 = stateno = 190 && anim = 190 && animelem = 3
value = S28,4
volume = 255

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

;Intro 2, "I give up trying to be a friendly neiborhood Spider-Man!"
[statedef 191]
type = S
movetype = I
physics = S
anim = 191
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = stateno = 191 && anim = 191 && animelem = 1
value = S28,10
volume = 255

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 191
flag = intro

[State 0, ]
type = AssertSpecial
trigger1 = time = 110
flag = roundnotover

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

;Intro 3 "Time to take care of business!
[statedef 193]
type = S
movetype = I
physics = S
anim = 193
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 193
flag = intro

;"Time to take care of business!"
[State 0, PlaySnd]
type = PlaySnd
trigger1 = stateno = 193 && animelem = 1
value = S28,7
volume = 255

;Spider Sense
;[State 0, ]
;type = Explod
;trigger1 = animelem = 1
;anim = 194
;pos = 4,-118
;removetime = 29
;sprpriority = 2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

;------------------------------------------------------------------------------

;Taunt (Come On!)
[statedef 195]
type = S
movetype = I
physics = S
ctrl = 1

[State 195, 1]
type = ChangeAnim
trigger1 = time = 0
value = 195

[State 195, 1]
type = PlaySnd
trigger1 = animelem = 2
value = S4,1
channel = 1

[State 195, LifeAdd]
type = LifeAdd
trigger1 = animelem = 4
value = 5
absolute = 0

[State 195, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

;---{Standing Attacks}---
;Standing Light Punch
[Statedef 200]
type = S                         ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                     ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = ifelse(p2bodydist x < 70,200,201)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 200, 1]
type = PlaySnd
trigger1 = random >= 500
trigger1 = anim = 200 && animelem = 3
value = 1,0

[State 200, 1]
type = PlaySnd
trigger1 = anim = 200 && animelem = 3
value = 0,1

[State 200, 1]
type = PlaySnd
trigger1 = anim = 201 && animelem = 3
value = S26,0

[State 200, 1]
type = HitDef
trigger1 = anim = 200 && animelem = 3
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = Back
ground.type = high
air.type = low
damage = 20,5
pausetime = 2,3
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1

[State 200, 2]
type = HitDef
trigger1 = anim = 201 && animelem = 4
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = Back
ground.type = high
air.type = low
damage = 10,5
pausetime = 2,3
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S26,0
guardsound = S26,0
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1

[State 200, HitAdd]
type = HitAdd
trigger1 = anim = 201 && animelem = 4
value = -1

[State 200, 3]
type = HitDef
trigger1 = anim = 201 && animelem = 5
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = Back
ground.type = high
air.type = low
damage = 10,5
pausetime = 2,3
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1

[State 200, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------------
;Standing Medium Punch
[Statedef 210]
type = S                         ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                     ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = ifelse(p2bodydist x < 80,210,211)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 210, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 210, 1]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 210, 1]
type = HitDef
trigger1 = movehit = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 6,8
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 500
ground.hittime = 500
air.hittime = 35
ground.velocity = -0.25,-13
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0

[State 210, 2]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-110
hitsound = S5,2
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

;Standing Medium Punch (Symbiote) Sound
[State 210, PlaySnd]
type = PlaySnd
trigger1 = stateno = 210 && anim = 211 && animelem = 3
value = S23,0

;Standing Medium Punch (Symbiote) Velocity
[State 210, VelSet]
type = VelSet
trigger1 = stateno = 210 && anim = 211 && (animelem = 3 || animelem = 4)
x = 1
y = 0

;Standing Medium Punch (Symbiote)
[State 210, 4]
type = HitDef
trigger1 = stateno = 210 && anim = 211 && animelem = 2
attr = A,NA
damage = 35, 12
animtype = Light
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S25,3
guardsound = S5,8
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;Standing Medium Punch (Symbiote)
[State 210, 5]
type = HitDef
trigger1 = stateno = 210 && anim = 211 && animelem = 3
attr = A,NA
damage = 35, 12
animtype = Light
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 6,8
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S25,3
guardsound = S25,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 210, Standing Medium Punch End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------

;Standing Heavy Punch
[Statedef 220]
type = S                         ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                     ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = ifelse(p2bodydist x < 80,220,221)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 220, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 7
value = 5,10
volume = 20

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 220, 1]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 65,22
pausetime = 5,6
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
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

[State 220, 2]
type = HitDef
trigger1 = anim = 221
trigger1 = AnimElem = 2
attr = S, NA
damage = 5, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S5,1
guardsound = S5,8
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 220, 3]
type = HitDef
trigger1 = anim = 221
trigger1 = AnimElem = 3
attr = S, NA
damage = 35, 12
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 220, 4]
type = HitDef
trigger1 = anim = 221
trigger1 = AnimElem = 4
attr = S, NA
damage = 5,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4,-4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 220, VelSet]
type = VelSet
trigger1 = Anim = 221
x = 4
y = 0

[State 220, Standing Heavy Punch 2 End]
type = ChangeState
trigger1 = Anim = 221 && animtime = 0
trigger2 = Anim = 221 && animelem = 4
trigger2 = movecontact
value = 50
ctrl = 1

[State 220, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

;Standing Light Kick
[Statedef 230]
type = S                         ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                     ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = ifelse(p2bodydist x < 60,230,231)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 230, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 230, 1]
type = PlaySnd
trigger1 = anim = 230 && animelem = 2
value = 1,0

;Standing Light Kick (Normal)
[State 230, 1]
type = HitDef
trigger1 = anim = 230 && animelem = 3
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = Back
ground.type = low
air.type = low
damage = 15,5
pausetime = 2,4
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 7
guard.slidetime = 7
ground.hittime = 7
guard.hittime = 7
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1

[State 230, VelSet]
type = VelSet
trigger1 = Anim = 231 && (animelem = 1 || animelem = 2 || animelem = 3)
x = 1
y = 0

;Standing Light Kick (Symbiote)
[State 230, 2]
type = HitDef
trigger1 = anim = 231 && (animelem = 9 || animelem = 10)
attr = S, NA
damage = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S5,1
guardsound = S5,8
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;Standing Light Kick (Symbiote)
[State 230, Standing Light Kick (Symbiote)]
type = HitDef
trigger1 = anim = 231 && (animelem = 11 || animelem = 12 || animelem = 13 || animelem = 14)
attr = S, NA
damage = 4, 2
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S25,3
guardsound = S25,3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -1
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 230, Standing Light Kick (Symbiote)]
type = PlaySnd
trigger1 = anim = 231 && animelem = 11
value = S26, 3

[State 230, Standing Light Kick End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------

;Standing Medium Kick
[statedef 240]
type = S                         ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                     ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = ifelse(p2bodydist x < 90,240,241)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 240, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 240, 1]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 3
value = 1,1

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 7
value = 5,10
volume = 20

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

;Standing Medium Kick (Normal)
[State 240, 1]
type = HitDef
trigger1 = anim = 240 && (animelem = 3 || animelem = 4)
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 4,6
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-95
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.velocity = -3
guard.velocity = -3
air.velocity = -4
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
persistent = 0

[State 240, VelSet]
type = VelSet
trigger1 = Anim = 241 && (animelem = 2 || animelem = 3)
x = 1
y = 0

;Standing Medium Kick (Symbiote)
[State 240, 2]
type = HitDef
trigger1 = anim = 241 && (animelem = 3 || animelem = 4)
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = Medium
fall.animtype = Back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 4,6
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-95
hitsound = S26,2
guardsound = S26,2
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.velocity = -3
guard.velocity = -3
air.velocity = -4
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
persistent = 0

[State 240, Standing Medium Kick End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

;Standing Heavy Kick
[statedef 250]
type = S                         ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                     ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = ifelse(p2bodydist x < 130,250,251)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 250, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 250, 1]
type = PlaySnd
trigger1 = stateno = 250 && anim = 250 && animelem = 3
value = 1,2

[State 250, 1]
type = PlaySnd
trigger1 = stateno = 250 && anim = 250 && (animelem = 5 || animelem = 8)
value = 5,10
volume = 20

[State 250, 1]
type = PlaySnd
trigger1 = stateno = 250 && anim = 250 && animelem = 2
value = 0,3

;Standing Heavy Kick (Normal)
[State 250, 1]
type = HitDef
trigger1 = stateno = 250 && anim = 250 && animelem = 3
attr = S,NA
animtype = Heavy
air.animtype = Heavy
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 65,22
pausetime = 5,6
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 35
ground.hittime = 35
air.hittime = 35
ground.velocity = -0.25,-1
guard.velocity = -3
air.velocity = -0.25,-1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -5

;Standing Heavy Kick (Symbiote) Sound
[State 250]
type = PlaySnd
trigger1 = stateno = 250 && anim = 251 && animelem = 3
value = S23,0

;Standing Heavy Kick (Symbiote) Velocity
[State 230, VelSet]
type = VelSet
trigger1 = anim = 251 && animelem = 4
x = 2
y = 0

;Standing Heavy Kick (Symbiote)
[State 250, 1]
type = HitDef
trigger1 = stateno = 250 && anim = 251 && animelem = 3
attr = S,NA
animtype = Heavy
air.animtype = Heavy
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 65,22
pausetime = 5,6
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 35
ground.hittime = 35
air.hittime = 35
ground.velocity = -0.25,-1
guard.velocity = -3
air.velocity = -0.25,-1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -5

[State 250, Standing Heavy Kick End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Crouching Symbiote Serpents
[StateDef 290]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 290
poweradd = 30
sprpriority = 3

;creates afterimage trail
[State -2, 1]
type = AfterImage
Trigger1 = time = 1
trigger1 = stateno = 290
trigger2 = time = 1
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 40

[State 290, Shake Screen]
type = EnvShake
trigger1 = stateno = 290 && movecontact
time = 4     ;Time to shake screen
ampl = 4     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 290, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 290, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S25,0

[State 290, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -6
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.4,-3
air.hittime = 12

[State 290, 3]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -6
airguard.velocity = -1.9,-.8
air.type = low
air.velocity = -1.4,-3
air.hittime = 12

[State 290, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S25,1

[State 290, 4]
type = HitDef
trigger1 = AnimElem = 10
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 290, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S25,1

[State 290, 5]
type = HitDef
trigger1 = AnimElem = 12
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 290, 6]
type = HitDef
trigger1 = AnimElem = 14
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 290, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14
value = S25,2

[State 290, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------

;Standing Symbiote Bite
[StateDef 291]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 291
poweradd = 30
sprpriority = 3

;creates afterimage trail
[State -2, 1]
type = AfterImage
Trigger1 = time = 1
trigger1 = stateno = 291
trigger2 = time = 1
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 40

[State 291, Shake Screen]
type = EnvShake
trigger1 = stateno = 291 && movecontact
time = 4     ;Time to shake screen
ampl = 4     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 291, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 291, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 291, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S25,0

[State 291, 3]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 291, 4]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 291, 5]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage = 25,7
animtype = Light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 10, 10
sparkno = 0
sparkxy = -10, -76
hitsound = S25, 3
guardsound = S25, 3
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 4, -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 291, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------

;Crouching Symbiote Tendrils
[statedef 292]
type = C
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 292
poweradd = 30
sprpriority = 3

;creates afterimage trail
[State -2, 1]
type = AfterImage
Trigger1 = time = 1
trigger1 = stateno = 292
trigger2 = time = 1
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 40

[State 290, Shake Screen]
type = EnvShake
trigger1 = stateno = 292 && movecontact
time = 4     ;Time to shake screen
ampl = 4     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 292, 1]
type = HitDef
trigger1 = (animelem = 2 || animelem= 3 || animelem= 4|| animelem= 5 || animelem= 6 || animelem= 7 || animelem= 8|| animelem= 9 || animelem= 10 || animelem = 11)
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = Light
air.animtype = Heavy
fall.animtype = back
ground.type = low
air.type = low
damage = 15,7
pausetime = 2,4
guard.pausetime = 3,2
priority = 6, Hit
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-5
hitsound = S25,3
guardsound = S25,3
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -4,1
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1

[State 292, PlaySnd]
type = PlaySnd
trigger1 = (animelem = 2 || animelem= 3 || animelem= 4|| animelem= 5 || animelem= 6 || animelem= 7 || animelem= 8|| animelem= 9 || animelem= 10 || animelem = 11)
value = S6,1

[State 292, End]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------
;Symbiote Cyclone Begin
[Statedef 294]
type = S
movetype = A
physics = N
anim = 40
poweradd = 60
face2 = 1
ctrl = 0

[State 294, 1]
type = changestate
trigger1 = animtime = 0
value = 295

;------------------------------------------------------------------------------
;Standing Light Symbiote Cyclone
[Statedef 295]
type = S
movetype = A
physics = N
anim = 294
face2 = 1
ctrl = 0
sprpriority = 4

[State 295, 1]
type = velset
trigger1 = time = 0
x = 8
y = 0

[State 295, 2]
type = hitdef
trigger1 = (AnimElem = 1| AnimElem = 2 |AnimElem = 3)
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 30
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

[State 295, 3]
type = PlaySnd
trigger1 = animelem = 1
trigger1 = movecontact
value = S26,3

[State 295, 4]
type = PlaySnd
trigger1 = animelem = 2
trigger1 = movecontact
value = S25,3

[State 295, 5]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = movecontact
value = S26,3

[State 295, 6]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
value = S0,5

[State 295, 7]
type = velset
trigger1 = time = 30
x = 0
y = 0

[State 295, After Image Trail]
type = AfterImage
Trigger1 = time = 1
trigger1 = stateno = 295
trigger2 = time = 1
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 40

[State 295, Shake Screen]
type = EnvShake
trigger1 = stateno = 295 && movecontact
time = 4     ;Time to shake screen
ampl = 4     ;Amount to shake
freq = 180   ;A frequency of 180 shakes the screen rapidly

[State 295, End]
type = changestate
trigger1 = time = 30
value = 50
ctrl = 1

;------------------------------------------------------------------------------
;Symbiote Uppercut
[StateDef 300]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 300
poweradd = 20
sprpriority = 3

;creates afterimage trail
[State -2, 1]
type = AfterImage
Trigger1 = time = 1
trigger1 = stateno = 300
trigger2 = time = 1
length = 10
PalColor = 0
TimeGap = 1
FrameGap = 3
Trans = Add1
time = 40

[State 300, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 300, 1]
type = PlaySnd
trigger1 = animelem = 2
value = S0,3

[State 300, 1]
type = PlaySnd
trigger1 = animelem = 2
value = S7,3

[State 300, 1]
type = HitDef
trigger1 = AnimElem = 2
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

[State 300, 2]
type = VelSet
trigger1 = animelem = 3
x = 3
y = -7.5

[State 300, 2]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
movetype = A
physics = A

[State 300, 2]
type = VelAdd
trigger1 = time = [16,26]
x = -0.25

[State 300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S26,1

[State 300, 2]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 45,15
pausetime = 8,9
guard.pausetime = 5,4
priority = 4, Hit
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-120
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
fall = 1
air.fall = 1

[State 300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S23,0

[State 300, 3]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 7
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

[State 300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S26,3

[State 300, 4]
type = HitDef
trigger1 = animelem = 8
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

[State 300, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 44
ctrl = 1

;------------------------------------------------------------------------------

;---{Crouching Attacks}---
;Crouching Light Punch
[statedef 400]
type = C
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 400
poweradd = 20
sprpriority = 2

[State 400, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 400, 1]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 1,0

[State 400, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 400, 1]
type = HitDef
trigger1 = animelem = 2
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = low
air.type = low
damage = 20,7
pausetime = 2,4
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-5
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1

[State 400, End]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------

;Crouching Medium Punch
[statedef 410]
type = C
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 410
poweradd = 20
sprpriority = 2

[State 410, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 410, 1]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 410, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 410, 1]
type = HitDef
trigger1 = movehit = 0
attr = C,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-20
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2,-2
guard.velocity = -3
air.velocity = -0.25,-3
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
persistent = 0

[State 410, 2]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = C,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-65
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2,-2
guard.velocity = -3
air.velocity = -0.25,-5
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2

[State 410, End]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;-----------------------------------------------------------------------------

;Crouching Heavy Punch
[statedef 420]
type = C
movetype= A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = ifelse(p2bodydist x < 100,420,421)
poweradd = 20
sprpriority = 2

[State 420, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 420, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 420, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 420, 1]
type = HitDef
trigger1 = animelem = 4
attr = C,NA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
hitflag = MAF
guardflag = LA
damage = 65,25
pausetime = 6,8
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-40
hitsound = -1
guardsound = -1
ground.slidetime = 18
ground.hittime = 18
air.hittime = 20
ground.velocity = -2,0
guard.velocity = -3
air.velocity = -5,-1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4

[State 420, PlaySnd]
type = PlaySnd
triggerall = anim = 421
trigger1 = animelem = 4
value = S26,3
persistent = 0

[State 420, PlaySnd]
type = PlaySnd
triggerall = anim = 421
trigger1 = movehit
value = S25,3
persistent = 0

[State 420, PlaySnd]
type = PlaySnd
triggerall = anim = 421
trigger1 = moveguarded
value = S25,3
persistent = 0

[State 420, PlaySnd]
type = PlaySnd
triggerall = anim = 420
trigger1 = movehit
value = S5,3
persistent = 0

[State 420, PlaySnd]
type = PlaySnd
triggerall = anim = 420
trigger1 = moveguarded
value = S5,8
persistent = 0

[State 420, End]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;-----------------------------------------------------------------------------

;Crouching Light Kick
[statedef 430]
type = C
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = ifelse(p2bodydist x < 70,430,431)
poweradd = 20
sprpriority = 2

[State 430, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 430, 1]
type = PlaySnd
triggerall = stateno = 430
trigger1 = random >= 500
trigger1 = anim = 430 && animelem = 1
value = 1,0

[State 430, PlaySnd]
type = PlaySnd
triggerall = anim = 431
trigger1 = animelem = 4
value = S26,3
persistent = 0

[State 430, PlaySnd]
type = PlaySnd
triggerall = anim = 431
trigger1 = movehit
value = S25,3
persistent = 0

[State 430, PlaySnd]
type = PlaySnd
triggerall = anim = 431
trigger1 = moveguarded
value = S25,3
persistent = 0

;Crouching Light Kick (Normal)
[State 430, 1]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = low
air.type = low
damage = 10,5
pausetime = 2,4
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-10
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 7
guard.slidetime = 7
ground.hittime = 7
guard.hittime = 7
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1

;Crouching Light Kick (Symbiote)
[State 430, 2]
type = HitDef
trigger1 = stateno = 430 && anim = 431 && (animelem = 8 || animelem = 9 || animelem = 10)
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = low
air.type = low
damage = 4,5
pausetime = 2,4
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-10
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 7
guard.slidetime = 7
ground.hittime = 7
guard.hittime = 7
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1

[State 430, End]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------

;Crouching Medium Kick
[statedef 440]
type = C
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 440
poweradd = 20
sprpriority = 2

[State 440, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 440, 1]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 440, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 440, 1]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-65
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 15
guard.slidetime = 15
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -0.25,-5
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2

[State 440, End]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------

;Crouching Heavy Kick
[statedef 450]
type = C
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 450
poweradd = 20
sprpriority = 2

[State 450, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 450, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 450, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 0,3

[State 450, 1]
type = HitDef
trigger1 = animelem = 4
attr = C,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = trip
air.type = trip
hitflag = MAF
guardflag = LA
damage = 65,15
pausetime = 6,8
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -10,-15
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3,-1
guard.velocity = -3
air.velocity = -2,-1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4

[State 450, End]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;------------------------------------------------------------------------------

;---{Jumping/Air Attacks}---
;Air Light Punch
[statedef 600]
type = A
movetype = A
physics = A
anim = 600
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = high
air.type = high
damage = 15,5
pausetime = 10,11
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 7,-30
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 10
ground.velocity = -3
guard.velocity = -3
air.velocity = -2,-4
airguard.velocity = -3,1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower = 25,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;-------------------------------------------------------------------------------

;Air Medium Punch
[statedef 610]
type = A
movetype = A
physics = A
anim = 610
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,NA
animtype = medium
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 11,12
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 5,-65
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
airguard.velocity = -2,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = A,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-100
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,-3
airguard.velocity = -2,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;------------------------------------------------------------------------------

;Air Heavy Punch
[statedef 620]
type = A
movetype = A
physics = A
anim = 620
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

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
pausetime = 11,13
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-95
hitsound = S5,2
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
trigger1 = animelem = 3
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = -15,-90
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,5
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

;------------------------------------------------------------------------------

;Air Light Kick
[statedef 630]
type = A
movetype = A
physics = A
anim = 630
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = medium
fall.animtype = back
ground.type = high
air.type = low
damage = 15,5
pausetime = 10,11
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-45
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -2,-2
airguard.velocity = -3,1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower = 25,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;-----------------------------------------------------------------------------

;Air Medium Kick
[statedef 640]
type = A
movetype = A
physics = A
anim = 640
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 11,12
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = -5,-85
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,-4
airguard.velocity = -2,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;------------------------------------------------------------------------------

;Air Heavy Kick
[statedef 650]
type = A
movetype = A
physics = A
anim = 650
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 12,13
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = -5,-20
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -4,17
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

;------------------------------------------------------------------------------

;Air Heavy Kick 2
[statedef 655]
type = A
movetype = A
physics = A
anim = 655
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
animtype = Medium
air.animtype = Medium
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 12,13
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = -5,-20
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 10
ground.velocity = -2
guard.velocity = -3
air.velocity = -4,17
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;------------------------------------------------------------------------------

;Air Heavy Kick 3
[statedef 660]
type = A
movetype = A
physics = A
anim = 660
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, VelAdd]
type = VelAdd
triggerall = stateno = 660
trigger1 = (anim = 660) && (animelem = 3 || animelem = 4)
x = .3

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,15
pausetime = 12,13
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = -5,-20
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -4,17
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
air.fall = 1

[State 670, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;-------------------------------------------------------------------------------

; Air Dive Kick 1 (Mugen Author Cray)
[Statedef 670]
type    = A
movetype= A
physics = S
juggle  = 0
velset = 0,0
poweradd= 40
ctrl = 0
anim = 655

[State 670, PlaySnd]
type = PlaySnd
trigger1 = stateno = 670 && Anim = 655 && animelem = 3
value = S0,3

[State 670, VelSet]
type = VelSet
trigger1 = time > 3
x = 7
y = 11

[State 650, 1]
type = HitDef
trigger1 = time = 0
attr = A, NA			
damage = 35, 0			
animtype = back			
guardflag = HA			
hitflag = MAF		
priority = 4, Hit		
pausetime = 8, 8			
guard.pause = 17
guard.sparkno = 41
sparkxy = -10,-15
hitsound = S5,3
guardsound = S5,8
ground.type = high		
ground.slidetime = 5		
ground.hittime  = 30		
ground.velocity = -6, 11		
air.type = high			
air.velocity =  -6, 11		
airguard.velocity = -4, 5
air.hittime = 30
air.fall = 1
fall = 1
fall.recover = 0
down.bounce = 1
ground.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
air.cornerpush.veloff = -6
air.guard.cornerpush.veloff = -6
envshake.time = 5
envshake.ampl = 5
p2facing = 1

[State 670, Changestate]
type = ChangeState
triggerall = prevstateno != 671
trigger1 = movecontact
value = 671

[State 670, Changestate]
type = ChangeState
trigger1 = pos y >= 0
value = 52

;-------------------------------------------------------------------------------

; Dive Kick Recovery
[Statedef 671]
type    = A
movetype= I
physics = S
juggle  = 0
velset = 0,0
poweradd = 0
ctrl = 0
anim = 105

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Time > 0
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N

[State 0, VelSet]
type = VelSet
trigger1 = time > 0 && time <= 10
x = ifelse((prevstateno = 670),-1,-2)
y = -6


;[State 671, DK2]
;type = ChangeState
;triggerall = prevstateno = 670 && time > 25
;trigger1 = command = "holddown" && command = "b"
;value = 672
;ctrl = 1

;[State 671, DK1]
;type = ChangeState
;triggerall = prevstateno = 672 && time > 25
;trigger1 = command = "holddown" && command = "a"
;value = 670
;ctrl = 1


;[State 671, DK3]
;type = ChangeState
;triggerall = time > 25
;trigger1 = command = "holddown" && command = "c"
;value = 673
;ctrl = 1

;[State -1, Instinctive_L]
;type = ChangeState
;triggerall = time > 20
;trigger1 = command = "Instinctive_L"
;value = 1700
;ctrl = 1

;[State -1, Instinctive_M]
;type = ChangeState
;triggerall = time > 25
;trigger1 = command = "Instinctive_M"
;value = 1701
;ctrl = 1

;[State -1, Instinctive_H]
;type = ChangeState
;triggerall = time > 25
;trigger1 = command = "Instinctive_H"
;value = 1702
;ctrl = 1

;[State -1, Wild_Combination]
;type = ChangeState
;triggerall = time > 25
;trigger1 = command = "holdup" && command = "c"
;value = 680
;ctrl = 1

;[State -1, Drill]
;type = ChangeState
;triggerall = time > 25
;trigger1 = command = "Drill"
;value = 1200
;ctrl = 1

[State 600, Landing]
type = ChangeState
trigger1 = Pos y >= 0
value = 52

;-------------------------------------------------------------------------------

;Air Dive Kick 2
[Statedef 672]
type    = A
movetype= A
physics = S
juggle  = 0
velset = 0,0
poweradd= 40
ctrl = 0
anim = 656

[State 672, PlaySnd]
type = PlaySnd
trigger1 = stateno = 670 && Anim = 655 && animelem = 3
value = S0,3

[State 672, VelSet]
type = VelSet
trigger1 = time > 3
x = 0
y = 11

[State 672, 1]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 35, 0
animtype = back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
guard.pause = 17
guard.sparkno = 41
sparkxy = -10,-15
hitsound = S5,3
guardsound = S5,8
ground.type = high
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = -6, 11
air.type = high
air.velocity =  -6, 11
airguard.velocity = -4, 5
air.hittime = 30
air.fall = 1
fall = 1
fall.recover = 0
down.bounce = 1
ground.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
air.cornerpush.veloff = -6
air.guard.cornerpush.veloff = -6
envshake.time = 5
envshake.ampl = 5
p2facing = 1

[State 672, Changestate]
type = ChangeState
trigger1 = pos y >= 0
value = 50
ctrl = 1

;-------------------------------------------------------------------------------

;---{Super Jump}---
[Statedef 700]
type = A
movetype = I
physics = N
anim = 40
velset = 0,0
ctrl = 0

[State 0, ]
type = Playsnd
trigger1 = time = 0
persistent = 0
value = S0,4

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 720
ID = 710
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 725
ID = 715
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 0, ]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 0, ]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 0, ]
type = VelSet
trigger1 = animtime = 0
trigger1 = palno != 11
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.5

[State 0, ]
type = VelSet
trigger1 = animtime = 0
trigger1 = palno = 11
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.15

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1  

[State 0, ]
type = Playsnd
trigger1 = time = 0
persistent = 0
value = S0,4

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 720
ID = 710
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 725
ID = 715
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 0, ]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 0, ]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 0, ]
type = VelSet
trigger1 = animtime = 0
trigger1 = palno != 11
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.5

[State 0, ]
type = VelSet
trigger1 = animtime = 0
trigger1 = palno = 11
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.15

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

;------------------------------------------------------------------------------

;Recovery Roll FWD
[Statedef 4800]
type = A
movetype = I
physics = N
ctrl = 0
anim = 4800
velset = 9,0
sprpriority = 3

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Recovery Roll BWD
[Statedef 4801]
type = A
movetype = I
physics = N
ctrl = 0
anim = 4801
velset = -9,0
sprpriority = 3

[State 0, NotHitBy]
type = NotHitBy
trigger1 =1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = time
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]
[State 0, ]
type = PosSet
trigger1 = prevstateno = 100
y = 0

[State 0, ]
type = VelSet
trigger1 = prevstateno = 100
y = 0

[State 0, ]
type = PlaySnd
triggerall = anim = 47
trigger1 = time = 1
value = 5,10
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Explod
trigger1 = stateno = 140
trigger1 = statetype = S
trigger1 = time = 0
anim = 143
bindtime = 1
sprpriority = 2
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = stateno = 140
trigger1 = statetype = C
trigger1 = time = 0
anim = 144
bindtime = 1
sprpriority = 2
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = stateno = 140
trigger1 = statetype = A
trigger1 = time = 0
anim = 145
bindtime = 1
sprpriority = 2
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
triggerall = palno = 8
trigger1 = TeamSide = 1
anim = 20001
ID = 20001
pos = 70,35
postype = left
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Explod
triggerall = palno = 8
trigger1 = TeamSide = 2
anim = 20001
ID = 20001
pos = -70,35
postype = right
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Explod
triggerall = palno = 9
trigger1 = TeamSide = 1
anim = 20002
ID = 20002
pos = 70,35
postype = left
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Explod
triggerall = palno = 9
trigger1 = TeamSide = 2
anim = 20002
ID = 20002
pos = -70,35
postype = right
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = AssertSpecial
trigger1 = palno = 10
flag = invisible

[State 0, ]
type = AfterImage
trigger1 = palno = 10
trigger1 = time = 0
time = 9999
length = 17
framegap = 4
palcontrast = 150,150,150
paladd = 0,0,0
palmul = .9,.9,.9
trans = add1
ignorehitpause = 0
persistent = 0

;---------------------------------------------------------------------------
;Damage Dampeners

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = stateno < 2000
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 24.0
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]



;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
