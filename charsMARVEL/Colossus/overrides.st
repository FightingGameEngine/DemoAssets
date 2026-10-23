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
sprpriority = 1
velset = 4.8, 0
ctrl = 0

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 100


[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 5
value = 20,0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, EnvShake]
type = EnvShake
triggerall = anim = 100
trigger1 = animelem = 2
trigger2 = animelem = 5
time = 5
freq = 30
ampl = -2


[State 0, ChangeState]
type = ChangeState
trigger1 = command = "x"
value = 200
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "y"
value = 210
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "z"
value = 220
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "a"
value = 230
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "b"
value = 240
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "c"
value = 250
ctrl = 0
;anim =
;ignorehitpause =
;persistent =


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
sprpriority = 1
velset = -4, 0
ctrl = 0

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 105


[State 100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 105,0

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 0, Explod]
type = Explod
trigger1= timemod = 5,1
anim = 62
ID = 62
pos = 20,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
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

[State 3000,7]; cor do modo blindado
type = PalFX
triggerall = life > 0
trigger1 = (gametime%6)=0 && numexplod(3202)=1
time = 50
add = 20,20,40
color = 128
sinadd = 60,60,80,10
ignorehitpause=1

[State 0, DefenceMulSet]
type = DefenceMulSet
trigger1 = numexplod(3202)=1
value = 0.9

[State 0, DefenceMulSet]
type = DefenceMulSet
trigger1 = numexplod(3202)=0
value = 1
;ignorehitpause =
;persistent =



[State -2, VarSet]
type = VarSet
trigger1 = ctrl && var(41) = 1
v = 41    ;fv = 10
value = 0

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
value = 171,11

[State -2, superjump opponent locator]
type = Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1

; Super Armor controllers
[State -3, Increment Counter]
type = VarAdd
trigger1 = Stateno = 9000
v = 4
value = 5

[State -3, Decrement Counter]
type = VarAdd
trigger1 = (StateNo != 9000) && (Var(4) > 0)&& (MoveType != H)
v = 4
value = -1
ignorehitpause = 1

[State -3, Save StateNo]
type = VarSet
trigger1 = (MoveType != H) && (StateNo != 9000)
var(5) = StateNo

[State -3, Save Ctrl]
type = VarSet
trigger1 = (MoveType != H) && (StateNo != 9000)
var(6) = Ctrl

[State -3, Record Turn]
type = VarSet
triggerall = WinKO
trigger1 = Anim = [5,6]
v = 18
value = 1



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



;--------------------------------


; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 0) && (var(50) = 0)
value = 171,10

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 0
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

