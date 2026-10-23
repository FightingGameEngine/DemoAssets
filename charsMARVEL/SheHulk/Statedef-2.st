;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0, DisplayToClipboard] 
type = DisplayToClipboard
trigger1 = 1
text = "var(2)=%d, var(1)=%d, var(50)=%d, var(59)=%d, p2bodydist x=%d"
params = var(2), var(1), var(50), var(59), floor(p2bodydist x) 

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
;-------------------------------------------------------------------------------
;------------------------------
[Statedef 3205]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3205
sprpriority = 5
velset = 7,-7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S10,2
volume = 0
channel = -1

[State 0, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 9999
length = 14
framegap = 3
trans = add1

[State 205, hit]
type=hitdef
trigger1 = !time
attr=A,HP
damage=55,5
animtype=Medium
guardflag=MA
hitflag=MAF
priority=3,Hit
pausetime=0,ifelse(parent,var(10)=2,10,ifelse(parent,var(10)=1,6,2))
sparkno=s8220+(random%8)
guard.sparkno=s8100
sparkxy=-10,0
hitsound=s1,9
guardsound=s2,1
ground.type=High
ground.slidetime=25
ground.hittime=25
ground.velocity=ifelse(parent,var(10)=2,-5,ifelse(parent,var(10)=1,-3,-2)),0
ground.cornerpush.veloff=0
air.cornerpush.veloff=0
air.type=Low
air.hittime=25
air.velocity=ifelse(parent,var(10)=2,-6,ifelse(parent,var(10)=1,-4,-2)),ifelse(parent,var(10)=2,-12,ifelse(parent,var(10)=1,-9,-4.5))
yaccel=ifelse(parent,var(10)=2,.65,.5)
persistent=0
fall.yvelocity=0
air.fall=1
fall.recover=0
envshake.time = 12
envshake.ampl = 3
getpower=0

[State 901:Assertspecial]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 901:playerpush]
type = PlayerPush
trigger1 = 1
value = 0
persistent = 1

[State 1005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT,HA
stateno=3206
ignorehitpause=1

[State 1005, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,AP,HA
ignorehitpause=1

[State 901:destroyself]
type = changestate
;trigger1 = movecontact
trigger1 = frontedgedist <= -140
value = 3206
;---------------------------------------------------------------------------;
[Statedef 3206]
type = A
movetype = I
physics = N
juggle = 1
ctrl = 0
anim = 3206
sprpriority=3
;velset = 0,0
poweradd = 0

[State 0]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0]
type= PlayerPush
trigger1= 1
value= 0
persistent= 1

[State 0]
type = Destroyself
trigger1 = animtime=0

;------------------------------

;-------------------------------------------------------------------------------
;------------------------------------------------------------------------------

; END
