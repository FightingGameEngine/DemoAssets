;----------------------------------------------------------------------
;Armor
;----------------------------------------------------------------------
[Statedef 8623]
type = U
movetype = H
physics = U

[State -2 , 9]
type = PlaySnd
trigger1 = time = 1
value = 4,3

[State 9001, PalFX]
type = PalFX
trigger1 = Alive
trigger1 = !Time
trigger2 = Time = 1
trigger3 = Time = 5
trigger4 = Time = 9
trigger5 = Time = 13
time = 2
add = 160,50,0
mul = 250,224,120
color = 28
ignorehitpause = 1

[State 9001, PosFreeze]
type = PosFreeze
trigger1 = Alive
trigger1 = 1
value = 1

[State 9001, CtrlSet]
type = CtrlSet
triggerall = Time < floor(gethitvar(hittime) * 0.8)
trigger1 = var(46) <= 106
trigger1 = var(46) != [1000,4999]
value = 1

[State 9001, ChangeAnim]
type = ChangeAnim
trigger1 = Time < floor(gethitvar(hittime) * 0.8)
value = Anim
elem  = AnimElemNo(3)

[State 9001, End]
type = ChangeState
trigger1 = Alive
trigger1 = Time >= floor(gethitvar(hittime) * 0.8)
;trigger1 = var(46) != [1000,4999]
value =  var(46)

[State 9001, VelSet]
type = VelSet
trigger1 = !Alive
x = gethitvar(xvel)
y = gethitvar(yvel)

[State 9001, End]
type = ChangeState
trigger1 = !Alive
value = 5050
;---------------------------------------------------------------------------
;Hit Beam Absorbing  1
;---------------------------------------------------------------------------
[Statedef 17671]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5012

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = -0.2

[State 0, ]
type = LifeAdd
trigger1 = time=10
trigger2 = time=30
trigger3 = time=50
value = -15
kill = 0

[State 711, asd]
type = poweradd
trigger1 = time=10
trigger2 = time=30
trigger3 = time=50
value = -25

[State 7671, green_FX]
type = PalFX
trigger1 = Anim = 5012
trigger1 = Time = 1
time = 80
add = 200,150,250
mul = 20,160,24
sinadd = 85,160,55,8
invertall = 1
color = 0

[State 7696, 6]   ;safe
type = selfstate
triggerall= alive
trigger1 = Time =80
ctrl = 1
value = 5071

[State 7696, 6]   ;safe
type = selfstate
triggerall= !alive
trigger1 = Time =80
ctrl = 1
value = 5050
;---------------------------------------------------------------------------
;Hit Beam Absorbing  2
;---------------------------------------------------------------------------
[Statedef 17672]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5012

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = -0.2

[State 0, ]
type = LifeAdd
trigger1 = time=10
trigger2 = time=30
trigger3 = time=50
trigger4 = time=70
trigger5 = time=90
value = -15
kill = 0

[State 711, asd]
type = poweradd
trigger1 = time=10
trigger2 = time=30
trigger3 = time=50
trigger4 = time=70
trigger5 = time=90
value = -25

[State 7671, green_FX]
type = PalFX
trigger1 = Anim = 5012
trigger1 = Time = 1
time = 120
add = 200,150,250
mul = 20,160,24
sinadd = 85,160,55,8
invertall = 1
color = 0

[State 7696, 6]   ;safe
type = selfstate
triggerall= alive
trigger1 = Time =120
ctrl = 1
value = 5071

[State 7696, 6]   ;safe
type = selfstate
triggerall= !alive
trigger1 = Time =120
ctrl = 1
value = 5050
;---------------------------------------------------------------------------
;Hit Beam Absorbing  3
;---------------------------------------------------------------------------
[Statedef 17673]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5012

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = -0.2

[State 0, ]
type = LifeAdd
trigger1 = time=10
trigger2 = time=30
trigger3 = time=50
trigger4 = time=70
trigger5 = time=90
trigger6 = time=110
trigger7 = time=130
trigger8 = time=150
value = -18
kill = 0

[State 711, asd]
type = poweradd
trigger1 = time=10
trigger2 = time=30
trigger3 = time=50
trigger4 = time=70
trigger5 = time=90
trigger6 = time=110
trigger7 = time=130
trigger8 = time=150
value = -27

[State 7671, green_FX]
type = PalFX
trigger1 = Anim = 5012
trigger1 = Time = 1
time = 170
add = 200,150,250
mul = 20,160,24
sinadd = 85,160,55,8
invertall = 1
color = 0

[State 7696, 6]   ;safe
type = selfstate
triggerall= alive
trigger1 = Time =170
ctrl = 1
value = 5071

[State 7696, 6]   ;safe
type = selfstate
triggerall= !alive
trigger1 = Time =170
ctrl = 1
value = 5050
;---------------------------------------------------------------------------
;Hit Beam  Paralasing
;---------------------------------------------------------------------------
[Statedef 71670]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5051

[State 1201,0]
type = Gravity
trigger1 = 1

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = -1
y =  1

[State 7697, red_FX]
type = PalFX
trigger1 = Anim = 5300
trigger1 = Time = 1
time = 70
add = 210,10,-200
mul =  200,200,200
sinadd = 60,40,50,20
invertall = 1
color = 0

[State 2310, changestate]
type = ChangeState
trigger1 = Pos Y >= 10
value= 7671
ctrl = 0

[Statedef 7671]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, PosSet]
type = PosSet
trigger1 = time=0
y = 0

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 7697, red_FX]
type = PalFX
trigger1 = Anim = 5300
trigger1 = Time = 1
time = 70
add = 210,10,-200
mul =  200,200,200
sinadd = 60,40,50,20
invertall = 1
color = 0


[State 7696, 6]
type = SelfState
trigger1 = Time = 100
ctrl = 1
value = 5010

;---------------------------------------------------------------------------
;Hit Beam Fury
;---------------------------------------------------------------------------
[Statedef 71675]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5051

[State 1201,0]
type = Gravity
trigger1 = 1

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = -1
y =  6

[State 2310, changestate]
type = ChangeState
trigger1 = Pos Y >= 10
value= 7676
ctrl = 0

[Statedef 7676]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, PosSet]
type = PosSet
trigger1 = time=0
y = 0

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 7696, 6]
type = SelfState
trigger1 = Time = 100
ctrl = 1
value = 5010


;---------------------------------------------------------------------------
;---{Throw Attacks}---
;---------------------------
; Toss 1
[Statedef 780]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 780
juggle  = 0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = M
priority = 5, Miss
ground.type = low
sparkno = -1
hitsound = -1
pausetime = 0,20
p2facing = 1          
p1stateno = 790
p2stateno = 791
snap = 50,0
sprpriority = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 790]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 5
anim = 790

[State 777, hsp] ; particles
type = helper
trigger1 = !time
helpertype = normal
stateno = 8705
ID = 8705
name = "hitspark5"
postype = p2
pos = -22,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 200, swoosh]
type = PlaySnd
trigger1 =!time
value = 3,1

[State 20]
type = envshake
trigger1 =animelem = 6
time = 10
ampl = -10

[State 20]
type = PlaySnd
trigger1=animelem = 6
value = 12,1

[State 1007, p2] ;explodpedr
type = helper
triggerall= !numhelper(8706)
trigger1 = animElem = 6 ; ADJUST ACCORDINGLY
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = -120,110 ; ADJUST ACCORDINGLY
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0




[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ]
type = Changestate
trigger1 = time = 32 && command != "holdfwd"
value = 795

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = 80,-115

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
time = 30
pos = 76,-125

[State 0, ]
type = TargetBind
trigger1 = time= 72
time = 4
pos = 35,-105

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 4
pos = 120,-35

[State 0, ]
type = targetstate
trigger1 = animelem = 1
value = 791

[State 0, ]
type = targetstate
trigger1 = animelem = 5
value = 792

[State 0, SprPriority]
type = SprPriority
trigger1 = time = 70
value = -2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 791]
type    = A
movetype= H
physics = S
velset = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 791

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1
ignorehitpause = 1

[Statedef 792]
type    = A
movetype= H
physics = S
velset = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 792

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 793

[Statedef 793]
type    = A
movetype= H
physics = A
velset = -8,5

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 793

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -8
y = 5

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1
ignorehitpause = 1

[State 0, LifeAdd]
type = LifeAdd
trigger1 = animtime = 0
trigger2 = pos y >= 0
value = -120
kill = 1

[State 0, SelfState]
type = SelfState
trigger1 = animtime = 0
trigger2 = pos y >= 0
value = 5100

[Statedef 795]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 5
anim = 795

[State 0, Turn]
type = Turn
trigger1 = time = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = 15,-105

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = 120,-35

[State 0, ]
type = targetstate
trigger1 = animelem = 1
value = 796

[State 0, SprPriority]
type = SprPriority
trigger1 = time = 0
value = -2

[State 20]
type = envshake
trigger1 =animelem = 2
time = 10
ampl = -10

[State 20]
type = PlaySnd
trigger1=animelem = 2
value = 12,1

[State 1007, p2] ;explodpedr
type = helper
triggerall= !numhelper(8706)
trigger1 = animElem = 2 ; ADJUST ACCORDINGLY
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = -120,110 ; ADJUST ACCORDINGLY
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0


[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 796]
type    = A
movetype= H
physics = S
velset = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 792

[State 0, Turn]
type = Turn
trigger1 = time = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 793

;========================<PROJECTILE HITTER>=============================
[Statedef 1007]
type=A
physics=N
movetype=I
anim=8787
ctrl=0

[State 1007, End]
type=destroyself
trigger1= (root,stateno!=750) && (root,stateno!=3750)
trigger2= root,stateno=3750 && root,anim!=755
trigger3= root,stateno=750 && (root,anim!=750 || animelemtime(6)<0)

[State 1007, elemvar]
type=varset
trigger1= !(root,hitpausetime)
var(0)=(root,animelemno(0))

[State 1007, Anim]
type=changeanim
trigger1= 1
value=root,anim
elem=var(0)

[State 1007, HitOverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=1007
ignorehitpause=1

[State 1007, HB]
type=hitby
trigger1= (root,stateno=750)
time=-1
value=SCA,NP
ignorehitpause=1

[State 1007, HB]
type=hitby
trigger1= (root,stateno=3750)
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1007, Bind]
type=bindtoroot
trigger1= 1
time=-1

[State 1007, Assert]
type=assertspecial
trigger1= 1
flag=invisible
;---------------------------------------------------------------------------------
;---FADE IN---
;---------------------------------------------------------------------------------
[Statedef 1706]
physics=N
anim=8787
sprpriority=ifelse((parent,ishelper),0,-2)

[State 1706, nothitby]
type=nothitby
trigger1= 1
time=-1
value=SCA

[State 1706, FX]
type=helper
trigger1= !(parent,ishelper)
helpertype=normal
stateno=1706
ID=1706
name="Warp FX"
postype=p1
ownpal=1
persistent=0

[State 1706, animvar]
type=varset
trigger1= !time
var(0)=(root,anim)

[State 1706, animvar]
type=varset
trigger1= !time
var(1)=(root,animelemno(0))

[State 1706, Anim]
type=changeanim
trigger1= 1
value=var(0)
elem=var(1)

[State 1706, posvar]
type=varadd
trigger1= var(2)<60
var(2)=6

[State 1706, Bind]
type=bindtoroot
trigger1= 1
pos=ifelse((parent,ishelper),-60+var(2),60-var(2))

[State 1706, fadeout]
type=trans
trigger1= 1
trans=addalpha
alpha=25*time,ceil(256-25*time)
[State 1706, End]
type=destroyself
trigger1= time>=10 || root,movetype=H

;========================<PSYCHO CRUSHER>=============================
[Statedef 1005]
physics=N
anim=1005
sprpriority=3
ctrl=0

[State 1005, Bind]
type=bindtoroot
trigger1= 1
pos=70,-30

[State 1005, Turn]
type=turn
trigger1= facing!=(root,facing)

[State 1005, Assert]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256
ignorehitpause=1

[State 1005, End]
type=destroyself
trigger1= (root,stateno!=750) || (root,anim!=750)
trigger2= (root,stateno=750) && root,animelemtime(6)<0

;========================<FINAL PSYCHO CRUSHER>=============================
[Statedef 4006]
physics=N
anim=4006
sprpriority=5
velset=-2,0

[State 4006, Assert]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 4006, Bind]
type=bindtoroot
trigger1= (root,stateno=3750) && (root,anim=755)
pos= 160-(20*time), -60

[State 4006, Shrink]
type=angledraw
trigger1= 1
scale= .25+(.03125*time), .5+(.0625*time)

[State 4006, fadeout]
type=trans
trigger1= 1
trans=addalpha
alpha=256-(16*time),256

[State 4006, End]
type=destroyself
trigger1= time>=16


;--------------------------------------------------------------------------------
; Chain P2 movement
;-------------------------------------------------------------------------------
[Statedef 4520];----------- P2 going
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 5
facep2 = 1

[State 3520, a1]
type = ChangeAnim2
Trigger1 = !Time
value = 3522

[State 3520, a2]
type = ScreenBound
trigger1 = 1
value = 0

[State 3520, a3];safe
type = SelfState
trigger1 = time = 250 ;!gethitvar(isbound)
value = 5050


[Statedef 4521];-------- wall hit
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 3521, a1]
type = ChangeAnim2
Trigger1 = !Time
value = 3523

[State 3521, a2]
type = ScreenBound
trigger1 = 1
value = 0

[State 3521, a2]
type = PosAdd
Triggerall = Facing = -1
trigger1 = ScreenPos x = [160,320]
x = ifelse(p2stateno=4505,3,5)

[State 3521, a2]
type = PosAdd
Triggerall = Facing = 1
trigger1 = ScreenPos x = [0,160]
x = ifelse(p2stateno=4505,3,5)

[State 3521, A5]
type = Veladd
trigger1 = time >= 10
y = .9

[State 3500, A6]
type = Velset
trigger1 = !time
y = -6

[State 3521, a3];safe
type = SelfState
trigger1 = time = 250 ;!gethitvar(isbound)
value = 5050

[State 3521, a3];safe
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4522

[Statedef 4522];----------- P2 hit ground
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -2

[State 3522,a2]
type = Turn
trigger1 =!time
;ignorehitpause = 0
;persistent = 1

[State 777, xy]
type = PowerAdd
trigger1 =!time
value = 5

[State 3522, a1]
type = ChangeAnim
Triggerall = p2stateno!=4570
Triggerall = selfAnimExist(5300)
trigger1 = anim=3521 && animelem = 5
value = 5300

[State 3522, a1]
type = ChangeAnim2
Trigger1 = !Time
value = 3521

[State 3522, a1]
type = ChangeAnim2
Trigger1 = p2stateno=4506
value = 3524
persistent =0

[State 3522, a11]
type = PosSet
trigger1 = p2stateno=4506
y =-57
persistent =0

[State 3522, a11]
type = PosSet
trigger1 = !time
y =0

[State 3522, a2]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 3522, a3];safe
type = changestate
trigger1 = time >= 375 ;
trigger2 = p2stateno=4507
value = 4523
ctrl = 0
[State 3522, a3];safe
type = selfstate
trigger1 = p2stateno != [4500,4590]
value = 5050
ctrl = 0

;--------------------------------------

[Statedef 4523];------ p2hit stomp
type = U
movetype = H
physics = N
sprpriority = -2
velset = 0,-4

[State 3523, a2]
type = PosAdd
Triggerall = Facing = -1
trigger1 = ScreenPos x = [160,320]  ;160
x = ifelse(p2stateno=4505,3,5)

[State 3523, a2]
type = PosAdd
Triggerall = Facing = 1
trigger1 = ScreenPos x = [0,160]
x = ifelse(p2stateno=4505,3,5)

[State 777, xy]
type = PowerAdd
trigger1 =!time
value = 5

[State 3523, a0]
type = ChangeAnim2
Trigger1 = !Time
value = 3525

[State 3523, a0]
type = StateTypeSet
trigger1 = time = 10
StateType = A

[State 3523, a2]
type = ScreenBound
trigger1 = 1
value = 0

[State 3523, a0]
type = VelAdd
trigger1 = time <= 10
y = .1

[State 3523, a0]
type = VelAdd
trigger1 = time >= 15
y = .9

[State 3523, a3];safe
type = selfstate
triggerall = p2stateno != [4500,4590]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110

[State 3523, a3];safe
type = changestate
triggerall = p2stateno = [4500,4590]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4524



[Statedef 4524];----------- P2 hit up
type    = U
movetype= H
physics = N
velset = 0,0
sprpriority = -2

[State 3524, a1]
type = ChangeAnim2
Trigger1 = !Time
value = 3526

[State 3524, a1]
type = ChangeAnim2
Trigger1 = p2stateno=4505
value = 3521
persistent =0

[State 777, xy]
type = PowerAdd
trigger1 =!time
value = 5

[State 3524, a1]
type = ChangeAnim
Triggerall = selfAnimExist(5300)
trigger1 = anim=3521 && animelem = 6
value = 5300

[State 3524, a1]
type = ChangeAnim2
Trigger1 = stateno= 4506;p2stateno = 4506
value = 3524
persistent = 0

[State 3524, a11]
type = PosSet
trigger1 = stateno= 4506;p2stateno = 4506
x = ifelse(facing=-1,-16,16)
y =-57
persistent =0



[State 3524, a11]
type = PosSet
trigger1 = !time
y = 0

[State 3524, a2]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1


[State 3524, a3];safe
type = SelfState
trigger1 = p2stateno != [4500,4590]
trigger2 = p2stateno=4507
trigger3 = time >= 700 ;safe
value = 5110


[Statedef 4525];----------- P2 hit
type = A
movetype = H
physics = N
sprpriority = -2
velset = 0,-3

[State 3525, a0]
type = ChangeAnim2
Trigger1 = !Time
value = 3527

[State 777, xy]
type = PowerAdd
trigger1 =!time
value = 5

[State 3525, a2]
type = ScreenBound
trigger1 = 1
value = 0

[State 3525, a0]
type = VelAdd
trigger1 = time >= 0
y = .9


[State 3525, a3];safe
type = changestate
triggerall = p2stateno != [4500,4590]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110

[State 3525, a3];safe
type = changestate
triggerall = p2stateno = [4500,4590]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4524

;------------------------------------------------------------------------------
;Hit part due
;------------------------------------------------------------------------------
[Statedef 444444]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7697, Burning_Anim]
type = ChangeAnim
trigger1 = time=1
value = 5300

[State 0, ]
type = VelSet
;triggerall= facing = 1
trigger1 = Time = 0
x = -4
y = -2

[State 0, ]
type = VelSet
trigger1 = Time = 10
x = 0
y = 0

[State 3524, a11]
type = PosSet
triggerall= facing = 1
trigger1 = Time = 10
x = -50
y = 0
persistent =0

[State 3524, a11]
type = PosSet
triggerall= facing = -1
trigger1 = Time = 10
x = 50
y = 0
persistent =0

[State 7696, 6]
type = SelfState
trigger1 = Time = 600
ctrl = 1
value = 5110

;------------------------------------------------------------------------------
;Hit part due due
;------------------------------------------------------------------------------
[Statedef 444445]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5030

[State 7697, ]
type = ChangeAnim2
trigger1 = time=1
value = 444445

[State 0, ]
type = VelSet
;triggerall= facing = 1
trigger1 = Time = 0
x = -4
y = -1

[State 0, ]
type = VelSet
trigger1 = Time = 10
x = 0
y = 0

[State 3524, a11]
type = PosSet
triggerall= facing = 1
trigger1 = Time = 10
x = -75
y = 0
persistent =0

[State 3524, a11]
type = PosSet
triggerall= facing = -1
trigger1 = Time = 10
x = 75
y = 0
persistent =0

;[State 7671, green_FX]
;type = PalFX
;trigger1 = Time = 1
;time = 50
;add = -150,-40,-100
;sinadd = 0,80,15,20
;color = 0
;invertall = 1

[State 3525, a3];safe
type = changestate
trigger1 = p2stateno=830 && time >= 80
value = 44446


[Statedef 44446];----------- P2 hit
type = A
movetype = H
physics = N
sprpriority = -2
velset = -2,-21
ctrl = 0
anim = 5030

[State 7696, 6]
type = SelfState
trigger1 = Time = 40
ctrl = 1
value = 5071

;------------------------------------------------------------------------------
;Hit Mancha 1
;------------------------------------------------------------------------------
[Statedef 555555]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5000

[State 7696, 6]
type = SelfState
trigger1 = Time = 600
ctrl = 1
value = 5110

;------------------------------------------------------------------------------
;Hit Mancha 2
;------------------------------------------------------------------------------
[Statedef 555556]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5007

[State 7696, 6]
type = SelfState
trigger1 = Time = 600
ctrl = 1
value = 5110

;------------------------------------------------------------------------------
;Hit Mancha 3
;------------------------------------------------------------------------------
[Statedef 555557]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5010

[State 7696, 6]
type = SelfState
trigger1 = Time = 600
ctrl = 1
value = 5110

;------------------------------------------------------------------------------
;Hit Mancha 4
;------------------------------------------------------------------------------
[Statedef 555558]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5006

[State 7696, 6]
type = SelfState
trigger1 = Time = 600
ctrl = 1
value = 5110

;------------------------------------------------------------------------------
;Hit Mancha 5
;------------------------------------------------------------------------------
[Statedef 555559]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5001

[State 7696, 6]
type = SelfState
trigger1 = Time = 600
ctrl = 1
value = 5110

;------------------------------------------------------------------------------
;Hit Alkhema
;------------------------------------------------------------------------------
[Statedef 555560]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5017

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time= -1
value = 50177

[State 7696, 6]
type = SelfState   ; safe
trigger1 = Time = 600
ctrl = 1
value = 5110


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Command "A" part 1     <- -> <- -> FK
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; <-
[Statedef 13290]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 2060, 7];
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,0
volume = 255

[State 2000, 1] ; command base
type = Explod
trigger1 = time = 1
anim = 13312
pos = 70, 10
postype = back
bindtime = -1
removetime = 240
sprpriority = 4
ID = 13290

[State 1000, 7]
type = Changestate
trigger1 = command = "holdback"
ctrl = 1
value = 13291

[State 1000, 7]
type = Changestate
trigger1 = time = 240
trigger2 = (command = "holddown") || (command = "holdfwd") || (command = "holdup")
trigger3 = (command = "x") || (command = "y") || (command = "z")
trigger4 = (command = "a") || (command = "b") || (command = "c")
trigger5 = command ="start"
ctrl = 0
value = 13297

;---------------------------------------------------------------------------
; <- ->
[Statedef 13291]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13290

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13313
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13291

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18700
ID = 18700
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "holdfwd"
ctrl = 1
value = 13292

[State 1000, 7]
type = Changestate
trigger1 = time =60
trigger2 = command!="holdfwd" && time >= 30
ctrl = 0
value = 13297


;---------------------------------------------------------------------------
; <- -> <-
[Statedef 13292]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13291

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13314
pos = 70,10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13292

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18701
ID = 18701
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "holdback"
ctrl = 1
value = 13293

[State 1000, 7]
type = Changestate
trigger1 = time = 60
trigger2 = command!="holdback" && time >= 30
ctrl = 0
value = 13297

;---------------------------------------------------------------------------
;<- -> <- ->
[Statedef 13293]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13315
pos = 70,10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13293

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 1
ID = 13292

[State 2060, 7]; snd
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18702
ID = 18702
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "holdfwd"
ctrl = 1
value = 13294

[State 1000, 7]
type = Changestate
trigger1 = time = 60
trigger2 = command!="holdfwd" && time >= 30
ctrl = 0
value = 13297


;---------------------------------------------------------------------------
;<- -> <- -> FK
[Statedef 13294]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 1
ID = 13293

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13316
pos = 70,10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13294

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18703
ID = 18703
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "c"
ctrl = 0
value = 13295

[State 1000, 7]
type = Changestate
trigger1 = time = 60
trigger2 = command!="c" && time >= 30
ctrl = 0
value = 13297

;---------------------------------------------------------------------------
; Succeed  1
;---------------------------------------------------------------------------
[Statedef 13295]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 1
ID = 13294

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13317
pos = 70,10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13295

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18704
ID = 18704
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 2010, 1]
type = Helper
ID =13296
helpertype = normal
name = "succeed"
pos = 20, -20
postype = back
stateno = 13296
trigger1 = time = 59
value = 13296

[State 2011, ]
type = DestroySelf
Trigger1 = time = 60
Trigger2 = parent, movetype=H
ignorehitpause = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Command "A" alt part 1     u d u d FK
;---------------------------------------------------------------------------
; u
[Statedef 13390]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 2060, 7];
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,0
volume = 255

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13342
pos = 70, 10
postype = back
bindtime = -1
removetime = 240
sprpriority = 4
ID = 13390

[State 1000, 7]
type = Changestate
trigger1 = command = "holdup"
ctrl = 1
value = 13391

[State 1000, 7]
type = Changestate
trigger1 = time = 240
trigger2 = (command = "holddown") || (command = "holdback") || (command = "holdfwd")
trigger3 = (command = "x") || (command = "y") || (command = "z")
trigger4 = (command = "a") || (command = "b") || (command = "c")
trigger5 = command ="start"
ctrl = 0
value = 13297

;---------------------------------------------------------------------------
; u d
[Statedef 13391]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13390

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13343
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13391

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18700
ID = 18700
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "holddown"
ctrl = 1
value = 13392

[State 1000, 7]
type = Changestate
trigger1 = time = 60
trigger2 = command!="holddown" && time >= 30
ctrl = 0
value = 13297

;---------------------------------------------------------------------------
; u d u
[Statedef 13392]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13391

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13344
pos = 70,10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13392

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18701
ID = 18701
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "holdup"
ctrl = 1
value = 13393

[State 1000, 7]
type = Changestate
trigger1 = time = 60
trigger2 = command!="holdup" && time >= 30
ctrl = 0
value = 13297


;---------------------------------------------------------------------------
;u d u d
[Statedef 13393]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13345
pos = 70,10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13393

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 1
ID = 13392

[State 2060, 7]; snd
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18702
ID = 18702
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "holddown"
ctrl = 1
value = 13394

[State 1000, 7]
type = Changestate
trigger1 = time = 60
trigger2 = command!="holddown" && time >= 30
ctrl = 0
value = 13297


;---------------------------------------------------------------------------
;u d u d FK
[Statedef 13394]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 1
ID = 13393

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13346
pos = 70,10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13394

[State 2060, 7]; snd
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18703
ID = 18703
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "c"
ctrl = 0
value = 13395

[State 1000, 7]
type = Changestate
trigger1 = time = 60
trigger2 = command!="c" && time >= 30
ctrl = 0
value = 13297


;---------------------------------------------------------------------------
; Succeed  2
;---------------------------------------------------------------------------
[Statedef 13395]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 1
ID = 13394

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13347
pos = 70,10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 13395

[State 2060, 7]; snd
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18704
ID = 18704
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 2010, 1]
type = Helper
ID =13296
helpertype = normal
name = "succeed"
pos = 20, -20
postype = back
stateno = 13296
trigger1 = time = 59
value = 13296

[State 2011, ]
type = DestroySelf
Trigger1 = time = 60
Trigger2 = parent, movetype=H
ignorehitpause = 0

;---------------------------------------------------------------------------
;Succed helper
;---------------------------------------------------------------------------
[Statedef 13296]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 1
ID = 13295

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 1
ID = 13395

[State 2060, 7]; snd
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,3
volume = 255

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13325
pos = 110,25
postype = back
bindtime = -1
removetime = 500
sprpriority = 4
ID = 13296
ownpal=1

[State 1000, 7]
type = bindtoroot
trigger1 = time = 0
triggerall = facing = 1
value = 20, -20
time = 60

[State 1000, 7]
type = bindtoroot
trigger1 = time = 0
triggerall = facing = -1
value = 150, -20
time = 60

[State 2011, ]
type = DestroySelf
Trigger1 = time = 400
Trigger2 = parent, movetype=H
ignorehitpause = 0

;---------------------------------------------------------------------------
;Failed Messege
;---------------------------------------------------------------------------
[Statedef 13297]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13290

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13291

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13292

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13293

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13294

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13295
;-------

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13390

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13391

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13392

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13393

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13394

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 13395

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,4
volume = 255

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13326
pos = 120,25
postype = back
bindtime = -1
removetime = 20
sprpriority = 4
ID = 13297
ownpal=1

[State 2011, ]
type = DestroySelf
Trigger1 = time = 20
Trigger2 = parent, movetype=H
ignorehitpause = 0


;---------------------------------------------------------------------------
;Command "B" part 1     -> u LP LK FP
;---------------------------------------------------------------------------
; ->
[Statedef 23290]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 2060, 7];
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,0
volume = 255

[State 2000, 1] ; command base
type = Explod
trigger1 = time = 1
anim = 13332
pos = 70, 10
postype = back
bindtime = -1
removetime = 180
sprpriority = 4
ID = 23290

[State 1000, 7]
type = Changestate
trigger1 = command = "holdfwd"
ctrl = 1
value = 23291

[State 1000, 7]
type = Changestate
trigger1 = time = 180
trigger2 = (command = "holddown") || (command = "holdback") || (command = "holdup")
trigger3 = (command = "x") || (command = "y") || (command = "z")
trigger4 = (command = "a") || (command = "b") || (command = "c")
trigger5 = command ="start"
ctrl = 0
value = 23297

;---------------------------------------------------------------------------
; -> u
[Statedef 23291]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23290

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13333
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23291

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18700
ID = 18700
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "holdup"
ctrl = 1
value = 23292

[State 1000, 7]
type = Changestate
trigger1 = command!="holdup" && time >=30
trigger2=  time = 60
ctrl = 0
value = 23297


;---------------------------------------------------------------------------
; -> u LP
[Statedef 23292]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23291

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13334
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23292

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18701
ID = 18701
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "x"
ctrl = 1
value = 23293

[State 1000, 7]
type = Changestate
trigger1 = command!="x" && time >=30
trigger2=  time = 60
ctrl = 0
value = 23297

;---------------------------------------------------------------------------
; -> u LP LK
[Statedef 23293]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23292

[State 2000, 1]
type = Explod
trigger1 = time =0
anim = 13335
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23293

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18702
ID = 18702
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "a"
ctrl = 1
value = 23294

[State 1000, 7]
type = Changestate
trigger1 = command!="a" && time >=30
trigger2=  time = 60
ctrl = 0
value = 23297

;---------------------------------------------------------------------------
; -> u LP LK FP
[Statedef 23294]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23293

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13336
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23294

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18703
ID = 18703
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "z"
ctrl = 0
value = 23295

[State 1000, 7]
type = Changestate
trigger1 = command!="z" && time >=30
trigger2=  time = 60
ctrl = 0
value = 23297

;---------------------------------------------------------------------------
; Succeed
[Statedef 23295]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4


[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23294

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13337
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23295

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18704
ID = 18704
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 2010, 1]
type = Helper
ID =23296
helpertype = normal
name = "succeedX"
pos = 20, -20
postype = back
stateno = 23296
trigger1 = time = 59
value = 23296
ownpal =1

[State 2011, ]
type = DestroySelf
Trigger1 = time = 60
Trigger2 = parent, movetype=H
ignorehitpause = 0

;---------------------------------------------------------------------------
;Command "B" Alt part 1    LP MP FP MK FP
;---------------------------------------------------------------------------
; LP
[Statedef 23390]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 2060, 7];
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,0
volume = 255

[State 2000, 1] ; command base
type = Explod
trigger1 = time = 1
anim = 13352
pos = 70, 10
postype = back
bindtime = -1
removetime = 180
sprpriority = 4
ID = 23390

[State 1000, 7]
type = Changestate
trigger1 = command = "x"
ctrl = 1
value = 23391

[State 1000, 7]
type = Changestate
trigger1 = time = 180
trigger2 = (command = "holddown") || (command = "holdback") || (command = "holdup")
trigger3 = (command = "holdfwd") || (command = "y") || (command = "z")
trigger4 = (command = "a") || (command = "b") || (command = "c")
trigger5 = command ="start"
ctrl = 0
value = 23297

;---------------------------------------------------------------------------
; LP MP
[Statedef 23391]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23390

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13353
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23391

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18700
ID = 18700
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "y"
ctrl = 1
value = 23392

[State 1000, 7]
type = Changestate
trigger1 = command!="y" && time >=30
trigger2=  time = 60
ctrl = 0
value = 23297


;---------------------------------------------------------------------------
; LP MP FP
[Statedef 23392]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23391

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13354
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23392

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18701
ID = 18701
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "z"
ctrl = 1
value = 23393

[State 1000, 7]
type = Changestate
trigger1 = command!="z" && time >=30
trigger2=  time = 60
ctrl = 0
value = 23297

;---------------------------------------------------------------------------
; LP MP FP MK
[Statedef 23393]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23392

[State 2000, 1]
type = Explod
trigger1 = time =0
anim = 13355
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23393

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18702
ID = 18702
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "b"
ctrl = 1
value = 23394

[State 1000, 7]
type = Changestate
trigger1 = command!="b" && time >=30
trigger2=  time = 60
ctrl = 0
value = 23297

;---------------------------------------------------------------------------
; LP MP FP MK FP
[Statedef 23394]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23393

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13356
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23394

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18703
ID = 18703
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 1000, 7]
type = Changestate
trigger1 = command = "z"
ctrl = 0
value = 23395

[State 1000, 7]
type = Changestate
trigger1 = command!="z" && time >=30
trigger2=  time = 60
ctrl = 0
value = 23297

;---------------------------------------------------------------------------
; Succeed
[Statedef 23395]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23394

[State 2000, 1]
type = Explod
trigger1 = time = 0
anim = 13357
pos = 70, 10
postype = back
bindtime = -1
removetime = 60
sprpriority = 4
ID = 23395

[State 2060, 7]
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,1
volume = 255

[State 777, hsp]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 18704
ID = 18704
name = "hitspark1"
postype = back
pos = 0,0
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 2010, 1]
type = Helper
ID =23296
helpertype = normal
name = "succeedX"
pos = 20, -20
postype = back
stateno = 23296
trigger1 = time = 59
value = 23296
ownpal =1

[State 2011, ]
type = DestroySelf
Trigger1 = time = 60
Trigger2 = parent, movetype=H
ignorehitpause = 0

;---------------------------------------------------------------------------
;Succed helper  2
;---------------------------------------------------------------------------
[Statedef 23296]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 1
ID = 23295

[State 2060, 7]; snd
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,3
volume = 255

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13325
pos = 110,25
postype = back
bindtime = -1
removetime = 500
sprpriority = 4
ID = 23296

[State 1000, 7]
type = bindtoroot
trigger1 = time = 0
triggerall = facing = 1
value = 20, -20
time = 60

[State 1000, 7]
type = bindtoroot
trigger1 = time = 0
triggerall = facing = -1
value = 150, -20
time = 60

[State 2011, ]
type = DestroySelf
Trigger1 = time = 600
Trigger2 = parent, movetype=H
ignorehitpause = 0

;---------------------------------------------------------------------------
;Failed Messege 2
;---------------------------------------------------------------------------
[Statedef 23297]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 8787
sprpriority = 4

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23290

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23291

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23292

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23293

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23294

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23295
;------------------

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23390

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23391

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23392

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23393

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23394

[State 1000, 7]
type = RemoveExplod
trigger1 = time = 0
ID = 23395

[State 2060, 7]; snd
type = PlaySnd
trigger1 = time = 0
channel = 9
value = 60,4
volume = 255

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 13326
pos = 120,25
postype = back
bindtime = -1
removetime = 20
sprpriority = 4
ID = 23297


[State 2011, ]
type = DestroySelf
Trigger1 = time = 20
Trigger2 = parent, movetype=H
ignorehitpause = 0

;---------------------------------------------------------------------------
[Statedef 5600]
type = S
movetype = H
physics = N
velset = -26,0
ctrl = 0

[State 5600, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5600, push]
type = PlayerPush
trigger1 = 1
value = 0

[State 5600, anim]
type = ChangeAnim
trigger1 = 1
value = 5017

[State 5600, shake]
type = EnvShake
trigger1 = time > 5
trigger1 = backedgedist <= 20
time = 10
ampl = 4

[State 5600, end]
type = ChangeState
trigger1 = time > 5
trigger1 = backedgedist <= 20
value = 5610

;---------------------------------------------------------------------------
[Statedef 5610]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 5610, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5610, anim]
type = ChangeAnim
trigger1 = time < 7
value = 5030

[State 5610, anim]
type = ChangeAnim
trigger1 = time = 7
value = 5050

[State 5610, vel]
type = VelSet
trigger1 = time = 7
persistent = 0
x = 3
y = -6

[State 5610, vel]
type = VelAdd
trigger1 = time >= 7
y = 0.45

[State 5610, shake]
type = EnvShake
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
time = 10
ampl = 3

[State 5610, anim]
type = ChangeAnim
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5050

[State 5610, end]
type = SelfState
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5100

;---------------------------------------------------------------------------
;Throw 2
;-----------------------------------------------------------------------------
[Statedef 850]
type = S
movetype = A
physics = S
velset = 0,0
anim = 800
ctrl = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 2, miss
sparkno = -1
hitsound = S1, 1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 854
p2stateno = 855
guard.dist = 0
fall = 1

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 854]
type = S
movetype = A
physics = S
anim = 730
velset = 0,0


[State 777, hsp] ; particles
type = helper
trigger1 = !time
helpertype = normal
stateno = 8705
ID = 8705
name = "hitspark5"
postype = p2
pos = -22,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value =21,0

[State 1000, 1]
type = PlaySnd
trigger1=AnimElem = 4
value =2,2

[State 810, a]
type = Width
trigger1 = 1
value = 0, 0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
pos = 85,0


[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 9
pos = 85,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 10
pos = 85,0

[state 701, hit]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SP
animtype = Heavy
guardflag = MA
hitflag = MAFDP
priority =12, Hit
pausetime = 0,20
sparkno = -1
damage=100,20
guard.sparkno = -1
hitsound   = S2,2
guardsound = S45, 8
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -16, -5
air.velocity = -16,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.time = 50
palfx.add = -150,-40,-100
palfx.sinadd =  0,80,15,20
palfx.color = 0
palfx.invertall = 1

[State 777, hsp]
type = helper
triggerall= !NumHelper(8702)
trigger1= AnimElem = 4
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos =0,-90
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hsp]
type = helper
triggerall= !NumHelper(8704)
trigger1= movehit = 1
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,-60
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, State]
type = sprpriority
trigger1 = 1
value = 2

[State 1410, State]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 855]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = -2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 77731

[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 7672, green_FX]
type = PalFX
trigger1 = Animelem=4
time = 40
add = -150,-40,-100
sinadd = 0,80,15,20
color = 0
invertall = 1

[State 7696, 6]
type = selfstate
trigger1 = AnimTime =0
ctrl = 0
value = 5050


 ;--------------------------------------------------------------------------------
; Chain P2 movement  combo 2
;-------------------------------------------------------------------------------
[Statedef 4620];----------- P2 going
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 5
facep2 = 1

[State 3520, a1]
type = ChangeAnim2
Trigger1 = !Time
value = 3522

[State 3520, a2]
type = ScreenBound
trigger1 = 1
value = 0

[State 3520, a3];safe
type = SelfState
trigger1 = time = 250 ;!gethitvar(isbound)
value = 5050


[Statedef 4721];-------- wall hit
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 3521, a1]
type = ChangeAnim2
Trigger1 = !Time
value = 3523

[State 3521, a2]
type = ScreenBound
trigger1 = 1
value = 0

[State 3521, a2]
type = PosAdd
Triggerall = Facing = -1
trigger1 = ScreenPos x = [160,320]
x = ifelse(p2stateno=4610,3,5)

[State 3521, a2]
type = PosAdd
Triggerall = Facing = 1
trigger1 = ScreenPos x = [0,160]
x = ifelse(p2stateno=4610,3,5)

[State 3521, A5]
type = Veladd
trigger1 = time >= 10
y = .9

[State 3500, A6]
type = Velset
trigger1 = !time
y = -6

;[State 3521, a3];safe
;type = SelfState
;trigger1 = time = 250 ;!gethitvar(isbound)
;value = 5050

[State 3521, a3];safe
type = changestate
;trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4722

[Statedef 4722];----------- P2 hit ground
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -2

[State 3522,a2]
type = Turn
trigger1 =!time
;ignorehitpause = 0
;persistent = 1

[State 777, xy]
type = PowerAdd
trigger1 =!time
value = 5

;[State 3522, a1]
;type = ChangeAnim
;Triggerall = p2stateno!=4570
;Triggerall = selfAnimExist(5300)
;trigger1 = anim=3521 && animelem = 5
;value = 5300

[State 3522, a1]
type = ChangeAnim2
Trigger1 = !Time
value = 3521

[State 3522, a11]
type = PosSet
Triggerall = Facing = 1
trigger1 = p2stateno=4610
y =0
x= -30
persistent =0
[State 3522, a11]
type = PosSet
Triggerall = Facing = -1
trigger1 = p2stateno=4610
y =0
x= 30
persistent =0

;[State 3522, a11]
;type = PosSet
;trigger1 = !time
;y =0

[State 3522, a2]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 3522, a3];safe
type = changestate
trigger1 = time >= 375 ;
trigger2 = p2stateno=4607
value = 4623
ctrl = 0

[State 3522, a3];safe
type = selfstate
trigger1 = p2stateno != [4500,4890]
value = 5050
ctrl = 0

;--------------------------------------

[Statedef 4623];------ p2hit stomp
type = U
movetype = H
physics = N
sprpriority = -2
velset = 0,-4

[State 3523, a2]
type = PosAdd
Triggerall = Facing = -1
trigger1 = ScreenPos x = [160,320]  ;160
x = ifelse(p2stateno=4610,3,5)

[State 3523, a2]
type = PosAdd
Triggerall = Facing = 1
trigger1 = ScreenPos x = [0,160]
x = ifelse(p2stateno=4610,3,5)

[State 3522, a11]
type = PosSet
trigger1 = !time
y =0

[State 777, xy]
type = PowerAdd
trigger1 =!time
value = 5

[State 3523, a0]
type = ChangeAnim2
Trigger1 = !Time
value = 3525

[State 3523, a0]
type = StateTypeSet
trigger1 = time = 10
StateType = A

[State 3523, a2]
type = ScreenBound
trigger1 = 1
value = 0

[State 3523, a0]
type = VelAdd
trigger1 = time <= 10
y = .1

[State 3523, a0]
type = VelAdd
trigger1 = time >= 15
y = .9

[State 3523, a3];safe
type = selfstate
triggerall = p2stateno != [4500,4590]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5110

[State 3523, a3];safe
type = changestate
triggerall = p2stateno = [4500,4590]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4524

;------------------------------------------------------------------------------
;Hit part due
;------------------------------------------------------------------------------
[Statedef 344444]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5002

[State 7697, Burning_Anim]
type = ChangeAnim
trigger1 = time=1
value = 5300

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3524, a11]
type = PosSet
triggerall= facing = 1
trigger1 = Time = 0
x = 0
y = 0
persistent =0

[State 3524, a11]
type = PosSet
triggerall= facing = -1
trigger1 = Time = 0
x = 0
y = 0
persistent =0

[State 7696, 6]
type = SelfState
trigger1 = Time = 600
ctrl = 1
value = 5110

;------------------------------------------------------------------------------
;Hit part due due
;------------------------------------------------------------------------------
[Statedef 344445]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5030

[State 7697, ]
type = ChangeAnim2
trigger1 = time=1
value = 344445

[State 0, ]
type = VelSet
;triggerall= facing = 1
trigger1 = Time = 0
x = -3
y = -2

[State 0, ]
type = VelSet
trigger1 = Time = 10
x = 0
y = 0

[State 3524, a11]
type = PosSet
triggerall= facing = 1
trigger1 = Time = 10
x = -25
y = 0
persistent =0

[State 3524, a11]
type = PosSet
triggerall= facing = -1
trigger1 = Time = 10
x = 25
y = 0
persistent =0

[State 3525, a3];safe
type = changestate
trigger1 = animtime =0 ;p2stateno=830 && time >= 80
value = 34446


[Statedef 34446];----------- P2 hit
type = A
movetype = H
physics = N
sprpriority = -2
velset = 0,0
ctrl = 0
anim = 5010

[State 7697, ]
type = ChangeAnim2
trigger1 = time=0
value = 34446


[State 7696, 6]
type = SelfState
trigger1 = Time = 400
ctrl = 1
value = 5071


[Statedef 34447];----------- P2 hit
type = A
movetype = H
physics = N
sprpriority = -2
velset = 0,0
ctrl = 0
anim = 5010

[State 7697, ]
type = ChangeAnim2
trigger1 = time=1
value = 34447

[State 0, TargetLifeAdd]
type = LifeAdd
trigger1 = time=1
value=-1300
kill = 1

[State 7696, 6]
type = SelfState
trigger1 = Time = 400
ctrl = 1
value = 5071


