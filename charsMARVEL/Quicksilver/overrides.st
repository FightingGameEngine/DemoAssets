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
velset = 13,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = timemod = 6,1
value = 171,0

[State 0, Explod]
type = Explod
trigger1 = timemod = 6,1
anim = 918
ID =  918
pos = -30,5
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4


[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S8100,1

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


; RUN_FWD
[Statedef 105]
type    = S
movetype = I
physics = N
anim = 105
sprpriority = 1
velset = -25,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,11

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 918
ID =  918
pos = -30,5
facing = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit = 0
;ignorehitpause =
;persistent =
[state 1101, twister]
type = afterimage
trigger1 = time = 0
time = -1
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast =  105,105,105;255
PalAdd = 0, 0, 0
PalMul = 1,1,1
trans = add1;AS250D250;none
Length = 30
FrameGap = 4

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0
y = 0

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

[State 0, PowerSet]
type = PowerSet
triggerall = enemynear, name ="Trainingroom"
trigger1 = power != 3000
value = 3000

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

;[State -2, fall landing sound]   ; custom fall-landing sound
;trigger1 = stateno = [5100, 5110]
;trigger1 = Time = 1
;type = PlaySnd
;persistent = 0
;value = 8,2

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


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno !=3101 && numexplod(3102)>0
id = 3102
;ignorehitpause =
;persistent =



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
anim = 60
postype = p1
pos = 7, 3
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
value = 8, 1






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


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------

