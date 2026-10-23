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

[StateDef 100]
type    = S
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = 8, 0

[State 0, Explod]
type = null;Explod
trigger1 = time = 0
anim = 101
ID = 101
pos = 26,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0


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
triggerall = time > 10
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
velset = -7, 0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0


[State 0, Explod]
type = null;Explod
triggerall = time < 22
trigger1 = timemod = 4,1
anim = 106
ID = 106
pos = 5,0
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
sprpriority = 5
removeongethit = 0



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
trigger1 = time = 30
value = 0
ctrl = 1


[StateDef 110]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = 8, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0


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
triggerall = time > 10
trigger1 = command != "holdfwd";Time = 135
value = 948
ctrl = 1

[State 100, 4]
type = ChangeState
triggerall = Var(59)
trigger1 = time > 15
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






[State 0, RemoveExplod]
type = RemoveExplod
triggerall = stateno != [3300,3399]
trigger1 = numexplod(3309) > 0
id = 3309

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = stateno != [3300,3399]
trigger1 = numexplod(3308) > 0
id = 3308

[State -2, VarSet];Lazer Hyper Counter
type = VarSet
trigger1 = var(29) > 0
trigger1 = enemynear,movetype!=H
v = 29
value = 0

[State -2, VarSet];Explode Hyper Counter
type = VarSet
trigger1 = var(30) > 0
trigger1 = enemynear,movetype!=H
v = 30
value = 0

[State -2, VarSet];1310 Orb OTG Counter
type = VarSet
trigger1 = var(31) > 0
trigger1 = enemynear,movetype!=H
v = 31
value = 0

[State -2, VarSet];B,F P Counter
type = VarSet
trigger1 = var(32) > 0
trigger1 = enemynear,movetype!=H
v = 32
value = 0

[State 0, VarSet]
type = VarSet
triggerall = var(41) != 0
trigger1 =  ctrl
v = 41
value = 0



[State 0, VarSet]
type = VarSet
triggerall = var(42) != 0
trigger1 =  ctrl
v = 42
value = 0

[State 0, VarSet]
type = VarSet
triggerall = var(43) != 0
trigger1 =  ctrl
v = 43
value = 0




[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "Orb OTG %d, PalNo: %d, OTG %d"
params = var(31), PalNo, fvar(29)

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

        ;hover
[State 0, VelAdd]
type = changestate
triggerall = statetype = A
triggerall = vel y > 2
triggerall = movetype != A
triggerall = movetype != H
triggerall = ctrl
trigger1= command = "holdup"
value = 949





[State -2, jump landing sound]   ; custom jump-landing sound
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
trigger3 = stateno = 661
type = PlaySnd
persistent = 0
value = 8,1


[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 171,5

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5001  ; standing hard hit high
trigger2 = anim = 5011  ; stand hard hit low
trigger3 = anim = 5021  ; crouching hard hit
persistent = 0
value = 171,6

[State -2, superjump opponent locator]
type = null;Helper
triggerall = (NumHelper(0) = 0)
trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
ID = 0
pos = 0,-120
postype = p2
stateno = 910
facing = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = stateno = [3310,3399]
Add = -10,-10,-30
IgnoreHitPause = 1
time = 1
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
trigger2 = StateNo = 106 ;Run-back land
trigger3 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
trigger4 = stateno = 661
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
trigger2 = StateNo = 106 ;Run-back land
trigger3 = stateno = 661
value = 8, 1

; desperation quote
[State -3, PlaySnd]
type = null;PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1


;---------------------------------------------------------------------------
;Guard Push
[Statedef 6300]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 1111
sprpriority = 2

[State 6300, a1]
type = VelMul
trigger1 = 1
x = 0.75

[State 6300, a2]
type = VelSet
trigger1 = Time = 10
x = 0

[State 6300, a3]
type = Width
trigger1 = 1
value = 10,0

[State 6300, a4]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 6300, a5]
type = Helper
trigger1 = Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 6350
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 6300, a6]
type = Explod
trigger1 = Time = 0
anim = 7020
postype = p1
pos = 33,-65
ownpal = 1
vel = 2,0
ignorehitpause = 1
sprpriority = 7
scale = .5,.5

[State 6300, a7]
type = PlaySnd
trigger1 = Time = 0
value = 4,0
volume = 255
channel = 1

[State 6300, a9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Guard Push (Helper)
[Statedef 6350]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 6350
sprpriority = -4

[State 6350, a1]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 6350, a2]
type = VelSet
trigger1 = Time = [0,10]
x = 30

[State 6350, a3]
type = VelSet
trigger1 = Time = [11,13]
x = 20

[State 6350, a4]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 6350, a5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6350, a6]
type = DestroySelf
trigger1 = Time >= 18

