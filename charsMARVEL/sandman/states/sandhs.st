;=========================================================
;\------------------\ Sandman /--------------------------/
;Sprite Edits, Character design, Concepts ---->  McCready 
;Sprite Edits, Programming-Code, Concepts ---->  Loganir
;==========================================================
;  loganir@gmail.com    mccready171@yahoo.com


[Statedef 47000]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 5

[State 8700, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8700, a1]
type = assertspecial
trigger1 = 1
flag = noshadow


[State 8700, sparksvar] 
type = null
trigger1= NumExplod(8700)=8
trigger1 = var(3):=1 

[State 8700 Explod] ;balls
type = Explod
trigger1= NumExplod(8700)<8
trigger1 = var(3)=0
anim = 8700
id = 8700
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 199,Random/100,Random/136)),(IfElse(Random <= 299,Random/136,Random/(-136)))
accel = -.1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = .5,.5;IfElse(Random <= 499,.3,.1),IfElse(Random <= 499,.3,.1)
sprpriority = 8
;ownpal = 1

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8700
scale = .5 -(.012*time),.5 -(.012*time)


[State 8700, a3];orange
type = explod
trigger1 = !time
anim = 8703
ID = 8701
sprpriority = 6
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .02,.02
ownpal=1

[State 8700, a3];rainbow
type = explod
trigger1 = !time
anim = 8702
ID = 8702
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .05,.05
ownpal = 1

[State 8700, a4]
type = explod
trigger1 = !time
anim = 8707
ID = 8707
sprpriority = 7
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .5,.5


[State 8710, a4]
type = modifyexplod
trigger1 = 1
ID = 8701
scale = .02+(.02*time),.02+(.02*time)

[State 8700, a4]
type = modifyexplod
trigger1 = 1
ID = 8702
scale = .05+(.03*time),.05+(.03*time)

[State 8700, PalFXWiz]
type = PalFX
trigger1 =!time
time = 20
add = 11,-10,-112
mul = 461,410,471
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 8700, a6]
type = destroyself
trigger1 = time >=16;25


[Statedef 47001]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 5

[State 8701, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8701, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8700, sparksvar] 
type = null
trigger1= NumExplod(8700)=8
trigger1 = var(3):=1 

[State 8701 Explod] ;balls
type = Explod
trigger1= NumExplod(8700)<8
trigger1 = var(3)=0
anim = 8700
id = 8700
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 499,Random/60,Random/146)),(IfElse(Random <= 199,Random/145,Random/(-90)))
accel = -.1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 1.14,1.14;IfElse(Random <= 499,.55,.25),IfElse(Random <= 499,.55,.25)
sprpriority = 8
;ownpal = 1

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8700
scale = 1.14-(.06*time),1.14-(.06*time)

[State 8701, a3];orange
type = explod
trigger1 = !time
anim = 8701
ID = 8701
sprpriority = 6
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .02,.02
ownpal=1

[State 8701, a3];rainbow
type = explod
trigger1 = !time
anim = 8702
ID = 8702
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .05,.05
ownpal = 1

[State 8701, a4];hit
type = explod
trigger1 = !time
anim = 8707
ID = 8707
sprpriority = 7
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .5,.5
persistent = 0

[State 8701, a4]
type = modifyexplod
trigger1 = 1
ID = 8701
scale = .02+(.02*time),.02+(.02*time)

[State 8701, a4]
type = modifyexplod
trigger1 = 1
ID = 8702
scale = .05+(.05*time),.05+(.05*time)

[State 8701, a4]
type = modifyexplod
trigger1 = 1
ID = 8715
scale = 1-(.03*time),1-(.03*time)

[State 8701, a4];stick90
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,-6
scale = 1,1
[State 8701, a4];stick90
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,6
scale = 1,1




[State 8701, a4];stick45
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -4,-4
scale = 1,1
facing = -1
[State 8701, a4];stick45
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -4,4
scale = 1,1
[State 8701, a4];stick45
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 4,-4
scale = 1,1
[State 8701, a4];stick45
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 4,4
scale = 1,1
facing = -1


[State 8701, a4];stick75
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,-2
scale = 1,1
facing = -1
[State 8701, a4];stick75
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,2
scale = 1,1
[State 8701, a4];stick75
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,-2
scale = 1,1
[State 8701, a4];stick75
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,2
scale = 1,1
facing = -1

[State 8701, PalFXWiz] ;Generated by MEE PalFX Editor gold
type = PalFX
trigger1 =!time
time = 20
add = 11,-51,-132
mul = 512,379,512
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 8701, a6]
type = destroyself
trigger1 = time >= 18;25


[Statedef 47002]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 5

[State 8702, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8702, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8702, sparksvar] 
type = null
trigger1= NumExplod(8700)=8
trigger1 = var(3):=1 

[State 8702 Explod] ;balls
type = Explod
trigger1= NumExplod(8700)<8
trigger1 = var(3)=0
anim = 8700
id = 8700
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 499,Random/56,Random/146)),(IfElse(Random <= 199,Random/86,Random/(-86)))
accel = -.1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 1.18,1.18;IfElse(Random <= 499,.55,.25),IfElse(Random <= 499,.55,.25)
sprpriority = 8
;ownpal = 1

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8700
scale = 1.18-(.05*time),1.18-(.05*time)





[State 8702, a3];orange
type = explod
trigger1 = !time
anim = 8701
ID = 8701
sprpriority = 6
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .03,.03
ownpal=1

[State 8702, a3];rainbow
type = explod
trigger1 = !time
anim = 8702
ID = 8702
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .06,.06
ownpal = 1

[State 8702, a4];hit
type = explod
trigger1 = !time
anim = 8707
ID = 8707
sprpriority = 7
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .5,.5
persistent = 0

[State 8702, a4]
type = modifyexplod
trigger1 = 1
ID = 8701
scale = .03+(.02*time),.03+(.02*time)

[State 8702, a4]
type = modifyexplod
trigger1 = 1
ID = 8702
scale = .06+(.05*time),.06+(.05*time)

[State 8702, a4]
type = modifyexplod
trigger1 = 1
ID = 8715
scale = 1.5-(.05*time),1.5-(.05*time)

[State 8702, a4];stick90
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,-7
accel = 0,-1+(random<12*time)
scale = 1.5,1.5
[State 8701, a4];stick90
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,7
accel = 0,1+(random<12*time)
scale = 1.5,1.5

[State 8702, a4];stick45
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,-5
accel = -1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
facing = -1
[State 8702, a4];stick45
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,5
accel = -1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
[State 8702, a4];stick45
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,-5
accel = 1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
[State 8702, a4];stick45
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,5
accel = 1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
facing = -1


[State 8702, a4];stick75
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -8,-1
accel = -1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
facing = -1
[State 8702, a4];stick75
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -8,1
accel = -1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
[State 8702, a4];stick75
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 8,-1
accel = 1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
[State 8702, a4];stick75
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 8,1
accel = 1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
facing = -1

[State 8702, PalFXWiz] ;Generated by MEE PalFX Editor red
type = PalFX
trigger1 =!time
time = 20
add = 11,-112,-153
mul = 502,420,512
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 8702, a6]
type = destroyself
trigger1 = time >= 20;25



[Statedef 47004]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 5

[State 8704, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8704, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8702, sparksvar] 
type = null
trigger1= NumExplod(8700)=12
trigger1 = var(3):=1 

[State 8702 Explod] ;balls
type = Explod
trigger1= NumExplod(8700)<12
trigger1 = var(3)=0
anim = 1551
id = 8700
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 499,Random/130,Random/(-130))),(IfElse(Random <= 599,Random/185,Random/(-145)))
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 2,2
sprpriority = 8
ownpal = 1

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8700
scale = 2-(.045*time),2-(.045*time)


[State 8704, a3];orange
type = explod
trigger1 = !time
anim = 8701
ID = 8701
sprpriority = 6
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .05,.05
ownpal=1

[State 8704, a3];rainbow
type = explod
trigger1 = !time
anim = 8702
ID = 8702
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .06,.06
ownpal = 1

[State 8702, a4];hit
type = explod
trigger1 = !time
anim = 8707
ID = 8707
sprpriority = 7
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .5,.5
persistent = 0

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8701
scale = .05+(.02*time),.05+(.02*time)

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8702
scale = .06+(.05*time),.06+(.05*time)

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8715
scale = 1.5-(.06*time),1.5-(.06*time)

[State 8704, a4];stick90
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,-7
accel = 0,-1+(random<12*time)
scale = 1.5,1.5
[State 8701, a4];stick90
type = explod
trigger1 =!time
anim = 8715
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0,7
accel = 0,1+(random<12*time)
scale = 1.5,1.5

[State 8704, a4];stick45
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,-5
accel = -1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
facing = -1
[State 8702, a4];stick45
type = explod
trigger1 =!time
anim = 8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -5,5
accel = -1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
[State 8704, a4];stick45
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,-5
accel = 1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
[State 8704, a4];stick45
type = explod
trigger1 =!time
anim =8716
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 5,5
accel = 1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
facing = -1


[State 8704, a4];stick75
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -8,-.8
accel = -1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
facing = -1
[State 8704, a4];stick75
type = explod
trigger1 =!time
anim = 8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -8,.8
accel = -1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
[State 8704, a4];stick75
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 8,-.8
accel = 1+(random<12*time),-1+(random<12*time)
scale = 1.5,1.5
[State 8704, a4];stick75
type = explod
trigger1 =!time
anim =8717
ID = 8715
sprpriority = 7
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 8,.8
accel = 1+(random<12*time),1+(random<12*time)
scale = 1.5,1.5
facing = -1

[State 8704, PalFXWiz] ;Generated by MEE PalFX Editor magenta
type = PalFX
trigger1 =!time
time = 60
;add = -40,11,1
;mul = 246,61,215
;sinadd = 41,0,15,30
add = -10,-143,-61
mul = 512,512,512
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0


[State 8704, a6]
type = destroyself
trigger1 = time >= 20;15;25


[Statedef 8705]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 25

[State 8705, A0]
type = screenbound
trigger1 = 1
value = 0
[state 8705, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8705 Explod] ;balls
type = Explod
trigger1 = 1
anim = 8700
id = 8700
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 499,Random/150,Random/(-150))),(IfElse(Random <= 499,Random/150,Random/(-150)))
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 1,1;IfElse(Random <= 499,.7,.4),IfElse(Random <= 499,.7,.4)
sprpriority = 25
;ownpal = 1

[State 8704, a4]
type = modifyexplod
trigger1 = 1
ID = 8700
scale = 1-(.07*time),1-(.07*time)

[State 8705, PalFXWiz] ;Generated by MEE PalFX Editor gold
type = PalFX
trigger1 =!time
time = 20
add = 11,-51,-132
mul = 512,379,512
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 8705, a6]
type = destroyself
trigger1 = time >= 9;25

[Statedef 8706]
type = S
movetype = I
physics = N
anim = 8787
sprpriority = -7

[State 8706, A0]
type = screenbound
trigger1 = 1
value = 0
[state 8706, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8707, b1] ;ground
type = Explod
trigger1 = (parent, stateno != 3110)&& (!Time)
anim = 8675
id = 8675
postype = p1
bindtime = -1
pos = 0, 0
sprpriority = -7
persistent = 0
scale = .8,.9
supermovetime = 999
pausemovetime = 999

[State 8706 Explod] ;balls
type = Explod
trigger1 = time <= 9
anim = IfElse(Random <= 499,8670,8671)
id = 8706
pos = 0,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/120,Random/(-120))),Random/(-120)
accel = 0,.5
;removetime = 20
supermovetime = 999
pausemovetime = 999
scale = IfElse(Random <= 499,.4,.2),IfElse(Random <= 499,.4,.2)
sprpriority = 8
;ownpal = 1

[State 8706, a6]
type = destroyself
;trigger1 = (time>=9) && (parent, stateno = 3005)
trigger1 = time >= 176;25



[Statedef 8707]
type = S
movetype = I
physics = N
anim = 8675
sprpriority = -7


;[State 8707, b1] ;explod
;type = Explod
;trigger1 = !Time
;anim = 8675
;id = 8675
;postype = p1
;bindtime = -1
;pos = -8, -3
;sprpriority = -7
;persistent = 0

[State 8707, A0]
type = screenbound
trigger1 = 1
value = 0
[state 8707, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8706, a6]
type = destroyself
trigger1 = !animtime



[Statedef 118710]
type = S
movetype = I
physics = N
anim = 8787
sprpriority = 7


[State 8710, a3]
type = explod
trigger1 = !time
anim = 8710
ID = 8710
sprpriority = 7
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = .04,.04
ownpal = 1

[State 8710, a1]
type = explod
trigger1= NumExplod(8711)<12
trigger1 = time%8 = 0
anim = 8710
ID = 8711
sprpriority = 6
postype = p1
pos = 0,0
vel = -2,-2
accel = ifelse(random<500,-.06,-.09),ifelse(random<500,-.06,-.09)
random = 14,14
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
scale = .07,.07
ownpal = 1

[State 8710, a2]
type = explod
trigger1= NumExplod(8712)<12
trigger1 = time%6 = 0
anim = 8710
ID = 8712
sprpriority = 5
postype = p1
pos = 0,0
vel = 2,2
accel = ifelse(random<500,.06,.09),ifelse(random<500,.06,.09)
random = 14,14
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
scale = .07,.07
ownpal = 1

[State 8710, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8710, a1]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow


[State 8702, sparksvar] 
type = null
trigger1= NumExplod(8745)=9
trigger1 = var(3):=1 

[State 8702 Explod] ;balls
type = Explod
trigger1= NumExplod(8745)<=9
trigger1 = var(3)=0
anim = 8700
id = 8745
pos = 0,0
postype = p1
bindtime = 1
vel = (IfElse(Random <= 499,Random/70,Random/(-70))),(IfElse(Random <= 499,Random/70,Random/(-70)))
removetime = 18
supermovetime = 999
pausemovetime = 999
scale = 1.2,1.2
sprpriority = 8

[State 8710, a4]
type = modifyexplod
trigger1 = 1
ID = 8745
scale = 1.2-(.05*time),1.2-(.05*time)


[State 8710, PalFXWiz] ;Generated by MEE PalFX Editor red
type = PalFX
trigger1 =!time
time = 20
add = 11,-112,-153
mul = 502,420,512
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0


[State 8710, a4]
type = modifyexplod
trigger1 = 1
ID = 8710
scale = .04+(.04*time),.04+(.04*time)

;[State 8710, a4]
;type = modifyexplod
;trigger1 = 1
;ID = 8711
;scale = .07-(.002*time),.07-(.002*time)

[State 8710, a6]
type = destroyself
trigger1 = time >= 20









[Statedef 8715]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 5

[State 8715, A0]
type = screenbound
trigger1 = 1
value = 0
[state 8715, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8715, a2]
type = Explod 
trigger1 = parent,Var(55)=0 
trigger1 =!time 
sprpriority = 4
anim = 8530
pos = 0, 0
removeongethit =1
scale=.7,.3
supermovetime = 999
pausemovetime = 999
facing = -1
ownpal = 1
[State 8715, a2]
type = Explod 
trigger1 = parent,Var(55)=0 
trigger1 =!time
sprpriority = 5
anim = 18530
id=18530
pos = 0, 10
removeongethit =1
supermovetime = 999
pausemovetime = 999
ownpal = 1
scale=.5,.5

[State 8715, a2]
type = modifyexplod
trigger1 =1
ID = 18530
scale= .5 +(.045*time),.5 +(.055*time)

;=========== dcvsm  screenpack stuff 
[State 8715, x]
type = explod
trigger1 = parent,Var(55)=1 
trigger1 =!time
anim = F61
postype = p1
pos = 0,0
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1
[State 8715, y]
type = explod
trigger1 = parent,Var(55)=1
trigger1 =!time
anim = F700
postype = p1
pos = 0,0 ;const(size.head.pos.y)-40
vel = 0,1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1 ;=========== dcvsm  screenpack stuff end

[State 8715, a6]
type = destroyself
trigger1 = time >=90
trigger2 = parent, movetype=H



[Statedef 47016]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 7

[State 8716, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8716, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8716, a3]
type = explod
trigger1 = !time
anim = 8550
ID = 8550
sprpriority = 5
postype = p1
pos = 0,0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
scale = 1,1
ownpal = 1

[State 8716, sparksvar] 
type = null
trigger1= NumExplod(8716)=5
trigger1 = var(3):=1 

[State 8716 Explod] ;balls
type = Explod
trigger1= NumExplod(8716)<5
trigger1 = var(3)=0
anim = 8700
id = 8716
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;vel = (IfElse(Random <= 499,Random/156,Random/(-156))),(IfElse(Random <= 499,Random/156,Random/(-156)))
vel = (IfElse(Random <= 199,Random/-100,Random/-136)),(IfElse(Random <= 299,Random/136,Random/(-136)))
accel = .1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = .5,.5;IfElse(Random <= 499,.3,.1),IfElse(Random <= 499,.3,.1)
sprpriority = 8
;ownpal = 1

[State 8716, a4]
type = modifyexplod
trigger1 = 1
ID = 8716
scale = .5 -(.011*time),.5 -(.011*time)

[State 8716, PalFXWiz] ;Generated by MEE PalFX Editor yellow
type = PalFX
trigger1 =!time
time = 20
add = -132,-40,52
mul = 471,317,379
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 8716, a6]
type = destroyself
trigger1 = time >=16;25


[Statedef 8717]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 7
[State 8717, A0]
type = screenbound
trigger1 = 1
value = 0
[state 8717, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8717, aa2]
type = Explod 
trigger1 = !time
sprpriority = 9
id = 1460
anim = 1460
postype = P1
pos = 0, 60
removeongethit = 1
bindtime = -1
facing=-1
ownpal = 1
supermovetime = 99
pausemovetime = 99

[State 8717, sparksvar] 
type = null
trigger1= NumExplod(8727)=7
trigger1 = var(3):=1 

[State 8717 Explod] ;balls
type = Explod
trigger1= NumExplod(8727)<7
trigger1 = var(3)=0
anim = 8700
id = 8727
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;vel = (IfElse(Random <= 499,Random/156,Random/(-156))),(IfElse(Random <= 499,Random/156,Random/(-156)))
vel = (IfElse(Random <= 199,Random/-60,Random/-90)),(IfElse(Random <= 199,Random/136,Random/(-136)))
accel = .1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = .5,.5;IfElse(Random <= 499,.3,.1),IfElse(Random <= 499,.3,.1)
sprpriority = 8
;ownpal = 1

[State 8717, a4]
type = modifyexplod
trigger1 = 1
ID = 8727
scale = .5 -(.011*time),.5 -(.011*time)

[State 8717, PalFXWiz]
type = PalFX
trigger1 =!time
time = 20
add = 11,-51,-132
mul = 512,379,512
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 8717, a6]
type = destroyself
trigger1 = time >=20;25



[Statedef 8718]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 7

[State 8718, A0]
type = screenbound
trigger1 = 1
value = 0

[state 8718, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8718, spark];F 
type = Explod
trigger1 = !time
persistent = 0
anim = 8540
ID=8541
postype = p1
pos = 0,0
removetime = -2
sprpriority = 12
ownpal = 1
ignorehitpause = 1
scale=.5,.5
supermovetime=999
pausemovetime=999
[State 8718, spark];B 
type = Explod
trigger1 = !time
persistent = 0
anim = 8541
ID=8541
postype = p1
pos = 0,0
removetime = -2
sprpriority = -12
ownpal = 1
ignorehitpause = 1
scale=.5,.5
supermovetime=999
pausemovetime=999


[State 8718, ax];launcher
type = modifyexplod
trigger1 = 1
ID = 8541
scale= .5+(.05*time),.5+(.03*time)
ignorehitpause=1


[State 8718, a6]
type = destroyself
trigger1 = time >=20;25

[Statedef 8719]
type = S
movetype = I
physics = N
anim = 8787;8707
sprpriority = 7
[State 8719, A0]
type = screenbound
trigger1 = 1
value = 0
[state 8719, a1]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8719, sparksvar] 
type = null
trigger1= NumExplod(8719)=7
trigger1 = var(3):=1 

[State 8719 Explod] ;balls
type = Explod
trigger1= NumExplod(8719)<7
trigger1 = var(3)=0
anim = 1550
id = 8719
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;vel = (IfElse(Random <= 499,Random/156,Random/(-156))),(IfElse(Random <= 499,Random/156,Random/(-156)))
vel = (IfElse(Random <= 199,Random/-60,Random/-90)),(IfElse(Random <= 199,Random/136,Random/(-136)))
accel = .1,.15
removetime = 20
supermovetime = 999
pausemovetime = 999
scale = 1,1;IfElse(Random <= 499,.3,.1),IfElse(Random <= 499,.3,.1)
sprpriority = 8
;ownpal = 1

[State 8719, a4]
type = modifyexplod
trigger1 = 1
ID = 8729
scale = 1 -(.011*time),1 -(.011*time)

[State 8719, a6]
type = destroyself
trigger1 = time >=20;25

