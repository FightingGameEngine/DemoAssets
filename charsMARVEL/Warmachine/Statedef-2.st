;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =  anim!=41
id = 741

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =  anim!=42
id = 77777

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =  anim!=43
id = 77776

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim!=100
id = 7701

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim!=105
id = 7702

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim!=107
id = 7703

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim!=108
id = 7704

[State 200, c]
type = removeexplod
trigger1 = anim!=4500
id = 74001
[State 200, d]
type = removeexplod
trigger1 = anim!=4500
id = 74002

[State 200, c]
type = removeexplod
trigger1 = anim!=4501
id = 74013

[State 200, d]
type = removeexplod
trigger1 = anim!=4501
id = 74014

[State 200, c]
type = removeexplod
trigger1 = anim!=4502
id = 77044

[State 200, d]
type = removeexplod
trigger1 = anim!=4502
id = 77045

[State 200, c]
type = removeexplod
trigger1 = anim!=4503
id = 77042

[State 200, d]
type = removeexplod
trigger1 = anim!=4503
id = 77043

[State 200, c]
type = removeexplod
trigger1 = anim!=4504
id = 74011

[State 200, d]
type = removeexplod
trigger1 = anim!=4504
id = 74012


;-------------------------------------------------------------------------------
;KO Sound when defeated
;-------------------------------------------------------------------------------
[State -2, varKOsnd]
type=varset
trigger1=alive&&var(18)>0
trigger2=!alive&&var(18)<2
var(18)=ifelse(alive,0,var(18)+1)
ignorehitpause=1

[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=5500,0
channel = -1
ignorehitpause=1
persistent=0
;-------------------------------------------------------------------------------
;Get Hit Sounds
;-------------------------------------------------------------------------------
[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = random < 200
triggerall = (stateno = [5000,5210]) && (Time = 1) && (!IsHelper)
trigger1 = anim = 5030  ; air hit
trigger2 = anim = 5070  ; tripped
persistent = 1
value = S5000,0

[State -3, hurt Sound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = random < 400
trigger1 = Stateno = 5000 || Stateno = 5020
trigger1 = movetype = H
value = S5000,1

[State -3, hurt Sound 1]
type = PlaySnd
triggerall = Time = 1
triggerall = random < 400
trigger1 = Stateno = 5010
trigger1 = movetype = H
value = S5000,2

[State -2 , 51]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5000) && (anim <= 5009)
trigger1 = time = 1
value = 4,3

[State -2 , 5a]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5010) && (anim <= 5019)
trigger1 = time = 1
value = 4,3

[State -2 , 5a]
type = PlaySnd
triggerall = stateno = 5001
triggerall = anim >= 5020
trigger1 = time = 1
value = 4,3

[State -2 , 6a]
type = PlaySnd
triggerall = stateno = 5010
trigger1 = time = 1
value = 4,3

[State -2 , 7a]
type = PlaySnd
triggerall = stateno = 5020
trigger1 = time = 1
value = 4,3

[State -2 , 7aa]
type = PlaySnd
triggerall = stateno = 5100
trigger1 = time = 1
value = 4,4

;XCOSTUME

;[state -2, No Clones]
;type = remappal
;triggerall=numenemy && (fvar(36)=[1,12]);fvar(36)=the number of pals available 
;trigger1=fvar(37)&&!numhelper(12345)&&matchno=1&&roundno=1
;trigger1=enemy,authorname="logansam"&&enemy,name="Superman"&&enemy,fvar(36)=fvar(36) 
;source = 1, 1
;dest = 1, Ifelse(teamside!=1 && enemynear,Numhelper(12345)=0,enemy,fvar(36)+teamside,fvar(36))
;ignorehitpause = 1

;[state -2, Palette]
;type = varset
;trigger1 = numhelper(12345)
;trigger1=helper(12345),fvar(36)=[1,12]
;fvar(36)= helper(12345),fvar(36)
;ignorehitpause = 1

;[state -2, Palette Selection]
;type = remappal
;trigger1 = numhelper(12345)
;trigger1=helper(12345),fvar(36)=[1,12]
;source = 1, 1
;dest = 1, fvar(36)
;ignorehitpause = 1

;[state -2, Continue Palette]
;type = remappal
;trigger1=fvar(37)&&!AILevel&&matchno>1
;source = 1, 1
;dest = 1, fvar(36)
;ignorehitpause = 1
 
 
;XCOSTUME

;-------------------------------------------------------------------------------
;damage dampenering
;-------------------------------------------------------------------------------
[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = stateno !=[3000,3999] ; prevent damage scaling in supers between this range of statedef
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
triggerall = stateno !=[3000,3999]; prevent damage scaling in supers between this range of statedef
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

; END

[State -2, PalFX]
type = PalFX
triggerall = var(5) = 1
trigger1 = (var(15) % 30) = 0
time = 2
add = 190,0,0
mul = 266,256,256
sinadd = 180,0,0,30
invertall = 0
color = 256
ignorehitpause = 1


[State -2, Add to Timer]
type = VarAdd
trigger1 = var(5) = 1 || var(5) = -1
v = 15
value = 1

[State -2, Turn off]
type = VarSet
trigger1 = command = "flying"
trigger2 = stateno = [5000,5350]
trigger3 = stateno = [140,160]
trigger4 = stateno = 70
trigger5 = Pos Y >= 0
v = 5
value = 0

[State 1900, 4]
type = PlaySnd
triggerall = var(5) = 1
trigger1 = (var(15) % 60) = 0
value = 30,1
channel=6

[State 0, StopSnd]
type = StopSnd
trigger1 =  var(5) = 0
channel = 6
persistent = 1
ignorehitpause = 1

; Super Armor
[State -2]
type = VarSet
trigger1 = Life > 1
trigger1 = MoveType != H
trigger1 = StateNo != 8623
var(46) = StateNo
ignorehitpause = 1

[State -2]
type = VarSet
trigger1 = Life > 1
trigger1 = StateNo = [120,159]
trigger1 = StateNo != 8623
var(46) = StateNo
ignorehitpause = 1

;--------------------------------------------------------------------------
;Based in HIT WALL CODES
;---------------------------------------------------------------------------
[State -2, Hit Wall] 
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0
triggerall = target(0),  StateNo != 9020
triggerall = target(0), vel X < -6;-7
trigger1 = StateNo = 220 && movehit
trigger1 = target(0), BackEdgeBodyDist <= 20
trigger1 = var(50) :=1
trigger2 = StateNo = 220 && movehit
trigger2 = target(0), FrontEdgeBodyDist <= 20
trigger2 = var(50) :=1
trigger3 = StateNo = 245 && movehit
trigger3 = target(0), BackEdgeBodyDist <= 20
trigger3 = var(50) :=1
trigger4 = StateNo = 245 && movehit
trigger4 = target(0), FrontEdgeBodyDist <= 20
trigger4 = var(50) :=1
trigger5 = StateNo = 1505 && Time > 20
trigger5 = target(0), BackEdgeBodyDist <= 20
trigger5 = var(50) :=1
trigger6 = StateNo = 1505 && Time > 20
trigger6 = target(0), FrontEdgeBodyDist <= 20
trigger6 = var(50) :=1
trigger7 = (StateNo = [1300,1320]) && (movehit)&& (P2BodyDist X > 75)
trigger7 = target(0), BackEdgeBodyDist <= 20
trigger7 = var(50) :=1
trigger8 = (StateNo = [1300,1320]) && (movehit)&& (P2BodyDist X > 75)
trigger8 = target(0), FrontEdgeBodyDist <= 20
trigger8 = var(50) :=1
trigger9 = (StateNo = [1500,1520]) && (movehit)&& (P2BodyDist X > 75)
trigger9 = target(0), FrontEdgeBodyDist <= 20
trigger9 = var(50) :=1
value = 9020
ID = 0

[State -2, a9];p2 bounce ground mvsc style
type = TargetState
triggerall = !var(50)
triggerall = NumTarget > 0
triggerall = target(0),  StateNo != 9023
trigger1 = !var(1) && StateNo = 620 && movehit
trigger1 = target(0), stateno=5100
trigger1 = var(50) :=1
trigger2 = !var(1) && StateNo = 650 && movehit
trigger2 = target(0), stateno=5100
trigger2 = var(50) :=1
trigger3 = !var(1) && prevStateNo = 620
trigger3 = target(0), stateno=5100
trigger3 = var(50) :=1
trigger4 = !var(1) && prevStateNo = 650
trigger4 = target(0), stateno=5100
trigger4 = var(50) :=1
value = 9023
ID = 0

[State -2, reset var(50)]
type = VarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0
ignorehitpause = 1

[State -2, reset parent var(50)]
type = ParentVarSet
trigger1 = NumTarget = 0
trigger2 = NumTarget > 0
trigger2 = target(0), Time=0
trigger2 = target(0), StateNo != 9020
trigger3 = target(0), Time=0
trigger3 = target(0), StateNo != 9023
var(50) = 0
ignorehitpause = 1


[State -2, Hit Wall Spark]
type = Explod
triggerall =!var(55)
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time=0
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H
trigger2 = target(0), Time = 1
anim = 8720
pos = floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = left
sprpriority = 3
ownpal = 1
facing = ifelse(Target, Pos X >= 0,1,-1)
ignorehitpause = 1
bindtime = -1
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit Wall Spark]
type = Explod
triggerall =var(55)=1
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time=0
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H
trigger2 = target(0), Time = 1
anim = 72 ;ifelse(!var(55),8720,Fifelse(72))
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

[State -2, Hit ground Spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9023
trigger1 = target(0), Time=0
anim = 8725
pos = 0,0;floor(ifelse(Target, pos X <= 0, 135, 185) + target, pos x), floor(target, screenpos y - 70)
postype = p2
sprpriority = 9
ownpal = 1
ignorehitpause = 1
bindtime = 4
supermovetime =99
pausemovetime = 99
id=8720

[State -2, Hit Wall Sound]
type = PlaySnd
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9020
trigger1 = target(0), Time = 1
trigger2 = NumTarget > 0
trigger2 = p2stateno = 9022 && p2movetype=H
trigger2 = target(0), Time = 1
value = 40, 2
ignorehitpause = 0

[State -2, Hit ground Sound]
type = PlaySnd
trigger1 = NumTarget > 0
trigger1 = target(0), StateNo = 9023
trigger1 = target(0), Time = 1
value = 40, 1
ignorehitpause = 0
