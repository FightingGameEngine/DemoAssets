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

;===============================================================================
;BAMF1
[StateDef 1000]
type = S
movetype = A
physics = S
poweradd= 60
anim = 1000
ctrl = 0
velset = 0,0

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0,]
type = Posset
trigger1 = time = 25
Triggerall = Facing = 1
x = -320
y = -100

[State 0,]
type = Posset
trigger1 = time = 25
Triggerall = Facing = -1
x = 320
y = -100

[State 0,]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, keepAnimBlank]
type = Changeanim
trigger1 = time = 25
value = 1000

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

;===============================================================================
;BAMF2
[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0, Posadd]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = -100

[State 0, Posadd]
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

;===============================================================================
;BAMF3
[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0, Posset]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320
y = -100

[State 0, Posset]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320
y = -100

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, P2Turn]
type = Turn
trigger1 = time = 25

[State 0, keepAnimBlank]
type = Changeanim
trigger1 = time = 25
value = 9801

[State 0, crtlset]
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

;===============================================================================
;BAMF4
[Statedef 1003]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = -320
y = 0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = 320
y = 0

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = S

[State 0, 1]
type = Changeanim
trigger1 = time = 39
value = 47

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, 1]
type = Changestate
trigger1 = time = 45
value = 0

;===============================================================================
;BAMF5
[Statedef 1004]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 2000, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 2000, 3]
type = velset
trigger1 = time = 25
x=0
y=0

[State 2000, 4]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = 0

[State 2000, 5]
type = Posadd
trigger1 = time = 25
triggerall = facing = -1
x = 200
y = 0

[State 2000, 6]
type = StateTypeSet
trigger1 = time = 25
statetype = S

[State 2000, 7]
type = Changeanim
trigger1 = time = 39
value = 47

[State 2000, 8]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 2000, 9]
type = ctrlset
trigger1 = time = 38
value = 1

[State 2000, 10]
type = Changestate
trigger1 = time = 45
value = 0


;===============================================================================
;BAMF6
[Statedef 1005]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 2000, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 2000, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 2000, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320
y = 0

[State 2000, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320
y = 0

[State 2000, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = S

[State 2000, 1]
type = Changeanim
trigger1 = time = 39
value = 47

[State 2000, 1]
type = turn
trigger1 = time = 25

[State 2000, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 2000, 1]
type = Changestate
trigger1 = time = 45
value = 0


;===============================================================================
;Air_BAMF1
[Statedef 1006]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = -320
y = 0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = 320
y = 0

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 47

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 0

;===============================================================================
;Air_BAMF2
[Statedef 1007]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = 0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -200
y = 0

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = 320

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 47

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 0

;===============================================================================
;Air_BAMF3
[Statedef 1008]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0, Posset]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320
y = 0

[State 0, Posset]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320
y = 0

[State 0, P2Turn]
type = Turn
trigger1 = time = 25

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;Air_BAMF4
[Statedef 1009]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = -320

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = 320

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;Air_BAMF5
[Statedef 1011]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 200

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -200

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;Air_BAMF6
[Statedef 1012]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

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

[State 0, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320

[State 0, P2Turn]
type = turn
trigger1 = time = 25

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;Teleport Attack
[statedef 1100]
type = A
movetype = A
physics = S
anim = 1100
poweradd = 50
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2
volume = 20

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
supermove
pausemove

[State 0, Helper]
type = Helper
trigger1 = time = 4
helpertype = normal ;player
stateno = 1010
pos = -10,20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Posset]
type = Posset
trigger1 = time = 1
x = 10
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = S9,1
ignorehitpause = 1

[State 0, ]
type = Gravity
trigger1 = time >= 12
ignorehitpause = 0

[State 0, ]
type = VelSet
trigger1 = time = [12,22]
x = 10

[State 0, ]
type = VelSet
trigger1 = time = [12,17]
y = -1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, HitDef]
type = Hitdef
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 80,5
sparkno = 2
guard.sparkno = 41
sparkxy = 10,-40
hitsound   = 5,1
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 20
guard.slide = 5
ground.hit = 20
air.hittime = 20
ground.velocity = 0,-3
guard.velocity = -10
air.velocity = -1,-2
airguard.velocity = -8,-2
sprpriority = 1
fall = 1
air.fall = 1

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0 && time > 12
value = 1110
ctrl = 0

;===============================================================================
;Teleport Attack End
[statedef 1110]
type = C
movetype = I
physics = S
anim = 1110
velset = 10,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;===============================================================================
;Sword Attack1
[statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
poweradd = 50
velset = 6,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S13,1

[State 0, Posset]
type = Posset
trigger1 = time = 1 && P2BodyDist X > 24
;Triggerall = Facing = 1
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime = 10,10
animtype = heavy          ;light,medium,hard,back,up,diagup
air.animtype = heavy
damage = 60,0
sparkno = S9993
sparkxy = -20,-60
hitsound = S5,1 + ((Random * 3) / 1000)
guardsound = S5,4
ground.type = trip
ground.slide
ground.hit
air.hittime = 20
ground.velocity = -6,-2
air.velocity = 0,0
sprpriority = 2
fall = 1
fall.recover = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 52
ctrl = 1

;===============================================================================
;Sword Attack2
[statedef 1210]
type = S
movetype = A
physics = S
anim = 1210
poweradd = 50
velset = 6,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S13,1

[State 0, Posset]
type = Posset
trigger1 = time = 1
y = 0

[State 0, Explod]
type = Explod
trigger1 = animtime = 0
anim = 1230
pos = -40,-40
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermove = 0
sprpriority = 1
ontop = 1
removeongethit = 0
velocity = 0, 4

[State 0, Posset]
type = Posset
trigger1 = time = 1 && P2BodyDist X > 24
;Triggerall = Facing = 1
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime= 4,24
animtype = medium
air.animtype = medium
damage = 40,0
sparkno = S9993
sparkxy = -30,-60
hitsound = S5,1 + ((Random * 3) / 1000)
guardsound = S5,4
ground.type = high
ground.velocity = -1,0
air.velocity = 0,0
sprpriority = 2
fall = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 7
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime = 4,10
animtype = heavy
air.animtype = heavy
damage = 40,0
sparkno = S9994
sparkxy = -30,-60
hitsound = S5,1 + ((Random * 3) / 1000)
guardsound = S5,4
ground.type = heavy
ground.slide
ground.hit
air.hittime = 20
ground.velocity = -6,-1
air.velocity = -6,-1
sprpriority = 2
fall = 1
fall.recover = 0

[State 0, landing sound]
type = PlaySnd
trigger1 = animelem = 7
value = S8,1
volume = 255

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 8
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;===============================================================================
;Sword Attack3
[statedef 1220]
type = S
movetype = A
physics = S
anim = 1220
velset = 6,0
poweradd = 50
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S13,1

[State 0, Posset]
type = Posset
trigger1 = time = 1 && P2BodyDist X > 24
;Triggerall = Facing = 1
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime= 4,24
animtype = medium
air.animtype = medium
damage = 40,2
sparkno = S9993
sparkxy = -20,-60
hitsound = S5,1 + ((Random * 3) / 1000)
guardsound = S5,4
ground.type = high
ground.velocity = -1,0
air.velocity = 0,0
sprpriority = 2
fall = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 9
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime= 4,24
animtype = low
air.animtype = low
damage = 40,2
sparkno = S9994
sparkxy = -30,-60
hitsound = S5,1 + ((Random * 3) / 1000)
guardsound = S5,4
ground.type = low
ground.velocity = -1,0
air.velocity = 0,0
sprpriority = 2
fall = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 15
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime = 8,12
animtype = heavy
air.animtype = heavy
damage = 45,0
sparkno = S9993
sparkxy = -30,-60
hitsound = S5,1 + ((Random * 3) / 1000)
guardsound = S5,4
ground.type = heavy
ground.slide
ground.hit
air.hittime = 20
ground.velocity = -6,-1
air.velocity = -6,-1
sprpriority = 2
fall = 1
fall.recover = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===============================================================================
;BAMF! Effect Helper
;===============================================================================
; Special Helper - Bamf! effect
[StateDef 1010]
type = A
movetype = A
physics = C
anim = 1000
ctrl = 0

[State 0, Explod] ;Purple Light Effect
type = Explod
triggerall = parent, palno != 5
trigger1 = time=0
anim = 9991
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod] ;Orange Light Effect
type = Explod
triggerall = parent, palno>4
trigger1 = time=0
anim = 9992
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 0, Explod] ;Cloud Effect
type = Explod
trigger1 = time=0
anim = 1012
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = parent, AnimTime = 0

;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes) (taken with permission from McCready's StrongGuy char)
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

;[State 8900, 2]
;type = Explod
;triggerall = (NumExplod(8900) < 1)
;trigger1 = Time = 0
;persistent = 0
;anim = 8900
;ID = 8900
;postype = left
;pos = 0, 0
;velocity = 0, 0
;accel = 0, 0
;removetime = -2
;sprpriority = -4
;bindtime = -1
;ontop = 1
;ownpal = 1
;supermovetime = 1000
;pausemovetime = 1000
;ignorehitpause = 1

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

;---------------------------------------------------------------------------
;K.O.?
[Statedef 8901]
type = S
movetype = I
physics = N
anim = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,2
