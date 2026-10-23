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
velset = 8,0



[State 0, Explod]
type = Explod
trigger1 = timemod = 10,1
anim = 102
ID =  102
pos = 40,5
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 10
ownpal = 1
removeongethit =1



[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 105,1

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
velset = 7,0



[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 105,1

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
trigger1 = time > 20
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
type = null;PowerAdd
triggerall = StageVar(info.name) =  "B"
triggerall = roundno = 1
trigger1 = p2name = "Cable Training"
trigger1 = enemynear,var(40)>= 4
value = 3000

[State -2, PowerAdd]
type = null;PowerAdd
triggerall = StageVar(info.name) =  "B"
triggerall = roundno = 2
trigger1 = roundstate < 2
trigger1 = p2name = "Cable Training"
value = -3000

[State -2, StopSnd]
type = null;StopSnd
trigger1 = p2stateno = 5149
channel = 0

[State -2, StopSnd]
type = null;StopSnd
trigger1 = p2stateno = 5149
channel = 1

[State -2, StopSnd]
type = null;StopSnd
trigger1 = p2stateno = 5149
channel = 2

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(15601)=0
id = 15650

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(15601)=0
id = 15651

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(15601)=0
id = 15660

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = numexplod(15601)=0
id = 15661

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

[State -2, PowerSet]
type = PowerSet
triggerall = enemynear, name ="Trainingroom"
trigger1 = power != 3000
value = 3000

[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 10

[State -2, VarSet];Standing HK Count
type = VarSet
triggerall = var(38)!=0
trigger1 = enemynear, movetype != H
v = 38
value = 0

[State -2, VarSet];Launcher Count
type = VarSet
triggerall = var(39)!=0
trigger1 = enemynear, movetype != H
v = 39
value = 0

[State -2,VarSet]
type = varset
triggerall = fvar(29)!=1
trigger1 = stateno = 3001 || stateno = 7827
trigger1 = numhelper(23000)> 0
trigger1 = enemynear, movetype = H
fv = 29
value = 1

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "Launcher %d, OTG: %d, PalNo: %d, Pos Y: %f"
params = var(39),fvar(29),PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =  numexplod(1)>0 && anim != 0
id = 1

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

;ignorehitpause =
;persistent =



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
value = 5000,0

;[State -2, superjump opponent locator]
;type = Helper
;triggerall = (NumHelper(0) = 0)
;trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
;ID = 0
;pos = 0,-120
;postype = p2
;stateno = 910
;facing = 1

;------------------------------------
;run into screen

[State -2]
type = ScreenBound
trigger1 = P2StateNo = [9020,9030]
;trigger2 = enemynear,stateno = 857
;trigger3 = enemynear,stateno = 21285
value = p2bodydist x < 30 && BackEdgeDist < 30


[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = Movetype != H && Stateno != 7827
trigger1 = BackEdgeDist < -10 -const(size.ground.front)-const(size.ground.back)
trigger1 = StateType != A
value = 7827



[State 0, Helper]
type = Helper
triggerall = numhelper(126) = 0
trigger1 =  (anim = 120 || anim = 130 || anim = 140 || anim = 150)
trigger2 =  (anim = 121 || anim = 131 || anim = 141 || anim = 151)
trigger3 =  (anim = 122 || anim = 132 || anim = 142 || anim = 152)
helpertype = normal ;player
name = "escudo"
ID = 126
stateno = 126
pos = 0,0
postype = p1    ;p2,front,back,left,right
ownpal = 1
ignorehitpause = 1
persistent = 1

;[State -2, Explod]
;type = Explod
;trigger1 =  (anim = 120 || anim = 130 || anim = 140 || anim = 150) && numexplod(125)=0
;anim = 125
;ID = 125
;pos = 25,-90
;postype = p1  ;p2,front,back,left,right
;bindtime = -1
;removetime = -1
;sprpriority = 5
;removeongethit = 1
;
;[State -2, RemoveExplod]
;type = RemoveExplod
;trigger1 =  anim != 120 && anim != 130 && anim != 140 && anim != 150 && numexplod(125)>0
;id = 125
;
;
;[State -2, Explod]
;type = Explod
;trigger1 =  (anim = 121 || anim = 131 || anim = 141 || anim = 151) && numexplod(126)=0
;anim = 125
;ID = 126
;pos = 30,-60
;postype = p1  ;p2,front,back,left,right
;bindtime = -1
;removetime = -1
;sprpriority = 5
;removeongethit = 1
;
;[State -2, RemoveExplod]
;type = RemoveExplod
;trigger1 =  anim != 121 && anim != 131 && anim != 141 && anim != 151 && numexplod(126)>0
;id = 126
;
;
;[State -2, Explod]
;type = Explod
;trigger1 =  (anim = 122 || anim = 132 || anim = 142 || anim = 152) && numexplod(127)=0
;anim = 125
;ID = 127
;pos = 30,-85
;postype = p1  ;p2,front,back,left,right
;bindtime = -1
;removetime = -1
;sprpriority = 5
;removeongethit = 1
;
;[State -2, RemoveExplod]
;type = RemoveExplod
;trigger1 =  anim != 122 && anim != 132 && anim != 142 && anim != 152 && numexplod(127)>0
;id = 127
;;-----------------------------------



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
value = 52,0

;--------------------------------------------------



; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 0) && (var(50) = 0)
value = 5500,0

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

