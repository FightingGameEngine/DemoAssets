;---------------------------------------------------------------------------
; States file for -- Hypers
;---------------------------------------------------------------------------
; Vars:
;  0: for Super Jump (0=vertical, 1=forward, -1=backward)
;  1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
;  Helpers:
;  0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper Attacks
;---------------------------------------------------------------------------

; Hyper 1 - Buccaneer Hyper
[Statedef 3000]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3000                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,0

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 6
time = 40
length = 180
framegap = 15
trans = add1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S13,1
volume=255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S12,1
volume=255

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
Time = 90
;anim =-1;s3012
pos = 18,-50
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

[State 0, VelSet]
type = VelSet
trigger1 = time = 10
x = 5
y = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 3)
trigger2 = (animelem = 12)
attr = S, HA
damage = 21, 8
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 15
sparkno = S9994
sparkxy = -30, -60
hitsound = S5,1 + ((Random * 3) / 1000)
guardsound = S5, 4
ground.type = High
ground.slidetime = 12
ground.hittime  = 50
ground.velocity = -7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
kill = 0
getpower = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 7)
attr = S, HA
damage = 21, 8
animtype = low
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 15
sparkno = S9993
sparkxy = -30, -60
hitsound = S5,1 + ((Random * 3) / 1000)
guardsound = S5, 4
ground.type = low
ground.slidetime = 12
ground.hittime  = 50
ground.velocity = -7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
kill = 0
getpower = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem =17
attr = C, NA
damage = 30
guardflag = MA
hitflag = MAF
pausetime = 5,5
hitsound = 5,2
guardsound = 6,0
sparkno = 2
sparkxy = -30,-20
animtype = UP
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11
fall = 1
air.recover = 0
kill = 0
getpower = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 && movehit
value = 3010
ctrl = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 65
x = 0
y = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 19 && movehit
helpertype = normal ;player
stateno = 1010
pos = 15,5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
ontop = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 && !movehit
value = 0
ctrl = 1

; Hyper 1 - Buccaneer Contintued
[Statedef 3010]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3010                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = 1
x = -100
y = -65

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = -1
x = 100
y = -65

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 7
y = -4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S9,2
volume = 20

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, hitdef]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 50
guardflag = MA
hitflag = MAF
priority = 4
pausetime = 9, 15
sparkno = S9993
sparkxy = -30,-60
hitsound = S5,1 + ((Random * 3) / 1000)
guardsound = S5,4
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,5
ground.cornerpush.veloff = -30
air.velocity = -8,10
air.fall = 1
guard.kill = 1
getpower = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;======================================================================
;======================================================================
; Hyper 2 - Teleport Hyper
[Statedef 3100]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3100                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,0
volume = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S12,4
volume=255

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
Time = 80
;anim =-1;s3012
pos = 20,-30
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


[State 0, ]
type = VelSet
trigger1 = time = 12
x = 3

[State 0, ]
type = VelSet
trigger1 = movecontact || animtime = 0
x = 0

[State 420, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, HA
hitflag = MAF
damage = 25
guardflag = MA
pausetime = 5,5
hitsound = 5,2
guardsound = 6,0
sparkno = 2
sparkxy = 0,-40
animtype = UP
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 1,-12
guard.velocity = 0
air.velocity = 0,-11
fall=1
air.recover = 0
fall.recover = 0
kill = 0
getpower = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 && movehit
value = 3110
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 && !movehit
value = 0
ctrl = 1

;======================================================================
;======================================================================

; Hyper 2 - Teleport Hyper continued
[Statedef 3110]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3110                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 0

;[State 0, ]
;type = EnvColor
;triggerall = movehit
;trigger1 = (animelem = 3)
;trigger2 = (animelem = 7)
;trigger3 = (animelem = 13)
;trigger4 = (animelem = 19)
;trigger5 = (animelem = 24)
;time = 2
;value = 255,255,255
;under = 0
;ignorehitpause = 1
;persistent = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 2 ;Strong Punch
time = 2
pos = 20,-6

[State 0, TargetBind]
type = TargetBind
triggerall = movecontact
trigger1 = animelem = 8 ;low kick
time = 2
pos = -15,-10

[State 0, TargetBind]
type = TargetBind
triggerall = movecontact
trigger1 = animelem = 13 ;med punch
time = 2
pos = -65,15

[State 0, TargetBind]
type = TargetBind
triggerall = movecontact
trigger1 = animelem = 19 ;uppercut
time = 2
pos = 10,-15


[State 0, TargetBind]
type = TargetBind
triggerall = movecontact
trigger1 = animelem = 24 ;final kick
time = 2
pos = 25,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 6
trigger2 = time = 36
trigger3 = time = 66
trigger4 = time = 83
trigger5 = time = 106
value = 9,2

[State 0, Helper]
type = Helper
trigger1 = time = 1 ;uppercut1
trigger2 = time = 30 ;lowkick
trigger3 = time = 58 ;med punch
trigger4 = time = 83
trigger5 = time = 106
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Helper]
type = Helper
trigger1 = time = 8 ;strong punch
trigger2 = time = 39 ;low kick end
trigger3 = time = 68 ;med punch end
trigger4 = time = 85
trigger5 = time = 108
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, PosSet] ;Strong Punch
type = PosSet
trigger1 = time = 7 && facing = 1
x = -30
y = -200

[State 0, PosSet] ;Low Kick
type = PosSet
trigger1 = time = 38 && facing = 1
x = 100
y = -20

[State 0, PosSet] ;Med Punch
type = PosSet
trigger1 = time = 67 && facing = 1
x = 55
y = -200

[State 0, PosSet] ;Uppercut
type = PosSet
trigger1 = time = 84 && facing = 1
x = -60
y = 0

[State 0, PosSet] ;Final Kick
type = PosSet
trigger1 = time = 107 && facing = 1
x = -15
y = -170

[State 0, PosSet] ;Strong Punch
type = PosSet
trigger1 = time = 7 && facing = -1
x = 30
y = -200

[State 0, PosSet] ;Low Kick
type = PosSet
trigger1 = time = 38 && facing = -1
x = -100
y = -20

[State 0, PosSet] ;Med Punch
type = PosSet
trigger1 = time = 67 && facing = -1
x = -55
y = -200

[State 0, PosSet] ;Uppercut
type = PosSet
trigger1 = time = 84 && facing = -1
x = 60
y = 0

[State 0, PosSet] ;Final Kick
type = PosSet
trigger1 = time = 107 && facing = -1
x = 15
y = -170

[State 0, hitdef] ;Strong Punch
type = HitDef
trigger1 = animelem = 3
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = 2
sparkxy = -10,-40
hitsound = 5,2
guardsound = 6,0
animtype = Med
air.velocity = -1,4.5
air.fall = 1
fall.recover = 0
air.recover = 0
kill = 0
getpower = 0

[State 0, hitdef] ;Low Kick
type = HitDef
trigger1 = animelem = 8
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = 1
sparkxy = -10,-40
hitsound = 5,2
guardsound = 6,0
animtype = up
air.velocity = 1,-11
air.fall = 1
fall.recover = 0
air.recover = 0
kill = 0
getpower = 0

[State 0, hitdef] ;Med Punch
type = HitDef
trigger1 = animelem = 12
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = 2
sparkxy = -10,-40
hitsound = 5,2
guardsound = 6,0
animtype = med
air.velocity = 0,5
air.fall = 1
fall.recover = 0
air.recover = 0
kill = 0
getpower = 0

[State 0, hitdef] ;Uppdercut
type = HitDef
trigger1 = animelem = 19
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = 1
sparkxy = -10,-40
hitsound = 5,2
guardsound = 6,0
animtype = up
air.velocity = -2,-10
air.fall = 1
fall.recover = 0
air.recover = 0
kill = 0
getpower= 0

[State 620, hitdef] ;Final Kick
type = HitDef
trigger1 = animelem = 24
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = 2
sparkxy = -10,-40
hitsound = 5,2
guardsound = 6,0
animtype = heavy
air.velocity = -8,10
air.fall = 1
fall.recover = 0
air.recover = 0
getpower = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;======================================================================
;======================================================================

; Hyper 3 - Now You See Me...
[Statedef 3200]
type = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                    ;Set velocity (x,y) (Def: no change)
ctrl = 0                      ;Set ctrl (Def: no change)
anim = 3200                   ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,0

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3210
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 99
pausemove = 99
removeongethit = 1

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
Time = 90
;anim =-1;s3012
pos = 15,-15
sound = S8889,0
poweradd = -1000

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

[State 0, PlaySnd] ;Be on your guard
type = PlaySnd
trigger1 = Time = 0
value = S12,2
volume = 255
ignorehitpause = 1

;[State 0, PosSet]
;type = PosSet
;trigger1 = animelemno(0) > 2 && !inGuardDist
;x = InGuardDist

[State 0, VelSet]
type = VelSet
triggerall= p2bodydist x > 30
trigger1 = animelemno(0) > 2
x = 8

[State 0, 1]
type = HitDef
trigger1 = (animelem = 7)
trigger2 = (animelem = 17)
trigger3 = (animelem = 41)
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 20, 2                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 2                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 12             ;Time that the opponent slides back
ground.hittime  = 50             ;Time opponent is in hit state
ground.velocity = -5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 50                ;Time before opponent regains control in air
kill = 0
getpower = 0
ground.cornerpush = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 9)
trigger2 = (animelem = 21)
trigger3 = (animelem = 33)
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 20, 2                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 1                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 0                 ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 12             ;Time that the opponent slides back
ground.hittime  = 50             ;Time opponent is in hit state
ground.velocity = -5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 50                ;Time before opponent regains control in air
kill = 0
getpower = 0
ground.cornerpush = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 13)
trigger2 = (animelem = 25)
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 15, 2                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 2                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 1                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 12             ;Time that the opponent slides back
ground.hittime  = 50             ;Time opponent is in hit state
ground.velocity = -5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 50                ;Time before opponent regains control in air
kill = 0
getpower= 0
ground.cornerpush = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 44)
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 45, 2                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 5                ;Time attacker pauses, time opponent shakes
sparkno = 2                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 12             ;Time opponent is in hit state
air.hittime  = 12
ground.velocity = -8,-8             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -10,-1           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                ;Time before opponent regains control in air
kill = 1
givepower = 11, 5
air.fall = 1
fall = 1
fall.recover = 0
getpower = 0

[State 0, AllPalFX]
type = AllPalFX
triggerall = movehit
trigger1 = (animelem = 7)
trigger2 = (animelem = 9)
trigger3 = (animelem = 13)
trigger4 = (animelem = 17)
trigger5 = (animelem = 25)
trigger6 = (animelem = 32)
trigger7 = (animelem = 36)
trigger8 = (animelem = 44)
time = 2
add = 255,255,255

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 44
x = 0
y = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animtime = 0
trigger2 = anim != 3200

[State 0, dash back]
type = ChangeState
trigger1 = animtime = 0
value = 105
ctrl = 0

;----------------------------------------------------------------------
; Hyper 4 - X2 Syndrome
[Statedef 3300]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3300                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,0
volume = 255

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3300, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3300, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 110
pos = -10,-50
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


[State 0, VelSet]
type = VelSet
trigger1 = time = 6
x = 6
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0
y = 0

;[State 0, SuperPause]
;type = SuperPause
;triggerall = !Var(29)
;trigger1 = movehit
;time = 3
;anim = -1
;sound = -1,-1
;movetime = 0
;poweradd = 0
;unhittable = 0
;darken = 0

[State 0, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, HA
damage = 50, 5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 4
sparkno = 2
sparkxy = -30, -60
hitsound = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 50
ground.velocity = -5, -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
getpower= 0
kill = 0
fall=1

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 12
x = 0
y = -100

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 12
time = 15
pos = 10,0

[State 0, Helper]
type = Helper
trigger1 = animelem = 5 && movehit
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 5 && movehit
value = 3310
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 4 && !movehit
value = 0
ctrl = 1

;--------------------------------------------------------------------
; Hyper 4 - Part 2 - Medium Kick
[Statedef 3310]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 3310
sprpriority = -20

[State 0, Helper]
type = Helper
trigger1 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

; BAMF! sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S9,1

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = -1
x = -500

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = 1
x = 500

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 5
pos = -40,0

[State 0, 1]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage = 90, 12
animtype = Low
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 0, 0
sparkno = 1
sparkxy = -30, -60
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 50
ground.velocity = 10, -8
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = 7,-12
getpower= 0
kill = 0
fall=1

[State 0, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = movehit
time = 2
anim = -1
sound = -1,-1
movetime = 0
poweradd = 0
unhittable = 0
darken = 0

[State 0, Helper]
type = Helper
trigger1 = animtime = 0
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3320
ctrl = 0

;-------------------------------------------------------------------------
;Hyper 4 - Part 3
[Statedef 3320]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 3320

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

; BAMF! sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,1

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = 1
x = -500

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = -1
x = 500

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 2
time = 15
pos = 50,-20

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 6
y = -2

; BAMF! sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S3,1

[State 0, TargetState]
type = TargetState
trigger1 = animelem = 3
value = 802

[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 3
value = 3330
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3540
ctrl = 1

;-------------------------------------------------------------------------
;Hyper 4 - Part 4
[Statedef 3330]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,1
volume = 20

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1
time = 30
pos = 10,0

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1 && facing = 1
time = 34
pos = 40,60

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1 && facing = -1
time = 34
pos = 40,60

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[state 0, 2]
type = posadd
trigger1 = time = 15
x = 0
y = -150

[State 0, TargetState]
type = TargetState
trigger1 = time = 35
value = 5050

[State 0, EndState]
type = ChangeState
trigger1 = time = 35
value = 3340
ctrl = 1

;-----------------------------------------------------------------------
;Hyper 4 - Part 5 - Drop 'em!
[Statedef 3340]
anim = 3330
ctrl = 0
type = S
movetype = A
physics = N

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = 2
pos = 0,0

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime = 0
x = 30
y = 250

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, hitdef]
type = HitDef
trigger1 = time = 3
attr = S, HA
damage = 80, 5
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 10
sparkno = -1
sparkxy = -10,-40
hitsound = -1,-1
guardsound = -1,-1
animtype = Med
ground.type = trip
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-1
air.velocity = 0,-1
air.fall = 1
guard.kill = 1
kill = 1
fall = 1
getpower = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3350
ctrl = 1

;--------------------------------------------------------------------------
;Hyper 4 - Part 6 - Bamf! Return
[Statedef 3350]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S9,2

[State 0, Helper]
type = Helper
trigger1 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, TeleportFacing1]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = -100

[State 0, TeleportFacing-1]
type = Posadd
trigger1 = time = 25
triggerall = facing = -1
x = 200
y = -100

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, keepAnimBlank]
type = Changeanim
trigger1 = time = 25
value = 9801

[State 0, ctrlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;------------------------------------------------------------------
;Hyper Finish Background
[Statedef 12000]
type = S
movetype = I
physics = N
anim = 12000
sprpriority = -20

[State 0, PalFXWiz] ;Purple
type = PalFX
trigger1 = 1
time = 10
add = 80,0,160
mul = 100,20,124
sinadd = 85,100,75,10
invertall = 0
color = 0

[state 12000, a1]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay
flag2 = Noshadow

[state 12000, a1]
type = assertspecial
triggerall = numexplod(12010)
trigger1 = 1
flag = NoBG
flag2 = NoFG

[State 12000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 12000
id = 12000
pos = 0,0
postype = back
facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -6
scale = 1,1
removeongethit = 1
IgnoreHitPause = 1
;ownpal=1

[State 12000, a4] ;Face BG Appear
type = Explod
trigger1 = !time
anim = 12010
id = 12010
pos = 0,0
postype = back
facing = 1
bindtime = -1
supermovetime =999
pausemovetime =999
sprpriority = -5;-15
scale = 1,1
removeongethit = 1
IgnoreHitPause = 1

[State 12000, a6]
type = destroyself
trigger1 = time >= 300
trigger2 = animtime = 0


;--------------------------------------------------------------------
;Hyper Finish Background 2
[Statedef 12100]
type = S
movetype = I
physics = N
anim = 12100
sprpriority = -20

[State 0, PalFXWiz] ;Gold
type = PalFX
trigger1 = 1
time = 10
add = 103,52,-35
mul = 394,276,326
sinadd = 0,0,0,1
invertall = 0
color = 256

[state 12100, a1]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay
flag2 = Noshadow

[state 12100, a1]
type = assertspecial
triggerall = numexplod(12100)
trigger1 = 1
flag = NoBG
flag2 = NoFG

[State 12100, a4] ;Excalibur BG Appear
type = Explod
trigger1 = !time
anim = 12100
id = 12100
pos = -60,-50
postype = back
facing = 0
bindtime = -1
supermovetime =999
pausemovetime =999
sprpriority = -6
scale = 1.4,1.4
removeongethit = 1
IgnoreHitPause = 1

[State 12100, a6]
type = destroyself
trigger1 = time >= 300
trigger2 = animtime = 0
