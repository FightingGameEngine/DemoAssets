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

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
value = S8,1

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

;=========AvX Namor Stage===========

[State -2, Pillar Bubbles]
type = Explod
triggerall = stateno = 0
triggerall = StageVar(info.name) =  "N"
trigger1 = numexplod(3456)=0
anim = f300
ID = 3456
pos = 0,-320
removetime = -2
scale = .5,.5
sprpriority = 1
ontop = 1
ownpal = 1

[State -2, Pillar Air Meter]
type = Explod
triggerall = roundstate >= 2
triggerall = StageVar(info.name) =  "N"
trigger1 = numexplod(3457)=0
anim = f310
id = 3457
pos = ifelse(TeamSide = 1, 51, 269), 50
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -1
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State -2, Pillar Air Title]
type = Explod
triggerall = roundstate >= 2
triggerall = StageVar(info.name) =  "N"
trigger1 = numexplod(3458)=0
anim = f311
id = 3458
pos = ifelse(TeamSide = 1, 98, 221), 50
postype = left
facing = 1
bindtime = -1
removetime = -1
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State -2, LifeAdd]
type = LifeAdd
triggerall = roundstate >= 2
triggerall = StageVar(info.name) =  "N"
trigger1 = fvar(13) = 1
trigger1 = timemod = 5,0
value = -1
kill = 0

[State -2, Air VarSet]
type = VarSet
triggerall = roundstate >= 2
trigger1 = fvar(13) = 0
fv = 13
value = 4050

[State -2, Air VarAdd]
type = VarAdd
triggerall = roundstate >= 2
trigger1 = fvar(13) > 1
fv = 13
value = -1
ignorehitpause = 1

;==============================
[State 0, PowerSet]
type = PowerSet
triggerall = enemynear, name ="Trainingroom"
trigger1 = power != 3000
value = 3000

[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate > 1
channel = 20

[State -2, AvX Hyper Black]
type = assertspecial
trigger1 = stateno = [3000,3999]
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
triggerall = fvar(26) != 1
trigger1 = ProjContact(1001) = 1
trigger2 = ProjContact(1005) = 1
trigger3 = ProjContact(1006) = 1
trigger4 = ProjContact(1008) = 1
trigger5 = ProjContact(1009) = 1
trigger6 = ProjContact(1012) = 1
trigger7 = ProjContact(1016) = 1
fv = 26
value = 1

[State -2, VarSet];OTG Kick Reset
type = VarSet
trigger1 = var(36) > 0
trigger1 = enemynear,movetype!=H
v = 36
value = 0

[State -2, VarSet];Freeze Bullet Reset
type = VarSet
trigger1 = var(37) > 0
trigger1 = enemynear,movetype!=H
v = 37
value = 0

[State -2, VarSet];Blaze Bullet Reset
type = VarSet
trigger1 = var(38) > 0
trigger1 = enemynear,movetype!=H
v = 38
value = 0

[State -2, VarSet];Electric Bullet Reset
type = VarSet
trigger1 = var(39) > 0
trigger1 = enemynear,movetype!=H
v = 39
value = 0

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "dist %d, 36 %d, 37 %d, 38 %d, 39 %d"
params = backedgebodydist, var(36), var(37), var(38), var(39)

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


[State -2, VarSet]
type = VarSet
trigger1 = ctrl && var(41) = 1
v = 41    ;fv = 10
value = 0
;ignorehitpause =
;persistent =

[State -2, VarSet];aerialdash reset
type = VarSet
trigger1 = (statetype!=A)
v = 27  
value = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[statedef -3]

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
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11
trigger5 = stateno = 1102
persistent = 0
ID = 60
anim = F8510
postype = p1
pos = 0,0
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
