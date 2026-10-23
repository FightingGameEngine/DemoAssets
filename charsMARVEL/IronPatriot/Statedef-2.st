;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]


[State 0, VarAdd]
type = VarAdd
trigger1 = var(37)> 0
trigger1 = 1
v = 37
value = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = numhelper(3030)>0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State -2]
type = VarSet
trigger1 = Time = 520
trigger1 = MoveType != H
trigger1 = StateNo != 9000
var(46) = StateNo
ignorehitpause = 1

[State -2]
type = VarSet
trigger1 = Time = 520
trigger1 = StateNo = [120,159]
trigger1 = StateNo != 9000
var(46) = StateNo
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno !=3300
id = 990

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010
trigger1=gethitvar(animtype)>=2&&random<500
trigger2=gethitvar(animtype)=1&&random<375
trigger3=gethitvar(animtype)=0&&random<250
value=s11,(1+(random%4));*10,ceil(random/200)
channel=5
ignorehitpause=1

[State -2, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
trigger1=(stateno=5000||stateno=5010)&&numenemy
trigger1=gethitvar(fall)||(enemynear,hitdefattr=SCA,SA,HA)
trigger2=(stateno=5020||stateno=5070||stateno=5080)
trigger3=(stateno=5050||stateno=5100)&&(prevstateno!=[5000,5199])
value=s11,(2+(random%3));*10,ceil(random/200)
channel=5
ignorehitpause=1


[State 0, ChangeState]
type = selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= S
trigger1 = var(2) >400
value = 5350
ctrl = 0

[State 0, ChangeState]
type = selfstate
triggerall = stateno >= 150
triggerall = stateno <= 155
triggerall = statetype= C
trigger1 = var(2) >400
value = 5351
ctrl = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = var(1) <=300
trigger1 = var(1) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 1
value = -1

[State 0, VarAdd]
type = VarAdd
trigger1 = var(2) <=400
trigger1 = var(2) > 0
trigger1 = roundstate = 2
trigger1 = movetype = I
trigger1 = gametime % 2 =1
v = 2
value = -1

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(2)=%d, var(1)=%d, var(50)=%d, var(59)=%d, p2bodydist y=%d"
params = var(2), var(1), var(50), var(59), floor(p2bodydist y)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,8999]
trigger1 = NumExplod(10010)>0
id =10010
;ignorehitpause =
;persistent =

; END
