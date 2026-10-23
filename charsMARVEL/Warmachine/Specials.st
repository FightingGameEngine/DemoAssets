;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Arma Special 1
;---------------------------------------------------------------------------
;arma
[Statedef 1000]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =5
value = 192,1

[State 8010, 0]
type = Helper
trigger1 = AnimElem = 5
name = "bala"
postype = p1
pos = 90,-91
sprpriority = 4
ignorehitpause = 1
stateno = 9000
id = 9000

[State 11100, fuego]
type = Explod
trigger1 = AnimElem = 5
anim = 1012
pos = 0,2
sprpriority = 9
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 8010, 1]
type = Helper
trigger1 = AnimElem = 5
name = "p_bala"
postype = p1
pos = 40,-98
sprpriority = 4
ignorehitpause = 1
stateno = 1301
id = 1301

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Arma Special 2
;---------------------------------------------------------------------------
;arma
[Statedef 1005]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =13
trigger2 = time =18
value = 192,1

[State 8010, 0]
type = Helper
trigger1 = time =13
trigger2 = time =18
name = "bala"
postype = p1
pos = 90,-91
sprpriority = 4
ignorehitpause = 1
stateno = 9000
id = 9000

[State 11100, fuego]
type = Explod
trigger1 = time =13
trigger2 = time =18
anim = 1012
pos = 0,2
sprpriority = 9
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 8010, 1]
type = Helper
trigger1 = time =13
trigger2 = time =18
name = "p_bala"
postype = p1
pos = 40,-98
sprpriority = 4
ignorehitpause = 1
stateno = 1301
id = 1301

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Arma Special 3
;---------------------------------------------------------------------------
;arma
[Statedef 1010]
type    = S
movetype= A
physics = S
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =13
trigger2 = time =18
trigger3 = time =23
value = 192,1

[State 8010, 0]
type = Helper
trigger1 = time =13
trigger2 = time =18
trigger3 = time =23
name = "bala"
postype = p1
pos = 90,-91
sprpriority = 4
ignorehitpause = 1
stateno = 9000
id = 9000

[State 11100, fuego]
type = Explod
trigger1 = time =13
trigger2 = time =18
trigger3 = time =23
anim = 1012
pos = 0,2
sprpriority = 9
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 8010, 1]
type = Helper
trigger1 = time =13
trigger2 = time =18
trigger3 = time =23
name = "p_bala"
postype = p1
pos = 40,-98
sprpriority = 4
ignorehitpause = 1
stateno = 1301
id = 1301

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------
;bala
[Statedef 9000]
type    = S
movetype = A
physics = N
velset = 10,0
anim = 1001
sprpriority = 4
velset = 0, 0

[State 3850, a1]
type = Veladd
trigger1 = time = 1
x = 14

[State 3850, a1]
type = VelSet
trigger1 = time = 30
x = 0

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,22]
flag = Noshadow

[State 1001, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage   = 20,10
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,10
hitsound = S2,2
guardsound = S3,0
sparkno = S8200
guard.sparkno = S8100
sparkxy = 5,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4
fall = 0
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3
air.fall = 1
down.velocity = -5,-6
down.hittime = 30
down.bounce = 0

[State 1002,end]
type = DestroySelf
trigger1 = frontedgedist< -105 || backedgedist < -120
trigger2 = Movecontact

;--------------------------------------------------------------
;p.bala
[Statedef 1301]
type = S
anim = 1013
sprpriority = -1
velset = 0, 0

[State 3850, a1]
type = Veladd
trigger1 = time = 1
x = -4
y = -2

[State 3850, a1]
type = VelSet
trigger1 = time = 4
x = -2
y = 3

[state 8013, 6]
type = AssertSpecial
trigger1 = time = [0,22]
flag = Noshadow

[State 3020,4]
type = destroyself
trigger1 = (Time >= 10) || (Pos Y >= 0)

;---------------------------------------------------------------------------
; Misil Special
[Statedef 1001]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7005
ctrl = 0

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Dust]
type = Explod
trigger1 = Time=15
anim = 77005
ID = 77005
pos = 10,-93
postype = p1 
facing = 1
velocity = 0,0
sprpriority = -6
ownpal = 1
removetime=26
bindtime=-1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=15
value = 192,2

[State 11100, fuego]
type = Explod
trigger1 = Time=15
anim = 1012
pos = -20,-4
sprpriority = 6
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
scale = 1,1

[State 1001, Helper]
type = Helper
trigger1 = Time=15
name = "misil"
ID = 9001
stateno = 9001
pos = -10,-54
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .8
size.yscale = .8

[State 1000, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Misil Special 2
[Statedef 1015]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7005
ctrl = 0

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Dust]
type = Explod
trigger1 = Time=15
trigger2 = Time=23
anim = 77005
ID = 77005
pos = 10,-93
postype = p1 
facing = 1
velocity = 0,0
sprpriority = -6
ownpal = 1
removetime=26
bindtime=-1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=15
value = 192,2

[State 11100, fuego]
type = Explod
trigger1 = Time=15
trigger2 = Time=23
anim = 1012
pos = -20,-4
sprpriority = 6
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
scale = 1,1


[State 1001, Helper]
type = Helper
trigger1 = Time=15
trigger2 = Time=23
name = "misil"
ID = 9001
stateno = 9001
pos = -10,-54
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .8
size.yscale = .8

[State 1000, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Misil Special 3
[Statedef 1020]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 50
anim = 7005
ctrl = 0

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Dust]
type = Explod
trigger1 = Time=15
trigger2 = Time=23
trigger3 = time = 32
anim = 77005
ID = 77005
pos = 10,-93
postype = p1 
facing = 1
velocity = 0,0
sprpriority = -6
ownpal = 1
removetime=26
bindtime=-1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time=15
value = 192,2

[State 11100, fuego]
type = Explod
trigger1 = Time=15
trigger2 = Time=23
trigger3 = time = 32
anim = 1012
pos = -20,-4
sprpriority = 6
supermovetime = -1
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1
scale = 1,1


[State 1001, Helper]
type = Helper
trigger1 = Time=15
trigger2 = Time=23
trigger3 = time = 32
name = "misil"
ID = 9001
stateno = 9001
pos = -10,-54
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .8
size.yscale = .8

[State 1000, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------
;misil
[Statedef 9001]
type    =A
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7009
sprpriority = -9

[State 78101, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 9002
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 78101, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 78101, fire]
type = Explod
triggerall = !NumExplod(77009)
trigger1 =time=0
pos=0,10
id=77009
anim = 77009
bindtime = -1
removetime=-1
removeongethit = 1

[State 1006]
type = Veladd
trigger1 = time = 1
x = 14

[State 1006, 3]
type = HitDef
trigger1 = time= 0
attr = S, SP
damage = floor(25 + (root,var(41))/(1+(root,Var(19)/5.0))), 3
guardflag = MA
pausetime = 2,2
hitsound = S3041,0+random%6
guardsound = S8500,0
sparkno = -1
guard.sparkno = S8100				;Spark anim no (Def: set above)
sparkxy = -15,-50
animtype = Heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 25
ground.velocity = -5
air.type = High
air.velocity = -4, -2
air.hittime = 25
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 80
pos = -15,-70
postype = p2
sprpriority = 7
bindtime = -1

[State 1006, 7]
type = Changestate
trigger1 = Movecontact
trigger2 = time =60
value=9002
;-------------------------------------
[Statedef 9002]
type    =A
movetype= A
physics = N
poweradd= 80
ctrl = 0
velset = 0, 0
anim = 7010
sprpriority = 9

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S8000,5

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =!time 
id = 77009

[State 1006, 7]
type = Destroyself
trigger1 = animtime=0


;-----------------------------------------------------------------
;metralla
[StateDef 1004]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= 75
velset = 0,0
anim = 2400
ctrl = 0

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
player = 60,0

[State 410]
type=Explod
Anim=7003
trigger1=animelem=4
postype=P1
pos=35,-84
bindtime=-1
removeTime=-2
sprpriority=4
ownpal=1
scale= 0.3, 0.3
ignorehitpause= 0
removeongethit=1


[State 215, Projectile]
type = Projectile
trigger1 = time = 10
ProjID =1011
projanim =1011
projhitanim =1011
projremanim =1011
projcancelanim =1011
projscale = 1, 1
projremove = 1
projremovetime = -1
velocity = 5,0
remvelocity = 0,0
accel = 4,0
velmul = 1,0
projhits = 1
projpriority = 1
projsprpriority =2
projedgebound = 120
projstagebound = 40
projheightbound = -240,0
offset = 30,-94
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 9999
pausemovetime = 9999
attr = S, SP
animtype  = heavy
damage    = 15,3
guardflag = MA
pausetime = 4,4
sparkno = S8200
sparkxy = 5,0
hitsound   = S0,4
guardsound = S0,9
guard.sparkno = S8100
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -4
air.velocity = -2.5,-4
numhits=2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =10
value = 192,3

[State 8010, 1]
type = Helper
trigger1 = time =10
name = "p_bala"
postype = p1
pos = 10,-98
sprpriority = 4
ignorehitpause = 1
stateno = 1301
id = 1301

[State 1010, ChangeState]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
;metralla 2
[StateDef 1024]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= 75
velset = 0,0
anim = 2400
ctrl = 0

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
player = 60,0

[State 410]
type=Explod
Anim=7003
triggerall= !Numexplod(7003)
trigger1=time=10
trigger2=time=20
trigger3=time= 30
postype=P1
pos=35,-84
bindtime=-1
removeTime=-2
sprpriority=4
ownpal=1
scale= 0.3, 0.3
ignorehitpause= 0
removeongethit=1


[State 215, Projectile]
type = Projectile
trigger1=time=10
trigger2=time=20
trigger3=time= 30
ProjID =1011
projanim =1011
projhitanim =1011
projremanim =1011
projcancelanim =1011
projscale = 1, 1
projremove = 1
projremovetime = -1
velocity = 5,0
remvelocity = 0,0
accel = 4,0
velmul = 1,0
projhits = 1
projpriority = 1
projsprpriority =2
projedgebound = 120
projstagebound = 40
projheightbound = -240,0
offset = 30,-94
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 9999
pausemovetime = 9999
attr = S, SP
animtype  = heavy
damage    = 25,3
guardflag = MA
pausetime = 4,4
sparkno = S8200
sparkxy = 5,0
hitsound   = S0,4
guardsound = S0,9
guard.sparkno = S8100
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -4
air.velocity = -2.5,-4
numhits=2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 192,3

[State 8010, 1]
type = Helper
trigger1=time=10
trigger2=time=20
trigger3=time= 30
name = "p_bala"
postype = p1
pos = 10,-98
sprpriority = 4
ignorehitpause = 1
stateno = 1301
id = 1301

[State 1010, ChangeState]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1


;-----------------------------------------------------------------
;metralla 3
[StateDef 1034]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= 75
velset = 0,0
anim = 2400
ctrl = 0

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
player = 60,0


[State 410]
type=Explod
triggerall= !Numexplod(7003)
trigger1=time=10
trigger2=time=15
trigger3=time=20
trigger4=time=25
trigger5=time= 30
trigger6=time= 35
Anim=7003
id=7003
postype=P1
pos=35,-84
bindtime=-1
removeTime=-2
sprpriority=4
ownpal=1
scale= 0.3, 0.3
ignorehitpause= 0
removeongethit=1

[State 215, Projectile]
type = Projectile
trigger1=time=10
trigger2=time=15
trigger3=time=20
trigger4=time=25
trigger5=time= 30
trigger6=time= 35
ProjID =1011
projanim =1011
projhitanim =1011
projremanim =1011
projcancelanim =1011
projscale = 1, 1
projremove = 1
projremovetime = -1
velocity = 5,0
remvelocity = 0,0
accel = 4,0
velmul = 1,0
projhits = 1
projpriority = 1
projsprpriority =2
projedgebound = 120
projstagebound = 40
projheightbound = -240,0
offset =30,-94
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 9999
pausemovetime = 9999
attr = S, SP
animtype  = heavy
damage    = 28,3
guardflag = MA
pausetime = 4,4
sparkno = S8200
sparkxy = 5,0
hitsound   = S0,4
guardsound = S0,9
guard.sparkno = S8100
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -4
air.velocity = -2.5,-4
numhits=2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 192,3

[State 8010, 1]
type = Helper
trigger1=time=10
trigger2=time=15
trigger3=time=20
trigger4=time=25
trigger5=time= 30
trigger6=time= 35
name = "p_bala"
postype = p1
pos = 10,-98
sprpriority = 4
ignorehitpause = 1
stateno = 1301
id = 1301

[State 1010, ChangeState]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;  club 1
;---------------------------------------------------------------------------
;club
[Statedef 2301]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 2401
ctrl = 0
sprpriority = 2

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 192, 7

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7704
pos = -30,-50
ontop = 1
bindtime = -1
scale = .5,.5
postype = p1
removetime=8
removeongethit=1

[State 1020, 1]
type = VelSet
trigger1 = AnimElem = 4
y = 0
x = 15

[State 2201, 3]
type = Width
trigger1 = 1
edge = 0,0
player = 55,0

[State 2201, 4]
type = HitDef
trigger1 = Time = 0 && p2stateno != [5100, 5120]
attr = S, SA
damage = floor(60 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 2,2
sparkno = s8200+random%3
hitsound = s8000,2
guard.sparkno = 40
sparkxy = 20,-85
guardsound = F6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 2
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -3,-5
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall = 1
fall.recover = 0


[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 80
pos = -15,-50
postype = p2
scale = .7,.7
sprpriority = 7
bindtime = 1

[State 2201, 5]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 100,100

[State 2201, 6]
type = VelSet
trigger1 = AnimElem = 5
x = 2
y = -6

[State 2201, 6]
type = VelSet
trigger1 =  AnimElem = 7
x = 0
y = 0

[State 1010, ChangeState]
type = ChangeState
trigger1 = animTime = 0
value = 70
ctrl = 1



;---------------------------------------------------------------------------
;  club 2
;---------------------------------------------------------------------------
;club
[Statedef 2302]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 2401
ctrl = 0
sprpriority = 2

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 192, 7

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7704
pos = -30,-50
ontop = 1
bindtime = -1
scale = .5,.5
postype = p1
removetime=8
removeongethit=1

[State 1020, 1]
type = VelSet
trigger1 = AnimElem = 4
y = 0
x = 25

[State 2201, 3]
type = Width
trigger1 = 1
edge = 0,0
player = 55,0

[State 2201, 4]
type = HitDef
trigger1 = Time = 0 && p2stateno != [5100, 5120]
attr = S, SA
damage = floor(80 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 2,2
sparkno = s8200+random%3
hitsound = s8000,2
guard.sparkno = 40
sparkxy = 20,-85
guardsound = F6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 2
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -3,-5
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall = 1
fall.recover = 0


[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 80
pos = -15,-50
postype = p2
scale = .7,.7
sprpriority = 7
bindtime = 1

[State 2201, 5]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 100,100

[State 2201, 6]
type = VelSet
trigger1 = AnimElem = 5
x = 3
y = -9

[State 2201, 6]
type = VelSet
trigger1 =  AnimElem = 7
x = 0
y = 0

[State 1010, ChangeState]
type = ChangeState
trigger1 = animTime = 0
value = 70
ctrl = 1

;---------------------------------------------------------------------------
;  club 3
;---------------------------------------------------------------------------
;club
[Statedef 2303]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 2401
ctrl = 0
sprpriority = 2

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 192, 7

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7704
pos = -30,-50
ontop = 1
bindtime = -1
scale = .5,.5
postype = p1
removetime=8
removeongethit=1

[State 1020, 1]
type = VelSet
trigger1 = AnimElem = 4
y = 0
x = 35

[State 2201, 3]
type = Width
trigger1 = 1
edge = 0,0
player = 55,0

[State 2201, 4]
type = HitDef
trigger1 = Time = 0 && p2stateno != [5100, 5120]
attr = S, SA
damage = floor(100 + var(41)/(1+(Var(19)/5.0))), 6
animtype = Heavy
guardflag = MA
hitflag = MAFD
priority = 7, Hit
pausetime = 2,2
sparkno = s8200+random%3
hitsound = s8000,2
guard.sparkno = 40
sparkxy = 20,-85
guardsound = F6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 2
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -3,-5
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 7
envshake.ampl = 4
envshake.time = 9
envshake.ampl = 5
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall = 1
fall.recover = 0


[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 80
pos = -15,-50
postype = p2
scale = .7,.7
sprpriority = 7
bindtime = 1

[State 2201, 5]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 100,100

[State 2201, 6]
type = VelSet
trigger1 = AnimElem = 5
x = 5
y = -12

[State 2201, 6]
type = VelSet
trigger1 =  AnimElem = 7
x = 0
y = 0

[State 1010, ChangeState]
type = ChangeState
trigger1 = animTime = 0
value = 70
ctrl = 1



;---------------------------------------------------------------------------------------------------------------
;mine
[StateDef 1500]
type    = S
movetype= A
physics = S
anim = 7805
velset = 0,0
juggle = 0
ctrl = 0
poweradd = 30
sprpriority = 1
facep2 = 1

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1110]
type = Ctrlset
trigger1 = AnimelemTime(6) >= 0
value = 1

[State 1110]
type = StateTypeSet
trigger1 = AnimelemTime(7) >= 0
movetype = I

[State 1110]
type=helper
trigger1= animelem=6
stateno=1007
ID=1007
name="Grenade MP"
postype=p1
pos= -10, -70
facing= 1
keyctrl=0
ownpal=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =6
value = 192,2

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time = 38
value = 1

[State 1110]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl=1

;---------------------------------------------------------------------------------------------------------------
;mine2
[StateDef 1501]
type    = S
movetype= A
physics = S
anim = 7805
velset = 0,0
juggle = 0
ctrl = 0
poweradd = 30
sprpriority = 1
facep2 = 1

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1110]
type = Ctrlset
trigger1 = AnimelemTime(6) >= 0
value = 1

[State 1110]
type = StateTypeSet
trigger1 = AnimelemTime(7) >= 0
movetype = I

[State 1110]
type=helper
trigger1= animelem=6
stateno=1008
ID=1007
name="Grenade MP"
postype=p1
pos= -10, -70
facing= 1
keyctrl=0
ownpal=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =6
value = 192,2

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time = 38
value = 1

[State 1110]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl=1

;---------------------------------------------------------------------------------------------------------------
;mine3
[StateDef 1502]
type    = S
movetype= A
physics = S
anim = 7805
velset = 0,0
juggle = 0
ctrl = 0
poweradd = 30
sprpriority = 1
facep2 = 1

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1110]
type = Ctrlset
trigger1 = AnimelemTime(6) >= 0
value = 1

[State 1110]
type = StateTypeSet
trigger1 = AnimelemTime(7) >= 0
movetype = I

[State 1110]
type=helper
trigger1= animelem=6
stateno=1009
ID=1007
name="Grenade MP"
postype=p1
pos= -10, -70
facing= 1
keyctrl=0
ownpal=1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =6
value = 192,2

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time = 38
value = 1

[State 1110]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl=1
;-----------------------------------------------------------------
[StateDef 1007]
type    = A
movetype= A
physics = A
anim = 6803
velset = 4, 0
juggle = 0
ctrl = 0
sprpriority = 6

[State 1115, Gravity]
type = Gravity
trigger1 = animelem=1

[State 0, VelAdd]
type = VelSet
trigger1 = (Vel y > 0) && (Pos y >= -10)
x = 4.5
y = -4

[State 1000, sndx]
type = PlaySnd
trigger1 = pos y>=-17
value = 4,5
channel=5

[State 1101, 4]
type = Explod
trigger1 = (time%3)=0
pos = 7,-5
postype = p1
bindtime =5
sprpriority = 4
anim = 77800
ownpal=1
removetime = -2

[State 0, VelAdd]
type = VelSet
trigger1 = time>=58
x = 0
y = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = time>=58
channel = 5
ignorehitpause = 1
persistent = 1


[State 0, VelAdd]
type = Posset
trigger1 = time >=58
y= -5

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 2, 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 6,8
sparkno = s8002
sparkxy = -20,-10
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = -2,-3
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 1115]
type = ChangeState
;trigger1 = (Vel y > 0) && (Pos y >= -10)
trigger1 = time=90 || parent, movetype = H ;|| ((p2dist X > -20) && (p2dist X < 45) && (p2dist Y >-10))
trigger2= time >=14 && movecontact
value =1118

;-----------------------------------------------------------------
[StateDef 1008]
type    = A
movetype= A
physics = A
anim = 6802
velset = 4, 0
juggle = 0
ctrl = 0
sprpriority = 6

[State 1115, Gravity]
type = Gravity
trigger1 = animelem=1

[State 0, VelAdd]
type = VelSet
trigger1 = (Vel y > 0) && (Pos y >= -10)
x = 4.5
y = -4

[State 1000, sndx]
type = PlaySnd
trigger1 = pos y>=-17
value = 4,5
channel=5

[State 1101, 4]
type = Explod
trigger1 = (time%3)=0
pos = 7,-5
postype = p1
bindtime =5
sprpriority = 4
anim = 77800
ownpal=1
removetime = -2

[State 0, VelAdd]
type = VelSet
trigger1 = time>=58
x = 0
y = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = time>=58
channel = 5
ignorehitpause = 1
persistent = 1


[State 0, VelAdd]
type = Posset
trigger1 = time >=58
y= -5

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 2, 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 6,8
sparkno = s8002
sparkxy = -20,-10
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = -2,-3
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1115]
type = ChangeState
;trigger1 = (Vel y > 0) && (Pos y >= -10)
trigger1 = time=90 || parent, movetype = H ;|| ((p2dist X > -20) && (p2dist X < 45) && (p2dist Y >-10))
trigger2= time >=14 && movecontact
value =1117


;-----------------------------------------------------------------
[StateDef 1009]
type    = A
movetype= A
physics = A
anim = 7802
velset = 4, 0
juggle = 0
ctrl = 0
sprpriority = 6

[State 1115, Gravity]
type = Gravity
trigger1 = animelem=1

[State 0, VelAdd]
type = VelSet
trigger1 = (Vel y > 0) && (Pos y >= -10)
x = 4.5
y = -4


[State 1000, sndx]
type = PlaySnd
trigger1 = pos y>=-17
value = 4,5
channel=5

[State 1101, 4]
type = Explod
trigger1 = (time%3)=0
pos = 7,-5
postype = p1
bindtime =5
sprpriority = 4
anim = 77800
ownpal=1
removetime = -2

[State 0, VelAdd]
type = VelSet
trigger1 = time>=58
x = 0
y = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = time>=58
channel = 5
ignorehitpause = 1
persistent = 1


[State 0, VelAdd]
type = Posset
trigger1 = time >=58
y= -5

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 2, 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 6,8
sparkno = s8002
sparkxy = -20,-10
guard.sparkno = S8100
hitsound = s8000,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = -2,-3
envshake.time = 1
envshake.ampl = 1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1115]
type = ChangeState
;trigger1 = (Vel y > 0) && (Pos y >= -10)
trigger1 = time=90 || parent, movetype = H ;|| ((p2dist X > -20) && (p2dist X < 45) && (p2dist Y >-10))
trigger2= time >=14 && movecontact
value =1116

;===============================================================================================
[Statedef 1116]
type    = S
movetype= A
physics = N
anim = 78022
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = 6

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 5
ignorehitpause = 1
persistent = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S192,9

[State 1116, Mine FX]
type=explod
trigger1=time=0
anim=2301
ID=2301
postype=p1
pos=5,20
sprpriority=8
scale=.9,.9
facing= 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
ignorehitpause=0

[State 1116]
type = HitDef
trigger1 = time=0
attr = S, SA
getpower = 40,60
givepower = 30, 0
animtype  = diagup
air.animtype  = diagup
damage =95,7
priority = 5,Hit
hitflag = MAFD
guardflag = MA
pausetime = 6,6
guard.pausetime = 6, 6
sparkno = S8200
guard.sparkno = S8100
sparkxy=var(43):=-5,var(44):=-20
hitsound = S0,8
guardsound = S0,9
ground.type = high
ground.slidetime = 3
ground.hittime  = 3
guard.hittime = 3
guard.slidetime = 3
guard.ctrltime = 3
ground.velocity = -6.5*const(size.xscale),-8.0*const(size.yscale)
guard.velocity = -15.5*const(size.xscale)
air.type = Low
air.velocity = -5.5*const(size.xscale),-8.0*const(size.yscale)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
palfx.time = 20
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall = 1
fall.recover = 0
air.fall = 1
fall.recovertime=30
yaccel = .60*const(size.yscale)
envshake.time = 5
envshake.freq = 60
envshake.ampl = 4
forcestand = 1
P2facing = 1
id = 1020

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 80
pos = -15,-50
postype = p2
scale = .7,.7
sprpriority = 7
bindtime = 1


[State 1116, DestroySelf]
type = DestroySelf
trigger1 = time=24


;===============================================================================================
[Statedef 1117]
type    = S
movetype= A
physics = N
anim = 78022
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = 6

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 5
ignorehitpause = 1
persistent = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S192,9

[State 0, RemapPal]
type = RemapPal
trigger1 =time=0
source = 0,206
dest = 0,207
ignorehitpause =1
persistent =1


[State 1116, Mine FX]
type=explod
trigger1=time=0
anim=2301
ID=2301
postype=p1
pos=5,20
sprpriority=8
scale=.9,.9
facing= 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
ignorehitpause=0

[State 1116]
type = HitDef
trigger1 = time=0
attr = S, SA
getpower = 40,60
givepower = 30, 0
animtype  = diagup
air.animtype  = diagup
damage =95,7
priority = 5,Hit
hitflag = MAFD
guardflag = MA
pausetime = 6,6
guard.pausetime = 6, 6
sparkno = S8200
guard.sparkno = S8100
sparkxy=var(43):=-5,var(44):=-20
hitsound = S0,8
guardsound = S0,9
ground.type = high
ground.slidetime = 3
ground.hittime  = 3
guard.hittime = 3
guard.slidetime = 3
guard.ctrltime = 3
ground.velocity = -6.5*const(size.xscale),-8.0*const(size.yscale)
guard.velocity = -15.5*const(size.xscale)
air.type = Low
air.velocity = -5.5*const(size.xscale),-8.0*const(size.yscale)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2stateno = 1050
fall = 1
fall.recover = 0
air.fall = 1
fall.recovertime=30
yaccel = .60*const(size.yscale)
envshake.time = 5
envshake.freq = 60
envshake.ampl = 4
forcestand = 1
P2facing = 1
id = 1020

[State 1116, DestroySelf]
type = DestroySelf
trigger1 = time=24

;===============================================================================================
[Statedef 1118]
type    = S
movetype= A
physics = N
anim = 78022
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = 6

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 5
ignorehitpause = 1
persistent = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time=0
value = S192,9

[State 0, RemapPal]
type = RemapPal
trigger1 =time=0
source = 0,206
dest = 0,208
ignorehitpause =1
persistent =1

[State 1116, Mine FX]
type=explod
trigger1=time=0
anim=2301
ID=2301
postype=p1
pos=5,20
sprpriority=8
scale=.9,.9
facing= 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
ignorehitpause=0

[State 1116]
type = HitDef
trigger1 = time=0
attr = S, SA
getpower = 40,60
givepower = 30, 0
animtype  = diagup
air.animtype  = diagup
damage =95,7
priority = 5,Hit
hitflag = MAFD
guardflag = MA
pausetime = 6,6
guard.pausetime = 6, 6
sparkno = S8200
guard.sparkno = S8100
sparkxy=var(43):=-5,var(44):=-20
hitsound = S0,8
guardsound = S0,9
ground.type = high
ground.slidetime = 3
ground.hittime  = 3
guard.hittime = 3
guard.slidetime = 3
guard.ctrltime = 3
ground.velocity = -6.5*const(size.xscale),-8.0*const(size.yscale)
guard.velocity = -15.5*const(size.xscale)
air.type = Low
air.velocity = -5.5*const(size.xscale),-8.0*const(size.yscale)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2stateno = 7697
fall = 1
fall.recover = 0
air.fall = 1
fall.recovertime=30
yaccel = .60*const(size.yscale)
envshake.time = 5
envshake.freq = 60
envshake.ampl = 4
forcestand = 1
P2facing = 1
id = 1020

[State 100, Fire]
type = Explod
trigger1 = Movehit = 1
anim = 7707
random = 50, 80
pos = -15,-50
postype = p2
scale = .7,.7
sprpriority = 7
bindtime = 1


[State 1116, DestroySelf]
type = DestroySelf
trigger1 = time=24

;---------------------------------------------------------------------------
;dizzer
[Statedef 2401]
type = S
movetype = A
physics = S
anim = 1006
ctrl = 0
velset = 0,0
poweradd = -500
sprpriority = 2
facep2 = 1

[State 0, Dust]
type = Explod
trigger1 = Time=0
anim = 104
ID = 104
pos = -20,0
postype = p1 
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1300, Swing Snd]
type = PlaySnd
trigger1 = Animelem = 6
value = 192,12


[State 1300, fuego]
type = Explod
trigger1 = AnimElem = 2
anim = 1002
pos = 0,0
sprpriority = 99
supermovetime = -1
scale = 1.04,1.04
postype = p1
bindtime = -1
removetime = -2
removeongethit = 1
facing = 1
ownpal = 1
ignorehitpause = 1

[State 2501, Helper]
type = Helper
trigger1 = animelem = 6
ID = 2519
pos = 70,-40
postype = p1
stateno = 2519
name = "Grenade"
size.xscale = .5
size.yscale = .5
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 1300, End]
type = ChangeState
trigger1 = time = 39
value = 0
ctrl = 1
;------------------------------------------------------------------------------------------------------------
;grenadehelper
[StateDef 2519]
type = S
movetype= A
physics = N
juggle  = 1
ctrl = 0
anim = 7706
;poweradd = 20
sprpriority = 999

[State 0, VelSet]
type = VelSet
triggerall = parent,stateno = 2401
trigger1 = time = 0
x = 2
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
triggerall = parent,stateno = 2401
trigger1 = time = 0
x = 3
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
triggerall = parent,stateno = 2401
trigger1 = time = 0
x = 4
;ignorehitpause =
;persistent =

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S71,6
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan =
;ignorehitpause =
;persistent =


[State 2510, 1]
type = HitDef
trigger1 =time = 0
attr = S, SP
damage = 0
p2stateno = 5301
animtype = heavy
fall = 1
guardflag = MA
hitflag = M
priority = 3, Hit
pausetime = 0, 10
sparkxy = -20,-56
guard.sparkno = S8100
sparkno = s8022
hitsound = s5, 8
guardsound = s6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -5, -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -5.4,-3
air.hittime = 12

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movecontact = 1
value = S190,15

[State 2510, end]
type = ChangeState
trigger1 = time = 40
value = 2520
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,NA,SA,HA,NT,ST,HT
;value2 = S,NA
time = 1
;ignorehitpause =
;persistent =


[State 0, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NP,SP,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 2511
time = 1
forceair = 0
;ignorehitpause =
;persistent =


[State 2510, end]
type = DestroySelf
trigger1 = Movecontact = 1
trigger2= time=60


;------------------------------
;stunned
[StateDef 5301]
type = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 5300
sprpriority = 2


[State 0, AllPalFX]
type = AllPalFX
trigger1 = animelem = 1
time = 5
add = 255,255,255
;mul = 256,256,256
;sinadd = 0,0,0,10
;invertall = 0
;color = 256
;ignorehitpause =
;persistent =


[State 0, CtrlSet]
type = CtrlSet
trigger1 = time = [1,120]
value = 0
;ignorehitpause =
;persistent =


[State 5300, end]
type = SelfState
trigger1 = Time >= 120
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; FLY MODE
;---------------------------------------------------------------------------
[Statedef 1900]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0,-3
anim = 4505
juggle = 0
poweradd = -1

;------------------------
; FLY TIMER
[State 1032, 7]
type = VarSet
trigger1 = Time = 0
V = 5
Value = 1

;----------------
[State 9700, 4]
type = Projectile
trigger1 = time = 0
trigger1 = pos Y < -10
projanim = 8787
projhitanim = 8787
projpriority = 1
projshadow = -1
projheightbound = 0,-10
offset = 0,0
velocity = 0,10

;----------------
[State 9700, 4]
type = Projectile
trigger1 = time = 0
trigger1 = pos Y >= -10
projanim = 8787
projhitanim = 8787
projpriority = 1
projshadow = -1
projheightbound = 0,-10
offset = 0,0
velocity = 0,-1

[State 1900, 1]
type = Velset
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
y = -3

[State 1900, 2]
trigger1 = Animtime = 0
type = ChangeState
value = 1901
ctrl = 1

[State 1900, 4]
type = PlaySnd
trigger1 = StateNo = 1900
trigger1 = animelem = 2
value = 30,1

;[State 1900, 4]
;type = PlaySnd
;trigger1 = animelem = 1
;value = 20,10
;channel=2

[State 181, ground dust]
type = Explod
triggerall = pos y >= -2
triggerall = !NumExplod(61)
trigger1 = StateNo = 1900
trigger1 = animelem = 1
anim = 61
id = 61
postype = P1
pos = 0,10
ownpal = 1
sprpriority = 4
facing = 1



;----------------------------------
[Statedef 1901]
type    = A
movetype= I
ctrl = 0
anim = 4500
velset = 0,0
poweradd = 1

[State 818, CHARGE]
type = PowerAdd
triggerall = stateno = 1901
trigger1 = power != 3000
trigger1 = power <= 1000
trigger1 = power > 0
value = 6

[State 818, CHARGE]
type = PowerAdd
triggerall = stateno = 1901
trigger1 = power != 3000
trigger1 = power <= 2000
trigger1 = power > 1000
value = 4

[State 818, CHARGE]
type = PowerAdd
triggerall = stateno = 1901
trigger1 = power != 3000
trigger1 = power <= 3000
trigger1 = power > 2000
value = 2

[State 1901, Stop1]
type = VelSet
trigger1 = command != "holdfwd"
trigger2 = command != "holdback"
trigger3 = command != "holdup"
trigger4 = command != "holddown"
trigger5 = Pos Y < -205
trigger6 = Pos Y > -40
x = 0
y = 0

[State 45, 2];boost
type = Explod
triggerall = !NumExplod(74001)
trigger1 = anim=4500
ID = 74001
Anim = 741
Pos = 10, -52
sprpriority = -4
removetime = -1
removeongethit=1
Bindtime = -1
ownpal=1

[State 45, 2];boost
type = Explod
triggerall = !NumExplod(74002)
trigger1 = anim=4500
ID = 74002
Anim = 741
Pos = -14, -52
sprpriority = -4
removetime = -1
removeongethit=1
Bindtime = -1
ownpal=1

[State 200, c]
type = removeexplod
trigger1 = anim!=4500
id = 74001
[State 200, d]
type = removeexplod
trigger1 = anim!=4500
id = 74002

[State 1901, Stop2]
type = ChangeAnim
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
triggerall = anim != 4500
value = 4500


[State 1901, GoUpAnim]
type = ChangeAnim
trigger1 = command = "holdup"
trigger1 = Anim != 4504
value = 4504

[State 45, 2];boost
type = Explod
triggerall = !NumExplod(74011)
trigger1 = anim=4504
ID = 74011
Anim = 741
Pos = -30, -24
sprpriority = -4
removetime = -1
removeongethit=1
Bindtime = -1
ownpal=1

[State 45, 2];boost
type = Explod
triggerall = !NumExplod(74012)
trigger1 = anim=4504
ID = 74012
Anim = 741
Pos = -14, -32
sprpriority = -4
removetime = -1
removeongethit=1
Bindtime = -1
ownpal=1

[State 200, c]
type = removeexplod
trigger1 = anim!=4504
id = 74011
[State 200, d]
type = removeexplod
trigger1 = anim!=4504
id = 74012

[State 1901, GoDownAnim]
type = ChangeAnim
trigger1 = command = "holddown"
trigger1 = Anim != 4501
value = 4501

[State 45, 2];boost
type = Explod
triggerall = !NumExplod(74013)
trigger1 = anim=4501
ID = 74013
Anim = 741
Pos = -30, -24
sprpriority = -4
removetime = -1
removeongethit=1
Bindtime = -1
ownpal=1
vfacing = -1

[State 45, 2];boost
type = Explod
triggerall = !NumExplod(74014)
trigger1 = anim=4501
ID = 74014
Anim = 741
Pos = 10, -24
sprpriority = -4
removetime = -1
removeongethit=1
Bindtime = -1
ownpal=1
vfacing = -1

[State 200, c]
type = removeexplod
trigger1 = anim!=4501
id = 74013

[State 200, d]
type = removeexplod
trigger1 = anim!=4501
id = 74014

[State 1901, GoBackAnim]
type = ChangeAnim
trigger1 = command = "holdback"
trigger1 = Anim != 4502
triggerall = command != "holdup"
triggerall = command != "holddown"
value = 4502

[State 100, propulsor]
type = Explod
triggerall= !NumExplod(77044)
trigger1 = anim=4502
anim = 77701
id = 77044
postype = P1
pos = 25,-30
ownpal = -1
sprpriority = -6
facing = -1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor]
type = Explod
triggerall= !NumExplod(77045)
trigger1 = anim=4502
anim = 77701
id = 77045
postype = P1
pos = 5,-30
ownpal = 1
sprpriority = -6
facing = -1
removeongethit = 1
bindtime = -1
removetime = -1


[State 200, c]
type = removeexplod
trigger1 = anim!=4502
id = 77044

[State 200, d]
type = removeexplod
trigger1 = anim!=4502
id = 77045


[State 1901, GoForwardAnim]
type = ChangeAnim
trigger1 = command = "holdfwd"
trigger1 = Anim != 4503
triggerall = command != "holdup"
triggerall = command != "holddown"
value = 4503

[State 100, propulsor]
type = Explod
triggerall= !NumExplod(77042)
trigger1 = anim=4503
anim = 77701
id = 77042
postype = P1
pos = -45,-28
ownpal = -1
sprpriority = -6
facing = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor]
type = Explod
triggerall= !NumExplod(77043)
trigger1 = anim=4503
anim = 77701
id = 77043
postype = P1
pos = -25,-30
ownpal = 1
sprpriority = -6
facing = 1
removeongethit = 1
bindtime = -1
removetime = -1


[State 200, c]
type = removeexplod
trigger1 = anim!=4503
id = 77042

[State 200, d]
type = removeexplod
trigger1 = anim!=4503
id = 77043

[State 1901,Turn]
type = Turn
trigger1 = P2Dist X < -10

[State 1901,Land]
type = ChangeState
trigger1 = Pos Y >= 0
value = 70
ctrl = 1

[State 1901,GoUp2]
type = VelSet
trigger1 = command = "holdup"
y = -4

[State 1901,GoDown2]
type = VelSet
trigger1 = command = "holddown"
y = 4

[State 1901,GoBack2]
type = VelSet
trigger1 = command = "holdback"
x = -4

[State 1901,GoFwd2]
type = VelSet
trigger1 = command = "holdfwd"
x = 4

[State 1901, UpBorder]
type = PosSet
trigger1 = Pos Y < -280
y = -280

[State 1901, UpBorder]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1901, 1a]
type = VarSet
trigger1 = time = 0
;trigger1 = PrevStateNo != 1900
v = 15
value = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; FLY MODE END
[State 1901, 61]
type = ChangeState
trigger1 = command = "flying"
trigger2 = Var(5) <= 0
trigger3 = Win = 1
trigger4 = Lose = 1
trigger5 = power = 3000
value = 70
ctrl = 1

[State 1901, 62]
type = VarSet
trigger1 = command = "flying"
trigger2 = Win = 1
trigger3 = Lose = 1
v =15
value = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; X button
[State 1901, 6]
trigger1 = command = "x"
type = ChangeState
value = 600
ctrl = 1

;---------------------------------------------------------------------------
; Y button
[State 1901, 6]
type = ChangeState
trigger1 = command = "y"
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact
value = 610
ctrl = 1

;---------------------------------------------------------------------------
; Z button
[State 1901, 6]
type = ChangeState
trigger1 = command = "z"
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
value = 620
ctrl = 1

;---------------------------------------------------------------------------
; A button
[State 1901, 6]
type = ChangeState
trigger1 = command = "a"
trigger2 = stateno = 600 && MoveContact
value = 630
ctrl = 1

;---------------------------------------------------------------------------
; B button
[State 1901, 6]
type = ChangeState
trigger1 = command = "b"
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact
trigger4 = stateno = 610 && MoveContact
value = 640
ctrl = 1

;---------------------------------------------------------------------------
; C button
[State 1901, 6]
type = ChangeState
trigger1 = command = "c"
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
value = 650
ctrl = 1
;---------------------------------------------------------------------------
