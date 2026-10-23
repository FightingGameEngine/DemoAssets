; States file for Ultron -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 20
anim = 200
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77200

[State 200, c]
type = removeexplod
trigger1 = !time
id = 102

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 200, e]
type = removeexplod
trigger1 = !time
id = 107

[State 200, f]
type = removeexplod
trigger1 = !time
id = 2107

[State 200, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = -15,-120
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -15,-120
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 200, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 53, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
guard.sparkno = -1
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 200, 1]
type = HitDef
triggerall = var(8)!= 0
trigger1 = time = 0
attr = S, NA
damage = 33, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = -1
guard.sparkno = -1
hitsound = 5, 0
guardsound = 6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 8, 0]
type = ChangeState
triggerall = var(8)= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 210

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 230

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 45

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77210

[State 210, c]
type = removeexplod
trigger1 = !time
id = 102

[State 210, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 210, e]
type = removeexplod
trigger1 = !time
id = 107

[State 210, f]
type = removeexplod
trigger1 = !time
id = 2107

[State 210, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = -10,-80; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -10,-80; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 210, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = S, NA
damage = 75
hitflag = MAF
guardflag = MA
pausetime = 7,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
sparkxy = -1
animtype = Medium
ground.type = High
ground.slidetime = 2
ground.hittime  = 7
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
ground.cornerpush.veloff = -3

[State 210, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = S, NA
damage = 55
hitflag = MAF
guardflag = MA
pausetime = 7,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
sparkxy = -1
animtype = Medium
ground.type = High
ground.slidetime = 2
ground.hittime  = 7
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
ground.cornerpush.veloff = -3

[State 8, 0]
type = ChangeState
triggerall = var(8)= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 220

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 240

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 230, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77220

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 15, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 220, 3x]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30,1

[State 210, velset]
type = velset
triggerall = var(8)= 0
trigger1 = time= [11,22]
x = 3
y = 0
[State 210, velset]
type = velset
triggerall = var(8)!= 0
trigger1 = time= [11,22]
x = 4
y = 0


[State 100, propulsor]
type = Explod
triggerall = !NumExplod(102)
trigger1 = animelem = 3
anim = 102
id = 102
name = "propulsor"
pos = -45,35
postype = p1
facing = 1
bindtime = 13
sprpriority = -4
ownpal = 1
removeongethit = 1
removetime = 15
ownpal = 1

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(225)
trigger1 = animelem = 3
anim = 225
id = 225
name = "propulsor"
pos = 30,2
postype = p1
facing = 1
bindtime = 13
sprpriority = 4
ownpal = 1
removeongethit = 1
removetime = 15
ownpal = 1

[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999


[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 35
ignorehitpause =1


[State 220, c]
type = removeexplod
trigger1 = !time
id = 102

[State 220, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 220, e]
type = removeexplod
trigger1 = !time
id = 107

[State 220, f]
type = removeexplod
trigger1 = !time
id = 2107

[State 220, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 210, 2]
type = HitDef
triggerall = var(8)= 0
trigger1 = time = 0
attr = S, NA
animtype  = Heavy
damage    = 97
guardflag = MA
hitflag = MAF
pausetime = 10,12
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 12
ground.velocity = -11 ,-2
guard.velocity = -5
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
ground.cornerpush.veloff = -12
fall = 1
air.fall=1

[State 210, 2]
type = HitDef
triggerall = var(8)!= 0
trigger1 = time = 0
attr = S, NA
animtype  = Heavy
damage    = 77
guardflag = MA
hitflag = MAF
pausetime = 10,12
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 12
ground.velocity = -11 ,-2
guard.velocity = -5
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
ground.cornerpush.veloff = -12
fall = 1
air.fall=1


[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 5

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77230

[State 230, c]
type = removeexplod
trigger1 = !time
id = 102

[State 230, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 230, e]
type = removeexplod
trigger1 = !time
id = 107

[State 230, f]
type = removeexplod
trigger1 = !time
id = 2107

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = -10,-40 ; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -10,-40 ; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 230, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = C, NA
damage = 56
guardflag = MAFD
pausetime = 4,6
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Light
ground.type = Low
ground.slidetime = 3
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
ground.cornerpush.veloff = -2


[State 230, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = C, NA
damage = 36
guardflag = MAFD
pausetime = 4,6
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Light
ground.type = Low
ground.slidetime = 3
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
ground.cornerpush.veloff = -2

[State 8, 0]
type = ChangeState
triggerall = var(8)= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 240

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 210

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 10

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77240

[State 240, c]
type = removeexplod
trigger1 = !time
id = 102

[State 240, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 240, e]
type = removeexplod
trigger1 = !time
id = 107

[State 240, f]
type = removeexplod
trigger1 = !time
id = 2107

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 20,-90; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 20,-90; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 240, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = S, NA
damage = 75
guardflag = MA
pausetime = 7,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.type = High
ground.slidetime = 2
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
ground.cornerpush.veloff = -3

[State 240, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = S, NA
damage = 55
guardflag = MA
pausetime = 7,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.type = High
ground.slidetime = 2
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6
ground.cornerpush.veloff = -3

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 250

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 220

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77250

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 30, 1
channel=4

[State 210, velset]
type = velset
triggerall = var(8)!= 0
trigger1 = animelem = 2
x = 10
y = 0

[State 100, propulsor]
type = Explod
triggerall = var(8)!= 0
triggerall = !NumExplod(102)
trigger1 = animelem = 2
anim = 102
id = 102
name = "propulsor"
pos = -25,-45
postype = p1
facing = 1
bindtime = 13
sprpriority = -4
ownpal = 1
removeongethit = 1
removetime = 15
ownpal = 1

[State 100, propulsor]
type = Explod
triggerall = var(8)= 0
triggerall = !NumExplod(77700)
trigger1 = animelem = 2
anim = 77700
id = 77700
name = "propulsor"
postype = P1
pos = -15,-15
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 22

[State 777, es]
type = Explod
triggerall = var(8)!= 0
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 15, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 777, es]
type = Explod
triggerall = var(8)= 0
trigger1 = !time
sprpriority = 10
anim = 62
pos = 0, 3
removeongethit = 1
scale = .57,.57
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 200, EnvShake]
type = EnvShake
triggerall = var(8)= 0
Trigger1 = animelem = 7
time = 12
ampl = 4
freq = 85


[State 250, c]
type = removeexplod
trigger1 = !time
id = 102

[State 250, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 250, e]
type = removeexplod
trigger1 = !time
id = 107

[State 250, f]
type = removeexplod
trigger1 = !time
id = 2107

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 15,-49
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 15,-49
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 250, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = S, NA
damage = 95
guardflag = MA
pausetime = 6,18
hitsound = S2,2
guardsound = S3,0
sparkxy = -1
sparkno = -1
guard.sparkno = -1
animtype = Heavy
ground.type = Low
ground.slidetime = 4
ground.hittime  = 5
ground.velocity = -16
guard.velocity = -9
air.velocity = -4,-8
ground.cornerpush.veloff = -2


[State 250, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = S, NA
damage = 75
guardflag = MA
pausetime = 6,18
hitsound = S2,2
guardsound = S3,0
sparkxy = -1
sparkno = -1
guard.sparkno = -1
animtype = Heavy
ground.type = Low
ground.slidetime = 4
ground.hittime  = 5
ground.velocity = -16
guard.velocity = -9
air.velocity = -4,-8
ground.cornerpush.veloff = -2

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
 ; Stand Hard Kick  (near)
[StateDef 251]
anim = 251
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77251

[State 251, c]
type = removeexplod
trigger1 = !time
id = 102

[State 251, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 251, e]
type = removeexplod
trigger1 = !time
id = 107

[State 251, f]
type = removeexplod
trigger1 = !time
id = 2107

[State 251, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 251, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 777, hdf] ; Launcher FX
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8718
ID = 8718
name = "launcher"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 251, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = S, NA
damage = 95
guardflag = MA
hitflag = MAF
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = DiagUp
ground.type = High
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = 0 ,-12.2
guard.velocity = -18
air.type = low
air.velocity = 0,-16
yaccel = 0.66
p2stateno = 226
p2facing = 1
ground.cornerpush.veloff = -8

[State 251, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = S, NA
damage = 75
guardflag = MA
hitflag = MAF
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = DiagUp
ground.type = High
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = 0 ,-12.2
guard.velocity = -18
air.type = low
air.velocity = 0,-16
yaccel = 0.66
p2stateno = 226
p2facing = 1
ground.cornerpush.veloff = -8


[State 250, 3]
type = ChangeState
triggerall = (Movehit) && (time = [8,12])
trigger1 = command = "holdup"
trigger2 = var(7)
value = 11045
ctrl = 1

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 251, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 20

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77400

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = 15,-60 ; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 15,-60 ; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 400, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 400, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6


[State 400, 3]
type = CtrlSet
trigger1 = Time = 16
value = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 410

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 430

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 45

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77410

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, grunt]
type = PlaySnd
trigger1 = animelem = 4
value = 45,7
channel=0

[State 620, xplod]
type = explod
trigger1 = animelem = 4
ID = 621
anim = 621
name = "airexpl"
postype = P1
pos = -45,25
ownpal = 1
bindtime= -1
sprpriority = 6
removetime=10
removeongethit=1
facing = 1


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 10,-60; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 10,-60; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 410, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = C, NA
damage = 75
guardflag = L
pausetime = 7,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.type = Low
ground.slidetime = 2
ground.hittime  = 5
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6
ground.cornerpush.veloff = -2

[State 410, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = C, NA
damage = 55
guardflag = L
pausetime = 7,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.type = Low
ground.slidetime = 2
ground.hittime  = 5
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6
ground.cornerpush.veloff = -2

[State 8, 0]
type = ChangeState
triggerall = var(8)= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 420

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 440

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1



[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 100
ctrl = 0
anim = 420
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77420

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 777, hdf] ; Launcher FX
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8718
ID = 8718
name = "launcher"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 0,enemynear,const(size.head.pos.y)
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 420, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = C, NA
damage = 90
animtype  = DiagUp
guardflag = MA
hitflag = MAF
priority = 4, Hit 
pausetime = 19,16;17,14
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
sparkxy = -1
fall = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = 0 ,-12.2
guard.velocity = -4
air.type = low
air.velocity = 0,-16
yaccel = 0.66
p2stateno = 226
p2facing = 1
ground.cornerpush.veloff = -10

[State 420, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = C, NA
damage = 70
animtype  = DiagUp
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 19,16;17,14
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
sparkxy = -1
fall = 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = 0 ,-12.2
guard.velocity = -4
air.type = low
air.velocity = 0,-16
yaccel = 0.66
p2stateno = 226
p2facing = 1
ground.cornerpush.veloff = -10

[State 250, 3]
type = ChangeState
triggerall = (Movehit) && (time = [8,12])
trigger1 = command = "holdup"
trigger2 = var(7)
value = 11045
ctrl = 1

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 420, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 5

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77430

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = 20,-10
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 20,-10
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1
[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [0,3]
trigger1 = movecontact
value = 410

[State 430, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = C, NA
damage = 40
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
sparkxy = -1
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = C, NA
damage = 20
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
sparkxy = -1
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3


[State 400, 3]
type = CtrlSet
trigger1 = Time = 16
value = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 440

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 410

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77440

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 15,-40
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 15,-40
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 440, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = C, NA
damage = 60
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-6

[State 440, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = C, NA
damage = 40
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-6


[State 8, 0]
type = ChangeState
triggerall = var(8)= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 450

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 420

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
anim = 450
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77450


[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 15,-30
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 15,-30
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 450, 3]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = C, NA
damage    = 90
sprpriority = 6
p1sprpriority = 6
hitflag = MAFD
guardflag = L
pausetime = 13,8
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = S2, 2
guardsound = S3, 0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,-4
air.velocity = 0,-3
guard.velocity = -5
fall = 1
envshake.time = 7
envshake.ampl = 4
fall.envshake.time = 7
fall.envshake.ampl = -4
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -15

[State 450, 3]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = C, NA
damage    = 70
sprpriority = 6
p1sprpriority = 6
hitflag = MAFD
guardflag = L
pausetime = 13,8
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = S2, 2
guardsound = S3, 0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,-4
air.velocity = 0,-3
guard.velocity = -5
fall = 1
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -15

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1


[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------
; Falling from air attack
[Statedef 660]
type    = A
movetype= I
physics = A
anim = 660
ctrl = 1;Var(3)
sprpriority = 1

[State 660, Turn]
type = Turn
trigger1 = P2Dist X < -5

[State 660, 1]
type = VelSet
trigger1 = command = "holdback"
x = -2.5

[State 660, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = 2.5

[State 660, VelSet]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 660, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77600

[State 200, c]
type = removeexplod
trigger1 = !time
id = 110

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2110


[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 101, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 200, c]
type = removeexplod
trigger1 = !time
id = 120

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2120

[State 200, c]
type = removeexplod
trigger1 = !time
id = 77700
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77701
[State 200, c]
type = removeexplod
trigger1 = !time
id = 77702
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77703


[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 600, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = A, NA
damage =45
guardflag = HA
pausetime = 6,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -5
guard.velocity = -17
airguard.velocity = -6
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-9,-8)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 600, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = A, NA
damage =25
guardflag = HA
pausetime = 6,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -5
guard.velocity = -17
airguard.velocity = -6
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-9,-8)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)= 0
triggerall = var(7)
triggerall = var(28) = [0,4]
trigger1 = movecontact
value = 610

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,4]
trigger1 = movecontact
value = 630

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1



[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 9001
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 45

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77610

[State 200, c]
type = removeexplod
trigger1 = !time
id = 110

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2110


[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 101, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 200, c]
type = removeexplod
trigger1 = !time
id = 120

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2120

[State 200, c]
type = removeexplod
trigger1 = !time
id = 77700
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77701
[State 200, c]
type = removeexplod
trigger1 = !time
id = 77702
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77703


[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = HA
hitflag = MAFD
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.type = Low
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -5,0
guard.slidetime = 13
guard.velocity = -8.6
airguard.velocity = -5,0
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-6)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 610, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = HA
hitflag = MAFD
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.type = Low
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -5,0
guard.slidetime = 13
guard.velocity = -8.6
airguard.velocity = -5,0
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-6)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 8, 0]
type = ChangeState
triggerall = var(8) = 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 620

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 640

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1

[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 9001
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77620

[State 200, c]
type = removeexplod
trigger1 = !time
id = 110

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2110


[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 101, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 200, c]
type = removeexplod
trigger1 = !time
id = 120

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2120

[State 200, c]
type = removeexplod
trigger1 = !time
id = 77700
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77701
[State 200, c]
type = removeexplod
trigger1 = !time
id = 77702
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77703


[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 410, grunt]
type = PlaySnd
trigger1 = animelem = 3
value = 45,7
channel=0

[State 1350, x]
type = PosFreeze
trigger1 = time = [7,18]

[State 1350, y]
type = VelMul
trigger1 = Time > 19
x = .02
y = .05

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 620, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = A, NA
damage = 82
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Heavy
ground.type = High
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7 ,0
airguard.velocity = -4.8,-.8
air.type = High
air.velocity = -5,-2
air.hittime = 20
p2facing = 1

[State 620, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = A, NA
damage = 62
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Heavy
ground.type = High
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7 ,0
airguard.velocity = -4.8,-.8
air.type = High
air.velocity = -5,-2
air.hittime = 20
p2facing = 1

[State 620, xplod]
type = explod
trigger1 = StateNo = 620
trigger1 = animelem = 5
ID = 621
anim = 621
name = "airexpl"
postype = P1
pos =-5,-5
ownpal = 1
bindtime= -1
sprpriority = 6
facing = 1

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1

[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 9001
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 10

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77630

[State 200, c]
type = removeexplod
trigger1 = !time
id = 110

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2110

[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 101, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 200, c]
type = removeexplod
trigger1 = !time
id = 120

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2120

[State 200, c]
type = removeexplod
trigger1 = !time
id = 77700
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77701
[State 200, c]
type = removeexplod
trigger1 = !time
id = 77702
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77703


[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1
[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 630, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -5
guard.velocity = -17
airguard.velocity = -6
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-9,-8)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 630, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -5
guard.velocity = -17
airguard.velocity = -6
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-9,-8)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 8, 0]
type = ChangeState
triggerall = var(8)= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 640

[State 8, 0]
type = ChangeState
triggerall = var(8)!= 0
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 610

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1

[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 9001
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05


[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77640

[State 200, c]
type = removeexplod
trigger1 = !time
id = 110

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2110


[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 101, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 200, c]
type = removeexplod
trigger1 = !time
id = 120

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2120

[State 200, c]
type = removeexplod
trigger1 = !time
id = 77700
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77701
[State 200, c]
type = removeexplod
trigger1 = !time
id = 77702
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77703


[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1


[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 =moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 640, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = A, NA
damage = 60
guardflag = HA
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -9
guard.velocity = -8.5
airguard.velocity = -5,0
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-6)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 640, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
animtype = Medium
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -9
guard.velocity = -8.5
airguard.velocity = -5,0
air.type = Low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-6)
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(28) = [0,3]
trigger1 = movecontact
value = 650

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1

[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 9001
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05


[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1=Time = 0
value = 77650

[State 200, c]
type = removeexplod
trigger1 = !time
id = 110

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2110


[State 101, c]
type = removeexplod
trigger1 = !time
id = 102

[State 101, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 200, c]
type = removeexplod
trigger1 = !time
id = 120

[State 200, d]
type = removeexplod
trigger1 = !time
id = 2120

[State 200, c]
type = removeexplod
trigger1 = !time
id = 77700
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77701
[State 200, c]
type = removeexplod
trigger1 = !time
id = 77702
[State 200, d]
type = removeexplod
trigger1 = !time
id = 77703


[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.x)),(enemynear ,const(size.head.pos.x))),ifelse(p2statetype=A,(enemynear ,const(size.mid.pos.y)),(enemynear ,const(size.head.pos.y)))
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 650, HitDef]
type = HitDef
triggerall = var(8)= 0
trigger1 = Time = 0
attr = A, NA
damage = 90
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 17
ground.hittime = 21
ground.velocity = -9
guard.velocity = -13
airguard.velocity = -6
air.type = Low
air.velocity = -7,13
p2facing = 1
air.fall=1

[State 650, HitDef]
type = HitDef
triggerall = var(8)!= 0
trigger1 = Time = 0
attr = A, NA
damage = 70
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 17
ground.hittime = 21
ground.velocity = -9
guard.velocity = -13
airguard.velocity = -6
air.type = Low
air.velocity = -7,13
p2facing = 1
air.fall=1

[State 0, NotHitBy]
type = NotHitBy
triggerall = var(8)= 0
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1

[State 1350, Fly]
type = ChangeState
triggerall = var(5) = 1
trigger1  = AnimTime = 0
value = 9001
ctrl = 1

[State 1350, x]
type = PosFreeze
triggerall = var(5) = 1
trigger1 = time = [0,18]

[State 1350, y]
type = VelMul
triggerall = var(5) = 1
trigger1 = Time > 19
x = -.02
y = -.05

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
ctrl = 1

