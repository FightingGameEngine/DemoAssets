;ガッツアッパー
------------------------------------------------
[Statedef 1710]
type    = A
movetype= A
physics = N
velset = 0,1.6
anim = 1710
ctrl = 0
sprpriority = 3

[State 820, 1]
type = EnvShake
trigger1 =TIME= 25
time = 7
freq = 60
ampl = -8

[State 1027, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 25
value = 36
volume= 250

[State 1010]
type = VELADD
trigger1 = TIME >= 0 && TIME < 25
y = .5

[State 1010]
type = VELSET
trigger1 = TIME = 25
y = 0

[State 1010]
type = BINDTOROOT
trigger1 = TIME >= 38 && TIME < 41
POS = -35,-70

[State 1010]
type = BINDTOROOT
trigger1 = TIME >= 41 && TIME < 44
POS = -20,-85

[State 1010]
type = BINDTOROOT
trigger1 = TIME >= 44 && TIME < 45
POS = 20,-75

[State 1010]
type = BINDTOROOT
trigger1 = TIME >= 45 && TIME < 46
POS = 60,-80

[State 1010]
type = BINDTOROOT
trigger1 = TIME >= 46 && TIME < 47
POS = 100,-75

[State 1010]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1010]
type = NotHitBy
trigger1 = time >= 0
value = SCA

[State 107, 2]
type = ChangeState
trigger1 = Time >= 44
value = 1720

------------------------------------------------
[Statedef 1720]
type    = A
movetype= A
physics = N
velset = 0,0;10,0  ;;;; important to make it all 0,0!
anim = 1710
ctrl = 0
sprpriority = 3

[State 1720, VelSet];code credit to MaJiTa
type = VelSet
triggerall = numenemy
triggerall = p2statetype = A || enemy, statetype = A
trigger1 = time = 0
x = (90-(atan((p2bodydist y)/(ifelse(facing = 1, enemy, pos X - Pos X , Pos X - enemy, Pos X)))*(80/Pi)))/11
y = -(atan((p2bodydist y-86)/(ifelse(facing = 1, enemy, pos X - Pos X , Pos X - enemy, Pos X)))*(-80/Pi))/11
ignorehitpause = 1

[State 1720, VelSet];code credit to MaJiTa
type = VelSet
triggerall = numenemy
triggerall = p2statetype = S || enemy, statetype = S || p2statetype = C || enemy, statetype = C || p2statetype = L || enemy, statetype = L
trigger1 = time = 0
x = (90-(atan((p2bodydist y)/(ifelse(facing = 1, enemy, pos X - Pos X , Pos X - enemy, Pos X)))*(80/Pi)))/ifelse(abs(Pos X - enemy, Pos X) > 160, 8, 6)
y = -(atan((p2bodydist y-0)/(ifelse(facing = 1, enemy, pos X - Pos X , Pos X - enemy, Pos X)))*(-80/Pi))/8
ignorehitpause = 1




[State 1000, 5]
type = HitDef
trigger1 = P2STATENO != 101300
trigger1 = TIME = 0
attr = A, HP
animtype  = Hard
damage    = 130,50
getpower = 0,0
priority  = 6
guardflag = M
pausetime =0,5
sparkxy = 0,-60
sparkno = 3
guard.sparkno = 3 ;S30040
hitsound = s37,0
guardsound = S8000,6
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 90,50
givepower = 30,30
fall = 1
air.fall = 1
P2FACING = 1
p1stateno = 1740
p2stateno = 101400
envshake.time = 20
envshake.ampl = -10
envshake.freq = 70

[State 250]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 0
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5

[State 1050, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = 2
ignorehitpause = 1

[State 1050, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 1720
time = -1
ignorehitpause = 1

[State 1250, 6]
type = ChangeState
trigger1 = moveguarded = 1
value = 1730

[State 1010]
type = DestroySelf
trigger1 = time >= 100
trigger2 = FrontEdgeDist < -30

------------------------------------------------
[Statedef 1730]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1730
ctrl = 0
sprpriority = 3


[State 1027, 音を鳴らす]
type = PlaySnd
trigger1 =time = 0
value = S9999,7
volume= 0

[State 820, 1]
type = EnvShake
trigger1 =TIME = 0
time = 15
freq = 60
ampl = -10

[State 1010]
type = VELset
trigger1 = TIME = 0
x = 0
y = 0

[State 1010]
type = DestroySelf
trigger1 = animtime = 0

------------------------------------------------
[Statedef 1740]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1710
ctrl = 0
sprpriority = 3

[State 8]
type = NOTHITBY
trigger1 = 1
value = SCA

[State 3040, 7];画面フラッシュ
type = EnvColor
trigger1 = TIME = 0
persistent = 0
ignorehitpause = 1
time = 4
value = 255,255,255
under = 0

[State 1010]
type = VELset
trigger1 = TIME = 0
x = 0

[State 1010]
type = TargetBind
trigger1 = TIME >= 0
POS = 25,0

[State 1010]
type = VELset
trigger1 = TIME = 12
x = 12

[State 2000]
type = Explod
trigger1 = FrontEdgeDist < 30
anim = 1745
pos = 20,30
sprpriority =3
ownpal = 1
bindtime = 1
supermove = 1

[State 1250, 6]
type = ChangeState
trigger1 = FrontEdgeDist < 30
value = 1730

[State 1010]
type = DestroySelf
trigger1 = time >= 100

;--------------------------------------------------------------------

;壁ぶつかり
[Statedef 101100]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0


[State 1020, 4]
type = EnvShake
trigger1 = time = 0
time = 15
ampl = -10
freq = 70
phase = 70

[State 1027, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 0
value = F7,2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 101100

[State 1];カメラ固定
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,1

[state a]
type = changestate
trigger1 = animtime = 0
trigger1 = prevstateno = 101400
value = 101300

[state a]
type = changestate
trigger1 = animtime = 0
value = 101200

;---------------------------------------------------------------------------
;落ちる
[Statedef 101200]
type    = A
movetype= H
physics = N
velset = 1.5,-5.5
sprpriority = 0

[State 820, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 5052

[state a]
type = null;turn
trigger1 = time = 0


[State 1];カメラ固定
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1]
type = NOTHITBY
trigger1 = 1
value = SCA

[State 821, 1] ;これは重力これは毎フレーム事に0.4の力が加わります
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 3] 
type = SelfState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 
;---------------------------------------------------------------------------
;跳ね返り
[Statedef 101300]
type    = A
movetype= H
physics = N
velset = 2.5,-7.5
sprpriority = 0

[state a]
type = null;turn
trigger1 = time = 0

[State 820, 1]
type = Null;ChangeAnim
Trigger1 = Time = 0
value = 5052

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1];カメラ固定
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,1

[State 821, 1] ;これは重力これは毎フレーム事に0.4の力が加わります
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 3] 
type = SelfState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 

;---------------------------------------------------------------------------
;(ENEMY)吹き飛び2
[Statedef 101400]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0 

[state a]
type = velset
trigger1 = animelem = 2
x = -16
y = -1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 101000

ｿﾘﾖﾆﾆﾁﾄｻﾒﾆｶｯ
;[State 1];カメラ固定
;type = screenbound
;trigger1 = 1
;value = 1
;movecamera = 0,1

[state a]
type = changestate
triggerall = animelem = 2,>=0
trigger1 = backEdgebodydist <=10
trigger2 = time >=100
value = 101100


;-------------------------------------------------------------------------------
;Super Optic Beam
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle = 0;  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 0


[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1



[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 1,1




[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0





;------------End of Hyper Effects

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 172,3
channel = -1

[State 0, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal ;player
name = "Hyper Raio"
ID = 3001
stateno = 3001
pos = 0,-80
postype = p1    ;p2,front,back,left,right
bindtime = -1
size.shadowoffset =0


[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 22
triggerall = time < 102
trigger1 = timemod = 5,1
value = 22




[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3001]
type = A
movetype = A
physics = N
anim = 3001
velset = 0,0
sprpriority = 99

[State 3101, ParentVarSet]
type = ParentVarSet
trigger1 = enemynear,movetype = H
fv = 27
value = 1

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x ;- ifelse(facing=-1,-30,30);+ 30;- 10
y = parent,pos y - 80

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1



[State 220, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HP
damage = 4,1
guardflag = MA
pausetime = 0,1
hitsound = S23,0
guardsound = S21,0
sparkno = 3
guard.sparkno = S3003
sparkxy = -40,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,ifelse(enemynear,name="Havok",0,-5)
guard.velocity = -5
air.velocity = -4,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
envshake.time = 9
envshake.ampl = 5
fall = 1





[State 0, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3000
channel = 1
;ignorehitpause =
;persistent =


[State 0, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 3000
;ignorehitpause =
;persistent =

;-------------------------------------------------------------------------------

;Missle Strike Hyper
[StateDef 3300]
type = S
movetype= A
physics = S
juggle  = 10
velset = 0,0
ctrl = 0
anim = 3200
poweradd = 20



[State 0, PlaySnd]
type = PlaySnd
trigger1 = Stateno = 3300 && time = 50
trigger2 = Stateno = 3300 && time = 90
trigger3 = Stateno = 3300 && time = 130
trigger4 = Stateno = 3300 && time = 170
trigger5 = Stateno = 3300 && time = 210
trigger6 = Stateno = 3300 && time = 250
trigger7 = Stateno = 3300 && time = 290
trigger8 = Stateno = 3300 && time = 330
value = S46,0
volume = 300


[State 0, PlaySnd]
type = PlaySnd
trigger1 = Stateno = 3300 && time = 50
trigger2 = Stateno = 3300 && time = 90
trigger3 = Stateno = 3300 && time = 130
trigger4 = Stateno = 3300 && time = 170
trigger5 = Stateno = 3300 && time = 210
trigger6 = Stateno = 3300 && time = 250
trigger7 = Stateno = 3300 && time = 290
trigger8 = Stateno = 3300 && time = 330
value = S47,0
volume = 300



[State 0, PlaySnd]
type = PlaySnd
trigger1 = Stateno = 3300 && time = 0
value = S48,0


[State 3300, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1



[State 3300, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 3300, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3300, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3300, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3300, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 1,1




[State 3300, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 3300, Missle 1]
type = Projectile
trigger1 = time = 70 || time = 220
offset = 0, -250
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 6,6
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 14
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = S15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,-2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 2]
type = Projectile
trigger1 = time = 80 || time = 230
offset = 50, -250
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 4,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 3]
type = Projectile
trigger1 = time = 90 || time = 240
offset = -60, -250
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 7,3
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 14
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 4]
type = Projectile
trigger1 = time = 100 || time = 250
offset = 30, -220
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 8,4
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 5]
type = Projectile
trigger1 = time = 110 || time = 260
offset = -20, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,8
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 11
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 6]
type = Projectile
trigger1 = time = 120 || time = 270
offset = 0, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 7,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 7]
type = Projectile
trigger1 = time = 130 || time = 280
offset = 0, -205
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 6,3
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 14
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 8]
type = Projectile
trigger1 = time = 140 || time = 290
offset = 40, -204
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,2
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 9]
type = Projectile
trigger1 = time = 150 || time = 300
offset = 35, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 11
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 10]
type = Projectile
trigger1 = time = 160 || time = 310
offset = 10, -230
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 9,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 11]
type = Projectile
trigger1 = time = 170 || time = 320
offset = 0, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,7
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 12]
type = Projectile
trigger1 = time = 180 || time = 330
offset = -15, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 6,9
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 14
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 13]
type = Projectile
trigger1 = time = 190 || time = 340
offset = -30, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity =6,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 14]
type = Projectile
trigger1 = time = 200 || time = 350
offset = -10, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 9,2
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 15]
type = Projectile
trigger1 = time = 210 || time = 360
offset = 0, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 5,8
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 16]
type = Projectile
trigger1 = time = 220 || time = 370
offset = 40, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 4,5
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 17]
type = Projectile
trigger1 = time = 55
offset = 60, -200
projID = 3202
projanim = 3202
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 9,9
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
;ground.velocity = -10
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2

[State 3300, Missle 18]
type = Projectile
trigger1 = time = 355
offset = 60, -200
projID = 3203
projanim = 3203
projhitanim = 3204
projhits = 1
projsprpriority = 4
velocity = 7,7
;projheightbound = -480, 0
;projedgebound = 4000
;projscreenbound = 4000
;projstagebound = 200
projmisstime = 1
accel = 0, 0
attr = A, NA
animtype = back
damage    = 9
hitflag = MAFP
guardflag = MA
priority = 3
pausetime = 5,6
sparkno = 3
sparkxy = 0,0
hitsound   = s15,14
guardsound = s15,14
ground.type = high
ground.slidetime = 25
;guard.sparkno; = -1
ground.hittime  = 85
air.juggle = 10
air.velocity = -5,2
air.fall = 1
air.hittime = 45
ground.velocity = -5, 0
guard.velocity = -7
air.velocity = 0, 3
airguard.velocity = -2,-2
fall = 1



[State 0, PlaySnd]
type = PlaySnd
trigger1 = moveguarded
value = S6,0

;-----------=[ FX end ]=-----------------

[State 3300, ShakeScreen]
type = Envshake
trigger1 = Time = 55
trigger1 = Time = 70
trigger2 = Time = 80
trigger3 = Time = 90
trigger4 = Time = 100
trigger5 = Time = 110
trigger6 = Time = 120
trigger7 = Time = 130
trigger8 = Time = 140
trigger9 = Time = 150
trigger10 = Time = 160
trigger11 = Time = 170
trigger12 = Time = 175
trigger13 = Time = 180
trigger14 = Time = 190
trigger15 = Time = 200
trigger16 = Time = 210
trigger17 = Time = 220
trigger18 = Time = 230
trigger19 = Time = 240
trigger20 = Time = 250
trigger21 = Time = 260
trigger22 = Time = 270
trigger23 = Time = 280
trigger24 = Time = 290
trigger25 = Time = 300
trigger26 = Time = 310
trigger27 = Time = 320
trigger28 = Time = 330
trigger29 = Time = 334
trigger30 = Time = 355
persistent = 1
time = 15
freq = 70
ampl = 5

[State 3300, ShakeScreen]
type = Envshake
trigger1 = Time = 360
trigger2 = Time = 370
trigger3 = Time = 375
persistent = 1
time = 60
freq = 70
ampl = 5

[State 3300, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 3301
ctrl = 0

;---------------------------------------------------------------------------------------------
;Hyper 3 End
[StateDef 3301]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 3201
poweradd = 20

[State 3301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;3202
ctrl = 1

;------------------------------------------------------------------------------------------------------------
;Missle 1 Helper
[Statedef 3302]
type = A
movetype = A
physics = N
anim = 3202
ctrl = 0
sprpriority = 6
velset = 0,0


[State 20210]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 20210]
type = VelSet
;trigger1 = Parent,AnimElem = 7
trigger1 = AnimTime = 0
x = 3
y = 3


[State 20210]
type = null;HitBy
trigger1 = 1
value = SCA,AP

;[State 20210]
type = null;HitOverride
trigger1 = 1
stateno = 21481
attr = SCA,AP
slot = 0
time = -1


[State 20210]
type = HitDef
attr = S, NP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 10
animtype = Large
priority  = 5, Hit
guardflag = MA
pausetime = 0,7
sparkxy = 0,0
hitsound   = S15,3
guardsound = S15,3
sparkno = 3
;guard.sparkno; = 7;s3204
ground.type = High
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = -5
air.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,40,0)
;palfx.time = 1
;palfx.add = 256,256,256
sprpriority = 4

[State 20210]
type = ChangeState
trigger1 = MoveContact
trigger2 = Pos Y >= 0
trigger2 = Vel Y > 0
trigger3 = Parent,MoveType = H
trigger3 = Vel X = 0
value = 3303
ignorehitpause = 1

;------------------------------------------------------------------------------------------------------------
;Missle 1 Helper End
[Statedef 3303]
type = S
movetype = I
physics = N
anim = 3204
ctrl = 0
sprpriority = 3
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S15,4

[State 3205]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------------------
;Missle 2 Helper
[Statedef 3304]
type = A
movetype = A
physics = N
anim = 3203
ctrl = 0
sprpriority = 6
velset = 0,0


[State 20210]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 20210]
type = VelSet
;trigger1 = Parent,AnimElem = 7
trigger1 = AnimTime = 0
x = 5
y = 5


[State 20210]
type = null;HitBy
trigger1 = 1
value = SCA,AP

;[State 20210]
type = null;HitOverride
trigger1 = 1
stateno = 21481
attr = SCA,AP
slot = 0
time = -1


[State 20210]
type = HitDef
attr = S, NP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 10
animtype = Large
priority  = 5, Hit
guardflag = MA
pausetime = 0,7
sparkxy = 0,0
hitsound   = S15,3
guardsound = S15,3
sparkno = 3
;guard.sparkno; = 7;s3204
ground.type = High
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = -5
air.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;fall = 1
;air.fall = 1
;fall.recover = 0
;fall.animtype = Up
;p2stateno = 9020
getpower = ifelse(MoveHit,40,14),ifelse(MoveHit,40,0)
;palfx.time = 1
;palfx.add = 256,256,256
sprpriority = 4

[State 20210]
type = ChangeState
trigger1 = MoveContact
trigger2 = Pos Y >= 0
trigger2 = Vel Y > 0
trigger3 = Parent,MoveType = H
trigger3 = Vel X = 0
value = 3305
ignorehitpause = 1

;------------------------------------------------------------------------------------------------------------
;Missle 1 Helper End
[Statedef 3305]
type = S
movetype = I
physics = N
anim = 3204
ctrl = 0
sprpriority = 3
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S15,4

[State 3205]
type = DestroySelf
trigger1 = AnimTime = 0
;trigger1 = AnimElem = 3
;var(0) = 1

;----ステート移行-----------------
[State 2111, ChangeState]
type = ChangeState
triggerAll = AnimElemNo(0) = 9
trigger1 = FrontEdgeBodyDist <= 50;20
trigger2 = time >= 300;600
value = 2112;ifelse(var(0) >= 1,2112,2111)



[State 2117, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 2150
;ID = 0
pos = 55, 0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0, 0
accel = 0, 0
random = 0, 0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1, 1
sprpriority = -7
ontop = 0
shadow = 0
ownpal = 0
removeongethit = 0




[State 2117, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 10022
;ID = 0
pos = 55, 0
postype = p1
facing = -1
vfacing = 1
bindtime = 1
vel = 0, 0
accel = 0, 0
random = 0, 0
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1, 1
sprpriority = -7
ontop = 0
shadow = 0
ownpal = 0
removeongethit = 0


[State 2117, Explod(Flash)]
type = Explod
trigger1 = AnimElem = 3
anim = 15010
;ID = 0
pos = 0, 0
postype = left
facing = 1
vfacing = 1
bindtime = -1
vel = 0, 0
accel = 0, 0
random = 0, 0
removetime = 3
supermovetime = 999999
pausemovetime = 999999
scale = 5, 5
sprpriority = 7
ontop = 1
shadow = 0
ownpal = 0
removeongethit = 0
ignorehitpause = 1

[State 2117, Envshake]
type = Envshake
trigger1 = AnimElem = 3
time = 30
freq = 100
ampl = 30

;----自分動作---------------------
[State 2117, Width]
type = Width
trigger1 = time = 0
edge = 64,0

[State 2117, Vel0]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 2117, PosY0]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

;----相手動作---------------------
[State 2117, TargetPos1]
Type = TargetBind
trigger1 = time = 0
Pos = 27, -90

[State 2117, TargetPos2]
Type = TargetBind
trigger1 = AnimElem = 2
Pos = 55, -65

[State 2117, TargetPos3]
Type = TargetBind
trigger1 = AnimElem = 3
Pos = 55, 0

;----ダメージ処理-----------------
[State 2117, AttackPower]
type = VarSet
trigger1 = AnimElem = 3
var(3) = 200

[State 2117, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -160
;kill = 1

;[State 2117, TargetPowerAdd]
;type = TargetPowerAdd
;trigger1 = AnimElem = 3
;value = ceil(Var(3) * 0.5)

[State 2117, Hitcount]
type = VarAdd
trigger1 = AnimElem = 3
var(7) = 1

[State 2117, HitAdd]
type = HitAdd
trigger1 = AnimElem = 3
value = 1

[State 2117, CancelON]
type = VarSet
trigger1 = AnimElem = 3
var(6) = 1

;----終了-------------------------
[State 2117, ENDState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------

;Super Falling Attack
[StateDef 3500]
type = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3501
sprpriority = 2

[State 3500, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 4
flag = noBG
flag2 = noFG
ignorehitpause = 1



[State 3500, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1









[State 3500, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3500, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3500, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3500, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3500, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3500, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1






[State 3500, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 0,0
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = 1,1




[State 3500, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6



[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0



[State 0, Helper]
type = Helper
triggerall = p2stateno = [5000,5999]
trigger1 = movehit && !numhelper(3502)
helpertype = normal ;player
name = "falling kick echo"
ID = 3502
stateno = 3502
pos = -50,-32
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove

;[State 3000, carga]
;type=helper
;trigger1=time = 1
;helpertype=normal
;stateno=3886
;ID=3881
;name="Carga"
;postype=p1
;pos=30,-50
;ownpal=1
;persistent=0
;supermovetime=9999

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 45
value = S0,5
volume = 0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 45
value = S333,10
volume = 0
channel = -1



[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = [1,42]
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = time > 43
x = 16.5
y = 14

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 3052
ID =  30520
pos = 5,10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1.2,1.3
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1



[State 1400, 1]
type = HitDef
trigger1 != time
attr = S, NA
damage = 80,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5,18
sparkno = 3
sparkxy = -10, -10
hitsound = s61,0
guardsound = s8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0,-7
airguard.velocity = -1.9,-.8
air.type = High
persistent = 0
air.velocity = 0,-7
air.hittime = 12
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
;fall.recovertime = 20

[State 3500, end]
type = ChangeState
triggerall = movehit
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(3) >= 2
ctrl = 0
value = 3501

[State 3000, end]
type = ChangeState
;triggerall != movehit
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(3) >= 2
ctrl = 1
value = 0


;falling Attack Echo
[StateDef 3502]
type = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3502
poweradd = 0
sprpriority = 2

[State 3000,00]
type = BGPalfx
trigger1 = 1
invertall = 1
color = 0
time = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S2000,9
volume = 255
channel = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,5
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S2000,9
volume = 255
channel = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 =time = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 999


[State 0, 1]
type = AfterImage
trigger1 = time = 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add


[State 0, Helper]
type = Helper
trigger1 = movehit && !numhelper(3503)
helpertype = normal ;player
name = "falling kick echo"
ID = 3503
stateno = 3503
pos = -50,-32
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = [1,10]
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = time > 10
x = 13.5
y = 12

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1400, 1]
type = HitDef
trigger1 != time
attr = S, NA
damage = 29,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 1,30
sparkno = 3
sparkxy = -10, -10
hitsound = s61,0
guardsound = s8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0,-10
airguard.velocity = -1.9,-.8
air.type = High
persistent = 0
air.velocity = 0,-10
air.hittime = 12
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
;fall.recovertime = 20

[State 3500, end]
type = Destroyself
triggerall = movehit
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(3) >= 2

[State 3000, end]
type = Destroyself
;triggerall != movehit
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(3) >= 2
;---------------------------------------------------------------------------
[StateDef 3503]
type = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3502
poweradd = 0
sprpriority = 2

[State 3000,00]
type = BGPalfx
trigger1 = 1
invertall = 1
color = 0
time = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S2000,9
volume = 255
channel = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S0,5
volume = 255
channel = -1

[State 0, NotHitBy]
type = NotHitBy
trigger1 !=time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 999

[State 0, 1]
type = AfterImage
trigger1 = time = 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = [1,10]
value = 1

[State 0, VelSet]
type = VelSet
trigger1 = time > 10
x = 13.5
y = 12

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 1400, 1]
type = HitDef
trigger1 != time
attr = S, NA
damage = 29,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 1,10
sparkno = 3
sparkxy = -10, -10
hitsound = s61,0
guardsound = s8500,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = 0,-7
airguard.velocity = -1.9,-.8
air.type = High
persistent = 0
air.velocity = 0,-7
air.hittime = 12
fall = 1
fall.recover = 0
air.fall = 1
air.recover = 0
yaccel = .49
envshake.time = 12
envshake.ampl = 6; or 7
fall.envshake.time = 20
fall.envshake.ampl = 8
;fall.recovertime = 20

[State 3500, end]
type = Destroyself
triggerall = movehit
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(3) >= 2

[State 3000, end]
type = Destroyself
;triggerall != movehit
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(3) >= 2












; Stand
[Statedef 3501]
type = S
physics = S
ctrl = 0
sprpriority = 0
anim = 431

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 != time
value = 0

[State 0, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, 3] ;Stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 != time
;trigger1 = abs(vel x) < 2
;trigger2 = Time = 4
x = 4

[State 3502, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 7784]
type = S
ctrl = 0
velset = 0,0
movetype = I
physics = N
sprpriority = 2

[State 2550, PSet]
type = PosSet
trigger1 = !Time
y = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value =5300

[State 195, 2]
type = selfstate
trigger1 = time = 240
value = 0
ctrl = 1

















































