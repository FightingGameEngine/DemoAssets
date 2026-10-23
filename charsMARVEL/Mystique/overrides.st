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
[Statedef 100]
type    = S
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[state 100, Playsnd]
type = Playsnd
trigger1 = animelem  = 3
trigger2 = animelem  = 6
trigger3 = animelem  = 9
trigger4 = animelem  = 12
trigger5 = animelem  = 15
trigger6 = animelem  = 18
trigger7 = animelem  = 21
trigger8 = animelem  = 24
trigger9 = animelem  = 27
trigger10 = animelem  = 30
trigger11 = animelem  = 33
trigger12 = animelem  = 36
trigger13 = animelem  = 39
trigger14 = animelem  = 42
trigger15 = animelem  = 45
trigger16 = animelem  = 48
trigger17 = animelem  = 51
trigger18 = animelem  = 54
trigger19 = animelem  = 57
trigger20 = animelem  = 60
trigger21 = animelem  = 63
trigger22 = animelem  = 66
trigger23 = animelem  = 69
trigger24 = animelem  = 70
trigger25 = animelem  = 72
value = 0,13



;[State 100, lines]
;type = Explod
;trigger1 = timemod = 3,1
;anim = 113
;ID = 113
;removeongethit = 1
;removetime = 60
;vel = -10-ceil(random/20), 0
;postype = p1
;pos = -20, -80
;random = 0,80
;xscale = 0.5
;yscale = 0.5
;sprpriority = -3
;bindtime = 1
;ownpal = 1

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

;[State -2, gethits]         ; custom gethit sounds
;type = PlaySnd
;triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
;trigger1 = anim = 5002  ; standing hard hit high
;trigger2 = anim = 5012  ; stand hard hit low
;trigger3 = anim = 5022  ; crouching hard hit
;trigger4 = anim = 5030  ; air hit
;trigger5 = anim = 5070  ; tripped
;persistent = 0
;value = 4,0


[State -2, VarSet] ;basics link combo
type = VarSet
trigger1 = ctrl && var(41) = 1
v = 41    ;fv = 10
value = 0


[State -2, VarSet] ;special link combos
type = VarSet
trigger1 = ctrl && var(42) = 1
v = 42    ;fv = 10
value = 0

[State -2, VarSet] ;hyper link combos
type = VarSet
trigger1 = ctrl && var(43) = 1
v = 43    ;fv = 10
value = 0


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, web bar]
type = Explod
trigger1 = stateno != 1050;RoundState = 2 && var(40) > 60 && var(40) < 71
id = 1080
anim = 1070 + var(40)
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = 1
sprpriority = 25
ignorehitpause = 1
ontop = 1

[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11
trigger5 = stateno = 1102
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
trigger4 = stateno = 1102
value = 8, 1

;--------------------------------------------------






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

