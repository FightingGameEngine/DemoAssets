;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;=========AvX Menu Pause===========

[State -2, Pause Menu]
Type = Helper
trigger1 = AILevel = 0
trigger1 = NumHelper(40500) = 0
Name = "Pause"
ID = 40500
Pos = 0, 0
PosType = left
StateNo = 40500
KeyCtrl = 1
OwnPal = 1

;=========AvX Damage Multiplier===========

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
trigger3 = hitdefattr = SCA, HA,HP,HT
trigger4 = stateno = [3000,3999]
fvar(12)=0

[State -2, Multiplier]
type=varset
trigger1=1
fvar(10)= ifelse(fvar(12)<9,ifelse(fvar(12)=0, 1, ifelse(fvar(12)=1, 1.05, 1.05**fvar(12))),1.5)
ignorehitpause=1

[State -2, Multiplier itself]
type=attackmulset
trigger1= 1
value= 1;fvar(10)
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
triggerall = roundstate = 2
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
triggerall = roundstate = 2
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
triggerall = roundstate = 2
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

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = roundstate > 2
id = 3457

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = roundstate > 2
id = 3458

;==============================
[State -2, Stop Intro Sound]
type = StopSnd
trigger1 = roundstate = 2
channel = 20

[State -2, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "distY = %d, Multiplier = %d, p2distx = %d"
params = p2dist y, fvar(10),p2bodydist x

[State -2, VarSet] ;1102 - DB,K Counter
type = VarSet
triggerall = var(28)!=0
trigger1 = enemynear, movetype != H
v = 28
value = 0

[State -2, VarSet] ;1100 - DB,K Counter
type = VarSet
triggerall = var(29)!=0
trigger1 = enemynear, movetype != H
v = 29
value = 0

[State -2, VarSet] ;620 Wall Bounce Count
type = VarSet
triggerall = var(30)!=0
trigger1 = enemynear, movetype != H
v = 30
value = 0

[State -2, VarSet] ;620 Wall Bounce Count
type = VarSet
triggerall = var(31)!=0
trigger1 = enemynear, movetype != H
v = 31
value = 0


;KO Sound when defeated

[State -2, varKOsnd]
type=varset
trigger1=alive&&var(18)>0
trigger2=!alive&&var(18)<2
var(18)=ifelse(alive,0,var(18)+1)
ignorehitpause=1

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010
trigger1=gethitvar(animtype)>=2&&random<500
trigger2=gethitvar(animtype)=1&&random<375
trigger3=gethitvar(animtype)=0&&random<250
value=s11,(1+(random%2));*10,ceil(random/200)
channel=5
ignorehitpause=1

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
trigger1=(stateno=5000||stateno=5010)&&numenemy
trigger1=gethitvar(fall)||(enemynear,hitdefattr=SCA,SA,HA)
trigger2=(stateno=5020||stateno=5070||stateno=5080)
trigger3=(stateno=5050||stateno=5100)&&(prevstateno!=[5000,5199])
value=s11,(1+(random%2));*10,ceil(random/200)
channel=5
ignorehitpause=1

[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=11,0
channel = -1
ignorehitpause=1
persistent=0


;Hyper Background Removed when Hyper Done or hit out of Hyper
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,3999]
trigger1 = NumExplod(10010)>0
id =10010
;ignorehitpause =
;persistent =

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;------------------------------------------------------------------------------
; END
