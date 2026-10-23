; States file for Ultron -- Hypers
;---------------------------------------------------------------------------
; Hyper Attacks
;---------------------------------------------------------------------------
; Fury
;---------------------------------------------------------------------------
[StateDef 3300]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3300
ctrl = 0
juggle =6
sprpriority = -4

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;Hyper portrait, see the Air part comments for a correct display.
[State 3000, a8]
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,0
ownpal = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -15

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
sound = S10, 1
movetime = 40
poweradd = -1000
Time = 40
p2defmul = 2
anim = S8400
pos = 10, -80 ; adjust position
bindtime = -1
sprpriority = 6
removeongethit = 1


[State 777, es]
type = Explod
triggerall =!NumExplod(8580)
trigger1 = time=0
sprpriority = 10
anim = 8580
id= 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
facing=-1
supermovetime = 99
pausemovetime = 99

[State 3000, 1]
type = PlaySnd
trigger1 = Time = 8
value = 9,1

;-------shoulder
[State 3150, helper]
type = Helper
trigger1 = time= 120
name = "misil"
StateNo = 2022
postype = p1
pos = 20, -100
sprpriority =8
ontop=1
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = time= 120
name = "misil"
StateNo = 2122
postype = p1
pos = 40, -100
sprpriority =6
ontop=1
ownpal = 1

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 120
value = 45,16
volume=30
;-----------------------
;-------hand arms   1
[State 3150, helper]
type = Helper
trigger1 = time= 84
trigger2 = time= 140
;trigger3 = time= 45
name = "misil"
StateNo = 2023
postype = p1
pos = -27, -106
sprpriority =8
ontop=1
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = time=84
trigger2 = time= 140
;trigger3 = time= 45
name = "misil"
StateNo = 2123
postype = p1
pos =55, -104
sprpriority =8
ontop=1
ownpal = 1

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 84
trigger2 = time= 140
;trigger3 = time= 45
value = 45,16
volume=-100
;-----------------------
;-----------------------
;-------hand arms   2
[State 3150, helper]
type = Helper
trigger1 = time= 48
;trigger2 = time= 35
;trigger3 = time= 45
name = "misil"
StateNo = 2023
postype = p1
pos = -37, -92
sprpriority =8
ontop=1
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = time=48
;trigger2 = time= 35
;trigger3 = time= 45
name = "misil"
StateNo = 2123
postype = p1
pos =55, -80
sprpriority =8
ontop=1
ownpal = 1

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 84
;trigger2 = time= 35
;trigger3 = time= 45
value = 45,16
volume=-100
;-----------------------
; legs
[State 3150, helper]
type = Helper
trigger1 = time= 55
trigger2 = time= 135
name = "misil"
StateNo = 2024
postype = p1
pos = -5, -35
sprpriority =8
ontop=1
ownpal = 1

[State 3150, helper]
type = Helper
trigger1 = time= 55
trigger2 = time= 135
name = "misil2"
StateNo = 2025
postype = p1
pos = 25, -48
sprpriority =8
ontop=1
ownpal = 1

[State 1000, sndx]
type = PlaySnd
trigger1 = time = 55
trigger2 = time= 135
value = 45,14
channel=4
;------------------------------------
; Stomach beam
[State 3150, helper]
type = Helper
trigger1 = time= 100
;trigger2 = time= 95
name = "misil2"
StateNo = 997
postype = p1
pos = -120, 20
sprpriority =14
ontop=1
ownpal = 1

[State 700, 1]
type = PlaySnd
trigger1 = time=100
value = 45,13
channel=2

;--------------------------------------

[State 3000, 1]
type = PlaySnd
trigger1 = time = 40
trigger2 = time = 140
value = 80,4
channel=0
volume=1000

[State 1000, weap] ; left
type = Explod
triggerall = !NumExplod(3305)
trigger1 = time= 40
id =3305
anim = 3305
pos = 0,0
postype= p1
sprpriority =-2
ignorehitpause = 1
removeongethit = 1
bindtime = -1
removetime=123

[State 1000, weap] ; torso
type = Explod
triggerall = !NumExplod(3303)
trigger1 = time= 40
id =3303
anim = 3303
pos = 0,0
postype= p1
sprpriority =-1
ignorehitpause = 1
removeongethit = 1
bindtime = -1
removetime=123

[State 1000, weap]  ; right
type = Explod
triggerall = !NumExplod(3304)
trigger1 = time= 40
id =3304
anim = 3304
pos = 0,0
postype= p1
sprpriority =3
ignorehitpause = 1
removeongethit = 1
bindtime = -1
removetime=123

[State 1000, weap]  ; legcannon
type = Explod
triggerall = !NumExplod(3301)
trigger1 = time= 40
id =3301
anim = 3301
pos = 0,0
postype= p1
sprpriority = 2
ignorehitpause = 1
removeongethit = 1
bindtime = -1
removetime=123

[State 1000, weap] ; shoulder
type = Explod
triggerall = !NumExplod(3302)
trigger1 = time= 40
id =3302
anim = 3302
pos = 0,0
postype= p1
sprpriority = 1
ignorehitpause = 1
removeongethit = 1
bindtime = -1
removetime=123

[State 1000, weap] ; leg 2
type = Explod
triggerall = !NumExplod(3306)
trigger1 = time=40
id =3306
anim = 3306
pos = 0,0
postype= p1
sprpriority = 3
ignorehitpause = 1
removeongethit = 1
bindtime = -1
removetime=123

[State 78101, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 33310
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
triggerall = time <= 60
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 9
ignorehitpause =1

[State 3000, back to normal]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------
; (override)
[Statedef 33310]
type    = S
physics = S
ctrl = 0
anim = 3310
sprpriority = 2

[State 3001, d]
type = removeexplod
trigger1 = !time
id =3301
[State 3001, d]
type = removeexplod
trigger1 = !time
id =3302
[State 3001, d]
type = removeexplod
trigger1 = !time
id =3303
[State 3001, d]
type = removeexplod
trigger1 = !time
id =3304
[State 3001, d]
type = removeexplod
trigger1 = !time
id =3305
[State 3001, d]
type = removeexplod
trigger1 = !time
id =3306

[State 3001, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Encephalo ray
;---------------------------------------------------------------------------
[StateDef 3000]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 740
ctrl = 0
juggle =6
sprpriority = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;Hyper portrait,
[State 3000, a8]
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,0
ownpal = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -15

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
sound = S10, 1
movetime = 40
poweradd = -1000
Time = 40
p2defmul = 2
anim = S8400
pos = -20, -80 ; adjust position
bindtime = -1
sprpriority = 6
removeongethit = 1


[State 777, es]
type = Explod
triggerall =!NumExplod(8580)
trigger1 = anim=756 && animelem = 2
sprpriority = 10
anim = 8580
id= 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
facing=-1
supermovetime = 99
pausemovetime = 99

[State 3000, 1]
type = PlaySnd
trigger1 = Time = 0
value = 20,5
volume=2000
channel=2

[State 1300, helper]
type = Helper
triggerall = !Numhelper(3004)
trigger1 = AnimElem = 4
name = "Ray"
StateNo = 3004
id =3004
postype = p1
sprpriority = 9
pos = 35,-83
ownpal = 1
removeongethit = 1

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 45,13
channel=0
volume=1000


[State 3000, back to normal]
type = ChangeState
trigger1 = Time = 175
value = 3001
ctrl = 1

; (move end)
[Statedef 3001]
type    = S
physics = S
ctrl = 0
anim = 742
sprpriority = 2

[State 3001, d]
type = removeexplod
trigger1 = !time
id = 9999

[State 3001, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------
;Ray shot
;--------------------------------------------------------------------------
[statedef 3004]
type = S
movetype = A
physics = N
ctrl = 0
anim = 741
sprpriority = 9

[State 1305, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1013, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (35 * parent, facing)
y = parent, Pos Y - 83

[State 3344, hit]
type = HitDef
trigger1 = Time % 4 = 0 && Time < 117 ;95
bindtime = -1
velocity = 0.001,0.001
attr = S, NA
damage   = 9,3
hitsound = S2,0
guardsound = S3,0
animtype = Hard
guardflag = MA
hitflag = MAFD
pausetime = 0,6
sparkno = -1
sparkxy = -60,0
guard.sparkno = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = -1,0
air.velocity = -1, -1
sprpriority = 9
hit.priority = 9
;fall = 1
;air.fall =1
down.velocity = -10
down.hittime = 150
down.bounce = 0
getpower = 0,0
palfx.time =4
palfx.add = 100,0,100
palfx.sinadd = 85,110,55,10
palfx.color = 0
palfx.invertall = 1

[State 3344, hit]
type = HitDef
trigger1 = Time > 117 ;95
bindtime = -1
velocity = 0.001,0.001
attr = S, NA
damage   = 20,3
hitsound = S2,0
guardsound = S3,0
animtype = Hard
guardflag = MA
hitflag = MAFD
pausetime = 0,6
sparkno = -1
sparkxy = -60,0
guard.sparkno = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = -5, -14
air.velocity = -5, -14
sprpriority = 9
hit.priority = 9
fall = 1
air.fall =1
down.velocity = -10
down.hittime = 150
down.bounce = 0
getpower = 0,0
palfx.time = 90
palfx.add = 100,0,100
palfx.sinadd = 85,110,55,10
palfx.color = 0
palfx.invertall = 1


[State 777, hsp]
type = helper
triggerall= !NumHelper(8702)
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark4"
postype = p2
pos = 0,-80
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1


[State 777, hdf]
type = helper
triggerall= !NumHelper(8716)
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 0,-80
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent=1

[State 777, hdf]
type = helper
triggerall= !NumHelper(8719)
trigger1 =  movehit
helpertype = normal
stateno = 8719
ID = 8719
name = "stars"
postype = p2
pos = 0,-80
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[state 1305, destroy]
type = Destroyself
trigger1 = animtime = 0

[state 1305, destroy]
type = Destroyself
trigger1 = parent, stateno = [5000,5700]


;------------------------------------------------------------------------
; Ultron Crusher
;--------------------------------------------------------------------------
[Statedef 3750]
type=S
physics=N
movetype=A
anim = 756
juggle=15
facep2=1
velset = 0,0
sprpriority=1
ctrl = 0

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;Hyper portrait, see the Air part comments for a correct display.
[State 3000, a8]
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,0
ownpal = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -15

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
sound = S10, 1
movetime = 40
poweradd = -1000
Time = 40
p2defmul = 2
anim = S8400
pos = 6, -85 ; adjust position
bindtime = -1
sprpriority = 6
removeongethit = 1


[State 100, 4]
type = PlaySnd
trigger1 = StateNo = 3750
trigger1 = animelem = 2
value = 30,1
channel=2

[State 777, es]
type = Explod
triggerall =!NumExplod(8580)
trigger1 = anim=756 && animelem = 2
sprpriority = 10
anim = 8580
id= 8580
pos = -30, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
facing=-1
supermovetime = 99
pausemovetime = 99


[State 1750, propulsor]
type = Explod
triggerall =!NumExplod(107)
trigger1 = StateNo = 3750
trigger1 = animelem = 2
anim = 107
id = 107
name = "propulsor"
postype = P1
pos = -18,-66
ownpal = 1
sprpriority = 4
facing = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 1750, propulsor2]
type = Explod
triggerall =!NumExplod(2107)
trigger1 = StateNo = 3750
trigger1 = animelem = 2
anim = 107
id = 2107
name = "propulsor2"
postype = P1
pos = -40,-64
ownpal = 1
sprpriority = 6
facing = 1
removeongethit = 1
bindtime = -1
removetime = -1

; default dashing sound
[State 100, a1]
type = playsnd
trigger1 = !time
value = 8,3
channel = 0

[State 1751, c]
type = removeexplod
trigger1 = anim=755 ;!time
id = 107

[State 1751, d]
type = removeexplod
trigger1 = anim=755; !time
id = 2107

[State 4000, strengthvar]
type=varset
trigger1= var(10)!=7
var(10)=7

[State 4000, ECreset]
type=palfx
trigger1= !time
trigger1= !(var(20):=0)
time=1

[State Corner Push]
type=varset
trigger1= !time
fvar(5)= 0

[State 4000, nhb]
type=nothitby
trigger1= 1
time=1
value=SCA

[State 4000, shield]
type=helper
trigger1= !numhelper(1007) && anim=4001
helpertype=normal
stateno=1007
ID=1007
name="Projectile Hitter"
postype=p1

[State 4000, push]
type=playerpush
trigger1= anim=756
trigger2= anim=755 && var(14)>=9
value=0

[State 4000, screen]
type=screenbound
trigger1= anim=756 && animelemtime(10)>=0
trigger2= anim=755
value=0
movecamera=0,1

[State 4000, spr]
type=sprpriority
trigger1= 1
value=ifelse(anim=755,4,1)

;[State 4000, posfix]
;type=posadd
;trigger1= anim=756 && animelem=1 || animelem=2
;x=ifelse((animelem=1),-8,-12)

[State 4000, Vel]
type=velset
trigger1= anim=756 && animelemtime(2)>=0 && vel x>-10
x=-12.5

[State 4000, Fade]
type=trans
trigger1= anim=756 && (animelemtime(3)=[0,10])
trans=addalpha
alpha=ceil(256-25.6*animelemtime(3)),ceil(25.6*animelemtime(3))

[State 4000, Fade]
type=trans
trigger1= anim=756 && animelemtime(3)>=10
trans=addalpha
alpha=0,256

[State 4000, Anim]
type=changeanim
trigger1= anim=756 && time>=60
value=755

[State 4000, Snd]
type=playsnd
trigger1= anim=755
value=50,1
channel=0
persistent=0

[State 4000, Snd]
type=playsnd
trigger1= anim=755
value=45,0
persistent=0

[State 4000, Pos]
type=posset
trigger1= anim=755
x=(-320*facing)
y=-45
persistent=0

[State 4000, palfx]
type=palfx
trigger1= anim=755 && (gametime%4=[0,1])
time=1
color=0
;add=30+ceil(sin(gametime/3.0)*30),60+ceil(sin(gametime/3.0)*30),90+ceil(sin(gametime/3.0)*30)
;mul=256,512,512
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,3
invertall = 1
ignorehitpause=1



[State 4000, palfx]
type=palfx
trigger1= anim=755 && (gametime%4=[2,3])
time=1
color=0
;add=60+ceil(sin(gametime/3.0)*30),30+ceil(sin(gametime/3.0)*30),90+ceil(sin(gametime/3.0)*30)
;mul=512,256,512
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,3
invertall = 1
ignorehitpause=1

[State 4000, FX]
type=removeexplod
trigger1= anim!=755 && numexplod(4005)
ID=4005

[State 4000, FX]
type=explod
trigger1= anim=755 && !numexplod(4005)
anim=4005
ID=4005
sprpriority=14
postype=p1
ownpal=1
removeongethit=1
ignorehitpause=1

[State 4000, FX]
type=modifyexplod
trigger1= anim=755 && (frontedgedist>-90 && time<180)
ID=4005
postype=p1
pos=0,0
vel=20,0
removetime=300
ignorehitpause=1

[State 4000, FX]
type=helper
trigger1= anim=755 && numexplod(4005) && !(gametime%8)
helpertype=normal
stateno=4006
ID=4006
name="Psycho Crusher"
postype=p1
size.xscale=.5
size.yscale=.5
ownpal=1
pausemovetime=999
supermovetime=999
ignorehitpause=1

[State 4000, BG PalFX]
type=bgpalfx
trigger1= anim=755
time=90
add=-90,-90,-90
sinadd=90,90,90,360
ignorehitpause=1

[State 4000, hitvar]
type=varset
trigger1= anim!=755
var(14)=0

[State 4000, hitvar]
type=varadd
trigger1= anim=755 && (movehit=1 || moveguarded=1 || movereversed=1)
var(14)=1

[State 4000, Vel]
type=velset
trigger1= anim=755
x=20
y=0

[State 4000, Vel]
type=velset
trigger1= anim=755 && var(14)<12
trigger1= (movecontact=[1,4]) || (movereversed=[1,4])
x=0
y=0

[State 4000, Hit]
type=hitdef
trigger1= anim=755 && !(time%4) && var(14)<11
attr=S,HA
damage=32,4
animtype=Diagup
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime=2,8
sparkno=-1;s7030+(random%8)
guard.sparkno=-1;s7001
sparkxy=-10,-60
hitsound= sifelse(hitcount,-1,2), 1
guardsound=s3,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity=-12,-12
ground.cornerpush.veloff = 0
air.type=Low
air.velocity=-12,-12
guard.dist=320
getpower=0
givepower=36,36
envshake.time=18
envshake.freq=120
envshake.ampl=8
sprpriority=5
fall=1
fall.recover=0
;ID=4000
yaccel=.5
forcestand=1



[State 777, hdf]
type = helper
trigger1= anim=755 && !(time%4);&& var(14)<11
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = 25,-99; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1= anim=755 && !(time%4) ;&& var(14)<11
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 25,-99; ADJUST ACCORDINGLY
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = anim=755 && movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =25,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1



[State 4000, HitSound]
type=playsnd
trigger1= movehit=1
trigger1= hitcount && hitpausetime=1
value=2,ifelse(hitcount=12,2,2)
channel=2
ignorehitpause=1

[State 4000, statetype]
type=statetypeset
trigger1= anim=755
statetype=A
physics=N
movetype=A

[State 4000, End]
type=changestate
trigger1= anim=755 && (frontedgedist<=-90 || time>=180)
value=3752


;---END---
[Statedef 3752]
type=S
physics=S
movetype=I
anim=4003
ctrl=0
velset=0,0

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;[State 4002, Anim]
;type=changeanim
;trigger1= time<=40
;value=4002
;elem=1
;triggerall = var(8)= 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = var(8)!= 0
trigger1= Time = 0
value = 4002

[State 4002, Pos]
type=posset
triggerall = var(8)!= 0
trigger1= animelemtime(2)<-1
x=0
y=0

[State 4002, Pos]
type=posset
triggerall = var(8)!= 0
trigger1= animelemtime(2)=-1
x=-80*facing

[State 4002, Pos]
type=posset
triggerall = var(8)= 0
trigger1= animelemtime(6)<-1
x=0
y=0

[State 4002, Pos]
type=posset
triggerall = var(8)= 0
trigger1= animelemtime(6)=-1
x=-80*facing


[State 4002, palfx]
type=palfx
trigger1= !time
time=1
add=0,0,0
ignorehitpause=1

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,2
channel=0

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,1

[State 4002, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
trigger1= var(8)!= 0 && animelem=11
trigger2= var(8)= 0 && animelem=24
persistent = 0
ID = 60
anim = 60
postype = p1
pos = -7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, Landing Sound]
type = PlaySnd
trigger1= var(8)!= 0 && animelem=11
trigger2= var(8)= 0 && animelem=24
value = 8, 1

[State 20]
type = envshake
triggerall = var(8)!= 0
trigger1 = animelem = 11
time = 10
ampl = -2

[State 20]
type = envshake
triggerall = var(8)= 0
trigger1 = animelem = 24
time = 10
ampl = -10


[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 4002, push]
type=playerpush
trigger1= animelemtime(2)<=10
value=0

[State 4002, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;------------------------------------------------------------------------------
;Chain Hyper Combo Mini Ultrons, Mancha, Alkhema
;---------------------------------------------------------------------------
[Statedef 4500]
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 3500
ctrl = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;Hyper portrait, see the Air part comments for a correct display.
[State 3000, a8]
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,0
ownpal = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -15

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
sound = S10, 1
movetime = 40
poweradd = -1000
Time = 40
p2defmul = 2
anim = S8400
pos = -10, -85 ; adjust position
bindtime = -1
sprpriority = 6
removeongethit = 1
;------------------------------------------

[State 777, 0];reset var
type = VarSet
trigger1 = !time
fv = 16
value = 0

[State 777, 0]
type = VarRangeSet
trigger1 = !time
value = 0
first = 11
last = 13

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 7,1
channel = 0
IgnoreHitPause = 1

[State 777,  0]
type = NotHitBy
trigger1 = !time
value = SCA
time = 45

[State 3500, a2]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 3201 , a6]
type = HitDef
trigger1 = !time
attr = S, HA
damage    = 0,20
priority = 7, hit
animtype = hard
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkxy = -1;10,-50;(enemy ,const(size.mid.pos.x)),(enemy ,const(size.mid.pos.y))
sparkno = -1;Sifelse(random>500,8520,8521)
guard.sparkno= -1
sprpriority = 6
hitsound   = S2,2
guardsound = S3,0
ground.type = Trip
air.type = Trip
ground.slidetime = 30
ground.hittime = 50
ground.velocity = 0
air.velocity = 0,1
fall = 1
air.fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
p2stateno = 4520
givepower = 5
kill = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =30,-75
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos =30,-75;
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

; MakeDust effect, use it on running moves or dash moves
[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999

;
[State 777, es]
type = Explod
trigger1 = animelem= 2 ;!time
sprpriority = 10
anim = 8580
pos = 20, 10
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

; Dash Run Forward velocity blue lines
[State 100, a7]
type = Explod
trigger1 = Time %7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,0,14),ifelse(random<500,-60,-50)
accel = ifelse(random<500,-1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

[State 1045, Afterimage]
type = AfterImage
trigger1 = animelem = 6
length = 30
PalBright   =  0,0,0
PalContrast =  120,120,220
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 45

[State 1045, Super Jump Afterimage]
type = null;AfterImage
trigger1 = animelem = 6
length = 100
PalBright   =  320, 320, 320
PalContrast =  10, 10, 10
PalAdd      =  80,80,100
PalMul      = .50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 45

[State 100, 4]
type = PlaySnd
trigger1 = animelem = 6
value = 30,1
channel=4

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = animelem = 6
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = 36,22
ownpal = 1
sprpriority = 6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor2]
type = Explod
triggerall =!NumExplod(2102)
trigger1 = animelem = 6
anim = 102
id = 2102
name = "propulsor2"
postype = P1
pos = -14,15
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 1010, 9]
type = ChangeState
trigger1 = time = 120
value = 831
ctrl = 1

[State 3500, a6]
type = PlaySnd
trigger1 = AnimElem = 6
value = 30,2
channel=6
IgnoreHitPause = 1

[State 3500, A5]
type = Veladd
trigger1 = time >= 41
x = 2

[State 3500, A6]
type = Velset
trigger1 = animelem = 6
x = 9

[State 3500, b1]
type = ChangeState
trigger1 = movehit
value = 4502
ctrl = 0

[State 3500, b1]
type = ChangeState
trigger1 = moveguarded
value = 105
ctrl = 0

[State 3500, b1]
type = ChangeState
trigger1 = time >=75
trigger2 = frontEdgeBodyDist <= 0
value = 4501
ctrl = 0


[Statedef 4501];miss ---------------------------------------
type    = S
physics = S
ctrl = 0
anim = 105

[State 831, c]
type = removeexplod
trigger1 = !time
id = 102

[State 751, d]
type = removeexplod
trigger1 = !time
id = 2102

; Dash Run Forward velocity blue lines
[State 100, a7]
type = Explod
trigger1 = Time %7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,0,14),ifelse(random<500,-60,-50)
accel = ifelse(random<500,-1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

[State 3501, 1]
type = VelMul
trigger1 = AnimElem = 1
x = 1

[State 3501, a]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3501, b]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3501, 1]
type = VelMul
trigger1 = AnimElem = 2
x = .05
;y = .01

[State 3501, 3]
type = PosSet
trigger1 = animelem = 2
y = 0

[State 3501, 2]
type = VelSet
trigger1 = animelem = 2
y = 0


[State 3501, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 4502] ;----going to wall
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3502

[State 3502, Bind 1]
type = TargetBind
trigger1 = 1
pos = 113, -65
time = 1

[State 3502, A5]
type = Veladd
trigger1 = time >=0
x = 2

[State 777,  0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3502, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3502, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3502, a3] ;fixed camera
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 3502, f0]
type = EnvShake
triggerall = time>=12
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
time = 20
freq = 60
ampl = -4
persistent=0

[State 3502, a0]
type = TargetState
triggerall = time>=12
;triggerall = var(30) = [0,10]
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 4521

[State 3502, 10]
type = PlaySnd
trigger1 = p2stateno = 4521
value = 30,3
volume = 200
persistent = 0

[State 3502, 5] ;Mini ultrons
type = ChangeState
triggerall = time>=12
;triggerall = var(30) = [0,10]
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 4505
ctrl = 0

;---------------------------------------------------------------------------
;Mini Ultrons
;---------------------------------------------------------------------------
[Statedef 4505]
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1

[State 831, c]
type = removeexplod
trigger1 = !time
id = 102

[State 751, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 777, a01]
type = ChangeAnim
trigger1 = !time; && prevstateno != 9000
value = 3505
ctrl = 1

[State 777, 0];reset var
type = VarSet
trigger1 = !time
fv = 16
value = 0
[State 777, 0];reset var
type = VarSet
trigger1 = !time
v = 11
value = 1
[State 777, 0]
type = PowerAdd
trigger1=!time && var(12)=1
trigger2=!time && var(13)=1
value = -1000


[State 3505, a1]
type = Turn
trigger1 =!time ;&& prevstateno!=3515 && prevstateno!=3571


[State 3505, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3505, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3505, dd]
type = PlaySnd
trigger1 = animelem =3
value = 20,2
channel = 7
volume =230

[State 3502, Bind 1]
type = TargetBind
trigger1 = !time ;&& prevstateno!=3515 && prevstateno!=3571
pos = 10, -65
time = 1

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 3505, p2] ;explodpedr
type = helper
trigger1 = p2stateno = 4522
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = 0,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 3505, 10]
type = PlaySnd
trigger1 = p2stateno = 4522
value = 40,2
volume = 200
persistent = 0

[State 3505, f0]
type = EnvShake
trigger1 = p2stateno = 4522
time = 8
freq = 60
ampl = -4
persistent = 0

[State 3505, 5]
type = ChangeState
trigger1 = animtime = 0
value = 4506
ctrl = 0

[Statedef 4506] ;-----------------------Ultron while
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority =18
anim = 3506

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 3506, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3506, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-----------------
[State 3506, 1]
type = VarRandom
trigger1 = Time = 0
v = 26
range = 0,100

[State 2010, 1]
type = helper
triggerall = !var(7)
triggerall = Var(26) = [0,50]
triggerall = power >= 1000 && P2life > 0
;triggerall = Var(8) = 0
trigger1 = !time
helpertype = normal
pos = 0,0
postype = back
stateno = 13290
ID =13290
name = "command"
facing = (facing)
keyctrl = 1
ownpal =1

[State 2010, 1]
type = helper
triggerall = !var(7)
triggerall = Var(26) = [51,100]
triggerall = power >= 1000 && P2life > 0
;triggerall = Var(8) = 0
trigger1 = !time
helpertype = normal
pos = 0,0
postype = back
stateno = 13390
ID =13390
name = "command"
facing = (facing)
keyctrl = 1
ownpal =1
;----------------------------

[State 3502, dd]
type = HitAdd
trigger1 = time = 5
trigger2 = time = 65
trigger3 = time = 125
trigger4 = time = 185
trigger5 = time = 245
trigger6 = time = 20
trigger7 = time = 80
trigger8 = time = 140
trigger9 = time = 200
value =1
ignorehitpause = 0
persistent = 1

[State 3502, dd]
type = HitAdd
trigger1 = time = 260
trigger2 = time = 35
trigger3 = time = 95
trigger4 = time = 155
trigger5 = time = 215
trigger6 = time = 275
trigger7 = time = 50
trigger8 = time = 110
trigger9 = time = 170
value =1
ignorehitpause = 0
persistent = 1

[State 3502, dd]
type = HitAdd
trigger1 = time = 230
trigger2 = time = 290
value =1
ignorehitpause = 0
persistent = 1

;-----------------------------
[State 777, hsp]
type = helper
trigger1 = time = 5
trigger2 = time = 65
trigger3 = time = 125
trigger4 = time = 185
trigger5 = time = 245
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 0,-10
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = time = 20
trigger2 = time = 80
trigger3 = time = 140
trigger4 = time = 200
trigger5 = time = 260
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 0,-30
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = time = 35
trigger2 = time = 95
trigger3 = time = 155
trigger4 = time = 215
trigger5 = time = 275
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = 0,-10
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1


[State 777, hsp]
type = helper
trigger1 = time = 50
trigger2 = time = 110
trigger3 = time = 170
trigger4 = time = 230
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 0,-40
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = time = 290
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 0,-40
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

;-----------------------------
[State 3502, dd]
type = PlaySnd
trigger1 = time = 5
trigger2 = time = 65
trigger3 = time = 125
trigger4 = time = 185
trigger5 = time = 245
value = 2, 2
channel = 10
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = PlaySnd
trigger1 = time = 20
trigger2 = time = 80
trigger3 = time = 140
trigger4 = time = 200
trigger5 = time = 260
value = 2, 2
channel = 10
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = PlaySnd
trigger1 = time = 35
trigger2 = time = 95
trigger3 = time = 155
trigger4 = time = 215
trigger5 = time = 275
value = 2,2
channel = 8
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = PlaySnd
trigger1 = time = 50
trigger2 = time = 110
trigger3 = time = 170
trigger4 = time = 230
trigger5 = time = 290
value = 2, 2
channel = 6
ignorehitpause = 1
volume = -100
;--------------------------


;-----------------------------
[State 3502, dd]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 120
trigger3 = time = 240
value = 80, 1
channel = 12
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = PlaySnd
trigger1 = time = 15
trigger2 = time = 135
trigger3 = time = 255
value = 80, 2
channel = 4
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = PlaySnd
trigger1 = time = 30
trigger2 = time = 150
trigger3 = time = 270
value = 80, 3
channel = 2
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = PlaySnd
trigger1 = time = 45
trigger2 = time = 165
trigger3 = time = 285
value = 80, 4
channel = 0
ignorehitpause = 1
volume = -100
;--------------------------

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(3600)
trigger1 = time = 0
trigger2 = time = 60
trigger3 = time = 120
trigger4 = time = 180
trigger5 = time = 240
anim = 3600
ID =  3600
pos = -50,0
postype = p1
facing = 1
vel = 12,0
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 120,120,120
ownpal = 1
removeongethit = 1


[State 3506, Explod]
type = Explod
triggerall = !NumExplod(3601)
trigger1 = time = 15
trigger2 = time = 75
trigger3 = time = 135
trigger4 = time = 195
trigger5 = time = 255
anim = 3601
ID =  3601
pos = -50,-20
postype = p1
facing = 1
vel = 12,0
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 120,120,120
ownpal = 1
removeongethit = 1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(3602)
trigger1 = time = 30
trigger2 = time = 90
trigger3 = time = 150
trigger4 = time = 210
trigger5 = time = 270
anim = 3602
ID =  3602
pos = -50,0
postype = p1
facing = 1
vel = 12,0
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 120,120,120
ownpal = 1
removeongethit = 1


[State 3506, Explod]
type = Explod
triggerall = !NumExplod(3603)
trigger1 = time = 45
trigger2 = time = 105
trigger3 = time = 165
trigger4 = time = 225
trigger5 = time = 285
anim = 3601
ID =  3603
pos = -50,-20
postype = p1
facing = 1
vel = 12,0
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 120,120,120
ownpal = 1
removeongethit = 1

[State 3506, ea]
type = TargetLifeAdd
trigger1= time = 220
value = -250

[State 210, 2]
type = HitDef
triggerall = NumHelper(13296)= 0
trigger1= time = 245
attr = S, NA
animtype  = Heavy
damage    = 87
guardflag = MA
hitflag = MAF
pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S30,3
guardsound = S2,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 12
ground.velocity = -18, -1
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -18, -1
air.hittime = 20
ground.cornerpush.veloff = -12
fall = 1
air.fall=1

[State 777, hsp]
type = helper
triggerall = NumHelper(13296)= 0
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =-40,-40
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 250, 3]
type = ChangeState
triggerall=  power >= 1000 && var(7)
triggerall = P2life > 0
trigger1 = time >= 250
value = 3102
ctrl = 0


[State 3506, 5]
type = ChangeState
triggerall = NumHelper(13296) = 0
;trigger1 = var(16)= 0
trigger1 = time >= 250
;trigger2 = time >= 320
;trigger3 = time >= 320 && WinKo
value = 4507
ctrl = 0

[State 1000, 7]
type = Changestate
triggerall = NumHelper(13296) = 1
;trigger1 = var(16)= 0
trigger1 = time >= 250
;trigger2 = time >= 320
;trigger3 = time >= 320 && WinKo
ctrl = 0
value = 3102


;-------------------------------------------------------------------
;Striker Hyper  2 Mancha
;------------------------------------------------------------------
[StateDef 3102]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3102
ctrl = 0
juggle =6
sprpriority = 2

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1


[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
sound = S10, 1
movetime = 40
poweradd = -1000
Time = 40
p2defmul = 2
anim = S8400
pos = 10, -85
bindtime = -1
sprpriority = 6
removeongethit = 1

[State 3102, 1]
type = PlaySnd
trigger1 = Time = 8
value = 9,1

[State 3102, 0]
type = HitDef
;triggerall = NumHelper(23296) = 1
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = 2,2
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
sprpriority = 2
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
p2stateno = 444444

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =20, -30
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 3102, PalFX]
type = PalFX
trigger1 = animelem = 2
time = 200
add = 190,0,0
mul = 266,256,256
sinadd = 180,0,0,30
invertall = 0
color = 256
ignorehitpause = 1

[State 4100,mancha]
type = Helper
trigger1 = StateNo = 3102
trigger1 = time = 1
ID = 3105
pos = -15,0
stateno = 3105
helpertype = normal
name = "mancha"
keyctrl = 0
sprpriority = 6
ownpal = 1
BindToParent


[State 777, es]
type = Explod
triggerall= !numexplod(8580)
trigger1 = p2stateno = 444444
sprpriority = 10
anim = 8580
id=8580
pos = 120,200
postype=P2
removeongethit = 1
scale = .57,.57
bindtime = 0
facing=-1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[state 711, snd]
type = playsnd
triggerall = NumHelper(23296) = 1 || var(7)
trigger1 = animelem = 8
value = 45,3
channel=4

[state 711, snd]
type = playsnd
triggerall = NumHelper(23296) = 1  || var(7)
trigger1 = animelem = 8
value = 45,13
channel=2

[State 777, es]
type = Explod
triggerall = NumHelper(23296) = 1  || var(7)
triggerall= !numexplod(7111)
trigger1 = animelem = 8
sprpriority = 10
anim = 7111
id=7111
ontop = 1
facing = 1
bindtime = -1
removetime = 32
pos= 40,-85
removeongethit=1
flag = noshadow
ownpal = 1

[State 8100, circlebeam]
type = Explod
triggerall = !NumExplod(727)
trigger1 = AnimElem = 8
anim = 727
id = 727
ontop = 1
facing = 1
bindtime = -1
removetime = 14
removeongethit=1
pos= -13,-12
flag = noshadow
ownpal = 1


;[State 777, es]
;type = Explod
;triggerall = NumHelper(23296) = 1
;triggerall= !numexplod(712)
;trigger1 = animelem = 8
;sprpriority = 10
;anim = 712
;id=712
;ontop = 1
;facing = 1
;bindtime = -1
;removetime = 32
;pos= 78,-83
;removeongethit=1
;flag = noshadow
;ownpal = 1

[State 3102, 0]
type = HitDef
trigger1 = animelem = 9
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = 45,4
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
sprpriority = 2
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
p2stateno = 444445


[State 777, hsp]
type = helper
triggerall = p2stateno = 444445
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =15,-75
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[state 711, snd]
type = playsnd
triggerall = p2stateno = 444445
trigger1 = movehit
value = 2,2
channel=4
persistent=0

[State 225,p]
type = Pause
triggerall = NumHelper(23290)
trigger1 = TimeMod = 2,1
time =0

;-----------------
[State 3506, 1]
type = VarRandom
trigger1 = Time = 0
v = 26
range = 0,100

[State 2010, 1]
type = helper
triggerall = !Var(7)
triggerall = Var(26) = [0,50]
triggerall = power >= 1000 && P2life > 0
;triggerall = Var(8) = 0
trigger1 = time = 30
helpertype = normal
pos = 0,0
postype = back
stateno = 23290
ID =23290
name = "command2"
facing = (facing)
keyctrl = 1
ownpal =1

[State 2010, 1]
type = helper
triggerall = !Var(7)
triggerall = Var(26) = [51,100]
triggerall = power >= 1000 && P2life > 0
;triggerall = Var(8) = 0
trigger1 = time = 30
helpertype = normal
pos = 0,0
postype = back
stateno = 23390
ID =23390
name = "command2"
facing = (facing)
keyctrl = 1
ownpal =1

;----------------------------

[State 250, 3]
type = ChangeState
triggerall=  power >= 1000 && var(7)
triggerall = P2life > 0
trigger1 = time = 320
value = 3002
ctrl = 0

[State 3506, 5]
type = ChangeState
triggerall = NumHelper(23296) = 0
triggerall = !var(7)
trigger1 = time = 257
value = 3003;830
ctrl = 0

[State 1000, 7]
type = Changestate
triggerall = NumHelper(23296) = 1
trigger1 = time = 320
value = 3002
ctrl = 0



;---------------------------------------------------------------------------
; Finish if 2nd fail
;---------------------------------------------------------------------------
[StateDef 830]
type = S
movetype = A
physics = N
velset = 0,0
anim = 830
ctrl = 0
juggle =6
sprpriority = 1

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 830, 1]
type = PlaySnd
trigger1 = Time = 8
value = 9,1

[State 830, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 12

[State 1010, 6]
type = EnvShake
trigger1 = AnimElem = 7
freq = 140
time = 24
persistent = 0

[State 777, hsp]
type = helper
trigger1= movehit; time = 30
helpertype = normal
stateno = 8710
ID = 8710
name = "cutspark"
postype = p2
pos = -25,-70
ignorehitpause = 1
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0


[State 777, hdf]
type = helper
trigger1 = movehit; time = 30
helpertype = normal
stateno = 8719
ID = 8719
name = "stars"
postype = p2
pos = 0,-80
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = movehit; time = 30
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,-75
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 3300, A4]
type = PlaySnd
trigger1 = movehit; time = 30
value = 10,2
channel = 2
persistent = 0
loop = 0


[State 3000, hit]
type = hitdef
trigger1 = time =0
attr = S, NA
damage   = 250,10
animtype = Heavy
removeongethit = 1
guardflag = MA
hitflag = MAF
pausetime = 0,1
sparkno = -1
hitsound = S2,2
guardsound = S3,1
guard.sparkno = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = -2,-21
air.velocity = -2, -21
sprpriority = 9
fall = 1
air.fall = 1
fall.recovertime = 124
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4

[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999

[State 777, es]
type = Explod
trigger1 = animelem=2
sprpriority = 10
anim = 8580
pos = 0, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

; Dash Run Forward velocity blue lines
[State 100, a7]
type = Explod
trigger1 = Time %7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,0,14),ifelse(random<500,-60,-50)
accel = ifelse(random<500,-1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

[State 100, 4]
type = PlaySnd
trigger1 = animelem = 2
value = 30,1
channel=4

[State 100, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = animelem = 6
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = 36,22
ownpal = 1
sprpriority = 6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor2]
type = Explod
triggerall =!NumExplod(2102)
trigger1 = animelem = 6
anim = 102
id = 2102
name = "propulsor2"
postype = P1
pos = -14,15
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 3500, a2]
type = ScreenBound
trigger1 = movehit;1
movecamera = 0, 0
value = 1

[State 1010, 9]    ;<---- finisher
type = ChangeState
trigger1 = time = 120
value = 831
ctrl = 1

;----------------
;end
;----------------
[Statedef 831]
type    = S
physics = S
anim = 831
sprpriority = 1
ctrl = 0

[State 3500, a2]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 0

[State 831, c]
type = removeexplod
trigger1 = !time
id = 102

[State 751, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1


[State 831, 4]
type = VelMul
trigger1 = 1
x = 0.2

[State 831, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;Striker Hyper  Alkhema
;-------------------------------------------------------------------------------
[StateDef 3002]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 999
ctrl = 0
juggle =6
sprpriority = -2

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
sound = S10, 1
movetime = 40
poweradd = -1000
Time = 40
p2defmul = 2
anim = S8400
pos = 10, -85 ; adjust position
bindtime = -1
sprpriority = 6
removeongethit = 1

[State 3002, 1]
type = PlaySnd
trigger1 = Time = 0
value = 10,0
channel=8

[State 3002, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 7,0
channel=6

[State 4100,cygirl]
type = Helper
trigger1 = StateNo = 3002
trigger1 = time = 1
ID = 3005
pos = 80,0;postype = back
stateno = 3005
helpertype = normal
name = "alkhema"
keyctrl = 0
sprpriority = 4
ownpal = 1
BindToParent

[State 3002, back to normal]
type = ChangeState
trigger1 = Time = 200
value = 830; 3003
ctrl = 1
;---------------------
; (move end)
[Statedef 3003]
type    = S
physics = S
ctrl = 0
anim = 998
sprpriority = 2

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 3000, proj]
type = projectile
trigger1 = animelem = 4
offset= 0,0
projanim = 997
projremove = 0
projremovetime = 28
projhits = 1
projmisstime = 2
projshadow = -1
projpriority = 6
projid = 1003
bindtime = -1
attr = S, NA
damage   = 200,10
animtype = Heavy
removeongethit = 1
guardflag = MA
hitflag = MAF
pausetime = 0,1
sparkno = -1
hitsound = S10,2
guardsound = S3,1
guard.sparkno = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = -2,-21
air.velocity = -2, -21
sprpriority = 9
fall = 1
air.fall = 1
fall.recovertime = 124
down.velocity = -10
down.hittime = 150
down.bounce = 0
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
palfx.time = 50
palfx.add = -150,-40,-100
palfx.sinadd =  0,80,15,20
palfx.color = 0
palfx.invertall = 1

[State 3506, ea]
type = TargetLifeAdd
trigger1= projhit =1
value = -200

[State 3300, A4]
type = PlaySnd
trigger1 = animelem = 4
value = 30,3
channel = 4

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 777, hsp]
type = helper
trigger1 = projcontact(997) = 1
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,-85
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1= movehit
helpertype = normal
stateno = 8710
ID = 8710
name = "cutspark"
postype = p2
pos = 0,-70
ignorehitpause = 1
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 777, hdf]
type = helper
trigger1 =  movehit
helpertype = normal
stateno = 8719
ID = 8719
name = "stars"
postype = p2
pos = 0,-80
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 3003, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------Alkhema------------
[statedef 3005]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1000
velset = 0,0

[state 4000, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State -3, Landing Dust]
type = Explod
trigger1 = animelem = 20
persistent = 0
ID = 60
anim = 60
postype = p1
pos = 7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
trigger1 = animelem = 20
value = 8, 1

[state 4000, changestate]
type = Changestate
trigger1 = animtime = 0
value = 3006
ctrl = 1

;-------Alkhema2------------
[statedef 3006]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1001
velset = 0,0

[state 3006, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State 755, sparkcg]
type = Explod
triggerall =!NumExplod(1002)
trigger1 = StateNo = 3006
trigger1 = animelem = 7
anim = 1002
id = 1002
name = "sparkcyg"
pos = 0,0
ownpal = 1
sprpriority = 5
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = 110

[State 3000, proj]
trigger1 = StateNo = 3006
trigger1 = animelem = 7
type = projectile
offset= 0,0
projanim = 1003
projremove = 0
projremovetime = 105
projhits = 45
projmisstime = 2
projshadow = -1
projpriority = 6
projid = 1003
bindtime = -1
velocity = 0.001,0.001
attr = S, NA
damage   = 15,1
animtype = Hard
removeongethit = 1
guardflag = MA
hitflag = MAFD
pausetime = 0,1
sparkno = -1
hitsound = 5,3
guardsound = 6,0
guard.sparkno = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = 0,0
air.velocity = -1, -1
sprpriority = 9
fall = 1
down.velocity = -10
down.hittime = 150
down.bounce = 0
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
palfx.time = 50
palfx.add = -150,-40,-100
palfx.sinadd =  0,80,15,20
palfx.color = 0
palfx.invertall = 1
p2stateno = 555560

[State 777, hsp]
type = helper
triggerall = !NumHelper(8704)
trigger1 = p2stateno = 555560
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,-65
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[state 3006, changestate]
type = Changestate
trigger1 = animtime = 0
value = 3007
ctrl = 1

;---------alkhema OUT------------
[statedef 3007]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1004

[state 3007, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State 777, hsp]; Superjump FX helper
type = helper
trigger1 = !time
helpertype = normal
stateno = 8715
ID = 2999
name = "superjump"
postype = p1
pos = 0,-10
facing = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1

[State 1045, 8]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 3007, 1]
type = VelSet
trigger1 = animelem = 2
x = -6
y = -6

[state 3007, destroy]
type = Destroyself
trigger1 = time = 70


;-------Mancha------------
[statedef 3105]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3105
velset = 0,0

[state 3105, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State 1045, 8]
type = PlaySnd
trigger1 = time = 0
value = 8,3


[state 3105, changestate]
type = Changestate
trigger1 = animtime = 0
value = 3106
ctrl = 1

;-------Mancha2------------
[statedef 3106]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3106
velset = 0,0

[state 3106, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State 3000, proj1]
triggerall = StateNo = 3106
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
trigger4 = animelem = 31
trigger5 = animelem = 39
;trigger6 = animelem = 31
type = projectile
projID = 3107
projanim = 3107
projhitanim = 3108
velocity = 6, 4
offset = 40,-140
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 10,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S45, 4
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
palfx.time = 10
palfx.add = 190,0,0
palfx.sinadd =  180,0,0,30
palfx.mul = 266,256,256
palfx.color = 256
palfx.invertall = 1
p2stateno = 555555

[State 777, hsp]
type = helper
triggerall = !NumHelper(8700)
trigger1 = p2stateno = 555555
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = 15,-60
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 3000, proj2]
triggerall = StateNo = 3106
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 17
trigger4 = animelem = 25
trigger5 = animelem = 29
trigger6 = animelem = 37
type = projectile
projID = 3108
projanim = 3107
projhitanim = 3108
velocity = 6, 4
offset = 40,-155
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 10,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S45, 4
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
palfx.time = 10
palfx.add = 190,0,0
palfx.sinadd =  180,0,0,30
palfx.mul = 266,256,256
palfx.color = 256
palfx.invertall = 1
p2stateno = 555556

[State 777, hsp]
type = helper
triggerall = !NumHelper(8701)
trigger1 = p2stateno = 555557
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = -15,-80
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 3000, proj3]
triggerall = StateNo = 3106
trigger1 = animelem = 11
trigger2 = animelem = 27
trigger3 = animelem = 19
trigger4 = animelem = 35
;trigger5 = animelem = 29
;trigger6 = animelem = 29
type = projectile
projID = 3109
projanim = 3107
projhitanim = 3108
velocity = 6, 4
offset = 40,-170
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 10,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S45, 4
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
palfx.time = 10
palfx.add = 190,0,0
palfx.sinadd =  180,0,0,30
palfx.mul = 266,256,256
palfx.color = 256
palfx.invertall = 1
p2stateno = 555557

[State 3000, proj4]
triggerall = StateNo = 3106
trigger1 = animelem = 17
trigger2 = animelem = 21
trigger3 = animelem = 33
t rigger4 = animelem = 37
trigger5 = animelem = 29
;trigger6 = animelem = 29
type = projectile
projID = 3110
projanim = 3107
projhitanim = 3108
velocity = 6, 4
offset = 40,-125
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 15,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S45, 5
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
palfx.time = 10
palfx.add = 190,0,0
palfx.sinadd =  180,0,0,30
palfx.mul = 266,256,256
palfx.color = 256
palfx.invertall = 1
p2stateno = 555558

[State 3000, proj5]
triggerall = StateNo = 3106
trigger1 = animelem = 19
trigger2 = animelem = 35
trigger3 = animelem = 11
trigger4 = animelem = 27
;trigger5 = animelem = 29
;trigger6 = animelem = 29
type = projectile
projID = 3111
projanim = 3107
projhitanim = 3108
velocity = 6, 4
offset = 40,-125
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 15,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S45, 5
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
palfx.time = 10
palfx.add = 190,0,0
palfx.sinadd =  180,0,0,30
palfx.mul = 266,256,256
palfx.color = 256
palfx.invertall = 1
p2stateno = 555559


[State 777, hsp]
type = helper
triggerall = !NumHelper(8704)
trigger1 = p2stateno = 555559
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,-85
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[state 3006, changestate]
type = Changestate
trigger1 = time = 181
value = 3107
ctrl = 1

;------------------OUT------------
[statedef 3107]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3109

[state 3107, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State 3107, 1]
type = VelSet
trigger1 = animelem = 1
x = -6
y = -6

[State 1045, 8]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[state 3107, destroy]
type = Destroyself
trigger1 = time = 70


;------------------------------------------------------------------------------
; End First part
;-----------------------------------------------------------------------------
[Statedef 4507] ;-----------------------end
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1
anim = 3507

[State 3507, 0]
type = StopSnd
trigger1 =!time
channel = 6

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 3507, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


 ;------------------------------------------------------------------------------
;Chain Hyper Combo Clones, Balls, Ripper
;---------------------------------------------------------------------------
[Statedef 4600]
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2

[State 777, ch]
type = ChangeAnim
trigger1 = prevstateno != 9000
trigger1 = !time
value = 4600
ctrl = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;Hyper portrait, see the Air part comments for a correct display.
[State 3000, a8]
type = Explod
trigger1 = !time
anim = 8950
postype = back
pos = 20,0
ownpal = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -15

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
sound = S10, 1
movetime = 40
poweradd = -1000
Time = 40
p2defmul = 2
anim = S8400
pos = -10, -85 ; adjust position
bindtime = -1
sprpriority = 6
removeongethit = 1
;------------------------------------------

[State 777, 0];reset var
type = VarSet
trigger1 = !time
fv = 16
value = 0

[State 777, 0]
type = VarRangeSet
trigger1 = !time
value = 0
first = 11
last = 13

[State 7777, voice]
type = PlaySnd
trigger1 = !time
value = 7,1
channel = 0
IgnoreHitPause = 1

[State 777,  0]
type = NotHitBy
trigger1 = !time
value = SCA
time = 45

[State 3500, a2]
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 3201 , a6]
type = HitDef
trigger1 = !time
attr = S, HA
damage    = 0,20
priority = 7, hit
animtype = hard
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkxy = -1;10,-50;(enemy ,const(size.mid.pos.x)),(enemy ,const(size.mid.pos.y))
sparkno = -1;Sifelse(random>500,8520,8521)
guard.sparkno= -1
sprpriority = 6
hitsound   = S2,2
guardsound = S3,0
ground.type = Trip
air.type = Trip
ground.slidetime = 30
ground.hittime = 50
ground.velocity = 0
air.velocity = 0,1
fall = 1
air.fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall.recover = 0
p2stateno = 4620
givepower = 5
kill = 1

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =30,-60
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos =30,-60;
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

; MakeDust effect, use it on running moves or dash moves
[State 105, DUST]
type = Explod
trigger1 = Time % 8 = 0
anim = 8730
postype = p1
sprpriority = 7
ownpal = 1
pos = 45, 0
scale = .5,.5
supermovetime = 9999
pausemovetime = 9999

;
[State 777, es]
type = Explod
trigger1 = animelem= 2 ;!time
sprpriority = 10
anim = 8580
pos = 20, 10
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

; Dash Run Forward velocity blue lines
[State 100, a7]
type = Explod
trigger1 = Time %7=0
sprpriority = 7
anim = 8590
postype = P1
pos = ifelse(random<500,0,14),ifelse(random<500,-60,-50)
accel = ifelse(random<500,-1,-.7),0
random = 8,60
removeongethit = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
scale = .5,.5

[State 1045, Afterimage]
type = AfterImage
trigger1 = animelem = 6
length = 30
PalBright   =  0,0,0
PalContrast =  120,120,220
PalAdd      =  0,0,0
PalMul      = 1,1,1
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 45

[State 1045, Super Jump Afterimage]
type = null;AfterImage
trigger1 = animelem = 6
length = 100
PalBright   =  320, 320, 320
PalContrast =  10, 10, 10
PalAdd      =  80,80,100
PalMul      = .50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 45

[State 100, 4]
type = PlaySnd
trigger1 = animelem = 6
value = 30,1
channel=4

[State 750, propulsor]
type = Explod
triggerall =!NumExplod(102)
trigger1 = animelem = 6
anim = 102
id = 102
name = "propulsor"
postype = P1
pos = -60,-23
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 750, propulsor2]
type = Explod
triggerall =!NumExplod(2102)
trigger1 = animelem = 6
anim = 102
id = 2102
name = "propulsor2"
postype = P1
pos = -64,-30
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 1010, 9]
type = ChangeState
trigger1 = time = 120
value = 831
ctrl = 1

[State 3500, a6]
type = PlaySnd
trigger1 = AnimElem = 6
value = 30,2
channel=6
IgnoreHitPause = 1

[State 3500, A5]
type = Veladd
trigger1 = time >= 41
x = 2

[State 3500, A6]
type = Velset
trigger1 = animelem = 6
x = 9

[State 3500, b1]
type = ChangeState
trigger1 = movehit
value = 4602
ctrl = 0

[State 3500, b1]
type = ChangeState
trigger1 = moveguarded
value = 105
ctrl = 0

[State 3500, b1]
type = ChangeState
trigger1 = time >=75
trigger2 = frontEdgeBodyDist <= 0
value = 4501
ctrl = 0

;---------------------------------------------------------------------------

[Statedef 4602] ;----going to wall
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 4602

[State 3502, Bind 1]
type = TargetBind
trigger1 = 1
pos = 113, -65
time = 1

[State 3502, A5]
type = Veladd
trigger1 = time >=0
x = 2

[State 777,  0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3502, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3502, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3502, a3] ;fixed camera
type = ScreenBound
trigger1 = 1
movecamera = 0, 0
value = 1

[State 3502, f0]
type = EnvShake
triggerall = time>=12
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
time = 20
freq = 60
ampl = -4
persistent=0

[State 3502, a0]
type = TargetState
triggerall = time>=12
;triggerall = var(30) = [0,10]
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value = 4721

[State 3502, 10]
type = PlaySnd
trigger1 = p2stateno = 4721
value = 30,3
volume = 200
persistent = 0

[State 3502, 5] ;Clones
type = ChangeState
triggerall = time>=12
;triggerall = var(30) = [0,10]
trigger1 = BackEdgeBodyDist <= 15
trigger2 = FrontEdgeBodyDist <= 15
value =4610 ; 4505
ctrl = 0

;---------------------------------------------------------------------------
;Combo clones
;---------------------------------------------------------------------------
[Statedef 4610]
type    = S
movetype = A;I
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1

[State 3502, a0]
type = TargetState
triggerall = time>=30
trigger1 = p2stateno = 4721
value = 4722


[State 831, c]
type = removeexplod
trigger1 = !time
id = 102

[State 751, d]
type = removeexplod
trigger1 = !time
id = 2102

[State 777, a01]
type = ChangeAnim
trigger1 = !time; && prevstateno != 9000
value = 4610
ctrl = 1

[State 777, 0];reset var
type = VarSet
trigger1 = !time
fv = 16

value = 0
[State 777, 0];reset var
type = VarSet
trigger1 = !time
v = 11
value = 1

[State 3505, a1]
type = Turn
trigger1 =!time

[State 3505, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3505, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3505, dd]
type = PlaySnd
trigger1 = animelem =3
value = 6,0
channel = 7
volume =630

[State 3502, Bind 1]
type = TargetBind
trigger1 = !time
pos = 10, -65
time = 1

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 3505, p2] ;explodpedr
type = helper
trigger1 = p2stateno = 4722
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = 30,55
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 3505, 10]
type = PlaySnd
trigger1 = p2stateno = 4722
value = 40,2
volume = 200
persistent = 0

[State 3505, f0]
type = EnvShake
trigger1 = p2stateno = 4722
time = 8
freq = 60
ampl = -4
persistent = 0

[State 3505, 5]
type = ChangeState
trigger1 = animtime = 0
value = 4606
ctrl = 0

[Statedef 4606] ;-----------------------Ultron while
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority =18
anim = 4611

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 3506, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3506, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-----------------
[State 3506, 1]
type = VarRandom
trigger1 = Time = 0
v = 26
range = 0,100

[State 2010, 1]
type = helper
triggerall = !var(7)
triggerall = Var(26) = [0,50]
triggerall = power >= 1000 && P2life > 0
;triggerall = Var(8) = 0
trigger1 = !time
helpertype = normal
pos = 0,0
postype = back
stateno = 13290
ID =13290
name = "command"
facing = (facing)
keyctrl = 1
ownpal =1

[State 2010, 1]
type = helper
triggerall = !var(7)
triggerall = Var(26) = [51,100]
triggerall = power >= 1000 && P2life > 0
;triggerall = Var(8) = 0
trigger1 = !time
helpertype = normal
pos = 0,0
postype = back
stateno = 13390
ID =13390
name = "command"
facing = (facing)
keyctrl = 1
ownpal =1
;----------------------------

[State 3502, dd]
type = HitAdd
trigger1 = time = 17
trigger2 = time = 182
trigger3 = time = 142
trigger4 = time = 67
trigger5 = time = 227
trigger6 = time = 62
trigger7 = time = 222
trigger8 = time = 187
trigger9 = time = 22
value =1
ignorehitpause = 0
persistent = 1

[State 3502, dd]
type = HitAdd
trigger1 = time = 102
trigger2 = time = 147
trigger3 = time = 290
value =1
ignorehitpause = 0
persistent = 1


;-----------------------------
[State 777, hsp]
type = helper
trigger1 = time = 17
trigger2 = time = 182
trigger3 = time = 142
trigger4 = time = 67
trigger5 = time = 227
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = 0,-90
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = time = 62
trigger2 = time = 222
trigger3 = time = 187
trigger4 = time = 22
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = 0,-40
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1 = time = 102
trigger2 = time = 147
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = 0,-20
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1


;-----------------------------
[State 3502, dd]
type = PlaySnd
trigger1 = time = 17
trigger2 = time = 182
trigger3 = time = 62
trigger4 = time = 222
trigger5 = time = 102
value = 2,2
channel = 6
ignorehitpause = 1
volume = 10

[State 3502, dd]
type = PlaySnd
trigger1 = time = 142
trigger2 = time = 22
trigger3 = time = 187
trigger4 = time = 67
trigger5 = time = 227
value = 2, 2
channel = 10
ignorehitpause = 1
volume = 10

[State 3502, dd]
type = PlaySnd
trigger1 = time = 107
trigger2 = time = 147
value = 2,2
channel = 8
ignorehitpause = 1
volume = 10

;--------------------------------------

[State 3502, dd]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 120
trigger3 = time = 90
trigger4 = time = 230
value = 45, 1
channel = 12
ignorehitpause = 1
volume = 300

[State 3502, dd]
type = PlaySnd
trigger1 = time = 15
trigger2 = time = 135
value = 80, 2
channel = 4
ignorehitpause = 1
volume = -100

[State 3502, dd]
type = PlaySnd
trigger1 = time = 30
trigger2 = time = 150
trigger3 = time = 180
trigger4 = time = 210
value = 45, 1
channel = 2
ignorehitpause = 1
volume = 400

[State 3502, dd]
type = PlaySnd
trigger1 = time = 45
trigger2 = time = 165
value = 80, 3
channel = 0
ignorehitpause = 1
volume = -100
;--------------------------

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4658)
trigger1 = time = 0
anim = 4660
ID =  4658
pos = -50,0
postype = p2
facing = 1
removetime =250
scale = 1,1
sprpriority =-18
shadow = 180,180,180
ownpal = 1
removeongethit = 1
bindtime=1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4659)
trigger1 = time = 0
anim = 4659
ID =  4659
pos = 0,0
postype = p2
facing = 1
removetime =250
scale = 1,1
sprpriority =-18
shadow = 180,180,180
ownpal = 1
removeongethit = 1
bindtime=1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4660)
trigger1 = time = 0
anim = 4660
ID =  4660
pos = 50,0
postype = p2
facing = 1
removetime =250
scale = 1,1
sprpriority =-18
shadow = 180,180,180
ownpal = 1
removeongethit = 1
bindtime=1
;--------------------------

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4661)
trigger1 = time = 250
anim = 4660
ID =  4691
pos = -50,0
postype = p2
facing = 1
removetime =3
scale = 1,1
sprpriority =-18
shadow = 180,180,180
ownpal = 1
removeongethit = 1
bindtime=1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4662)
trigger1 = time = 250
anim = 4660
ID =  4662
pos = 0,0
postype = p2
facing = 1
removetime =3
scale = 1,1
sprpriority =-18
shadow = 180,180,180
ownpal = 1
removeongethit = 1
bindtime=1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4663)
trigger1 = time = 250
anim = 4660
ID =  4663
pos = 50,0
postype = p2
facing = 1
removetime =3
scale = 1,1
sprpriority =-18
shadow = 180,180,180
ownpal = 1
removeongethit = 1
bindtime=1
;------------------------------------

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4650)
trigger1 = time = 5
trigger2 = time = 170
anim = 4650
ID =  4650
pos = -70,0
postype = p2
facing = 1
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 180,180,180
ownpal = 1
removeongethit = 1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4651)
trigger1 = time = 50
trigger2 = time = 210
anim = 4651
ID =  4651
pos = -70,0
postype = p2
facing = 1
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 180,180,180
ownpal = 1
removeongethit = 1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4652)
trigger1 = time = 90
anim = 4652
ID =  4652
pos = -70,0
postype = p2
facing = 1
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 180,180,180
ownpal = 1
removeongethit = 1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4653)
trigger1 = time = 130
anim = 4653
ID =  4653
pos = -70,0
postype = p2
facing = 1
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 180,180,180
ownpal = 1
removeongethit = 1

;--------------------------
[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4654)
trigger1 = time = 10
trigger2 = time = 175
anim = 4654
ID =  4654
pos = 70,0
postype = p2
facing = -1
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 180,180,180
ownpal = 1
removeongethit = 1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4655)
trigger1 = time = 55
trigger2 = time = 215
anim = 4655
ID =  4655
pos = 70,0
postype = p2
facing = -1
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 180,180,180
ownpal = 1
removeongethit = 1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4656)
trigger1 = time = 95
anim = 4656
ID =  4656
pos = 70,0
postype = p2
facing = -1
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 180,180,180
ownpal = 1
removeongethit = 1

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4657)
trigger1 = time = 135
anim = 4657
ID =  4657
pos = 70,0
postype = p2
facing = -1
removetime = 30
scale = 1,1
sprpriority = 3
ontop = 1
shadow = 180,180,180
ownpal = 1
removeongethit = 1


[State 3506, ea]
type = TargetLifeAdd
trigger1= time = 220
value = -250
;---------------------------

[State 3506, Explod]
type = Explod
triggerall = !NumExplod(4661)
trigger1 = time = 233
anim = 4661
ID =  4661
pos = 70,0
postype = p2
facing = -1
removetime = 30
scale = 1,1
sprpriority = 6
;ontop = 1
shadow = 180,180,180
ownpal = 1
removeongethit = 1


[State 777, hsp]
type = helper
triggerall = NumHelper(13296)= 0 || !var(7)
trigger1 = movehit
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark2"
postype = p2
pos = 0,-80
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 210, 2]
type = HitDef
triggerall = NumHelper(13296)= 0 || !var(7)
trigger1= time = 245
attr = S, NA
animtype  = Heavy
damage    = 87
guardflag = MA
hitflag = MAF
pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S30,3
guardsound = S2,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 12
ground.velocity = -18, -1
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -18, -1
air.hittime = 20
ground.cornerpush.veloff = -12
fall = 1
air.fall=1


[State 250, 3]
type = ChangeState
triggerall=  power >= 1000 && var(7)
triggerall = P2life > 0
trigger1 = time >= 250
value = 4700
ctrl = 0

[State 3506, 5]
type = ChangeState
triggerall = NumHelper(13296) = 0
;trigger1 = var(16)= 0
trigger1 = time >= 250
;trigger2 = time >= 320
;trigger3 = time >= 320 && WinKo
value = 4607
ctrl = 0

[State 1000, 7]
type = Changestate
triggerall = NumHelper(13296) = 1
;trigger1 = var(16)= 0
trigger1 = time >= 250
;trigger2 = time >= 320
;trigger3 = time >= 320 && WinKo
ctrl = 0
value = 4700


;------------------------------------------------------------------------------
; End First part  gold
;-----------------------------------------------------------------------------
[Statedef 4607]
type    = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1
anim = 4612

[State 3507, 0]
type = StopSnd
trigger1 =!time
channel = 6

[State 777, a0]
type = NotHitBy
trigger1 = 1
value = SCA
time =1

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,1
channel=8
volume=1000

[State 4002, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
trigger1= var(8)!= 0 && animelem=10
persistent = 0
ID = 60
anim = 60
postype = p1
pos = -7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, Landing Sound]
type = PlaySnd
trigger1= var(8)!= 0 && animelem=10
value = 8, 1

[State 20]
type = envshake
triggerall = var(8)!= 0
trigger1 = animelem = 10
time = 10
ampl = -2


[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 3507, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Balls Rain
;-------------------------------------------------------------------------------
[StateDef 4700]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4613
ctrl = 0
juggle =6
sprpriority = 2

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1


[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
sound = S10, 1
movetime = 40
poweradd = -1000
Time = 40
p2defmul = 2
anim = S8400
pos = 100, -55
bindtime = -1
sprpriority = 14
removeongethit = 1

[State 3102, 1]
type = PlaySnd
trigger1 = Time = 8
value = 9,1

[State 3102, 0]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = 42,2
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,0
air.velocity = 0, 0
sprpriority = 2
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
p2stateno = 344444


[State 4100,mancha]
type = Helper
trigger1 = time = 1
ID = 4614
pos = -15,0
stateno = 4614
helpertype = normal
name = "ballgen"
keyctrl = 0
sprpriority = 6
ownpal = 1
BindToParent


[State 777, es]
type = Explod
triggerall = NumHelper(23296) = 1 || var(7)
triggerall= !numexplod(4618)
trigger1 = time = 267
sprpriority = 10
anim = 4618
id=4618
ontop = 1
facing = 1
bindtime = -1
removetime = 32
pos= -10,-60
vel =3.5,3.6
postype=p1
removeongethit=1

[State 3102, 1]
type = PlaySnd
triggerall = NumHelper(23296) = 1 || var(7)
trigger1 = Time = 267
trigger2 = Time = 298
value = 45,1
channel=4

[State 777, es]
type = Explod
triggerall = NumHelper(23296) = 1 || var(7)
;triggerall = p2stateno = 344445
trigger1 = Time = 270
sprpriority = 10
anim = 62
id=62
pos = 0,0
postype=P2
removeongethit = 1
scale = 1,1
bindtime = 1
facing=-1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 777, es]
type = Helper
triggerall = NumHelper(23296) = 1 || var(7)
;triggerall = p2stateno = 344445
trigger1 = Time = 290
helpertype = normal
stateno = 8706
ID = 8706
name = "hitspark6"
postype = p2
pos = 0,0
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0


[State 3102, 0]
type = HitDef
triggerall = NumHelper(23296) = 0 || !var(7)
trigger1 = animelem = 9
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = 145,4
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
sprpriority = 2
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
p2stateno = 444445

[State 3102, 0]
type = HitDef
triggerall = NumHelper(23296) = 1 || var(7)
trigger1 = animelem = 9
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = 145,4
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
sprpriority = 2
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
p2stateno = 344445

;-----------------
[State 3506, 1]
type = VarRandom
trigger1 = Time = 0
v = 26
range = 0,100

[State 2010, 1]
type = helper
triggerall = !var(7)
triggerall = Var(26) = [0,50]
triggerall = power >= 1000 && P2life > 0
;triggerall = Var(8) = 0
trigger1 = time = 30
helpertype = normal
pos = 0,0
postype = back
stateno = 23290
ID =23290
name = "command2"
facing = (facing)
keyctrl = 1
ownpal =1

[State 2010, 1]
type = helper
triggerall = !var(7)
triggerall = Var(26) = [51,100]
triggerall = power >= 1000 && P2life > 0
;triggerall = Var(8) = 0
trigger1 = time = 30
helpertype = normal
pos = 0,0
postype = back
stateno = 23390
ID =23390
name = "command2"
facing = (facing)
keyctrl = 1
ownpal =1

;----------------------------

[State 250, 3]
type = ChangeState
triggerall=  power >= 1000 && var(7)
triggerall = P2life > 0
trigger1 = time = 300
value = 4750
ctrl = 0

[State 3506, 5]
type = ChangeState
triggerall = NumHelper(23296) = 0
trigger1 = time = 300;257
value = 4619
ctrl = 0

[State 1000, 7]
type = Changestate
triggerall = NumHelper(23296) = 1
trigger1 = time = 300
value = 4750
ctrl = 0



;-------------------------------------------------------------------------------
; End Balls
;-------------------------------------------------------------------------------
[Statedef 4619]
type    = S
physics = S
ctrl = 0
anim = 4619
sprpriority = 2

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 4002, Snd]
type=playsnd
triggerall = var(8)!= 0
trigger1= animelem=2
value=45,1
channel=8
volume=1000

[State 4002, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
trigger1= var(8)!= 0 && animelem=4
persistent = 0
ID = 60
anim = 60
postype = p1
pos = -7, 3
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State 4002, Landing Sound]
type = PlaySnd
trigger1= var(8)!= 0 && animelem=4
value = 8, 1

[State 20]
type = envshake
triggerall = var(8)!= 0
trigger1 = animelem = 4
time = 10
ampl = -2


[State 4002, fadein]
type=trans
triggerall = var(8)!= 0
trigger1= animelemtime(2)=[0,10]
trans=addalpha
alpha=25*animelemtime(2),ceil(256-25*animelemtime(2))

[State 4002, FX]
type=helper
triggerall = var(8)!= 0
trigger1= animelem=2
helpertype=normal
stateno=1706
ID=1705
name="Warp FX"
postype=p1
pos=60,0

[State 3000, proj]
type = projectile
trigger1 = animelem = 4
offset= -40,0
projanim = 997
projremove = 0
projremovetime = 28
projhits = 1
projmisstime = 2
projshadow = -1
projpriority = 6
projid = 1003
bindtime = -1
attr = S, NA
damage   = 200,10
animtype = Heavy
removeongethit = 1
guardflag = MA
hitflag = MAF
pausetime = 0,1
sparkno = -1
hitsound = S10,2
guardsound = S3,1
guard.sparkno = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 150
ground.velocity = -2,-21
air.velocity = -2, -21
sprpriority = 9
fall = 1
air.fall = 1
fall.recovertime = 124
down.velocity = -10
down.hittime = 150
down.bounce = 0
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
palfx.time = 50
palfx.add = -150,-40,-100
palfx.sinadd =  0,80,15,20
palfx.color = 0
palfx.invertall = 1

[State 3506, ea]
type = TargetLifeAdd
trigger1= projhit =1
value = -200

[State 3300, A4]
type = PlaySnd
trigger1 = animelem = 4
value = 30,3
channel = 4

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1

[State 777, hsp]
type = helper
trigger1 = projcontact(997) = 1
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,-85
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = helper
trigger1= movehit
helpertype = normal
stateno = 8710
ID = 8710
name = "cutspark"
postype = p2
pos = 0,-70
ignorehitpause = 1
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 777, hdf]
type = helper
trigger1 =  movehit
helpertype = normal
stateno = 8719
ID = 8719
name = "stars"
postype = p2
pos = 0,-80
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1


[State 3003, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Ripper
;-------------------------------------------------------------------------------
[StateDef 4750]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 4613
ctrl = 0
juggle =6
sprpriority = 2

[State 4002, afterimageoff]
type=afterimagetime
trigger1= 1
time=0
ignorehitpause=1


[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800];BG VANISH IN
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3001, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !time
darken = 0
sound = S10, 1
movetime = 40
poweradd = -1000
Time = 40
p2defmul = 2
anim = S8400
pos = 75, -80
postype = p2
bindtime = -1
sprpriority = 14
removeongethit = 1

[State 3102, 1]
type = PlaySnd
trigger1 = Time = 8
value = 9,1


[State 4100,ripp]
type = Explod
triggerall= !NumExplod(4620)
trigger1 = time = 1
ID = 4620
pos = 60,0
anim = 4620
postype=P2
facing=-1
helpertype = normal
name = "ripper"
keyctrl = 0
sprpriority = 6


[State 3102, 0]
type = HitDef
;triggerall = NumHelper(23296) = 1
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = 442,2
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
sprpriority = 2
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
p2stateno = 34446


[State 3102, 0]
type = HitDef
trigger1 =time = 59
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Back
damage = 40, 2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = 145,4
ground.type = High
ground.slidetime = 0
ground.hittime = 16
ground.velocity = 0,-4
air.velocity = -2.5, -9
sprpriority = 2
fall = 1
air.fall = 1
hitonce = 1
numhits = 1
p2stateno = 34447

[State 777, hsp]
type = helper
triggerall = !NumHelper(8704)
;triggerall = p2stateno = 34447
trigger1 = time= 59
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark3"
postype = p2
pos = -30,-20
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = Explod
triggerall = !NumExplod(14001)
trigger1 = time= 59
anim = 14001
ID = 14001
name = "blood1"
postype = p2
pos = -30,-10
facing = -1
removetime = 183
removeongethit = 1
ignorehitpause = 1
persistent=1
ownpal = 1

[State 777, hsp]
type = Explod
triggerall = !NumExplod(14000)
trigger1 = time= 59
anim = 14000
ID = 14000
name = "blood1"
postype = p2
pos = 0,-25
facing = -1
removetime = 183
removeongethit = 1
ignorehitpause = 1
persistent=1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = time >= 59
trigger1 = time = 60
value = 46,0
volume = 140
channel =6
loop = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = time >= 59
trigger1 = time =60
value = 45,12
volume = 100
channel =8
loop = 1

[State 0, HitAdd]
type = HitAdd
triggerall = time >= 59 && time <= 242
trigger1 = time>60
value = 1

value = 0
kill = 1
absolute = 0
;ignorehitpause =
;persistent =

[State 0, StopSnd]
type = StopSnd
trigger1 = time=242
channel = 6
[State 0, StopSnd]
type = StopSnd
trigger1 = time=242
channel =8

[State 210, 2]
type = HitDef
trigger1= time = 242
attr = S, NA
animtype  = Heavy
damage    = 87
guardflag = MA
hitflag = MAFD
pausetime = 0,4
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S30,3
guardsound = S2,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 12
ground.velocity = -18, -1
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -18, -1
down.velocity = -18, -5
air.hittime = 20
ground.cornerpush.veloff = -12
fall = 1
air.fall=1

[State 3506, 5]
type = ChangeState
trigger1 = time = 255
value = 4607
ctrl = 0

;-------Ball------------
[statedef 4614]
type = S
movetype = A
physics = N
ctrl = 0
anim = 4614
velset = 0,0

[state 3105, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State 1045, 8]
type = PlaySnd
trigger1 = time = 0
value = 8,3


[state 3105, changestate]
type = Changestate
trigger1 = animtime = 0
value = 4615
ctrl = 1

;-------Ball2------------
[statedef 4615]
type = S
movetype = A
physics = N
ctrl = 0
anim = 4615
velset = 0,0

[state 3106, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State 3000, proj1]
triggerall = StateNo = 4615
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
trigger4 = animelem = 31
trigger5 = animelem = 39
;trigger6 = animelem = 31
type = projectile
projID = 4616
projanim =4616
projhitanim = 4617
velocity = 6, 4
offset = 40,-140
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 10,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S2, 2
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
p2stateno = 555555

[State 777, hsp]
type = helper
triggerall = !NumHelper(8700)
trigger1 = p2stateno = 555555
helpertype = normal
stateno = 8700
ID = 8700
name = "hitspark1"
postype = p2
pos = 15,-60
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 3000, proj2]
triggerall = StateNo = 4615
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 17
trigger4 = animelem = 25
trigger5 = animelem = 29
trigger6 = animelem = 37
type = projectile
projID = 4626
projanim = 4616
projhitanim = 4617
velocity = 6, 4
offset = 40,-155
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 10,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S2, 2
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
p2stateno = 555556

[State 777, hsp]
type = helper
triggerall = !NumHelper(8701)
trigger1 = p2stateno = 555557
helpertype = normal
stateno = 8701
ID = 8701
name = "hitspark2"
postype = p2
pos = -15,-80
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[State 3000, proj3]
triggerall = StateNo = 4615
trigger1 = animelem = 11
trigger2 = animelem = 27
trigger3 = animelem = 19
trigger4 = animelem = 35
;trigger5 = animelem = 29
;trigger6 = animelem = 29
type = projectile
projID = 4636
projanim = 4616
projhitanim = 4617
velocity = 6, 4
offset = 40,-170
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 10,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S2, 2
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
p2stateno = 555557

[State 3000, proj4]
triggerall = StateNo = 4615
trigger1 = animelem = 17
trigger2 = animelem = 21
trigger3 = animelem = 33
t rigger4 = animelem = 37
trigger5 = animelem = 29
;trigger6 = animelem = 29
type = projectile
projID = 4647
projanim = 4616
projhitanim = 4617
velocity = 6, 4
offset = 40,-125
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 15,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S2, 2
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
p2stateno = 555558

[State 3000, proj5]
triggerall = StateNo = 4615
trigger1 = animelem = 19
trigger2 = animelem = 35
trigger3 = animelem = 11
trigger4 = animelem = 27
;trigger5 = animelem = 29
;trigger6 = animelem = 29
type = projectile
projID = 4657
projanim = 4616
projhitanim = 4617
velocity = 6, 4
offset = 40,-125
postype= p1
attr = S, SP
hitflag = MAFD
damage    = 15,2
pausetime = 0,9
sparkno = -1
guard.sparkno = -1
hitsound = S2, 2
guardsound = S3, 0
ground.type = High
ground.velocity = -2, -8
fall = 1
fall.recover = 10
sprpriority = -4
envshake.time = 4
envshake.freq = 60
envshake.ampl = -4
p2stateno = 555559


[State 777, hsp]
type = helper
triggerall = !NumHelper(8704)
trigger1 = p2stateno = 555559
helpertype = normal
stateno = 8704
ID = 8704
name = "hitspark4"
postype = p2
pos =0,-85
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=1
ownpal = 1

[state 3006, changestate]
type = Changestate
trigger1 = time = 181
value = 4618
ctrl = 1

;------------------OUT------------
[statedef 4618]
type = S
movetype = A
physics = N
ctrl = 0
anim = 4618

[state 3107, afterimage]
type = Afterimage
trigger1 = time = 0
time = 200
trans = add1

[State 3107, 1]
type = VelSet
trigger1 = animelem = 4
x = -6
y = -6

[State 1045, 8]
type = PlaySnd
trigger1 = time = 0
value = 8,3

[state 3107, destroy]
type = Destroyself
trigger1 = time = 70


;-------------------------------------------------------------------------------
; Ultron vehicle
;--------------------------------------------------------------------------
[Statedef 3400]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 3400
ctrl = 0
juggle =6
sprpriority = 1

[State 3000, b1]
Type = BGPalfx
Trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3000, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

;-------------------------------------------------
; Background Helper
[State 3000, HBG]
type = Helper
triggerall= !numhelper (9998)
trigger1 =time=13;time=0
helpertype = Normal
name = "HBG"
id = 9998
pos = 0,-1500
postype = back
bindtime = -1
facing = 0
stateno=9998
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;Hyper portrait, see the Air part comments for a correct display.
[State 3000, a8]
type = Explod
trigger1 = time=13;!time
anim = 8950
postype = back
pos = 20,0
ownpal = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
removeongethit = 1
bindtime = -1
sprpriority = -15

[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 =time=13;!time
darken = 0
anim = S8400
sound = S10, 0
pos = 7, -135
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1

[State 777, es]
type = Explod
trigger1 = !time
sprpriority = 10
anim = 8580
pos = 10, 3
removeongethit = 1
scale = .77,.77
bindtime = 1
supermovetime = 99
pausemovetime = 99

[State 3000, 3]
type = PlaySnd
trigger1 = time = 0
value = 20,5
channel=0
volume=1000

[State 777, hsp]
type = helper
trigger1 = movehit
helpertype = normal
stateno = 8702
ID = 8702
name = "hitspark3"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 777, hdf]
type = helper
trigger1 = moveguarded
helpertype = normal
stateno = 8716
ID = 8716
name = "defend"
postype = p2
pos = -15,-99
facing = -1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent=0
ownpal = 1

[State 210, 2]
type = HitDef
trigger1 = time >= 6 && time <=12
attr = S, NA
animtype  = Heavy
damage    = 10
guardflag = MA
hitflag = MAF
pausetime = 0,12
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound   = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 12
ground.velocity = -11 ,-2
guard.velocity = -5
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -11,-1
air.hittime = 20
ground.cornerpush.veloff = -12
fall = 1
air.fall=1

[State 3000, 3x]
type = PlaySnd
trigger1 = time = 30
value = 30,1
loop=1
channel=2

[State 3000, 3x]
type = PlaySnd
trigger1 = time = 5
value = 80,1
loop=1
channel=3

[State 3000, 3x]
type = PlaySnd
trigger1 = time = 5
value = 60,0
channel=4

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77700)
trigger1 = time=30
anim = 77700
id = 77700
name = "propulsor"
postype = P1
pos = -86,24
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77701)
trigger1 = time=30
anim = 77700
id = 77701
name = "propulsor2"
postype = P1
pos = -60,24
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77702)
trigger1 = time=30
anim = 77700
id = 77700
name = "propulsor3"
postype = P1
pos = 86,-14
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77703)
trigger1 = time=30
anim = 77700
id = 77701
name = "propulsor4"
postype = P1
pos = 60,-14
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 100, propulsor]
type = Explod
triggerall = !NumExplod(77703)
trigger1 = time=30
anim = 77700
id = 77701
name = "propulsor5"
postype = P1
pos = 10,34
ownpal = 1
sprpriority = -6
facing = 1
supermove = 1
removeongethit = 1
bindtime = -1
removetime = -1

[State 3000, gethit]
type = Explod
triggerall = !NumExplod(3415)
trigger1 = time =4
anim = 3415
id = 3415
pos = -10,5
postype = p1
sprpriority = -2
ownpal = 1
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1

[State 3000, gethit]
type = Explod
triggerall = !NumExplod(3417)
trigger1 = time =14
anim = 3417
id = 3417
pos = -10,5
postype = p1
sprpriority = 6
ownpal = 1
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1


; beam
[State 3150, helper]
type = Helper
trigger1 = time= 52
trigger2 = time= 90
trigger3 = time= 128
trigger4 = time= 166
trigger5 = time= 204
name = "beam1"
StateNo = 4997
postype = p1
pos = -200, 24
sprpriority =16
ontop=1
ownpal = 1

; beam  2
[State 3150, helper]
type = Helper
trigger1 = time= 42
trigger2 = time= 80
trigger3 = time= 118
trigger4 = time= 156
trigger5 = time= 194
name = "beam2"
StateNo = 4998
postype = p1
pos = -200, 24
sprpriority =14
ontop=1
ownpal = 1

[State 3000, 3x]
type = PlaySnd
trigger1 = animelem = 19
trigger2 = animelem = 21
value = 45,0
channel=4


[State 8100, circlebeam]
type = Explod
;triggerall = !NumExplod(727)
trigger1 = time=52
anim = 727
id = 727
ontop = 1
facing = 1
bindtime = -1
removetime = -1
removeongethit=1
pos= 0,5
flag = noshadow
ownpal = 1
sprpriority =15

; beam  2
[State 3150, helper]
type = Helper
trigger1 = time= 58
trigger2 = time= 96
trigger3 = time= 134
trigger4 = time= 172
trigger5 = time= 210
name = "beam3"
StateNo = 4996
postype = p1
pos= 5,11
sprpriority =14
ontop=1
ownpal = 1
x.scale=1.5
y.scale=1.5

[State 0, NotHitBy]
type = NotHitBy
trigger1 =!time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 90
ignorehitpause =1


[State 3000, back]
type = ChangeState
trigger1 = Time = 240
value = 3405
ctrl = 1

;------------------------------
;Vehicle - (move end)
[Statedef 3405]
type    = A
movetype= I
physics = A
anim = 660
ctrl = 1;Var(3)
sprpriority = 1

[State 3000, 3x]
type = PlaySnd
trigger1 = time = 0
value = 60,0
channel=4

[State 3000, gethit]
type = Explod
triggerall = !NumExplod(3416)
trigger1 = time =0
anim = 3416
id = 3416
pos = -10,-40
postype = p1
sprpriority = 6
ownpal = 1
facing = 1
bindtime = 1
removetime = 12
removeongethit = 1

[State 200, c]
type = removeexplod
trigger1 = !time
id = 727

[State 200, c]
type = removeexplod
trigger1 = !time
id = 3417

[State 200, c]
type = removeexplod
trigger1 = !time
id = 3415

[State 200, c]
type = removeexplod
trigger1 = !time
id = 77700

[State 200, d]
type = removeexplod
trigger1 = !time
id = 77701

[State 200, c]
type = removeexplod
trigger1 = !time
id = 77702

[State 200, d]
type = removeexplod
trigger1 = !time
id = 77703

[State 0, StopSnd]
type = StopSnd
trigger1 =!time
channel = 3

[State 0, StopSnd]
type = StopSnd
trigger1 =!time
channel = 2


[State 660, Turn]
type = Turn
trigger1 = P2Dist X < -5


[State 660, VelSet]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 660, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52


