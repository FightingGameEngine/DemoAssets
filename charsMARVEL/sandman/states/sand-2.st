;;=========================================================
;\------------------\ Sandman /--------------------------/
;Sprite Edits, Character design, Concepts ---->  McCready 
;Sprite Edits, Programming-Code, Concepts ---->  Loganir
;=========================================================
;  loganir@gmail.com    mccready171@yahoo.com

[Statedef -2]

;[State -2, ai]
;type = VarSet
;triggerall = (Var(59) > 0)
;trigger1 = (RoundState != 2)
;trigger2 = (!Alive)
;var(59) = -2

[State -2, StopAI]
type = VarSet
triggerall = var(59) > 0 && !IsHelper
trigger1 = RoundState != 2
trigger2 = !Alive
var(59) = -2
IgnoreHitPause = 1


[State -2, A3]
type = VarSet
trigger1 = (Var(20) = 1) && (MoveType != H)
var(20) = 0

[State -2, a0]
type = VarAdd
trigger1 = Var(48) > 0
V = 48
value = -1
[State -2, a0]
type = Varset
trigger1 = RoundState != 2 
V = 48
value = -1
[State -2, a0]
type = VarAdd
trigger1 = Var(49) > 0
V = 49
value = -1
[State -2, a0]
type = Varset
trigger1 = RoundState != 2 
V = 49
value = -1

[State -2, a0]
type = VarAdd
trigger1 = Var(8) > 0
V = 8
value = -1

[State -2, A4]
type = VarSet
trigger1 = RoundState != 4 
v = 52
value = ceil(P2Dist X)
ignorehitpause = 1


;------------------------------ 
[State -2, HW] ;adapted from "hitwall code" thanks to DG&SM
type = TargetState
triggerall = (!var(50))&& (var(49)>0)
triggerall = NumTarget > 0
triggerall = target(0), vel X < -6
trigger1 = target(0), BackEdgeBodyDist <= 20
trigger1 = var(50) :=1
trigger2 = target(0), FrontEdgeBodyDist <= 20 
trigger2 = var(50) :=1
value = 9020
ID = 0
;-------------------------------


[State -2, HB]
type = TargetState
triggerall = (!var(50)) && (var(48)>0)
triggerall = NumTarget > 0 
trigger1 = target(0), stateno=5100
trigger1 = var(50) :=1
value = 9023
ID = 0


[State -2, reset var(50)] 
type = VarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = (target(0), Time=0) && (target(0), StateNo != [9020,9023])
var(50) = 0
ignorehitpause = 1

[State -2, reset parent var(50)] 
type = ParentVarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = (target(0), Time=0) && (target(0), StateNo != [9020,9023])
var(50) = 0 
ignorehitpause = 1


[State -2, HW]
type = Explod
triggerall = (!var(55))&& (!Numexplod(8720))&&(NumTarget > 0) && (p2movetype=H)
triggerall = target, Statetype = A
trigger1 = (target,Stateno !=[120,155]) && (target,vel x < 0) && (target, BackEdgeBodyDist <= 20)
anim = 8720
pos = floor(ifelse(Target, pos X <= 0, 125, 195) + target, pos x), floor(target, screenpos y - 70)
postype = left
sprpriority = 3
ownpal = 1
facing = ifelse(Target, Pos X >= 0,1,-1) 
ignorehitpause = 1
bindtime = -1
supermovetime =99
pausemovetime = 99
id=8720
[State -2, re] 
type = RemoveExplod
triggerall = Numexplod(8720)
trigger1 = p2movetype!=H
ID = 8720


[State -2, HW]
type = Explod
triggerall = (var(55))&& (!Numexplod(8720))&&(NumTarget > 0) 
triggerall = (target, Statetype = A) && (target, Movetype=H)
trigger1 = (target,Stateno !=[120,155]) && (target,vel x < 0) && (target, BackEdgeBodyDist <= 20)
anim = F72 
pos = floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = left
sprpriority = 3
ownpal = 1
facing = ifelse(Target, Pos X >= 0,-1,1) 
ignorehitpause = 1
bindtime = -1
supermovetime =99
pausemovetime = 99
id=8720

[State -2, HG]
type = Explod
triggerall =!var(55)
trigger1 = (NumTarget > 0)
trigger1 = (target(0), StateNo = 9023) && (target(0), Time=0)
anim = 8725
pos = 0,0
postype = p2
sprpriority = 9
ownpal = 1
ignorehitpause = 1
supermovetime =99
pausemovetime = 99
id=8721

[State -2, HG]
type = Explod
triggerall = var(55)
trigger1 = (NumTarget > 0)
trigger1 = (target(0), StateNo = 9023) && (target(0), Time=0)
anim = F62
pos = 0,0
postype = p2
sprpriority = 9
ownpal = 1
ignorehitpause = 1
supermovetime =99
pausemovetime = 99
id=8721


[State -2, Hit ground Sound]
type = PlaySnd
trigger1 = NumTarget > 0
trigger1 = (target(0), StateNo = 9023) && (target(0), Time=1)
value = 40, 1
ignorehitpause = 1
volume = 200
channel = 10

[State -2, Hit Wall Sound]
type = PlaySnd
triggerall = stateno!=[3500,3590]
triggerall = (!var(8)) && (Numexplod(8720))&& (NumTarget > 0)
trigger1 = (target, Statetype = A) 
trigger1 = var(8):=30
value = 40, 2
ignorehitpause = 1
channel = 10
volume = -150




[State -2, a5]
type = PlaySnd
trigger1 = (var(26))&&(p2stateno = 5110) && (enemy, Time = 1)
trigger2 = (var(13))&&(p2stateno = 5100) && (enemy, Time = 1)
value = 7, 2
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[State -2, p2] ;explodpedr
type = helper
trigger1 = (var(26))&&(p2stateno = 5110) && (enemy, Time = 1)
trigger2 = (var(13))&&(p2stateno = 5100) && (enemy, Time = 1)
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = -15,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
[State -2,p2]
type = VarSet
triggerall = (var(13))
trigger1 = (p2stateno = 5100)&&(enemy, Time >= 2)
trigger2 = (var(26)<=0) && (enemynear,prevstateno=5100)
v = 13
value = 0
ignorehitpause = 1

[State -2, ar];aerial rave reset var
type = VarRangeSet
trigger1 = statetype!=A
value = 0
first = 25
last = 26
ignorehitpause = 1

[State -2, 3301] 
type = RemoveExplod
trigger1 = LoseKO
ID= 3310
[State -2, 3301] 
type = RemoveExplod
trigger1 = LoseKO
ID= 3311






;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWWWW====== -2 DCvsMARVEL SCREENPACK SECTION ==========
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

[State -2, AssertSpecial] ;will be removed for the screenpack release, stage reflection issues. 
type = AssertSpecial
triggerall = var(55)=1
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = var(55)=1
trigger1 = numhelper(9010) = 0; && statetype != A && statetype != L
helpertype = normal ;player
name = "Shadow"
ID = 9010
stateno = 9010
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
size.xscale = 1
size.yscale = 1


[State -2, a0];oponnent indicator
type = Explod
triggerall = var(55)=1
triggerall = (NumExplod(705) = 0)
trigger1 = Pos Y <= -200 && (P2Dist Y > 50)
anim = F705
ID = 705
pos = 0,-140
postype = p2
removetime = -1
bindtime = -1
ontop = 1
ownpal = 1
[State -2, a1]
type = RemoveExplod
triggerall = var(55)=1
trigger1 = p2Dist Y < 50
ID = 705

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWWWW====== END DCvsMARVEL SCREENPACK SECTION ==========
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW


[State -2, 3200]
type = removeexplod
trigger1 = lose
trigger2 = WinKO
trigger3 = (stateno!=[3200,3290]) && (stateno!=9000)
id = 8780
ignorehitpause = 1

;-------------------------------------------------------------------
[State -2, copyright]
type = DisplayToClipboard
trigger1 = 1
text = "Sandman by Loganir(edits-code)& McCready(edits)";\nAI = %d - P2 X= %.0f - P2 Y= %.0f - n32 = %d - n31 = %d";- PosY = %.0f - scPosY = %.0f" ;BackEdge - %d"
;params = Var(9),p2bodydist x, p2bodydist Y,Pos Y,BackEdgeBodyDist
