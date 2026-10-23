;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;For debugging purposes
[State -2, Debug Info]
type = DisplayToClipboard
trigger1 = roundstate > 0
text = "AI = %d"
params = var(59)

[State -2, RemoveExplod];Remove Hyper Background
type = RemoveExplod
trigger1 = stateno < 3000
id = 32710

[State -2, RemoveExplod];Remove Legion Arrow FX
type = RemoveExplod
trigger1 = stateno = 52
trigger2 = stateno = 0
id = 11000 ;down

[State -2, RemoveExplod];Remove Legion Arrow FX
type = RemoveExplod
trigger1 = stateno = 52
trigger2 = stateno = 0
id = 11001 ;fwd

[State -2, RemoveExplod];Remove Legion Arrow FX
type = RemoveExplod
trigger1 = stateno = 52
trigger2 = stateno = 0
id = 11002 ;up

[State -2, RemoveExplod];Remove Legion Arrow FX
type = RemoveExplod
trigger1 = stateno = 52
trigger2 = stateno = 0
id = 11003 ;angled down

[State -2, RemoveExplod];Remove Legion Arrow FX
type = RemoveExplod
trigger1 = stateno = 52
trigger2 = stateno = 0
id = 11004 ;angled up


[State -2, PosAdd]
type = PosAdd
trigger1 = Stateno = [5030, 5040]
trigger1 = (anim = 5040) && (AnimElem = 1, < 2)
y = -20
persistent = 0

[State -2, Super Jump Reset];Reset Super Jump var
type = VarSet
trigger1 = stateno = 52
trigger2 = stateno = 0
var(0) = 0

[State -2, Air Combo Fiish checker Reset]
type = VarSet
trigger1 = ( var(21) = 0 ) && ( stateno = 0 )
var(3) = 0

[State -2, Web Swing Ground checker Reset]
type = VarSet
;trigger1 = stateno = 52
trigger1 = stateno = 0
var(4) = 0

[State -2, Web Swing Air checker Reset]
type = VarSet
;trigger1 = stateno = 52
trigger1 = ( var(21) = 0 ) && ( stateno = 0 )
var(5) = 0


[State -2, Web Swing inertia Reset]
type = varset
trigger1 = stateno = 52
trigger2 = stateno = 0
fvar(3) = 0.00

; Combo Messages and Score control =====================================
;>3 Yes
;>4 Good
;>5 Great
;>7 Very Good
;>9 Wonderful
;>11 Fantastic
;>14 Monster
;>20 Marvelous

[State -2, VS Combo]
type = VarSet
trigger1 = var(8) >= 3
trigger2 = var(8)=-1 && (movehit || p2stateno = 6300 || p2stateno = [5000,5899])
var(9) = 1+(var(8)>3)+(var(8)>4)+(var(8)>6)+(var(8)>8)+(var(8)>10)+(var(8)>13)+(var(8)>19)-(var(8)=-1)
ignorehitpause = 1

[State -2, Danger]
type = VarSet
trigger1 = var(10) !=1 && roundstate=2 && life = [1,250]
var(9) = 9
ignorehitpause = 1

[State -2, First Attack]
type = PlaySnd
triggerall = var(8)=-1
triggerall = NumExplod(8701) = 0
trigger1 = var(8)=-1 && (movehit || p2stateno = 6300 || p2stateno = [5000,5899])
persistent = 0
value = 230,0
volume=255
ignorehitpause = 1

[State -2, Combo Sound]
type = PlaySnd
trigger1 = NumExplod(8701) = 0
trigger1 = var(8)=0 && var(9)!=0
persistent = 0;1
value = 230,var(9)
volume=255
ignorehitpause = 1

[State -2, Left]
type = explod
trigger1 = var(8)=0 && var(9)!=0
trigger2 = var(8)=-1 && (movehit || p2stateno = 6300 || p2stateno = [5000,5899])
triggerall = TeamSide = 1 && NumExplod(8701) = 0
anim = (8000 + var(9))
ID = 8701
postype = left
pos = 0,80
ontop = 1
bindtime = -1
removetime = 60
supermovetime = 60
pausemovetime = 60
scale = 0.5,0.5
persistent = 0
ignorehitpause = 1

[State -2, Right]
type = explod
trigger1 = var(8)=0 && var(9)!=0
trigger2 = var(8)=-1 && (movehit || p2stateno = 6300 || p2stateno = [5000,5899])
triggerall = TeamSide = 2 && NumExplod(8701) = 0
anim = (8100+ var(9))
ID = 8701
postype = right
pos = -1,80
ontop = 1
bindtime = -1
removetime = 60
supermovetime = 60
pausemovetime = 60
scale = 0.5,0.5
persistent = 0;1
ignorehitpause = 1

[State -2, VS Combo]
type = VarAdd
trigger1 = enemynear, time = 0
trigger1 = enemynear, Hitshakeover = 0
trigger1 = p2stateno = 6300 || p2stateno = [5000,5899]
trigger2 = var(8)=-1 && (movehit || p2stateno = 6300 || p2stateno = [5000,5899])
var(8) = 1 + (var(8)=-1)
ignorehitpause = 1

[State -2, VS Combo]
type = VarSet
trigger1 = var(8)!=-1 && (p2movetype!=H || enemynear, ctrl)
trigger2 = var(8)=-1 && stateno = [5000,5899]
var(8) = 0 - (roundstate<2)
ignorehitpause = 1

[State -2, VS Combo]
type = VarSet
triggerall = numexplod(8701)!=0
trigger1 = var(8)=0
var(9) = 0
ignorehitpause = 1

[State -2, Score]
type = Varadd
trigger1 = enemynear, time=0
trigger1 = enemynear, Hitshakeover=0
trigger1 = moveguarded || p2stateno = 6300 || p2stateno = [5000,5899]
trigger2 = var(8)=-1 && (movehit || p2stateno = 6300 || p2stateno = [5000,5899])
trigger3 = roundstate=4 && time=0 && stateno = [180,189]
var(11) = ceil(stateno/50)*var(8) + (life)*(roundstate=4) + (moveguarded)
ignorehitpause = 1

[State -2, Normalize Score]
type = Varset
triggerall = numpartner=1
trigger1 = var(11)< partner, var(11)
var(11) = partner, var(11)

[State -2, Is Danger]
type = VarSet
trigger2 = var(10) = 0 && life <= 250
trigger1 = var(10) = 1 && roundstate!=2
var(10) = (roundstate>1)
ignorehitpause = 1

[State -2, Is First Attack p3]
type = VarSet
triggerall = numpartner=1
trigger1 = partner, movehit
trigger1 = partner, var(8) != -1
var(8) = 0
ignorehitpause = 1

; Hitsound =====================================
;ダメージボイス
[state a]
type = PlaySnd
triggerall = stateno = 5000 ||  stateno = 5010 || stateno = 5020
triggerall = time = 0
triggerall = alive = 1
triggerall = random % 6 = 0
trigger1 = GetHitVar(animtype) = 0
value = 5000,0+(random%3)
persistent = 0
channel = 9

[state a]
type = PlaySnd
triggerall = stateno = 5000 ||  stateno = 5010 || stateno = 5020
triggerall = time = 0
triggerall = alive = 1
triggerall = random % 6 = 0
trigger1 = GetHitVar(animtype) = 1
value = 5001,0+(random%3)
persistent = 0
channel = 9

[state a]
type = PlaySnd
triggerall = stateno = 5000 ||  stateno = 5010 || stateno = 5020
triggerall = time = 0
triggerall = alive = 1
triggerall = random % 6 = 0
trigger1 = GetHitVar(animtype) = 2
trigger2 = GetHitVar(animtype) = 3
trigger3 = GetHitVar(animtype) = 4
value = 5002,0+(random%3)
persistent = 0
channel = 9

; HC KO
[State -2, Helper]
type = Helper
trigger1 = winko && (stateno = 3000) ;&& movehit
trigger2 = winko && (stateno = 3001) ;&& movehit
trigger3 = winko && (stateno = 3010) ;&& movehit
trigger4 = winko && (stateno = 3011) ;&& movehit
trigger5 = winko && (stateno = 3020) ;&& movehit
trigger6 = winko && (stateno = 3021) ;&& movehit
triggerall = NumHelper(6000) < 1
helpertype = normal ;player
name = "winko"
ID = 6000
stateno = 6000
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove = 999
ignorehitpause = 1

[State -2, Helper]
type = Helper
trigger1 = winko && stateno = 3101
triggerall = NumHelper(6000) < 1
helpertype = normal ;player
name = "winko"
ID = 6000
stateno = 6000
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove = 999
ignorehitpause = 1


;---------------------[レギオンアローのヒット音]
[state PlaySndForLegion]
type = PlaySnd
trigger1 = ProjHit(10000) = 1 
trigger2 = ProjHit(10001) = 1 
trigger3 = ProjHit(10002) = 1 
trigger4 = ProjHit(10003) = 1 
trigger5 = ProjHit(10004) = 1 
trigger6 = ProjHit(10005) = 1 
value = s8000,10
ignorehitpause = 1
channel = 8


;---------------------[連続技復帰補正]
[state a]
type = varset
trigger1 = enemy,movetype != H
fvar(1) = 1.0

[state a]
type = varset
trigger1 = enemy,movetype = H
fvar(1) = 0.95**(enemy,gethitvar(hitcount))


;---------------------[デバッグ用常時ゲージMAX]
;[State -1,power];fordebug
;type=powerset
;trigger1=1
;value=9999
;ignorehitpause=1

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------------------------
[Statedef -3]

[State -3, VarAdd]
type = VarAdd
trigger1 = (HitPauseTime = 1) && (P2MoveType = H) && (MoveHit = 1) && (StateNo < 3000)
trigger2 = ProjHitTime(0) = 1
v = 21
value = 1
ignorehitpause = 1

[State -3, VarReset]
type = VarSet
trigger1 = P2MoveType != H
v = 21
value = 0

[State -3, AttackMulSet]
type = AttackMulSet
trigger1 = StateNo >= 3000
value = 1

[State -3, AttackMulSet]
type = AttackMulSet
triggerall = StateNo < 3000
trigger1 = Var(21) <= 1
value = 1

[State -3, AttackMulSet]
type = AttackMulSet
triggerall = StateNo < 3000
trigger1 = Var(21) = 2
value = 0.8

[State -3, AttackMulSet]
type = AttackMulSet
triggerall = StateNo < 3000
trigger1 = Var(21) = 3
value = 0.6

[State -3, AttackMulSet]
type = AttackMulSet
triggerall = StateNo < 3000
trigger1 = Var(21) = 4
value = 0.4

[State -3, AttackMulSet]
type = AttackMulSet
triggerall = StateNo < 3000
trigger1 = Var(21) >= 5
value = .2

[State 20200, Explode]
type = Explod
trigger1 = Stateno = 52 && time = 1
trigger2 = Stateno = 106 && time = 1
anim = 20200
ID = 20200
postype = P1
pos = 0,4
sprpriority = -1
ownpal = 1
scale = 1.4, 1.2

[State -3, Aterrisagem]
type = PlaySnd
trigger1 = StateNo = 52 && Time = 1
value = 8100,0

[State -3, Super Jump]
type = VarSet
trigger1 = Stateno = 0
v = 12
value = 0

[State -3, ctrl set]
type = ctrlset
trigger1 = roundstate = 4
value = 0

