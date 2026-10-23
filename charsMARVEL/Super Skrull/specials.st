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


;---------------------------------------------------------------------------
; Special Attacks
;
; Special 1 (QCF + P) -- state 1000
;   fireball
;---------------------------------------------------------------------------

;------------------------------
; Special 1 force ball
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 101,1

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1010
projanim = 1010
projhitanim = 1020
projremanim = 1020
projcancelanim = 1020
velocity = 5,0
offset = 40,-100
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 80,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,0
air.velocity = -2,-2
fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;;;



;------------------------------
; Special 2 fire
[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1001
ctrl = 0
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 101,0

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,0
channel = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S9,1

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1002
projanim = 1002
projhitanim = 1003
projremanim = 1003
projcancelanim = 1003
velocity = 7,0
offset = 30,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -3,-6
air.velocity = -2,-2

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1002
projanim = 1002
projhitanim = 1003
projremanim = 1003
projcancelanim = 1003
velocity = 7,0
offset = 30,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -3,-6
air.velocity = -2,-2

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1002
projanim = 1002
projhitanim = 1003
projremanim = 1003
projcancelanim = 1003
velocity = 7,0
offset = 30,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -3,-6
air.velocity = -2,-2

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 6
ProjID = 1002
projanim = 1002
projhitanim = 1003
projremanim = 1003
projcancelanim = 1003
velocity = 7,0
offset = 30,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -3,-6
air.velocity = -2,-2

[State 1000, fireball]
type = Projectile
trigger1 = AnimElem = 7
ProjID = 1002
projanim = 1002
projhitanim = 1003
projremanim = 1003
projcancelanim = 1003
velocity = 7,0
offset = 30,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = medium
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 20,5
pausetime = 4,4
sparkno = S9992
guard.sparkno = 0
hitsound = S2,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -3,-6
air.velocity = -2,-2


[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;;;



;---------------------------------------------------------------------------
; roll  stretch
[StateDef 3100]
anim = 3100
ctrl = 0
type = S
movetype = A
physics = S
velset = 12,0
poweradd = 96

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 101,2

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
x = 1
y = 0
;ignorehitpause =
;persistent =


[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 96
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-8
guard.velocity = -5
air.velocity = -4,8
fall = 1

[State 220, back to stance]
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
