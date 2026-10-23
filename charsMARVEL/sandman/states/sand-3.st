;=========================================================
;\------------------\ Sandman /--------------------------/
;Sprite Edits, Character design, Concepts ---->  McCready 
;Sprite Edits, Programming-Code, Concepts ---->  Loganir
;========================================================
;  loganir@gmail.com    mccready171@yahoo.com

[Statedef -3]

[State -3, a4]
type = HitOverride
triggerall = roundstate = 2
trigger1 = Stateno=[3201,3350];StateNo = 3201||StateNo = 3205
time = 1
slot = 4
attr = SCA,AA,AP,AT
stateno = 9000
ignorehitpause = 1 
[State -3, VarSet]
type = VarSet
triggerall = roundstate = 2
trigger1= (Stateno=[3201,3350])&& (MoveType != H);(StateNo >= 3201) && (MoveType != H)
var(7) = StateNo 
ignorehitpause = 1



[State -3,special finish] 
type = Helper
triggerall = (WinKO) && (!NumHelper(8740)) && (!NumHelper(8787))
trigger1 =(StateNo = [200,700])
trigger2 =(StateNo = [1000,1600]) 
helpertype = Normal
name = "SpecialFinish"
id = 8740
pos = 0, -1500
postype = back
facing = 0
stateno = 8740
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -3, WINKO] 
type =Helper
triggerall = (WinKO) && (!NumHelper(8787)) && (enemy,time=1)
trigger1 =(StateNo = [3000,3800]) 
helpertype = Normal
name = "WinKO"
id = 8787
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno = 8787
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1


[State -3, sand]
type = Helper
triggerall =(!Numhelper(7500)) &&  RoundState = 2
trigger1 = (!movetype=H) 
trigger2 = (stateno != [850,2000])
trigger3 = (stateno != [3000,3900])
helpertype = normal
name = "sand"
ID = 7500
stateno = 7500
pos = 0,0
postype = p1
facing = 1
ownpal =1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
size.ground.back =2
size.ground.front=2
size.air.back =2
size.air.front =2
size.height =1


[State -3]; P2 arrow enemy position.  
type = Explod
triggerall = !IsHelper
triggerall = (roundstate = 2) && (movetype!=H) && (stateno != [9620,9650])
trigger1 = P2bodyDist y < -190
trigger2 = P2bodyDist y > 190
anim = 8690 
id = 8690
postype = back
pos = ceil(backedgedist+ ifelse((P2bodyDist y < -190),1,p2dist x)),50+(screenpos y>0)*190
sprpriority = 15
ontop = 1
bindtime = -1
ignorehitpause = 1
supermovetime =9999
pausemovetime =9999







;================= Winane's activation A.I.
; Kamek and Luchini appear to have been the first ones to use the IsHomeTeam AI
; activation concept.
[State -3, SetAI]
type = VarSet
triggerall = Alive && !IsHelper
triggerall = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = MatchNo > 1
var(59) = 1

[State -3, AI Helper - Compatibly Partnered Version]
type = Helper
trigger1 = !var(59) && !IsHelper
trigger1 = !NumHelper(9742)
trigger1 = Alive && RoundState = 2
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "sandai2"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, AI Helper]
type = Helper
triggerall = !var(59) && !IsHelper
triggerall = !NumHelper(9741)
triggerall = Alive && RoundState = 2
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
HelperType = normal
name = "sandai"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = var(59) = -2 && !IsHelper
trigger1 = Alive && RoundState = 2
var(59) = 1

[State -3, RCSC Helper];"Recent Custom State Check"
type = Helper
triggerall = var(59)!=1 && !IsHelper
triggerall = !NumHelper(9743)
triggerall = Alive && RoundState = 2
trigger1 = MatchNo = 1
trigger2 = NumPartner
trigger2 = ID > Partner,ID
HelperType = normal
name = "sandai3"
ID = 9743
pos = 9999999,99999
StateNo = 9743
PauseMoveTime = 2147483647
SuperMoveTime = 2147483647

[State -3, GameTimeVar]
type = VarSet
trigger1 = !IsHelper
var(57) = GameTime
IgnoreHitPause = 1
;=================end Winane's activation A.I.




;================== based by P.o.t.s codes, thanks man!!!===========================
[State -3, a1] 
type = playsnd
triggerall = alive && (time = 1)&&(random > 300)
trigger1 = stateno = 5000||stateno = 5010||stateno = 5020||stateno = 5080|| stateno = 5100
value = 51,ceil (random/300)
channel = 0
ignorehitpause = 1
persistent = 0

[State -3, a2]
type = varadd
trigger1 = movehit = 1
var(15)= 1

[State -3, a3]
type = varset
trigger1 = numenemy && var(15)
trigger1 =(enemynear,movetype!=H)
var(15)= 0
ignorehitpause = 1

[State -3, a4]
type = varset
trigger1 = 1
fvar(10) = ifelse(var(15)=0,1,ifelse(var(15)=1,.8,.7**var(15)))
ignorehitpause = 1


;============== end based by P.o.t.s codes, thanks man!!!===================




;======================================================
;[State -3, sparks] ;Turn ON screenpacks fx - turn OFF C.of.L project sparks
;type = VarSet
;triggerall = !var(55)
;trigger1 = palno = 7
;trigger2 = palno=[1,6]
;v = 55
;value = 1
;ignorehitpause = 1
;======================================================
