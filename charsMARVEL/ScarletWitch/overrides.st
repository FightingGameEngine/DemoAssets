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
sprpriority = 7
velset = 7, 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S100,0

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

[State 0, Explod]
type = Explod
trigger1 = timemod = 8,1
anim = 102
ID = 102
pos = -45,-70
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 8
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = timemod = 8,1
anim = 102
ID = 102
pos = 35,-59
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 5
removeongethit = 1



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
velset = -8, 0
ctrl = 0

[State 0, Explod]
type = Explod
triggerall = time > 4
trigger1 = timemod = 8,1
anim = 102
ID = 102
pos = 35,-85
facing = 1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 8
removeongethit = 1



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
trigger1 = command != "holdback";Time = 135
value = 0
ctrl = 1

[State 100, 4]
type = ChangeState
triggerall = Var(59)
trigger1 = time > 15
value = 0
ctrl = 1

[StateDef 110]
type    = A
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = 8, 0

[State 110, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S100,0

[State 0, Explod]
type = Explod
trigger1 = timemod = 4,1
anim = 103
ID = 102
pos = -45,-70
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 8
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = timemod = 4,1
anim = 103
ID = 102
pos = 35,-59
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 5
removeongethit = 1

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

;=========AvX Damage Multiplier===========

[State -2, Damage based on hits]
type=null;varset
trigger1= numenemy
fvar(12)= enemynear,gethitvar(hitcount)
ignorehitpause=1

[State -2, Reset var when the opponent recovers]
type=null;varset
trigger1= numenemy
trigger1= (enemynear,movetype!=H)
trigger2= !numenemy
trigger3 = hitdefattr = SCA, HA,HP,HT
trigger4 = stateno = [3000,3999]
fvar(12)=0

[State -2, Multiplier]
triggerall = var(30)=0 ;Scarlet Witch only
type=null;varset
trigger1=1
fvar(10)= ifelse(fvar(12)<9,ifelse(fvar(12)=0, 1, ifelse(fvar(12)=1, 1.05, 1.05**fvar(12))),1.5)
ignorehitpause=1

[State -2, Multiplier itself]
type=null;attackmulset
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
trigger1 = enemynear,stateno !=5110
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
triggerall = roundno = 1
trigger1 = p2name = "Cable Training"
trigger1 = enemynear,var(40)>= 4
value = 3000

[State -2, PowerAdd]
type = PowerAdd
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

[State -2, Explod]
type = Explod
triggerall = numexplod(25)=0
triggerall = time > 4
trigger1 = anim = 20
trigger2 = anim = 21
anim = 25
ID = 25
pos = -10,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -15
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = anim != 20 && anim != 21
trigger1 = numexplod(25) > 0
id = 25

[State -2, Helper]
type = Helper
triggerall = enemynear, stateno = 1020
triggerall = enemynear, movetype = H
triggerall = numhelper(1050) = 0
trigger1 = time >= 9
name = "box"
ID = 1050
stateno = 1050
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 1

[State -2, VarSet]
type = VarSet
triggerall = var(30)!=0
trigger1 = numexplod(3309) = 0
v = 30
value = 0

[State -2, VarSet]
type = VarSet
triggerall = var(31)!=0
trigger1 = numhelper(1410) = 0
trigger1 = enemynear, movetype != H
v = 31
value = 0

[State -2, VarSet]
type = VarSet
triggerall = var(32)!=0
trigger1 = enemynear,movetype != H
v = 32
value = 0

[State -2, VarSet]
type = VarSet
triggerall = var(41) != 0
trigger1 =  ctrl
v = 41
value = 0

[State -2, VarSet]
type = VarSet
triggerall = var(42) != 0
trigger1 =  ctrl
v = 42
value = 0

;float explods
[State -2, RemoveExplod]
type = RemoveExplod
triggerall = stateno != 949
trigger1 = numexplod(970) > 0
id = 970

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = stateno != 949
trigger1 = numexplod(971) > 0
id = 971

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "Mult = %d, 31 = %d, 32 = %d, Pos Y = %f"
params = fvar(10),var(31), var(32), Pos Y

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
value = 4,0

[State 0, BGPalFX]
type = BGPalFX
trigger1 = stateno = [3310,3399]
Add = -10,-10,-30
IgnoreHitPause = 1
time = 1

;-----|Reality Gem|-----

[State -2, Fire Burn Explod 1]
type = Explod
trigger1 = (ProjHit270 = 1) && (NumExplod(8170) < 3)
anim = 8170
id = 8170
postype = P2
pos = 6,0
random = 30,60
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State -2, Electricity Explod 3]
type = Explod
trigger1 = (ProjHit295 = 1) && (NumExplod(8180) > 0) && (NumExplod(8181) < 2)
anim = 8182
id = 8181
postype = P2
pos = -16,26
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State -2, Electricity Explod 4]
type = Explod
trigger1 = (ProjHit295 = 1) && (NumExplod(8180) > 0) && (NumExplod(8181) < 2)
anim = 8183
id = 8181
postype = P2
pos = -10,-10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = -1

[State -2, Electricity Explod 1]
type = Explod
trigger1 = (ProjHit295 = 1) && (NumExplod(8180) < 2)
anim = 8180
id = 8180
postype = P2
pos = 0,-10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = 4

[State -2, Electricity Explod 2]
type = Explod
trigger1 = (ProjHit295 = 1) && (NumExplod(8180) < 2)
anim = 8181
id = 8180
postype = P2
pos = 0,-30
;random = 30,10
facing = -1
ownpal = 1
bindtime = -1
sprpriority = -1

[State -2, Stop Hyper Snd]
type = StopSnd
trigger1 = stateno != [3000,3999]
channel = 21


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Cable Training"
value = 3
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Scarlet Witch"
value = 4
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Spiderman"
value = 5
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Wolverine"
value = 6
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Black Widow"
value = 7
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Captain America"
value = 8
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Ironman"
value = 9
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Red Hulk"
value = 10
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "The Thing"
value = 11
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "The Mighty Thor"
value = 12
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Luke Cage"
value = 13
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "MissMarvel"
value = 14
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Hope"
value = 15
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Iceman"
value = 16
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Psylocke"
value = 17
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Emma Frost"
value = 18
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Cyclops"
value = 19
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Magneto"
value = 20
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Namor"
value = 21
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Colossonaught"
value = 22
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Storm"
value = 23
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "The Beast"
value = 24
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Rogue"
value = 25
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Deadpool"
value = 26
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Captain Marvell"
value = 27
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "Phoenix Force"
value = 28
[State VictoryQuote]
Type = VictoryQuote
Trigger1 = p2name = "SentinelStage"
value = 29

[State VictoryQuote]
Type = null;VictoryQuote
trigger1 = p2name != "Cable Training"
trigger1 = p2name != "Scarlet Witch"
trigger1 = p2name != "Spiderman"
trigger1 = p2name != "Wolverine"
trigger1 = p2name != "Black Widow"
trigger1 = p2name != "Captain America"
trigger1 = p2name != "Ironman"
trigger1 = p2name != "Red Hulk"
trigger1 = p2name != "The Thing"
trigger1 = p2name != "The Mighty Thor"
trigger1 = p2name != "Luke Cage"
trigger1 = p2name != "MissMarvel"
trigger1 = p2name != "Hope"
trigger1 = p2name != "Iceman"
trigger1 = p2name != "Psylocke"
trigger1 = p2name != "Emma Frost"
trigger1 = p2name != "Cyclops"
trigger1 = p2name != "Magneto"
trigger1 = p2name != "Namor"
trigger1 = p2name != "Colossonaught"
trigger1 = p2name != "Storm"
trigger1 = p2name != "The Beast"
trigger1 = p2name != "Rogue"
trigger1 = p2name != "Deadpool"
trigger1 = p2name != "Captain Marvell"
trigger1 = p2name != "Phoenix Force"
value = 1 + random%1

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
anim = F8510;60
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

