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

;------------------------------------------------------------

; FROZEN BULLET
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0


[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimElem = 4 &&  command = "holdx"
value = 10001
ctrl = 0

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,6

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 172,8

 [State 1000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
pos = 36,-78
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1016
projanim = 1016
projhitanim = 1017
projremanim = 1017
projcancelanim = 1002
velocity = 18,0
offset = 10,-78
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 10,10
pausetime = 14,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,13
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,4
air.velocity = -4,4
fall = 1
air.fall = 1
;p2stateno = 7990

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

[StateDef 10001]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
velset = 0,0

[State 10001, Explod]
type = Explod
trigger1 = time = 0
anim = 901
ID = 901
pos = 34,-81
postype = p1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 10001, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S172,13

[State 10001, changestate]
type = ChangeState
trigger1 = command != "holdx"
trigger2 = var(59) && time > 45
value = 10002
ctrl = 0

[StateDef 10002]
type = S
movetype = A
physics = S
anim = 1011
ctrl = 0
velset = 0,0

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,8

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,7

[State 10002, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 1003
ID = 1003
pos = 38,-80
scale = 1.5,1.5
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 10002, 2]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1016
projanim = 1016
projhitanim = 1018
projremanim = 1018
projcancelanim = 1002
velocity = 6,0
offset = 18,-80
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,10
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,13
guardsound = 10,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1
p2stateno = 7990

[State 10002, VarSet]
type = VarSet
trigger1 = var(37)!=1
v = 37
value = 1

[State 10002, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------
; Freeze
[Statedef 7990]
type = S
movetype= U
physics = N
velset = 0,0

[State 7990, Varset]
type = Varset
trigger1 = time = 0
V = 27
Value = Anim

[State 7990, anim]
type = Changeanim
trigger1 = time != 0
value = Var(27)

[State 7990, color]
type = palFX
trigger1 = time != 0
add = 50,175,255
mul = 60, 180, 200
time = 7

[State 7990, SelfState]
type = SelfState
trigger1 = time = 100
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 7990, End]
type = ChangeState
trigger1 = time = 100
trigger1 = Pos Y < 0
value = 7991

;-------------------------------------------------------------

[Statedef 7991]
type    = S
movetype= H
physics = N
velset = 0,2
ctrl = 0
anim = 5070

[State 7991, 0]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 7991, 1]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 7991, 2]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 7991, 3]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100
ctrl = 1

;---------------------------------------------------------------------------

; BLAZING BULLET
[StateDef 1001]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

; voice
[State 1001, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0
channel = 0


[State 1001, ChangeState]
type = ChangeState
trigger1 = AnimElem = 4 &&  command = "holdy"
value = 10011
ctrl = 0


 [State 1001, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
pos = 36,-78
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,6

[State 10012, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1009
projanim = 1009
projhitanim = 1015
projremanim = 1014
projcancelanim = 1015
velocity = 12,0
offset = 16,-78
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 65,10
pausetime = 14,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,12
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -8,4
air.velocity = -8,4
fall = 1
air.fall = 1
;p2stateno = 7697

[State 1001, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 10011]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
velset = 0,0

[State 10011, Explod]
type = Explod
trigger1 = time = 0
anim = 901
ID = 901
pos = 34,-81
postype = p1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 10011, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S172,13

[State 10011, changestate]
type = ChangeState
trigger1 = command != "holdy"
trigger2 = var(59) && time > 35
value = 10012
ctrl = 0

[StateDef 10012]
type = S
movetype = A
physics = S
anim = 1011
ctrl = 0
velset = 0,0


[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 172,0

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,7

 [State 10012, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 1003
ID = 1003
pos = 38,-80
scale = 1.5,1.5
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 10012, 2]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1009
projanim = 1009
projhitanim = 1015
projremanim = 1014
projcancelanim = 1015
velocity = 8,0
offset = 16,-78
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 105,10
pausetime = 14,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,12
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -8,-10
air.velocity = -8,-10
fall = 1
air.fall = 1
p2stateno = 5045
;p2getp1state = 1

[State 10002, VarSet]
type = VarSet
trigger1 = var(38)!=1
v = 38
value = 1

[State 10012, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------

[Statedef 7697]
type = S
movetype= U
physics = N
velset = 0,0

[State 7697, color]
type = palFX
trigger1 = time != 0
add = 210,175,15
mul = 190, 108, 10
color = 26
time = 1

[State 7697, SelfState]
type = SelfState
trigger1 = time = 5
trigger1 = Pos Y > -4
value = 5070
ctrl = 1

[State 7697, End]
type = ChangeState
trigger1 = time = 150
trigger1 = Pos Y < 0
value = 76971

;-------------------------------------------------------------

[Statedef 76971]
type    = S
movetype= H
physics = N
velset = 0,2
ctrl = 0
anim = 7697

[State 76971, 0]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 76971, 1]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 76971, 2]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 76971, 3]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100
ctrl = 1


;-------------------------------------------------------------------------------

; ELECTRIC BULLET
[StateDef 1002]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0

; voice
[State 1002, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0
channel = 0


[State 1002, ChangeState]
type = ChangeState
trigger1 = AnimElem = 4 &&  command = "holdz"
value = 10021
ctrl = 0


 [State 1002, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
pos = 36,-78
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,6

[State 10012, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1012
projanim = 1012
projhitanim = 1013
projremanim = 1013
projcancelanim = 1013
velocity = 14,0
offset = 16,-78
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 105,10
pausetime = 14,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,11
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -8,4
air.velocity = -8,4
fall = 1
air.fall = 1
; = 7696

[State 1002, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 10021]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
velset = 0,0

[State 10021, Explod]
type = Explod
trigger1 = time = 0
anim = 901
ID = 901
pos = 34,-81
postype = p1
removetime = -2
scale = 1,1
ontop = 1
ownpal = 1
removeongethit = 1

[State 10021, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S172,13

[State 10021, changestate]
type = ChangeState
trigger1 = command != "holdz"
trigger2 = var(59) && time > 25
value = 10022
ctrl = 0

[StateDef 10022]
type = S
movetype = A
physics = S
anim = 1011
ctrl = 0
velset = 0,0


[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 172,0

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,7


[State 10022, superportrait]
type = Explod
trigger1 = AnimElem = 1
anim = 1003
ID = 1003
pos = 38,-80
scale = 1.5,1.5
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 10022, 2]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 1012
projanim = 1012
projhitanim = 1013
projremanim = 1013
projcancelanim = 1013
velocity = 10,0
offset = 16,-78
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 145,10
pausetime = 14,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,11
guardsound = 6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -8,4
air.velocity = -8,4
fall = 1
air.fall = 1
p2stateno = 7696

[State 10002, VarSet]
type = VarSet
trigger1 = var(39)!=1
v = 39
value = 1

[State 10022, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------
; Electrocution
[Statedef 7696]
type = S
movetype= U
physics = N
anim = 7696
velset = 0,0

[State 7696, color]
type = palFX
trigger1 = time != 0
add = 10,75,105
mul = 160, 118, 220
sinadd = 1,10,5,10
invertall = 1
color = 156
time = 1

[State 7696, SelfState]
type = SelfState
trigger1 = time = 30
trigger1 = Pos Y > -1
value = 5130;5070
ctrl = 1

[State 7696, End]
type = ChangeState
trigger1 = time = 150
trigger1 = Pos Y < 0
value = 76961

;-------------------------------------------------------------

[Statedef 76961]
type    = S
movetype= H
physics = N
velset = 0,2
ctrl = 0
anim = 7696

[State 7696, 0]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 7696, 1]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 7696, 2]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 7696, 3]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5130
ctrl = 1

;-------------------------------------------------------------------------------

; Special 1
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0
velset = 0,0

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,6

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 172,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,7

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1003
ID = 1003
pos = 45,-80
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
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
velocity = 18,-0.5 +(random/500)
offset = 25,-80
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 85,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S172,2
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 5
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1020, changestate]
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

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 172,6

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,7

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 1003
ID = 1003
pos = 32,-55
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
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
velocity = 18,0
offset = 12,-55
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 45,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
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


[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,6

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 172,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,7

[State 1000, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 1003
ID = 1003
pos = 27,-95
postype = p1
bindtime = 999
removetime = -2
sprpriority = 15
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1001
projanim = 1001
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
velocity = 18,2
offset = 27,-95
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = low
priority = 4,Hit
damage = 55,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
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
type = A
movetype = A
physics = A
juggle  = 4
ctrl = 0
anim = 1050

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,6

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 172,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,7

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 1007
ID = 1007
pos = 17,-45
postype = p1
bindtime = 999
removetime = -2
sprpriority = 15
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1008
projanim = 1008
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
velocity = 12,12
offset = 17,-45
attr = S,SP
hitflag = MAFD
guardflag = MA
animtype = low
priority = 4,Hit
damage = 55,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
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


[Statedef 1060]
type = A
movetype = A
physics = A
juggle  = 4
ctrl = 0
anim = 1060

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 172,6

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 172,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,7

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 1005
ID = 1005
pos = 27,-105
postype = p1
bindtime = 999
removetime = -2
sprpriority = 15
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1006
projanim = 1006
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
velocity = 16,-16
offset = 27,-95
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
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

[Statedef 1090]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1090

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 172,6

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 172,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,7

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1005
ID = 1005
pos = 27,-104
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
projhitanim = 1002
projremanim = 1002
projcancelanim = 1002
projedgebound = 40
projstagebound = 40
projheightbound = -540
velocity = 12,-12
offset = 27, -104
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 65,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
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

;---------------------------------------------------------------------------
;Stun Grenade  Ground MINE
[Statedef 1100]
type    = U
movetype= A
physics = S
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1102
sprpriority = 0
facep2 = 1

[State 1100]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1

[State 1100]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 1100]
type = Helper
trigger1 = AnimElem = 2 && StateType != A
stateno = 21100
id = 21100
ownpal = 1
ignorehitpause = 1
pos = 44,-6

[State 1100]
type = ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 0
ctrl = 1

[State 1100]
type = ChangeState
trigger1 = AnimTime = 0 && StateType = A
value = 1130
ctrl = 0

[State 1100]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Stun Grenade AIR A
[Statedef 1101]
type    = U
movetype= A
physics = S
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1101
sprpriority = 0
facep2 = 1

[State 1101]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100,0

[State 1101]
type = Helper
trigger1 = AnimElem = 8 && StateType = A
stateno = 21100
id = 21100
ownpal = 1
ignorehitpause = 1
pos = 17,-99

[State 1101]
type = ChangeState
trigger1 = AnimTime = 0 && StateType = A
value = 1130
ctrl = 0

[State 1101]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Stun Grenade B
[Statedef 1110]
type    = U
movetype= A
physics = S
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1100+(StateType = A)
sprpriority = 0
facep2 = 1

[State 1110]
type = PlaySnd
trigger1 = AnimElem = 2 && StateType = A
value = 1100,0

[State 1110]
type = PlaySnd
trigger1 = AnimElem = 3 && StateType != A
value = 1100,1

[State 1110]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0,1

[State 1110]
type = Helper
trigger1 = AnimElem = 8 && StateType != A
stateno = 21100
id = 21100
ownpal = 1
ignorehitpause = 1
pos = 44,-86

[State 1110]
type = Helper
trigger1 = AnimElem = 8 && StateType = A
stateno = 21100
id = 21100
ownpal = 1
ignorehitpause = 1
pos = 17,-99

[State 1110]
type = ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 0
ctrl = 1

[State 1110]
type = ChangeState
trigger1 = AnimTime = 0 && StateType = A
value = 1130
ctrl = 0

[State 1110]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
;Stun Grenade C
[Statedef 1120]
type    = U
movetype= A
physics = S
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1100+(StateType = A)
sprpriority = 0
facep2 = 1

[State 1101]
type = PlaySnd
trigger1 = AnimElem = 2 && StateType = A
value = 1100,0

[State 1101]
type = PlaySnd
trigger1 = AnimElem = 3 && StateType != A
value = 1100,1

[State 1120]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0,1

[State 1120]
type = Helper
trigger1 = AnimElem = 8 && StateType != A
stateno = 21100
id = 21100
ownpal = 1
ignorehitpause = 1
pos = 44,-86

[State 1120]
type = Helper
trigger1 = AnimElem = 8 && StateType = A
stateno = 21100
id = 21100
ownpal = 1
ignorehitpause = 1
pos = 17,-99

[State 1120]
type = ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 0
ctrl = 1

[State 1120]
type = ChangeState
trigger1 = AnimTime = 0 && StateType = A
value = 1130
ctrl = 0

[State 1120]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;------------------------------------------------------------------------------------------------------------
[Statedef 1130]
type = A
movetype = I
physics = N
anim = 48
sprpriority = 0
velset = 0,0
facep2 = 1

[State 1130]
type = VelAdd
trigger1 = anim = 48
y = 0.4

[State 1130]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;-------------------------------------------------------------------------------
;Stun Grenade
[Statedef 21100]
type = U
movetype = A
physics = N
ctrl = 0
sprpriority = 2
velset = 0,0
hitcountpersist = 1

[State 21100]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 21100
value = 21100

[State 21100]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 21100]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21100]
type = HitOverride
trigger1 = 1
stateno = 21101
attr = SCA,AP
slot = 0
time = -1

[State 21100]
type = VarSet
trigger1 = Time = 0
var(1) = 60

[State 21100]
type = VelSet
trigger1 = Time = 0 && Parent,Stateno = 1100
x = 6
y = 0

[State 21100]
type = VelSet
trigger1 = Time = 0 && Parent,Stateno = 1101
x = 3
y = -0.5

[State 21100]
type = VelSet
trigger1 = Time = 0 && Parent,Stateno = 1110
x = 4.5
y = -1

[State 21100]
type = VelSet
trigger1 = Time = 0 && Parent,Stateno = 1120
x = 6
y = -2

[State 21100]
type = VelAdd
trigger1 = 1
y = 0.3

[State 21100]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 50,5
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 0,1
sparkxy = -10,-50+floor(P2Dist Y)
hitsound   = S2,0
guardsound = S3,0
sparkno = 2
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 5
ground.velocity = -6,-4
air.velocity = -6,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 2
p1stateno = 21150
p2stateno = 21160
id = 21100

[State 21100]
type = ChangeState
trigger1 = MoveContact
trigger2 = Time > 30 + 12*(Parent,StateType = A)
trigger3 = Pos Y >= 0
trigger3 = Vel Y > 0
ignorehitpause = 1
value = 21101

;------------------------------------------------------------------------------------------------------------
;Stun Grenade Helper
[Statedef 21101]
type = U
movetype = A
physics = N
ctrl = 0
sprpriority = 2
velset = 0,0
hitcountpersist = 1

[State 21101]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 21101
value = 21101

[State 21101]
type = PlaySnd
trigger1 = AnimElem = 4
value = 172,5
volume = 255
channel = 5

[State 21101]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 21101]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21101]
type = HitOverride
trigger1 = 1
stateno = 21101
attr = SCA,AP
slot = 0
time = -1

[State 21101]
type = HitDef
attr = S, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 50,5
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 0,1
sparkxy = -10,-10+floor(Parent,P2Dist Y)
hitsound   = S172,5
guardsound = S3,0
sparkno = 2
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 5
ground.velocity = -7,-5
air.velocity = -7,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 2
p1stateno = 21150
p2stateno = 21160
id = 21100

[State 21101]
type = ChangeState
trigger1 = Time > 42
value = 21109

[State 21101]
type = Trans
trigger1 = 1
trans = add

[State 21101]
type = Helper
trigger1 = animelem = 5
stateno = 21102
ownpal = 1

;------------------------------------------------------------------------------------------------------------
;Stun Grenade Helper
[Statedef 21102]
type = U
movetype = I
physics = N
anim = 21105
ctrl = 0
sprpriority = 3
velset = 0,0

[State 21102]
type = Varset
trigger1 = Time = 0
var(0) = floor(360/(random%10+1))

[State 21102]
type = Varset
trigger1 = Time = 0
var(3) = parent,id

[State 21102]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 21102]
type = DestroySelf
trigger1 = !PlayerIDExist(var(3))
trigger2 = Time >30

[State 21102]
type = BindToParent
trigger1 = PlayerIDExist(var(3))

[State 21102]
type = Trans
trigger1 = Parent,Stateno = 21109
trans = addalpha
alpha = 256-time*28,time*28

;-------------------------------------------------------------------------------
;Stun Grenade Helper
[Statedef 21103]
type = U
movetype = I
physics = N
anim = 21103
ctrl = 0
sprpriority = 3
velset = 0,0

[State 21103]
type = DestroySelf
trigger1 = Time > 60
;------------------------------------------------------------------------------------------------------------
;Stun Grenade Helper
[Statedef 21109]
type = U
movetype = I
physics = N
anim = 21109
ctrl = 0
sprpriority = 2
velset = 0,0

[State 21109]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 21109]
type = DestroySelf
trigger1 = Time > 22

;---------------------------------------------------------------------------
;Stun Grenade

[Statedef 21150]
type    = S
movetype= A
physics = N
anim = 21109
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21150]
type = BindToTarget
trigger1 = 1
pos = 0,-abs(EnemyNear, const(size.mid.pos.y))

[State 21150]
type = VelAdd
trigger1 = enemynear,Pos Y < 0
y = 0.4

[State 21150]
type = VelSet
trigger1 = enemynear,Pos Y >= 0
y = 0

[State 21150]
type = PosSet
trigger1 = Pos Y >= 0 && Vel Y > 0
y = 0

[State 21150]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0

[State 21150]
type = Trans
trigger1 = 1
trans = add

[State 21150]
type = Helper
trigger1 = animelem = 1
stateno = 21103
ownpal = 1

[State 21150]
type = TargetState
trigger1 = Time >= var(1)
value = 21165

[State 21150]
type = ChangeState
trigger1 = Time >= var(1)
value = 21109
ctrl = 0

[State 21150]
type = ChangeState
trigger1 = !NumTarget(21100)
value = 21109
ctrl = 1


;------------------------------------------------------------------------------------------------------------
;Stun Grenade End
[Statedef 21155]
type = S
movetype = I
physics = N
anim = 21103
ctrl = 0
sprpriority = 2
velset = 0,0

[State 21055]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 21055]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Trap by Stun Grenade

[Statedef 21160]
type    = U
movetype= H
physics = N
velset = 0,0
sprpriority = -1

[State 21160]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 21160]
type = ChangeAnim2
trigger1 = Time = 0
value = 5000

[State 21160]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Trap By Stun Grenade

[Statedef 21165]
type    = U
movetype= H
physics = N
velset = 0,0


[State 21165]
type = SelfState
trigger1 = Time > 1
value = 5000+40*(Pos Y < 0)
ctrl = 1

;---------------------------------------------------------------------------
;Anti-Air Strike A

[Statedef 1200]
type = A
movetype = I
physics = N
anim = 1200
velset = 0,0
ctrl = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = 8,0

[State 1200,1]
type = VelSet
trigger1 = animtime = 0
x = -12
y = const(velocity.jump.y)*1.25

[State 1200, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1201
ctrl = 1

[Statedef 1201]
type    = A
movetype = I
physics = A
ctrl = 0
anim = 1201

[State 1201, 1]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 1201, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),0

;[State 1201, NotHitBy]
;type = NotHitBy
;trigger1 =  1
;value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;time = 2

[State 1201, 3]
type = VelAdd
trigger1 = Vel X <= 2.5
x = 0.25

[State 1201, 4]
type = ChangeState
value = 1202
trigger1 = (ScreenPos Y <= 123) &&  (ScreenPos Y >= 75)

[State 1201, ChangeState]
type = ChangeState
trigger1 = vel y > 0
value = 50
ctrl = 1

[Statedef 1202]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 1202
velset = 0,0

[State 1202, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1202, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1200,0

[State 1202, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1203

[Statedef 1203]
type    = A
movetype = A
physics = A
ctrl = 0
velset = 20, 10
anim = 1203

[State 1203, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,2

[State 1203, 1 ]
type = ScreenBound
trigger1 = time < 5
value = 0
movecamera = 0,0

[State 1203, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 50,3
guardflag = HA
pausetime = 8,8
hitsound = S2,2
priority = 3, Hit
guardsound = 6,0
sparkxy = 0,-10
sparkno = 2
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6,-5
guard.velocity = -6
air.velocity = -5,-3
fall = 1
down.velocity = -6,-5
down.bounce = -4
p2stateno = 5130
;p2getp1state = 1

;----------------------------------------------------------

;Anti-Air Strike B

[Statedef 1210]
type = A
movetype = I
physics = N
anim = 1200
velset = 0,0
ctrl = 0

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = 8,0

[State 1210,1]
type = VelSet
trigger1 = animtime = 0
x = 6
y = const(velocity.jump.y)*1.75

[State 1210, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1211
ctrl = 1

[Statedef 1211]
type    = A
movetype = I
physics = A
ctrl = 0
anim = 1201

[State 1211, 1]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 1211, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),0

;[State 1211, NotHitBy]
;type = NotHitBy
;trigger1 =  1
;value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;time = 2

[State 1211, 3]
type = VelAdd
trigger1 = Vel X <= 2.5
x = 0.25

[State 1211, 4]
type = ChangeState
value = 1212
trigger1 = (ScreenPos Y <= 123) &&  (ScreenPos Y >= 75)

[State 1211, ChangeState]
type = ChangeState
trigger1 = vel y > 0
value = 50
ctrl = 1

[Statedef 1212]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 1202
velset = 0,0

[State 1212, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1212, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1200,0

[State 1212, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1213

[Statedef 1213]
type    = A
movetype = A
physics = A
ctrl = 0
velset = 15, 10
anim = 1203

[State 1213, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,2

[State 1213, 1 ]
type = ScreenBound
trigger1 = time < 5
value = 0
movecamera = 0,0

[State 1213, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 50,3
guardflag = HA
pausetime = 8,8
hitsound = S2,2
priority = 3, Hit
guardsound = 6,0
sparkxy = 0,-10
sparkno = 2
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7,-3
guard.velocity = -7
air.velocity = -4,-3
fall = 1
down.velocity = -6,-5
down.bounce = -4
p2stateno = 5130
;p2getp1state = 1

;------------------------------------------------------------
 ;Anti-Air Strike C

[Statedef 1220]
type = A
movetype = I
physics = N
anim = 1200
velset = 0,0
ctrl = 0

[State 1220, PlaySnd]
type = PlaySnd
trigger1 = animtime = 0
value = 8,0

[State 1220,1]
type = VelSet
trigger1 = animtime = 0
x = 18
y = const(velocity.jump.y)*2.5

[State 1220, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1221
ctrl = 1

[Statedef 1221]
type    = A
movetype = I
physics = A
ctrl = 0
anim = 1201

[State 1221, 1]
type = PlaySnd
trigger1 = time = 1
persistent = 0
value = S8,0

[State 1221, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = floor(pos x),0

;[State 1221, NotHitBy]
;type = NotHitBy
;trigger1 =  1
;value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;time = 2

[State 1201, 3]
type = VelAdd
trigger1 = Vel X <= 2.5
x = 0.25

[State 1221, 4]
type = ChangeState
value = 1222
trigger1 = (ScreenPos Y <= 123) &&  (ScreenPos Y >= 75)

[State 1221, ChangeState]
type = ChangeState
trigger1 = vel y > 0
value = 50
ctrl = 1

[Statedef 1222]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 1202
velset = 0,0

[State 1222, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1222, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1200,0

[State 1222, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 1223

[Statedef 1223]
type    = A
movetype = A
physics = A
ctrl = 0
velset = 25, 7
anim = 1203

[State 1223, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,2

[State 1223, 1 ]
type = ScreenBound
trigger1 = time < 5
value = 0
movecamera = 0,0

[State 1223, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 50,3
guardflag = HA
pausetime = 8,8
hitsound = S2,2
priority = 3, Hit
guardsound = 6,0
sparkxy = 0,-10
sparkno = 2
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7,-3
guard.velocity = -7
air.velocity = -4,-3
fall = 1
down.velocity = -6,-5
down.bounce = -4
p2stateno = 5130
;p2getp1state = 1

;--------------------------------------------------------
;Slide Kick A
;--------------------------------------------------------

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

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = time=15
value = 8,0

[State 1300, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 5
anim = 1301
ID = 1301
pos = -30,0
postype = p1
removetime = -2
scale = 1,0.5
sprpriority = 10
ownpal = 1

[State 1300, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 7
anim = 1302
ID = 1302
pos = 20,10
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 1300]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 1300, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 7
y = 0

[State 1300, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 4
y = 0

[State 1300, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 2
y = 0

[State 1300, VelSet]
type = VelSet
trigger1 = animelem = 10
x = 0
y = 0

[State 1300]
type=HitDef
triggerall = var(36) < 2
trigger1=hitcount < 1
trigger1=moveguarded < 1
attr = C, SA
damage=45,4
animtype=Hard
hitflag= MAFD
guardflag= MA
pausetime=8,8
sparkno = 2
sparkxy =-10,-5
hitsound = S2,2
guardsound = 6,0
animtype = Heavy
ground.type = High
ground.slidetime=15
ground.hittime=20
ground.velocity =-3,-4
air.velocity=-1,-4
down.velocity = -3,-4
down.bounce = -4
p2stateno = 5130
;p2getp1state = 1

[State 1300, VarSet]
type = Varset
trigger1 = animelemtime(8) = 0
v = 36
value = var(36)+1

[State 1300, VarSet]
type = VarSet
triggerall = fvar(29) != 1
trigger1 = movecontact
fv = 29
value = 1

[State 1300]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
;Slide Kick B
;--------------------------------------------------------

[Statedef 1310]
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

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = time= 15
value = 8,0

[State 1310, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 5
anim = 1301
ID = 1301
pos = -30,0
postype = p1
removetime = -2
scale = 1,0.5
sprpriority = 10
ownpal = 1

[State 1310, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 7
anim = 1302
ID = 1302
pos = 20,0
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 1310]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 1310, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 7
y = 0

[State 1310, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 4
y = 0

[State 1310, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 2
y = 0

[State 1310, VelSet]
type = VelSet
trigger1 = animelem = 10
x = 0
y = 0

[State 1310]
type=HitDef
triggerall = var(36) <2
trigger1=hitcount < 1
trigger1=moveguarded < 1
attr = C, SA
damage=45,4
animtype=Hard
hitflag= MAFD
guardflag= MA
pausetime=8,8
sparkno = 2
sparkxy =-10,-5
hitsound = S2,2
guardsound = 6,0
ground.type=hard
ground.slidetime=15
ground.hittime=20
ground.velocity =-1,-5
air.velocity=-2,-4
down.velocity = -3,-4
down.bounce = -4
p2stateno = 5130
;p2getp1state = 1

[State 1310, VarSet]
type = Varset
trigger1 = animelemtime(8) = 0
v = 36
value = var(36)+1

[State 1310, VarSet]
type = VarSet
triggerall = fvar(29) != 1
trigger1 = movecontact
fv = 29
value = 1

[State 1310]
type = ChangeState
trigger1 = AnimTime = 0
value = 1313
ctrl = 1

;--------------------------------------------------------

[Statedef 1313]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 60
ctrl = 0
anim = 1303
sprpriority = 0
velset = 0,0
facep2 = 1

[State 1313, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 5
anim = 1301
ID = 1301
pos = 0,0
postype = p1
removetime = -2
scale = 1,0.5
sprpriority = 10
ownpal = 1

[State 1313, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 5
anim = 1304
ID = 1304
pos = 0,-15
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 1313, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 7
anim = 1304
ID = 1304
pos = 0,-20
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 1313, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 9
anim = 1304
ID = 1304
pos = 0,-25
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 1313]
type = PlaySnd
trigger1 = animelem = 5
value = 0,1

[State 1313, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 7
y = 0

[State 1313]
type = PlaySnd
trigger1 = animelem = 5
value = 0,0

[State 1313, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 7
y = 0

[State 1313]
type = PlaySnd
trigger1 = animelem = 7
value = 0,3

[State 1313, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 7
y = 0

[State 1313]
type = PlaySnd
trigger1 = animelem = 9
value = 0,1

[State 1313, VelSet]
type = VelSet
trigger1 = animelem = 11
x = 0
y = 0

[State 1313]
type=HitDef
trigger1=animelem = 5
trigger2=animelem = 6
trigger3=animelem = 7
trigger4=animelem = 8
trigger5=animelem = 9
trigger1=moveguarded < 1
attr = C, SA
damage=25,4
animtype=Hard
hitflag= MAF
guardflag= MA
pausetime=8,8
sparkno = 2
sparkxy =-28,-55
hitsound=S2,0
guardsound=S3,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-5
air.velocity = -1,-1

[State 1313]
type=HitDef
trigger1=animelem = 9
trigger1=moveguarded < 1
attr = C, SA
damage=45,4
animtype=Hard
hitflag= MAF
guardflag= MA
pausetime=8,8
sparkno = 2
sparkxy =-28,-55
hitsound=S1,6
guardsound=S4,0
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -5,-5

[State 1313]
type = ChangeState
trigger1 = AnimTime = 0
value = 12
ctrl = 1

;--------------------------------------------------------
;Slide Kick C
;--------------------------------------------------------

[Statedef 1320]
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

[State 1320, PlaySnd]
type = PlaySnd
trigger1 = time=15
value = 8,0

[State 1320, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 7
anim = 1301
ID = 1301
pos = -30,0
postype = p1
removetime = -2
scale = 1,0.5
sprpriority = 10
ownpal = 1

[State 1320, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 7
anim = 1302
ID = 1302
pos = 20,0
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1


[State 1320, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 7
y = 0

[State 1320]
type = PlaySnd
trigger1 = animelem = 4
value = 0,2

[State 1320, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 4
y = 0

[State 1320, VelSet]
type = VelSet
trigger1 = animelem = 10
x = 2
y = 0

[State 1320, VelSet]
type = VelSet
trigger1 = animelem = 11
x = 0
y = 0

[State 1320]
type=HitDef
triggerall = var(36) <2
trigger1=hitcount < 1
trigger1=moveguarded < 1
attr = C, SA
damage=45,4
animtype=Hard
hitflag= MAFD
guardflag= MA
pausetime=8,8
sparkno = 2
sparkxy =-10,-5
hitsound = S2,2
guardsound = 6,0
ground.type =Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2,-5
air.velocity = -1,-5
down.velocity = -3,-4
down.bounce = -4
p2stateno = 5130
;p2getp1state = 1

[State 1320, VarSet]
type = Varset
trigger1 = animelemtime(8) = 0
v = 36
value = var(36)+1

[State 1320, VarSet]
type = VarSet
triggerall = fvar(29) != 1
trigger1 = movecontact
fv = 29
value = 1

[State 1320]
type = ChangeState
trigger1 = AnimTime = 0
value = 1323
ctrl = 1

;--------------------------------------------------------

[Statedef 1323]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 60
ctrl = 0
anim = 1303
sprpriority = 0
velset = 0,0
facep2 = 1

[State 1323, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 5
anim = 1301
ID = 1301
pos = 0,0
postype = p1
removetime = -2
scale = 1,0.5
sprpriority = 10
ownpal = 1

[State 1323, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 5
anim = 1304
ID = 1304
pos = 0,-15
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 1323, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 7
anim = 1304
ID = 1304
pos = 0,-20
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 1323, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 9
anim = 1304
ID = 1304
pos = 0,-25
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 1323]
type = PlaySnd
trigger1 = animelem = 5
value = 0,1

[State 1323, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 4
y = 0

[State 1323]
type = PlaySnd
trigger1 = animelem = 5
value = 0,0

[State 1323, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 4
y = 0

[State 1323]
type = PlaySnd
trigger1 = animelem = 7
value = 0,3

[State 1323, VelSet]
type = VelSet
trigger1 = animelem = 8
x = 4
y = 0

[State 1323]
type = PlaySnd
trigger1 = animelem = 9
value = 0,1

[State 1323, VelSet]
type = VelSet
trigger1 = animelem = 11
x = 0
y = 0

[State 1323]
type=HitDef
trigger1=animelem = 5
trigger2=animelem = 6
trigger3=animelem = 7
trigger1=moveguarded < 1
attr = C, SA
damage=25,4
animtype=Hard
hitflag= MAF
guardflag= MA
pausetime=9,9
sparkno = 2
sparkxy =-28,-55
hitsound=S2,0
guardsound=S3,0
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2,-5
air.velocity = -1,-1

[State 1323]
type = ChangeState
trigger1 = AnimTime = 0
value = 1324
ctrl = 1

;--------------------------------------------------------

[Statedef 1324]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 60
ctrl = 0
anim = 1305
sprpriority = 0
velset = 0,0
facep2 = 1

[State 1324, Explod]
type = Explod
triggerall = time > 5
triggerall = time < 40
trigger1= animelem = 7
anim = 1301
ID = 1301
pos = -30,0
postype = p1
removetime = -2
scale = 1,0.5
sprpriority = 10
ownpal = 1

[State 1324, Explod]
type = Explod
trigger1= animelem = 2
anim = 1306
ID = 1306
pos = -7,-15
postype = p1
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 1324, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 7
y = 0

[State 1324]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 1324, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 4
y = 0

[State 1324, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 2
y = 0

[State 1324, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0
y = 0

[State 1324]
type=HitDef
trigger1=hitcount < 1
trigger1=moveguarded < 1
attr=C,SA
damage =65,5
animtype=Hard
hitflag= MAF
guardflag=MA
pausetime=17,7
sparkno = 2
sparkxy =-18,-55
hitsound=S2,2
guardsound=S3,0
ground.type=Trip
ground.slidetime=15
ground.hittime =20
ground.velocity=-8,-11
air.velocity=-8,-11
p2stateno = 5045
;p2getp1state = 1


[State 1324]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

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
