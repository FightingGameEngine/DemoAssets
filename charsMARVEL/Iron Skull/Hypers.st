;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;FlameThrower
[Statedef 3400]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3400
ctrl = 0
sprpriority = 2

[State 3400, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3400, d]
type = removeexplod
trigger1 = !time
id = 104



[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
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
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

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







[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 172,4


[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Flame"
ID = 3010
stateno = 3010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove

[State 3400, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 3010]
type = A
movetype = A
physics = N
anim = 3401
ctrl = 0

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (49 * parent, facing)
y = parent, Pos Y - 54






[State 3400,1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 22
persistent = 0

[State 420, HitDef]
type = HitDef
trigger1 = timemod = 3,1
attr = A, SA
damage = 10,4
animtype = High
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -5, -38
hitsound = S20,0
guardsound = S21,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-6
guard.velocity = -5
air.velocity = -.5,-1
palfx.time = 50
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,5
palfx.invertall = 0
palfx.color = 15
fall=1

[State 0, Explod]
type = Explod
trigger1 = animelem = 10
trigger2 = animelem = 17
trigger3 = animelem = 24
anim = 3402
ID = 3402
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -1
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
triggerall = numexplod(3403)=0
trigger1 = movehit
anim = 3403
ID = 3403
pos = 0,-20
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 11
trigger3 = animelem = 21
value = 171,4

[State 1010, DestroySelf]
type = destroyself
trigger1 = AnimTime = 0
trigger2 = parent, Anim != 3400

;-------------------------------------------------------------------------------
; State for Cosmic Explosion
[Statedef 3101]
type = A
movetype = A
physics = N
sprpriority = 2
juggle = 0
anim = 3102
velset = 0,0
ctrl = 0







[State 1005, 2]
type = BindTotarget
trigger1 = time = 0
time = -1
pos = 0, 0

[State 2010, 2]
type = playsnd
trigger1 = time = 1
value = 15,1


[State 1005, 6]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3102, hit]
type = hitdef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
trigger7 = AnimElem = 10
trigger8 = AnimElem = 11
trigger9 = AnimElem = 12
;projanim = 3102
;projremovetime = 60
;projhits = 32
;projmisstime = 2
;projshadow = 0
;projpriority = 6
;projid = 3102
;bindtime = -1
;velocity = 0.001,0.001
attr = S, NA
offset = -11,
damage   = 28,1
animtype = heavy
ownpal = 1
;removeonhit = 1
;removeongethit = 1
guardflag = HALM
hitflag = MAFD
pausetime = 1,1
sparkno = -1
guard.sparkno = -1
hitsound = S31,0
guardsound = S30,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = -0,-1
air.velocity = 4,-6
air.hittime = 12
air.fall = 1
fall= 1



[State 3000, gethit]
type = Explod
triggerall = !NumExplod(1006)
trigger1 = movecontact
anim = 1006
id = 1006
pos = 10,0
postype = p2
sprpriority = 6
ownpal = 1
facing = -1
bindtime = -1
removetime = 40
removeongethit = 1


[State 1005, 8]
type = DestroySelf
trigger1 = animtime = 0


;-------------------------------------------------------------------------------
;Cosmic Explosion
[Statedef 3100]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3100
ctrl = 0
sprpriority = 1

[State 3100, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3100, d]
type = removeexplod
trigger1 = !time
id = 104


[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
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
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

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









[state 3300, 0]
type = Playsnd
trigger1 = animelem = 1
value =  49


[state 3300, 1]
type = Playsnd
trigger1 = animelem = 1
value =  36



[State 3000, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 29,0







[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

;[State 3102, hit]
;type = Projectile
;trigger1 = AnimElem = 5
;projanim = 3102
;projremovetime = 60
;projhits = 32
;projmisstime = 2
;projshadow = 0
;projpriority = 6
;projid = 3102
;bindtime = -1
;velocity = 0.001,0.001
;attr = S, NA
;offset = -11,-4
;damage   = 26,3
;animtype = heavy
;ownpal = 1
;removeonhit = 1
;removeongethit = 1
;guardflag = HALM
;hitflag = MAFD
;;pausetime = 1,1
;sparkno = -1
;guard.sparkno = -1
;hitsound = S131,0
;guardsound = S30,0
;ground.type = Low
;ground.slidetime = 14
;ground.hittime  = 25
;ground.velocity = +10,+1
;fall = 1
;air.animtype = Back
;air.velocity = +10,+1
;air.juggle = 3
;air.fall = 1
;down.velocity = -10
;down.hittime = 30
;down.bounce = 0
;palfx.time = 33
;palfx.add = -255,204,0
;Palfx.color = 0


[State 1500]
type = Helper
trigger1 = AnimElem = 5
stateno = 3101
id = 3101
ownpal = 1
ignorehitpause = 1
postype = p2
pos = 0, 0

[State 3000, gethit]
type = Explod
triggerall = !NumExplod(1006)
trigger1 = movecontact
anim = 1006
id = 1006
pos = 0,0
postype = p2
sprpriority = 6
ownpal = 1
facing = -1
bindtime = -1
removetime = 40
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3259
ID = 3250
pos = -23,-82
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
shadow = 255,255,255
ownpal = 0
removeongethit = 1



[State 0, Explod]
type = Explod
trigger1 = animelem = 3
anim = 3260
ID = 3250
pos = -23,-82
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
sprpriority = 2
shadow = 255,255,255
ownpal = 0
removeongethit = 1




[State 3100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
;Golden Armor
[StateDef 3000]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0


[State 3000, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3000, d]
type = removeexplod
trigger1 = !time
id = 104

[State 3000, assertspecial]
type = assertspecial
trigger1 = AnimElem = 8
flag = noFG
ignorehitpause = 1

[State 3000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
;poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
darken = 0

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
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7




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

;----------

type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1




;----------
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 35

[State 0, Helper]
type = Helper
trigger1 = time = 53
helpertype = normal ;player
name = "Sonic Beam"
ID = 3001
stateno = 3001
pos = 50,-80
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 3000, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
animtype  = Hard
hitflag = MAFD
guardflag = MA
damage = 4
priority = 4, Hit
guardflag = MA
pausetime = 7,7
sparkno = 2;S(8220+random%7)
;guard.sparkno; = S8430
sparkxy = -10,-60
hitsound = s8000,2
guardsound = S8000,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
air.fall = 1
fall.recover = 0
;p2stateno = 9020


[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 0

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[StateDef 3001]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3001
velset = 3.5,0



[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 20


[State 3000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40
persistent = 0



[State 250, HitDef]
type = HitDef
trigger1 = timemod = 2,1
attr = S,NA
damage = 2,3
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = 2
sparkxy = -10 + floor(random/100), -25 + floor(random/100)
getpower = 0
hitsound = S38,0
guardsound = S8500,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -2,-4
air.type = Low
air.hittime = 5
air.velocity = -2,-3
fall= 1
air.fall = 1

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 39
persistent = 0




[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 150
trigger2 = parent,stateno != 3000



;-------------------------------------------------------------------------------
;Execution Cannon
[Statedef 3900]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3900
ctrl = 0
sprpriority = 2

[State 3900, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3900, d]
type = removeexplod
trigger1 = !time
id = 104



[State 3900, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 45
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
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

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


;----------

type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1









[State 0, Helper]
type = Helper
trigger1 = animelem = 4
helpertype = normal ;player
name = "Execution Beam"
ID = 3011
stateno = 3011
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemove

[State 3900, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 3011]
type = A
movetype = A
physics = N
anim = 3901
ctrl = 0

[State 1010, ontop]
type = SprPriority
trigger1 = 1
value = 2

[State 1010, PosSet]
type = PosSet
trigger1 = 1
x = parent, Pos X + (49 * parent, facing)
y = parent, Pos Y - 54


[state 3900, 1]
type = Playsnd
trigger1 = animelem = 1
value =  44

[state 3900, 2]
type = Playsnd
trigger1 = animelem = 1
value =  54



[State 420, HitDef]
type = HitDef
trigger1 = timemod = 3,1
attr = A, SA
damage = 9,1
animtype = High
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -5, -38
hitsound = S45,0
guardsound = S21,0
sparkxy = -20, -5+floor(random/100); (enemynear,pos y)
animtype = Heavy
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6,-2
guard.velocity = -5
air.velocity = -5,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 5
envshake.ampl = 4
fall = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 10
trigger2 = animelem = 17
trigger3 = animelem = 24
anim = 3402
ID = 3402
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -1
ownpal = 1
removeongethit = 0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 11
trigger3 = animelem = 21
value = 171,4

[State 1010, DestroySelf]
type = destroyself
trigger1 = AnimTime = 0
trigger2 = parent, Anim != 3900

;-------------------------------------------------------------------------------
;Energy SphereCannon
[StateDef 3600]
type    = A
movetype = A
physics = N
ctrl = 0
anim = 3600
velset = 0,0



[State 3600, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3600, d]
type = removeexplod
trigger1 = !time
id = 104






[State 0, VelSet]
type = VelSet
triggerall = pos y >= 0
trigger1 = time = 0
x = 0 ;-1
y = 0 ;-0.8






[State 3000, No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

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
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

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



[State 3100, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
sound = S8889, 0
pos = 7, -55
movetime = 40
poweradd = -1000
bindtime = -1
sprpriority = 6
Time = 40
p2defmul = 2
removeongethit = 1


[State 0, PlaySnd]
type = PlaySnd
triggerall = time > 32
triggerall = time < 152
trigger1 = timemod = 5,1
value = 75,0















[State 0, Explod]
type = Explod
triggerall = time > 35
triggerall = time < 130
trigger1 = timemod = 8,1
anim = 3603
ID = 3603
pos = 0 - ((Random * 3) / 1000),-105 - ((Random * 5) / 1000)
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = 0.3,0.3
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1









[State 0, Projectile]
type = Projectile
triggerall = time > 35
trigger1 = timemod = 5,1
ProjID = 3610
projanim = 1051 ;+ ((Random * 3) / 1000)
projhitanim = 1053
projremanim = 1053
projcancelanim = 1053
projscale = .75,.75
projremove = 1
projremovetime = -1
velocity = 6,-1 + ((Random * 4) / 1000)
projpriority = 1
projsprpriority = 5
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 55,-130 ;offset = 8,-105
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 3,Hit   ;Hit,Miss,Dodge
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 1,Hit   ;Hit,Miss,Dodge
damage = 6,5
sparkno = s7703;s9999
sparkxy = 30,0
hitsound = S76,0
guardsound = S30,0
ground.type = High      ;Low,Trip,None
ground.slide =25
air.hittime = 20
ground.velocity = -5,-3
air.velocity = -5,-2
sprpriority = 1
p1getp2facing = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1

[State 0, Projectile]
type = Projectile
triggerall = time > 35
trigger1 = timemod = 5,1
ProjID =3610
projanim = 1051 ;+ ((Random * 3) / 1000)
projhitanim = 1053
projremanim = 1053
projcancelanim = 1053
projscale = .75,.75
projremove = 1
projremovetime = -1
velocity = 6,1 + ((Random * 4) / 1000) ;9,-2 + ((Random * 4) / 1000)
projpriority = 1
projsprpriority = 5
projedgebound = 40
projstagebound = 40
projheightbound = -440
offset = 80,-125 ;offset = 40,-100
postype = p1         ;p2,front,back,left,right
projshadow = 0,0,0
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 3,Hit   ;Hit,Miss,Dodge
damage = 3,5 ;8,2
sparkno = s7703;s9999
sparkxy = 30,0
pausetime = 4,8
getpower = 0
hitsound = S76,0
guardsound = S30,0
ground.type = High      ;Low,Trip,None
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = -4,-3
air.velocity = -4,-1
sprpriority = 1
p1getp2facing = 0
fall = 1
fall.yvelocity = -4.5
fall.recover = 1
fall.recovertime = 4
fall.damage = 0
down.bounce = 0
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1



[State 1000, changestate]
type = ChangeState
trigger1 = time = 150
value = 3601
ctrl = 0

[StateDef 3601]
type    = A
movetype = I
physics = N
ctrl = 0
anim = 3601
velset = 0,0

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0 ;948
ctrl = 1





;-------------------------------------------------------------------------------
;Mini Gatling Cannon
[StateDef 3700]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 3700
poweradd = 20


[State 3700, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3700, d]
type = removeexplod
trigger1 = !time
id = 104







[State 3700, assertspecial]
type = assertspecial
trigger1 = time = [0,35]
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1



[State 3700, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
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
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

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



;-----------=[ FX end ]=-----------------

[State 3700, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 3701
ctrl = 0

;---------------------------------------------------------------------------------------------
;Mini Gatling Cannon (cont)

[StateDef 3701]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 3701
poweradd = 20



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 8
trigger4 = animelem = 10
trigger5 = animelem = 12
trigger6 = animelem = 14
trigger7 = animelem = 16
trigger8 = animelem = 18
trigger9 = animelem = 20
trigger10 = animelem = 22
trigger11 = animelem = 24
trigger12 = animelem = 26
trigger13 = animelem = 28
trigger14 = animelem = 30
trigger15 = animelem = 32
value = 65





[State 3700, Shoot]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 22;14
trigger4 = AnimElem = 30
anim = 3703
velset = -1,0
pos = 0,-0
id = 3703
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1

[State 3700, Shoot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 3703
velset = -.5,0
pos = 0,-0
id = 3703
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1



[State 3700, Shoot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 3703
velset = -.5,0
pos = 0,-0
id = 3703
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1








[State 3701, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 3702
projhitanim = 3704
projremanim = 3704
projcancelanim = 3704
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 8
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S66,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4

[State 3701, 1]
type = Projectile
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 18;12
trigger4 = AnimElem = 22;14
trigger5 = AnimElem = 26;16
trigger6 = AnimElem = 30;18
projanim = 3702
projhitanim = 3704
projremanim = 3704
projcancelanim = 3704
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 8
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S66,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4


[State 3701, 1]
type = Projectile
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 18;12
trigger4 = AnimElem = 22;14
trigger5 = AnimElem = 26;16
trigger6 = AnimElem = 30;18
projanim = 3702
projhitanim = 3704
projremanim = 3704
projcancelanim = 3704
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S66,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4






[State 3701, 2]
type = Projectile
trigger1 = AnimElem = 20;5
projanim = 3702
projhitanim = 3704
projremanim = 3704
projcancelanim = 3704
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S66,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0


[State 3701, 2]
type = Projectile
trigger1 = AnimElem = 20;5
projanim = 3702
projhitanim = 3704
projremanim = 3704
projcancelanim = 3704
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S66,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0


[State 3701, 2]
type = Projectile
trigger1 = AnimElem = 9;5
trigger2 = AnimElem = 13;7
trigger3 = AnimElem = 17;9
trigger4 = AnimElem = 21;11
trigger5 = AnimElem = 25;13
trigger6 = AnimElem = 29;15
trigger7 = AnimElem = 33;17
projanim = 3702
projhitanim = 3704
projremanim = 3704
projcancelanim = 3704
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S66,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0




[State 3701, 3]
type = Projectile
trigger1 = AnimElem = 29
projanim = 3702
projhitanim = 3704
projremanim = 3704
projcancelanim = 3704
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 53,-64
attr = S, SP
damage   = 7
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S66,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
fall = 1


[State 3700, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
;MaximumCombo
[statedef 3800]
type = S
movetype = A
physics = S
anim = 3800
velset = 0,0
ctrl = 0

[State 3800, c]
type = removeexplod
trigger1 = !time
id = 102

[State 3800, d]
type = removeexplod
trigger1 = !time
id = 104




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



[State 0, ]
type = SuperPause
trigger1 = animelem = 1
time = 20
sound = S8889, 0
pos = 7, -55
darken = 1
poweradd = -1000



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
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

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





[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
movetype = A

[State 0, ]
type = VelSet
trigger1 = time = 7
x = 7

[State 0, ]
type = VelSet
trigger1 = time >= 7
x = 4.5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2 && palno!= 6
value = 3,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2 && palno = 6
value = 50,5
channel = 1
lowpriority = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 3
value = 8400,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 4
value = 8400,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 1
value = ifelse(palno=6,1,2),1
channel = 1
lowpriority = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 2
value = ifelse(palno=6,1,2),2
channel = 1
lowpriority = 1

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 1

[State 0, ]
type = MoveHitReset
trigger1 = movecontact = 1
persistent = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 11
trigger4 = animelem = 16
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
priority = 6,Hit
damage = 8,1
pausetime = 2,15
guard.pausetime = 2,2
sparkxy = -30,-79
guard.sparkno = 41
hitsound = S70,0
guardsound = S14,0
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
down.slidetime = 30
down.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,-2
airguard.velocity = -1
down.velocity = -2,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
recover = 0
down.recover = 0
bounce.recover = 0
getpower = 0,0

[State 0, ]
type = HitDef
trigger1 = animelem = 21
trigger2 = animelem = 26
trigger3 = animelem = 30
trigger4 = animelem = 33
trigger5 = animelem = 38
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = high
air.type = low
priority = 6,Hit
damage = 14,2
pausetime = 2,15
guard.pausetime = 2,2
sparkxy = -30,-79
guard.sparkno = 41
hitsound = S71,0
guardsound = S14,0
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
down.slidetime = 30
down.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,-2
airguard.velocity = -1
down.velocity = -2,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
recover = 0
down.recover = 0
bounce.recover = 0
getpower = 0,0


[State 3600]
type = explod
name = "Block Hitspark"
trigger1 = moveguarded
persistent = 20
ignorehitpause = 1
ownpal = 1
ontop = 1
pos = floor(p2dist x -15),floor(p2dist y - 79)
anim = 8001
scale = 0.5,0.5





[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 3805

[statedef 3805]
type = S
movetype = A
physics = S
anim = 3805
velset = 5,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time >= 0
value = SCA,NA,NP,NP,NT,ST
time = 2
ignorehitpause = 1
persistent = 1

[State 0, HitBy]
type = HitBy
trigger1 = time >= 0
value = SCA,SA,HA,HP,HT
time = 2
ignorehitpause = 1
persistent = 1

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time >= 0
trigger1 = palno != 10
time = 2
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = ifelse(palno=6,1,2),2
channel = 1
lowpriority = 1

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
time = 4
under = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
x = 3

[State 0, ]
type = PosAdd
trigger1 = movehit = 1
trigger1 = backedgedist <= -60
x = -100
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
fall.animtype = back
priority = 4,Hit
damage = 20,15
pausetime = 4,15
guard.pausetime = 2,2
sparkxy = -60,-79
guard.sparkno = 41
hitsound = S72,0
guardsound = S14,0
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
ground.velocity = -8,-8
guard.velocity = -5
air.velocity = -8,-8
airguard.velocity = -5
yaccel = 0.5
getpower = 0,0
forcestand = 1
fall.recover = 0
fall = 1
fall.xvelocity =0
fall.yvelocity =0
down.bounce =0
down.velocity = -5,-8
down.hittime = 32
guard.hittime = 2
liedown.time = 30
fall.envshake.time = 18
fall.envshake.ampl = -10
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 3600]
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



[State 3800, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3000
ctrl = 1




;-------------------------------------------------------------------------------

;Massive Attack Force
[StateDef 4000]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 4000
poweradd = 20


[State 4000, c]
type = removeexplod
trigger1 = !time
id = 102

[State 4000, d]
type = removeexplod
trigger1 = !time
id = 104








[State 4000, assertspecial]
type = assertspecial
trigger1 = time = [0,35]
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1



[State 4000, a5] ; SUPER PAUSE
type = SuperPause
trigger1 = !Var(55)=1 && !time
darken = 0
anim = S8400
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
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

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



;-----------=[ FX end ]=-----------------

[State 4000, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 4001
ctrl = 0

;---------------------------------------------------------------------------------------------
;Massive Attack Force Cannon (cont)

[StateDef 4001]
type = S
movetype= A
physics = S
juggle  = 100
velset = 0,0
ctrl = 0
anim = 4001
poweradd = 20



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 6
trigger3 = animelem = 8
trigger4 = animelem = 10
trigger5 = animelem = 12
trigger6 = animelem = 14
trigger7 = animelem = 16
trigger8 = animelem = 18
trigger9 = animelem = 20
trigger10 = animelem = 22
trigger11 = animelem = 24
trigger12 = animelem = 26
trigger13 = animelem = 28
trigger14 = animelem = 30
trigger15 = animelem = 32
value = 67


[State 4000, Shooot]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 22;14
trigger4 = AnimElem = 30
anim = 4003
velset = -1,0
pos = 0,-0
id = 4003
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1

[State 4000, Shooot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 4003
velset = -.5,0
pos = 0,-0
id = 4003
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1



[State 4000, Shooot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 4003
velset = -.5,0
pos = 0,-0
id = 4003
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1





[State 4000, Shooot]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 22;14
trigger4 = AnimElem = 30
anim = 4005
velset = -1,0
pos = 0,-0
id = 4005
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1


[State 4000, Shooot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 4005
velset = -.5,0
pos = 0,-0
id = 4005
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1



[State 4000, Shooot]
type = Explod
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 18;12
trigger3 = AnimElem = 26;16
anim = 4005
velset = -.5,0
pos = 0,-0
id = 4005
sprpriority = 5
postype = P1
scale = 1.1,1.1
bindtime = -1
removetime = 18
removeongethit = 1
facing = 1
ignorehitpause = 1















[State 4001, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 4002
projhitanim = 4004
projremanim = 4004
projcancelanim = 4004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 50,-67
attr = S, SP
damage   = 33
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S68,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 30,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4

[State 4001, 1]
type = Projectile
trigger1 = AnimElem = 10;8
trigger2 = AnimElem = 14;10
trigger3 = AnimElem = 18;12
trigger4 = AnimElem = 22;14
trigger5 = AnimElem = 26;16
trigger6 = AnimElem = 30;18
projanim = 4002
projhitanim = 4004
projremanim = 4004
projcancelanim = 3704
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 50,-67
attr = S, SP
damage   = 33
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S68,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 30,0
guardsound = S30,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 30
envshake.ampl = -4

[State 4001, 2]
type = Projectile
trigger1 = AnimElem = 20;5
projanim = 4002
projhitanim = 4004
projremanim = 4004
projcancelanim = 4004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 50,-67
attr = S, SP
damage   = 32
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S68,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 0,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 4001, 2]
type = Projectile
trigger1 = AnimElem = 9;5
trigger2 = AnimElem = 13;7
trigger3 = AnimElem = 17;9
trigger4 = AnimElem = 21;11
trigger5 = AnimElem = 25;13
trigger6 = AnimElem = 29;15
trigger7 = AnimElem = 33;17
projanim = 4002
projhitanim = 4004
projremanim = 4004
projcancelanim = 4004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 50,-67
attr = S, SP
damage   = 31
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S68,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 500,500
guardsound = S6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 4001, 3]
type = Projectile
trigger1 = AnimElem = 29
projanim = 4002
projhitanim = 4004
projremanim = 4004
projcancelanim = 4004
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
velocity = 16,(0.5 - random/725)
offset = 50,-67
attr = S, SP
damage   = 31
animtype = heavy
guardflag = MA
hitflag = MAFDP
pausetime = 10,10
hitsound = S68,0
guardsound = S30,0
sparkno = s7703;s9999
sparkxy = 500,500
guardsound = S6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0


[State 4000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
;P2 Custom Hyper Statedef
[Statedef 10210]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0, 0

[State 850, 1]
type = ChangeAnim
trigger1 = time = 0
value = 5002


[State 10210, 3]
type = Selfstate
trigger1 = time = 88
value = 5070
ctrl = 1

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = roundstate = 3
trigger1 = time = 100
value = 5050
ctrl = 1


; END
