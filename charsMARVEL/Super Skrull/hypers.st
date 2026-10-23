; States file for {character} -- Hypers
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
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper 1 -- Mega beam
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0

[State 191, 1]
type = PlaySnd
trigger1 = Time = 0
value = 101,4

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
ID = 918
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = AnimElem = 2
time = 40
sound = S10,1
pos = 20,-70
darken = 1
poweradd = -1000

;-------------------
; DCvM hyper portrait/BG
[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superBG]
type = Helper
trigger1 = AnimElem = 3
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3110, Helper]
type = Helper
trigger1 = AnimElem = 1
name = "megabeam"
ID = 3010
stateno = 3010
pos = 0,0;-125
;size.yscale = 5.0
ownpal = 1
supermove

[State 3110, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Hyper 1 - beam helper
[StateDef 3010]
type = A
movetype = A
physics = C
anim = 3010
ctrl = 0
sprpriority = 2

[State 3000, portraitBG]
type = Explod
trigger1 = AnimElem = 1
anim = 3001
ID = 3001
pos = 0,0
postype = p1
bindtime = -1
removetime = 80
;supermove = 999
;pausemovetime = 999
sprpriority = -2
ownpal = 1

[State 3010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X
y = parent, Pos Y

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S10,10

[State 3010, noreversal]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3010, noreversal2]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3010, hitdef]
type = HitDef
trigger1 = TimeMod = 10,0
attr = S,HA
hitflag = MAF
guardflag = MAF
damage = 30,5
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,75
animtype = Heavy
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8
kill = 1
guard.kill = 1
fall.kill = 1
palfx.time = 25
palfx.add = 0,64,0

[State 3115, DestroySelf]
type = DestroySelf
trigger1 = Time = 80

