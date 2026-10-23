; States file for {character} -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   2: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; RUN_FWD
;Project X Run
; RUN_FWD
[Statedef 100]
type    = S
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = 9, 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
value = S8,2

[State 100]
type = EnvShake
trigger1 = animelem = 4
trigger2 = animelem = 8
time = 5
ampl = -2
freq = 50
phase = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
triggerall = !Var(59)
trigger1 = command != "holdfwd";Time = 135
value = 0
ctrl = 1

[State 100, 4]
type = ChangeState
triggerall = Var(59)
trigger1 = time > 15
value = 0
ctrl = 1

; RUN_BKWD
[Statedef 105]
type    = S
movetype = I
physics = N
anim = 105
sprpriority = 1
velset = -6, 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,3

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 105, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8,2

[State 105]
type = EnvShake
trigger1 = animelem = 2
time = 5
ampl = -2
freq = 50
phase = 1


[State 52, Landing Sound]
type = PlaySnd
trigger1 = Time = 18
value = S8,1

[State 52]
type = Explod
trigger1 = Time = 18
anim = F8510
sprpriority = -2
pos = -15,0
ownpal = 1



[State 100, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


 ;

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2] ;Omega Red Life Drain
type = lifeadd
triggerall = roundstate = 2
triggerall = stateno != [120,159]
triggerall = stateno != [5000,5999]
triggerall = stateno != 7730
triggerall = life < 1000
triggerall = life > 100
triggerall = var(10) < 300
trigger1 = enemynear, name = "Omega Red"
trigger1 = timemod = 20,0
value = -1

[State 0, PowerSet]
type = PowerSet
triggerall = enemynear, name ="Trainingroom"
trigger1 = power != 3000
value = 3000

[State 0, StopSnd]
type = StopSnd
trigger1 = roundstate =2
channel = 10
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno != 195
channel = 9
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno != 193
channel = 3
ignorehitpause = 1

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State 0, LifeAdd]
type = LifeAdd
triggerall = life < 1500
triggerall = life > 49
triggerall = numexplod(3301) > 0
trigger1 = timemod = 5,0
value = 1


[State 0, VarAdd]
type = VarAdd
triggerall = stateno != [120,159]
triggerall = stateno != [5000,5999]
triggerall = life < 1000
triggerall = life > 49
triggerall = var(10) < 300
trigger1 = timemod = 20,0
v =  10   ;fv =
value = 1

[State -2]
type = AfterImage
trigger1 = numexplod(3301)>0 && Time%80 = 0
time = 80
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast = 55,250,50
PalAdd = 0, 50, 0
PalMul = 1,1,1
trans = none
Length = 20
FrameGap = 4

[State -2, Set Powered Up Attack]
type = AttackMulSet
trigger1 =  var(11) = 3
value = 1.1

[State -2, Set Powered Up Attack]
type = AttackMulSet
trigger1 =  var(11) = 0
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = var(11)!= 0 && numexplod(3301) = 0
v = 11
value = 0

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3301)>0
trigger1 = lose
id = 3301

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3302)>0
trigger1 = lose
id = 3302

[State -2, VarSet]
type = VarSet
trigger1 = ctrl && var(41) = 1
v = 41
value = 0

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 4,0


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
persistent = 0
ID = 60
anim = F8510;60
postype = p1
pos = 0,0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 2

; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1

