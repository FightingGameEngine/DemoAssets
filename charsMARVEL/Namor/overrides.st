; States file for {character} -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   2: keep track of power level (for levelup sounds)
;  10: flood mode
;  11: flood mode count
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

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

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


[Statedef 101]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = const(velocity.run.fwd.x), 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S8,0

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
trigger1 = Time >= 35
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;=========AvX Menu Pause===========

[State -2, Pause Menu]
Type = null;Helper
trigger1 = AILevel = 0
trigger1 = NumHelper(40500) = 0
Name = "Pause"
ID = 40500
Pos = 0, 0
PosType = left
StateNo = 40500
KeyCtrl = 1
OwnPal = 1

;=========AvX Public Release Damage Dampiner===========
;The AvX project contains a Damage Multiplier. Such a system would create
;an unfair advantage outside of the closed game proejct. A damage dampiner
;has been added to the character in order to balance the large combo system
;found in the AvX game.

[State -2, Damage based on hits]
type=varset
trigger1= numenemy
fvar(12)= enemynear,gethitvar(hitcount)
ignorehitpause=1

[State -2, Reset var when the opponent recovers]
type=varset
trigger1= numenemy
trigger1= (enemynear,movetype!=H)
trigger2= !numenemy
fvar(12)=0

[State -2, Dampener]
type=varset
trigger1=1
fvar(10)= ifelse(fvar(12)<9,ifelse(fvar(12)=0, 1, ifelse(fvar(12)=1, .9, .86**fvar(12))),.25)
ignorehitpause=1

[State -2, Dampener itself]
type=attackmulset
trigger1= 1
value= fvar(10)
ignorehitpause=1
ignorehitpause=1

;=========AvX Special Get Hit State Recognition===========
;Fvar(30)
;0 = Not Hit
;1 = Ground Bounce - stateno 5130
;2 = Wall Bounce - stateno 5045
;3 = Both

[State -2, VarSet]
type = VarSet
trigger1 = fvar(30) = 0
trigger1 = enemynear,stateno = 5132 ;Ground Bounce
fv = 30
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = fvar(30) = 0
trigger1 = enemynear,stateno = 5048 ;Wall Bounce
fv = 30
value = 2

[State -2, VarSet]
type = VarSet
trigger1 = fvar(30) = 2
trigger1 = enemynear,stateno = 5132 ;Ground Bounce
trigger2 = fvar(30) = 1
trigger2 = enemynear,stateno = 5048 ;Wall Bounce
fv = 30
value = 3

[State -2, VarSet]
type = VarSet
trigger1 = fvar(30) > 0
trigger1 = enemynear,movetype!=H
fv = 30
value = 0

[State -2, VarSet];OTG Recognition
type = VarSet
trigger1 = fvar(29) > 0
trigger1 = enemynear,movetype!=H
trigger1 = enemynear,stateno != 5110
fv = 29
value = 0

[State -2, VarSet]
type = ParentVarSet
trigger1 = hitdefattr = SCA, NA, NP, NT
trigger1 = enemynear, movetype =H
fv = 25
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = hitdefattr = SCA, NA, NP, NT
trigger1 = enemynear, movetype =H
fv = 25
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = movetype !=A
trigger1 = enemynear, movetype !=H
fv = 25
value = 0

[State -2, VarSet]
type = ParentVarSet
trigger1 = hitdefattr = SCA, SA, SP, ST
trigger1 = enemynear, movetype =H
fv = 26
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = hitdefattr = SCA, SA, SP, ST
trigger1 = enemynear, movetype =H
fv = 26
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = movetype !=A
trigger1 = enemynear, movetype !=H
fv = 26
value = 0

[State -2, VarSet]
type = ParentVarSet
trigger1 = hitdefattr = SCA, HA, HP, HT
trigger1 = enemynear, movetype =H
fv = 27
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = hitdefattr = SCA, HA, HP, HT
trigger1 = enemynear, movetype =H
fv = 27
value = 1

[State -2, VarSet]
type = VarSet
trigger1 = movetype !=A
trigger1 = enemynear, movetype !=H
fv = 27
value = 0

[State -2, Varadd];hitcount
type = Varadd
trigger1 = movehit
trigger1 = enemynear, time = 0
trigger1 = p2stateno = [5000,5899]
fv = 28
value = 1
ignorehitpause = 1

[State -2, VarSet];hitcount
type = VarSet
trigger1 = movetype !=A
trigger1 = enemynear, movetype !=H
trigger1 = p2stateno != [5000,5899]
fv = 28
value = 0



[State -2, PowerAdd]
type = PowerAdd
triggerall = StageVar(info.name) =  "B"
triggerall = roundno = 1
trigger1 = p2name = "Cable Training"
trigger1 = enemynear,var(40)>= 4
value = 3000

[State -2, PowerAdd]
type = PowerAdd
triggerall = StageVar(info.name) =  "B"
triggerall = roundno = 2
trigger1 = roundstate < 2
trigger1 = p2name = "Cable Training"
value = -3000

[State -2, StopSnd]
type = StopSnd
trigger1 = p2stateno = 5149
channel = 0

[State -2, StopSnd]
type = StopSnd
trigger1 = p2stateno = 5149
channel = 1

[State -2, StopSnd]
type = StopSnd
trigger1 = p2stateno = 5149
channel = 2


;==============================
[State -2, Stop Intro Sound]
type = StopSnd
trigger1 = roundstate = 2
channel = 20

[State -2] ;Omega Red Life Drain
type = lifeadd
triggerall = roundstate = 2
trigger1 = enemynear, name = "Omega Red"
trigger1 = timemod = 50,0
value = -1

[State 0, PowerSet]
type = PowerSet
triggerall = enemynear, name ="Trainingroom"
trigger1 = power != 3000
value = 3000

[State 0, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 10
ignorehitpause = 1

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "NA %d, SA %d, HA %d, OTG %d, "
params = fvar(25), fvar(26), fvar(27), fvar(29)

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State -2, VarSet];Activate 1601 hitdef
type = VarSet
triggerall = enemynear, movetype !=H
trigger1 = var(5)!= 0
v = 5
value = 0

        ;hover
[State 0, VelAdd]
type = VelAdd
triggerall = statetype = A
triggerall = vel y > 2
triggerall = movetype != A
triggerall = movetype != H
triggerall = ctrl
trigger1= command = "holdup"
y = -0.5

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




[state - 2, flood mode]
type = varset
triggerall = stateno = [3301,3399]
trigger1 = var(10) = 0
v = 10
value = 1

[state - 2, flood mode 0ff]
type = varset
trigger1 = stateno = 0  && var(10) = 1 ;numexplod(3310)=0
v = 10
value = 0

[State -2]
type = VarSet
triggerall = var(11) = 0 && var(10) = 0
trigger1 = 1
v = 11
value = 1000

[State -2, contador]
type = VarAdd
triggerall = var(11) != 0 && var(10) = 1
trigger1 = (GameTime % 1) = 0
v = 11
value = -1

[State -2]
type = VarSet
triggerall = var(11) = 0 && var(10) = 1
trigger1 = 1
v = 10
value = 0

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3310)>0
trigger1 =  var(10) = 0
trigger2 = lose
id = 3310
;ignorehitpause =
;persistent =

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =  numexplod(3101)>0 && stateno != 3100
id = 3101

[State -2]
type = VarSet
triggerall = lose && var(10) = 1
trigger1 = 1
v = 10
value = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]


[State -3, Cable Stage]
type = Explod
triggerall = numexplod(29872)=0
triggerall = p2name = "Cable Training"
triggerall = StageVar(info.name) =  "B"
trigger1 = Teamside = 1
anim = F29872
ID =  29872
pos = 50,200;-40,-22
postype = left  ;p1
removetime = -2
scale = 1,1
sprpriority = -10000
ownpal = 1



;[State -3, SuperPause]
;type = SuperPause
;triggerall = var(10) = 1 ;&& var(45) !=0
;triggerall = enemynear, name != "Aquaman"
;triggerall = p2stateno = [0,110] ;&& (stateno = [0,999] || stateno = [5000,6000])
;trigger1 = timemod = 2,1 ;&& time < 10
;Time = 2
;pos = 9999,-9951
;movetime = 2
;darken = 0
;move = 2

[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 && pos y > -10 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
persistent = 0
ID = 60
anim = 8510;60
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





[State -3, Overide Hits]
type = HitOverRide
trigger1 = StateNo = 3301  ||  StateNo = 3320  ||   StateNo = 3330
trigger2 = StateNo = 3340  ||  StateNo = 3350  ||   StateNo = 3360
trigger3 = StateNo = 3370  ||  StateNo = 3380  ||   StateNo = 3210
;trigger4 = StateNo = 1012
time = 2
slot = 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT;SCA, AA, AP, AT
stateno = 3210



[State -3, 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 174,0
channel = 0
ignorehitpause = 1
volume = 255

[State -3, 2]
type = PlaySnd
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 174,1
channel = 0
ignorehitpause = 1
volume = 255
