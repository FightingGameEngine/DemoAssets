;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]



[State 0, StopSnd]
type = StopSnd
trigger1 = stateno !=195
channel = 1
ignorehitpause = 1
persistent = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno !=191
channel = 2
ignorehitpause = 1
persistent = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno !=193
channel = 3
ignorehitpause = 1
persistent = 1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(0)=%d, var(1)=%d, var(50)=%d, var(59)=%d, p2bodydist y=%d"
params = var(0), var(1), var(50), var(0), floor(p2bodydist y)

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


;damage dampenering

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

;Hyper Background Removed when Hyper Done or hit out of Hyper
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,3999]
trigger1 = NumExplod(10010)>0
id =10010
;ignorehitpause =
;persistent =


;-------------------------------------------------------------------------------
;Guard Crush Feature
;WARNINING this code is buggy against multiple hit attacks if you want to use
;remove the null; off the code.

[State 0, VarAdd]
type = null;VarAdd
trigger1 = time = 1
trigger1 = stateno =5000 ||stateno =5010 || stateno =5020 || stateno =5030
v = 1
value = var(3)

[State 0, VarAdd]
type = null;VarAdd
triggerall = numenemy > 0
trigger1 = enemy, Moveguarded
trigger1 = time = 1
trigger1 = anim =150 ||anim =152 || anim =154
v = 2
value = 30 + var(3)

[State 0, ChangeState]
type = null;selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= S
trigger1 = var(2) >400
value = 5350
ctrl = 0

[State 0, ChangeState]
type = null;selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= C
trigger1 = var(2) >400
value = 5351
ctrl = 0

[State 0, VarAdd]
type = null;VarAdd
trigger1 = var(1) <=300
trigger1 = var(1) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 1
value = -1

[State 0, VarAdd]
type = null;VarAdd
trigger1 = var(2) <=400
trigger1 = var(2) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 2
value = -1

; First Attack message (by M@ppy, cut and pasted from BB Hood, with mods by ME!)
[State -2, Var]
type = VarSet
triggerall = Var(13) = 0
triggerall = p2movetype = H
triggerall = p2StateNo != [150,155]
triggerall = RoundState = 2
trigger1 = movecontact = 1
trigger2 = projcontact = 1
trigger3 = NumHelper(8796) > 0
trigger3 = Helper(8796), MoveHit
trigger4 = NumHelper(8409) > 0
trigger4 = Helper(8409), MoveHit
trigger5 = NumHelper(867) > 0
trigger5 = var(27)
;trigger6 = NumHelper(999) > 0
;trigger6 = Helper(999), MoveHit
v = 13
value = 1
ignorehitpause = 1

[State -2, Message]
type = Helper
triggerall = NumHelper(9208) = 0
trigger1 = Var(13) = 1
ID = 9208
name = "First Attack!"
facing = 1
postype = left
stateno = 10010
ownpal = 1
ignorehitpause = 1

[State -2, Var]
type = VarSet
trigger1 = Var(13) = 1
trigger2 = movetype = H
trigger2 = StateNo != [150,155]
v = 13
value = 2
ignorehitpause = 1

; Combo Tracker
[State -2, Start Count]
type = VarSet
triggerall = P2MoveType = H && !WinKO
trigger1 = var(7) = 0
v = 7
value = 1
ignorehitpause = 1

[State -2, Set]
type = VarSet
triggerall = var(7)
trigger1 = HitCount > var(9)
v = 10
value = HitCount - var(9)

[State -2, Set]
type = VarSet
triggerall = var(7)
trigger1 = HitCount < var(9)
trigger1 = HitCount != 0
v = 10
value = HitCount

[State -2, Set]
type = VarSet
triggerall = var(7)
trigger1 = HitCount = var(9)
trigger2 = HitCount = 0
v = 10
value = 0

[State -2, Projectile Hits]
type = VarAdd
triggerall = var(7)
trigger1 = ProjHit = 1
v = 10
value = 1

[State -2, Add new hits to combo]
type = VarAdd
triggerall = var(7)
trigger1 = var(10) > 0 || var(11) > 0
v = 8
value = var(10) + var(11)

; Set Attack Ratio for Damage Dampening
[State -2, First Decrease]
type = VarSet
triggerall = var(7)
trigger1 = var(8) > 1
trigger1 = var(8) < 4
fv = 1
value = .44
ignorehitpause = 1

[State -2, Second Decrease]
type = VarSet
triggerall = var(7)
trigger1 = var(8) = [4,8]
fv = 1
value = .37
ignorehitpause = 1

[State -2, Third Decrease]
type = VarSet
triggerall = var(7)
trigger1 = var(8) = [9,12]
fv = 1
value = .31
ignorehitpause = 1

[State -2, Fourth Decrease]
type = VarSet
triggerall = var(7)
trigger1 = var(8) = [13,16]
fv = 1
value = .28
ignorehitpause = 1

[State -2, Final Decrease]
type = VarSet
triggerall = var(7)
trigger1 = var(8) > 16
fv = 1
value = .24
ignorehitpause = 1

[State -2, Clear Helper Hits]
type = VarSet
trigger1 = var(7)
v = 11
value = 0

[State -2, Spawn Combo Report Helper]
type = Helper
triggerall = var(7)
triggerall = NumHelper(929) = 0
triggerall = (StateNo != 1500) && (StateNo != [1645,1650])
trigger1 = P2MoveType != H || WinKO
trigger1 = NumHelper(930) = 0
ID = 930
name = "Combo Report"
StateNo = 10020
postype = p1
pos = 0, 0
ownpal = 1
ignorehitpause = 1

[State -2, Leave Combo Counting Mode]
type = VarSet
triggerall = var(7)
trigger1 = P2MoveType != H || WinKO
v = 15
value = var(8)
ignorehitpause = 1

[State -2, Leave Combo Counting Mode]
type = VarSet
triggerall = var(7)
trigger1 = P2MoveType != H || WinKO
v = 8
value = 0
ignorehitpause = 1

[State -2, Leave Combo Counting Mode]
type = VarSet
triggerall = var(7)
trigger1 = P2MoveType != H || WinKO
v = 9
value = 0
ignorehitpause = 1

[State -2, Leave Combo Counting Mode]
type = VarSet
triggerall = var(7)
trigger1 = P2MoveType != H || WinKO
v = 7
value = 0
ignorehitpause = 1

; Display "Danger" Message
[State -2, Create Helper]
type = Helper
triggerall = var(14) = 0
triggerall = Alive
triggerall = NumHelper(929) = 0
trigger1 = Life <= 200
ID = 929
name = "Danger!"
StateNo = 10000
postype = p1
pos = 0, 0
ownpal = 1

[State -2, Set Danger Var]
type = VarSet
triggerall = var(14) = 0
trigger1 = Life <= 200
v = 14
value = 1

[State -2, Hit Count]
type = VarSet
trigger1 = var(7)
v = 9
value = HitCount


;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;------------------------------------------------------------------------------

; END
