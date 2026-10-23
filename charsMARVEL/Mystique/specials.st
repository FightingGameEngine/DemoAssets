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

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 172,6

; voice
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0
channel = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = AnimElem = 4 &&  command = "holdz"
value = 1010
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,0

[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 4
v = 40
value = -1

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
pos = 62,-90
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1001
projanim = 1001
projhitanim = 1095
projremanim = 1095
projcancelanim = 1095
velocity = 18,0
offset = 62,-90
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 85,5
pausetime = 4,4
;postype = P2
sparkno = s1015
;guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1


[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "qcf_2p"
v = 43
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = Animelem = 5 && var(43)=1
value = 3000
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 ;&& var(43)=0
value = 0
ctrl = 1


[StateDef 1010]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
velset = 0,0

[State 1000, changestate]
type = ChangeState
trigger1 = command != "holdz"
trigger2 = var(59) && time > 10
value = 1011
ctrl = 0

[StateDef 1011]
type = S
movetype = A
physics = S
anim = 1011
ctrl = 0
velset = 0,0

[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 1
v = 40
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,0

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 1003
ID = 1003
pos = 58,-90
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1001
projanim = 1001
projhitanim = 1095
projremanim = 1095
projcancelanim = 1095
velocity = 18,0
offset = 58,-90
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 110,10
pausetime = 4,4
;postype = P2
sparkno = s1015
;guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,2
air.velocity = -6,2
fall = 1
air.fall = 1

[State 0, VarSet]
type = VarSet
triggerall = time > 2
trigger1 = command = "qcf_2p"
v = 43
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = Animelem = 4 && var(43)=1
value = 3000
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 ;&& var(43)=0
value = 0
ctrl = 1


;----medio

      ; Special 1
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 172,6


;[State 0, ChangeState]
;type = ChangeState
;trigger1 = AnimElem = 4 &&  command = "holdz"
;value = 1010
;ctrl = 0


[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 5
v = 40
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 172,0

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 1003
ID = 1003
pos = 58,-90
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1001
projanim = 1001
projhitanim = 1095
projremanim = 1095
projcancelanim = 1095
velocity = 18,-0.5 +(random/500)
offset = 58,-90
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 45,5
pausetime = 4,4
;postype = P2
sparkno = s1015
;guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 5
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
triggerall = animelem = 6
trigger1 = command != "holdy"
trigger2 = var(40) <= 0
value = 1021

;-----
      ; Special 1
[StateDef 1021]
type = S
movetype = A
physics = S
anim = 1021
ctrl = 0
velset = 0,0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1030]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1030

;[State 0, ChangeState]
;type = ChangeState
;trigger1 = AnimElem = 4 &&  command = "holdz"
;value = 1010
;ctrl = 0


[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 5
v = 40
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 172,0

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 1003
ID = 1003
pos = 62,-30
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1001
projanim = 1001
projhitanim = 1095
projremanim = 1095
projcancelanim = 1095
velocity = 18,0
offset = 62,-30
; HitDef
attr = S,SP
hitflag = MAFD        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 4,4
;postype = P2
sparkno = s1015
;guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1040]
type = A
movetype = A
physics = A
juggle  = 4
ctrl = 0
anim = 1040

; voice


[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 3
v = 40
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 172,0

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 1003
ID = 1003
pos = 47,-85
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1001
projanim = 1001
projhitanim = 1095
projremanim = 1095
projcancelanim = 1095
velocity = 18,0
offset = 47,-85
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 4,4
;postype = P2
sparkno = s1015
;guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1







[Statedef 1050]
type = S
movetype = I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1050

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 8
value = 172,1

[State -3, web bar]
type = Explod
trigger1 = time = 0;RoundState = 2 && var(40) > 60 && var(40) < 71
id = 1081
anim = 1081
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 57
sprpriority = 25
ignorehitpause = 1
removeongethit = 1
ontop = 1


[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1060
ID =  1060
pos = -25,-75
postype = p1  ;p2,front,back,left,right
vel = -2,4
accel = 0.02,0
removetime = 20
supermove
pausemove
scale = 1,1
sprpriority = 5



[State 0, VarSet]
type = VarSet
trigger1 = time = 0
v = 40   ;fv = 10
value = 10
;ignorehitpause =
;persistent =


[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;tiro antiaero

[Statedef 1090]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1090



[State 1000,gastateia]
type = VarAdd
triggerall = var(40) > 0
trigger1 = animelem = 4
v = 40
value = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,0

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1005
ID = 1005
pos = 7,-92
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1006
projanim = 1006
projhitanim = 1097
projremanim = 1097
projcancelanim = 1097
projedgebound = 40
projstagebound = 40
projheightbound = -540
velocity = 16,-16
offset = 7, -92
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 85,5
pausetime = 4,4
;postype = P2
sparkno = s1017
;guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;-----------

[Statedef 1100]
type = S
movetype = A
physics = S
anim = 1100
sprpriority = 2
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 0,15

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101
ctrl = 0

[Statedef 1110]
type = S
movetype = A
physics = S
anim = 1110
sprpriority = 2
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 0,15

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101
ctrl = 0


[Statedef 1101]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 40
velset = 5,-7
ctrl = 0
anim = 1101




[State 200, Fx]
type = PlaySnd
trigger1 = Time = 0
value = 1,11

[State 600, HitDef]
type = HitDef
trigger1 = animelem = 1
attr = A, NA
damage = 30
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkxy = -20,-55
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,-3
guard.velocity = -7
air.velocity = -2,-3
air.fall = 1

[State 600, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 30
guardflag = HA
pausetime = 4,8
hitsound = S2,0
guardsound = S3,0
sparkxy = -20,-55
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -7
air.velocity = -2,-3
air.fall = 1

[State 600, HitDef]
type = HitDef
trigger1 = animelem = 6
attr = A, NA
damage = 80
guardflag = HA
pausetime = 10,10
hitsound = S2,0
guardsound = S3,0
sparkxy = -20,-55
animtype = heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,-4
guard.velocity = -7
air.velocity = -5,-3
air.fall = 1
fall= 1

[State 0, VarSet]
type = VarSet
triggerall = time > 5
trigger1 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
v = 42
value = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(42)=1
value = 1040
ctrl = 0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0 && var(42)=0
value = 1102


[Statedef 1102]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1102

[State 0, PosSet]
type = PosSet
trigger1 = pos y != 0
y = 0

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------









[StateDef 1198]
type = S
movetype = I
physics = S
anim = 1198
ctrl = 0
velset = 0,0

[State 200, Fx]
type = PlaySnd
trigger1 = Time = 0
value = 172,6

[State 200, Fx]
type = PlaySnd
trigger1 = Time = 0
value = 172,7

[state 4000, gethit]
type = hitoverride
trigger1 = 1
attr = SCA,NA,SA,HA;,NP,SP,HP;,NT,ST,HT
stateno = 1200

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; counter
[StateDef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 0
value = 0,0


[State 800, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
hitsound = 5,1
guardsound = 6,0
sparkno = 0
sparkxy = 0,-96
p1stateno = 1210
p2stateno = 1220
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = ifelse(PalNo > 6, 0, 1)
fall.recover = 0
fall.damage = 80

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1210]
type = S
movetype = A
physics = S
anim = 1210
sprpriority = 2

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
damage = 110
guardflag = MA
pausetime = 11,11
hitsound = 5,4
guardsound = 6,0
sparkno = 3
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7,-3
guard.velocity = -5
air.velocity = -7,-3
fall = 1
air.fall = 1


[State 801, ChangeState]
type = ChangeState
triggerall = time > 10
trigger1 = enemynear, numexplod(17229)=0
value = 1230
ctrl = 0


[Statedef 1220]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = time = 10 && animexist(17229)
anim = 17229
ID = 17229
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
shadow = 100,100,100



[State 0, Explod]
type = Explod
trigger1 = time = 10 && !animexist(17229)
anim = 220
ID = 17229
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
shadow = 100,100,100

[State 200, Fx]
type = PlaySnd
trigger1 = Time = 0
value = 172,8


[State 815, ChangeAnim2]
type = ChangeAnim
trigger1 = Time = 0
value = 5012



[State 0, SelfState]
type = SelfState
trigger1 = time = 21
value = 0
ctrl = 1
;ignorehitpause = 0
;persistent = 1

[Statedef 1230]
type = S
movetype = A
physics = S
anim = 1230
sprpriority = 2

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1






[Statedef 1300]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 60
ctrl = 0
anim = 1300
sprpriority = 0
velset = 0,0
facep2 = 1

;[State 0, Explod]
;type = Explod
;trigger1 =  animelem = 6
;anim = 1301
;ID = 1301
;pos = -10,0
;postype = p1  ;p2,front,back,left,right
;facing = 1
;vfacing = 1
;bindtime = 1
;removetime = -2
;sprpriority = 2
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time= 21
value = 0,14




[State 0, Explod]
type = Explod
triggerall = time > 20
triggerall = time < 40
trigger1= timemod = 2,1
anim = 62
ID = 62
pos = 40,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 10
y = 0


[State 1340]
type = PlaySnd
trigger1 = animelem = 4
value = 0,2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 8
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 10
x = 2
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 11
x = 0
y = 0




[State 1600]
type = HitDef
;trigger1 = !var(29)
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = C, NA
damage    = 65
animtype  = Hard
hitflag = MAF
guardflag = MA
pausetime = 7,7
sparkno = 3
sparkxy = -10,-5
hitsound   = S1,6
guardsound = S4,0
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 0,-4
air.velocity = 0,-4


[State 1600]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Special 1
;[StateDef 1100]
;type = S
;movetype = A
;physics = S
;anim = 1100
;ctrl = 0
;velset = 0,0
;
;
;[State 1600]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;ctrl = 1






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
